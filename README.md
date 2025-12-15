# MNL Exports - E-commerce Platform

A modern, full-stack e-commerce platform for MNL Exports, specializing in premium products from Manila, Philippines.

## 🚀 Features

### Frontend (React + TypeScript)
- **Modern UI/UX**: Built with Material-UI for a professional look
- **Responsive Design**: Mobile-first approach with responsive layouts
- **Product Catalog**: Advanced filtering, search, and pagination
- **User Authentication**: Secure login/registration system
- **Shopping Cart**: Persistent cart with local storage
- **Order Management**: Track orders and view order history
- **SEO Optimized**: Meta tags and structured data

### Backend (Node.js + Express)
- **RESTful API**: Well-structured API endpoints
- **Authentication**: JWT-based authentication system
- **Database**: MongoDB with Mongoose ODM
- **File Uploads**: Image upload with Multer
- **Payment Integration**: Stripe payment processing
- **Email Notifications**: Automated email system
- **Admin Panel**: Full admin functionality

## 🛠️ Technology Stack

### Frontend
- React 18 with TypeScript
- Material-UI (MUI) for components
- React Router for navigation
- Axios for API calls
- React Context for state management

### Backend
- Node.js with Express
- MongoDB with Mongoose
- JWT for authentication
- bcryptjs for password hashing
- Multer for file uploads
- Stripe for payments
- Nodemailer for emails

## 📦 Installation

### Prerequisites
- Node.js (v16 or higher)
- MongoDB (local or cloud)
- npm or yarn

### ⚠️ Important: How to Run the Website

**Do NOT use "Go Live" or a simple HTTP server!** React apps need to be compiled and served through the React development server.

### Quick Start

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd mnl-export
   ```

2. **Install all dependencies**
   ```bash
   npm run install-all
   ```

3. **Set up environment variables** (Optional for frontend-only)
   ```bash
   # Copy the example environment file
   cp backend/env.example backend/.env
   
   # Edit the .env file with your configuration
   ```

4. **Start the development servers**

   **Option A: Run both frontend and backend together**
   ```bash
   npm run dev
   ```

   **Option B: Run frontend only (recommended for quick preview)**
   ```bash
   cd frontend
   npm install
   npm start
   ```

   The React app will automatically open at **http://localhost:3000**

   **Option C: Run backend only**
   ```bash
   cd backend
   npm install
   npm run dev
   ```

### 🔧 Troubleshooting "Go Live" Issue

If you see a directory listing instead of the website:

1. **Stop any "Go Live" server** (if running)
2. **Open a terminal** in the `frontend` folder
3. **Run**: `npm start`
4. **Wait for compilation** (may take 30-60 seconds)
5. **Browser will open automatically** at http://localhost:3000

The React development server will:
- Compile your React code
- Serve the app on http://localhost:3000
- Auto-reload when you make changes
- Show helpful error messages

### Manual Setup

If you prefer to set up each part separately:

#### Backend Setup
```bash
cd backend
npm install
npm run dev
```

#### Frontend Setup
```bash
cd frontend
npm install
npm start
```

## 🔧 Configuration

### Environment Variables

Create a `.env` file in the backend directory:

```env
# Server Configuration
PORT=5000
NODE_ENV=development

# Database
MONGODB_URI=mongodb://localhost:27017/mnl-exports

# JWT Secret
JWT_SECRET=your-super-secret-jwt-key-here

# Email Configuration
EMAIL_HOST=smtp.gmail.com
EMAIL_PORT=587
EMAIL_USER=your-email@gmail.com
EMAIL_PASS=your-app-password

# Stripe Configuration
STRIPE_SECRET_KEY=sk_test_your-stripe-secret-key
STRIPE_PUBLISHABLE_KEY=pk_test_your-stripe-publishable-key

# Frontend URL
FRONTEND_URL=http://localhost:3000

# Gemini AI Configuration (for chatbot)
GEMINI_API_KEY=your-gemini-api-key-here
```

#### Getting a Gemini API Key

1. Go to [Google AI Studio](https://makersuite.google.com/app/apikey)
2. Sign in with your Google account
3. Click "Create API Key"
4. Copy the API key and add it to your `.env` file as `GEMINI_API_KEY`

**Note:** The chatbot will work without the API key but will show fallback messages. For full AI functionality, you need to set up the Gemini API key.

## 📁 Project Structure

```
mnl-export/
├── frontend/                 # React frontend application
│   ├── public/              # Static assets
│   ├── src/
│   │   ├── components/      # Reusable components
│   │   ├── pages/          # Page components
│   │   ├── contexts/       # React contexts
│   │   ├── types/          # TypeScript types
│   │   └── App.tsx         # Main app component
│   └── package.json
├── backend/                 # Node.js backend API
│   ├── models/             # MongoDB models
│   ├── routes/             # API routes
│   ├── middleware/         # Custom middleware
│   ├── server.js           # Main server file
│   └── package.json
└── README.md
```

## 🚀 Deployment

### Frontend Deployment (Vercel/Netlify)
```bash
cd frontend
npm run build
# Deploy the build folder
```

### Backend Deployment (Heroku/Railway)
```bash
cd backend
# Deploy with your preferred platform
```

### Database Setup
- Use MongoDB Atlas for production
- Update MONGODB_URI in environment variables

## 📋 API Endpoints

### Authentication
- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- `GET /api/auth/me` - Get current user
- `PUT /api/auth/profile` - Update profile

### Products
- `GET /api/products` - Get all products
- `GET /api/products/:id` - Get single product
- `POST /api/products` - Create product (Admin)
- `PUT /api/products/:id` - Update product (Admin)
- `DELETE /api/products/:id` - Delete product (Admin)

### Categories
- `GET /api/categories` - Get all categories
- `GET /api/categories/:slug` - Get category with products
- `POST /api/categories` - Create category (Admin)

### Orders
- `POST /api/orders` - Create new order
- `GET /api/orders/my-orders` - Get user orders
- `GET /api/orders/:id` - Get single order
- `PUT /api/orders/:id/status` - Update order status (Admin)

## 🎨 Features Overview

### For Customers
- Browse and search products
- Filter by category, price, and availability
- Add products to cart
- Secure checkout process
- Order tracking
- User account management

### For Administrators
- Product management (CRUD)
- Category management
- Order management
- User management
- Analytics and reports

## 🔒 Security Features

- Password hashing with bcryptjs
- JWT token authentication
- Input validation and sanitization
- CORS configuration
- Environment variable protection
- Rate limiting (can be added)

## 📱 Mobile Responsiveness

The application is fully responsive and optimized for:
- Desktop (1200px+)
- Tablet (768px - 1199px)
- Mobile (320px - 767px)

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## 📄 License

This project is licensed under the MIT License.

## 📞 Support

For support and questions:
- Email: info@mnlexports.com
- Phone: +63 2 1234 5678

## 🚀 Future Enhancements

- [ ] Advanced search with filters
- [ ] Product reviews and ratings
- [ ] Wishlist functionality
- [ ] Multi-language support
- [ ] Advanced analytics dashboard
- [ ] Mobile app (React Native)
- [ ] Real-time notifications
- [ ] Inventory management
- [ ] Bulk import/export
- [ ] Advanced reporting

---

Built with ❤️ for MNL Exports

