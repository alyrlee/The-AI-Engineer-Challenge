#!/bin/bash

echo "🚀 Starting AI Engineer Challenge Development Servers..."

# Function to check if a port is in use
check_port() {
    if lsof -Pi :$1 -sTCP:LISTEN -t >/dev/null ; then
        echo "✅ Port $1 is already in use"
        return 0
    else
        echo "❌ Port $1 is not in use"
        return 1
    fi
}

# Start backend if not running
if ! check_port 8000; then
    echo "🔧 Starting FastAPI backend on port 8000..."
    cd api
    python3 app.py &
    BACKEND_PID=$!
    cd ..
    echo "✅ Backend started with PID: $BACKEND_PID"
else
    echo "✅ Backend already running on port 8000"
fi

# Start frontend if not running
if ! check_port 3000; then
    echo "🎨 Starting Next.js frontend on port 3000..."
    cd frontend
    npm run dev &
    FRONTEND_PID=$!
    cd ..
    echo "✅ Frontend started with PID: $FRONTEND_PID"
else
    echo "✅ Frontend already running on port 3000"
fi

echo ""
echo "🎉 Development servers are ready!"
echo "📱 Frontend: http://localhost:3000"
echo "🔧 Backend: http://localhost:8000"
echo ""
echo "Press Ctrl+C to stop all servers"

# Wait for user to stop
wait
