#!/bin/bash

echo "🚀 Deploying AI Engineer Challenge to Vercel..."

# Check if user is logged into Vercel
if ! vercel whoami >/dev/null 2>&1; then
    echo "❌ You need to log into Vercel first. Run: vercel login"
    exit 1
fi

echo "✅ Logged into Vercel as: $(vercel whoami)"

# Deploy backend first
echo ""
echo "🔧 Deploying FastAPI backend..."
cd api

echo "📦 Installing Python dependencies..."
pip3 install -r requirements.txt

echo "🚀 Deploying backend to Vercel..."
BACKEND_URL=$(vercel --prod --yes 2>/dev/null | grep -o 'https://[^[:space:]]*' | head -1)

if [ -z "$BACKEND_URL" ]; then
    echo "❌ Failed to deploy backend"
    exit 1
fi

echo "✅ Backend deployed to: $BACKEND_URL"
cd ..

# Deploy frontend
echo ""
echo "🎨 Deploying Next.js frontend..."

# Set the backend URL as environment variable
export NEXT_PUBLIC_API_URL=$BACKEND_URL

cd frontend

echo "📦 Installing Node.js dependencies..."
npm install

echo "🚀 Deploying frontend to Vercel..."
FRONTEND_URL=$(vercel --prod --yes 2>/dev/null | grep -o 'https://[^[:space:]]*' | head -1)

if [ -z "$FRONTEND_URL" ]; then
    echo "❌ Failed to deploy frontend"
    exit 1
fi

echo "✅ Frontend deployed to: $FRONTEND_URL"
cd ..

echo ""
echo "🎉 Deployment Complete!"
echo "🔧 Backend: $BACKEND_URL"
echo "🎨 Frontend: $FRONTEND_URL"
echo ""
echo "📝 Next steps:"
echo "1. Open your frontend URL: $FRONTEND_URL"
echo "2. Click the settings icon (⚙️) in the header"
echo "3. Enter your OpenAI API key"
echo "4. Start chatting with your AI assistant!"
echo ""
echo "🔧 If you need to update environment variables:"
echo "   - Go to your Vercel dashboard"
echo "   - Select your project"
echo "   - Go to Settings > Environment Variables"
echo "   - Add NEXT_PUBLIC_API_URL = $BACKEND_URL"
