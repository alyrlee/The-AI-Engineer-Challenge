# AI Engineer Challenge Frontend 🚀

A beautiful, modern chat interface built with Next.js and Tailwind CSS that integrates with your FastAPI backend for AI-powered conversations.

## ✨ Features

- **Modern UI/UX**: Clean, responsive design with beautiful animations
- **Real-time Streaming**: See AI responses as they're generated
- **Secure API Key Input**: Password-style input for sensitive data
- **Model Selection**: Choose between different OpenAI models
- **Customizable System Messages**: Set the AI's behavior and personality
- **Settings Panel**: Easy access to configuration options
- **Mobile Responsive**: Works perfectly on all devices
- **TypeScript**: Full type safety and better development experience

## 🛠️ Tech Stack

- **Next.js 14**: React framework with App Router
- **TypeScript**: Type-safe development
- **Tailwind CSS**: Utility-first CSS framework
- **Lucide React**: Beautiful, customizable icons
- **FastAPI Integration**: Seamless backend communication

## 🚀 Quick Start

### Prerequisites

- Node.js 18+ installed
- Your FastAPI backend running on `http://localhost:8000`
- OpenAI API key

### Installation

1. **Navigate to the frontend directory:**
   ```bash
   cd frontend
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Start the development server:**
   ```bash
   npm run dev
   ```

4. **Open your browser:**
   Navigate to `http://localhost:3000`

### Backend Setup

Make sure your FastAPI backend is running:

```bash
cd api
pip install -r requirements.txt
python app.py
```

The backend should be running on `http://localhost:8000`

## 🎨 Usage

1. **Configure Settings**: Click the settings icon (⚙️) in the header
2. **Enter API Key**: Add your OpenAI API key in the settings panel
3. **Customize System Message**: Set how the AI should behave
4. **Select Model**: Choose your preferred OpenAI model
5. **Start Chatting**: Type your message and press Enter or click Send

## 🔧 Configuration

### Environment Variables

Create a `.env.local` file in the frontend directory for production settings:

```env
NEXT_PUBLIC_API_URL=http://localhost:8000
```

### API Integration

The frontend automatically proxies API requests to your FastAPI backend. The integration includes:

- **Chat Endpoint**: `/api/chat` for streaming conversations
- **Health Check**: `/api/health` for backend status
- **CORS Support**: Configured for local development

## 📱 Responsive Design

The interface is fully responsive and works great on:
- Desktop computers
- Tablets
- Mobile phones
- All modern browsers

## 🎯 Key Features Explained

### Real-time Streaming
Messages from the AI appear character by character, creating a more engaging experience.

### Secure Input
API keys are handled securely with password-style input fields.

### Customizable AI Behavior
Modify the system message to change how the AI responds and behaves.

### Model Selection
Switch between different OpenAI models based on your needs and budget.

## 🚀 Deployment

### Vercel (Recommended)

1. **Install Vercel CLI:**
   ```bash
   npm install -g vercel
   ```

2. **Deploy:**
   ```bash
   vercel
   ```

3. **Configure Environment Variables** in your Vercel dashboard

### Other Platforms

The app can be deployed to any platform that supports Next.js:
- Netlify
- Railway
- DigitalOcean App Platform
- AWS Amplify

## 🔍 Troubleshooting

### Common Issues

1. **API Connection Error**: Make sure your FastAPI backend is running on port 8000
2. **CORS Issues**: The backend is configured to allow all origins for development
3. **API Key Issues**: Ensure your OpenAI API key is valid and has sufficient credits

### Development Tips

- Use the browser's developer tools to check for network errors
- Check the console for any JavaScript errors
- Verify your API key format (should start with `sk-`)

## 🤝 Contributing

Feel free to contribute to this project! Some areas for improvement:
- Add more AI models
- Implement conversation history
- Add file upload capabilities
- Create different chat themes

## 📄 License

This project is part of the AI Engineer Challenge. Happy coding! 🎉