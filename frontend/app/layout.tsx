import type { Metadata } from 'next'
import { Inter } from 'next/font/google'
import './globals.css'

const inter = Inter({ subsets: ['latin'] })

export const metadata: Metadata = {
  title: 'AI Engineer Challenge - Chat Interface',
  description: 'A beautiful chat interface for interacting with OpenAI models',
  keywords: ['AI', 'Chat', 'OpenAI', 'GPT', 'Next.js'],
  authors: [{ name: 'AI Engineer Challenge' }],
  viewport: 'width=device-width, initial-scale=1',
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en">
      <body className={inter.className}>
        <div className="min-h-screen bg-gradient-to-br from-dark-50 via-white to-primary-50">
          {children}
        </div>
      </body>
    </html>
  )
}
