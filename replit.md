# BandBooker Pro - System Architecture
Author :
Jonas Alphonsus Okwuiwe
## Overview 

BandBooker Pro is a full-stack web application that connects bands with venue owners for event bookings. The application features a modern React frontend with TypeScript, a Node.js/Express backend, and PostgreSQL database with Drizzle ORM. The system enables bands to showcase their profiles and venue owners to discover and book musical acts for their events.

## System Architecture

### Frontend Architecture
- **Framework**: React 18 with TypeScript
- **UI Library**: Radix UI components with shadcn/ui styling system
- **Styling**: Tailwind CSS with CSS variables for theming
- **State Management**: TanStack Query (React Query) for server state
- **Routing**: Wouter for lightweight client-side routing
- **Form Handling**: React Hook Form with Zod validation
- **Build Tool**: Vite with development hot-reload

### Backend Architecture
- **Runtime**: Node.js with Express.js framework
- **Language**: TypeScript with ES modules
- **Authentication**: Replit OIDC integration with session management
- **Session Storage**: PostgreSQL-backed sessions using connect-pg-simple
- **API Design**: RESTful endpoints with JSON responses
- **Error Handling**: Centralized error middleware with proper HTTP status codes

### Database Architecture
- **Database**: PostgreSQL (configured for Neon serverless)
- **ORM**: Drizzle ORM with TypeScript schema definitions
- **Migration Strategy**: Drizzle Kit for schema migrations
- **Connection**: Connection pooling with @neondatabase/serverless

## Key Components

### Authentication System
- **Provider**: Replit OIDC for secure authentication
- **Session Management**: Server-side sessions stored in PostgreSQL
- **Authorization**: Route-level protection with middleware
- **User Management**: Automatic user creation and profile management

### Core Entities
- **Users**: Authentication and profile information
- **Bands**: Musical acts with profiles, media, and availability
- **Venues**: Event locations with booking capabilities
- **Bookings**: Event reservations with payment tracking
- **Messages**: Real-time communication between users
- **Reviews**: Rating and feedback system
- **Availability**: Band scheduling and calendar management

### UI Components
- **Design System**: Consistent component library based on Radix UI primitives
- **Responsive Design**: Mobile-first approach with Tailwind breakpoints
- **Accessibility**: ARIA-compliant components with keyboard navigation
- **Theming**: CSS custom properties for light/dark mode support

## Data Flow

### User Authentication Flow
1. User initiates login through Replit OIDC
2. Server validates credentials and creates session
3. User profile is created/updated in database
4. Client receives authentication status via API

### Booking Process Flow
1. Venue owner searches and filters available bands
2. Band profile and availability are displayed
3. Booking form captures event details and requirements
4. Payment processing (simulated) confirms reservation
5. Notifications sent to both parties
6. Booking status tracked through completion

### Real-time Communication
1. Message threads created between users
2. Real-time updates via API polling
3. Read receipts and online status tracking
4. Notification system for new messages

## External Dependencies

### Core Dependencies
- **@neondatabase/serverless**: PostgreSQL database connectivity
- **drizzle-orm**: Type-safe database operations
- **@tanstack/react-query**: Server state management
- **express-session**: Session management
- **passport**: Authentication middleware
- **zod**: Runtime type validation

### UI Dependencies
- **@radix-ui/***: Accessible UI primitives
- **tailwindcss**: Utility-first CSS framework
- **lucide-react**: Icon library
- **react-hook-form**: Form state management
- **wouter**: Lightweight routing

### Development Dependencies
- **vite**: Build tool and dev server
- **typescript**: Static type checking
- **drizzle-kit**: Database migration tool
- **@replit/vite-plugin-***: Replit-specific development tools

## Deployment Strategy

### Development Environment
- **Local Development**: Vite dev server with hot module replacement
- **Database**: Environment variable-based connection string
- **Authentication**: Replit OIDC configured for development domains
- **Asset Serving**: Vite handles static assets and proxy setup

### Production Build
- **Frontend**: Vite production build to `dist/public`
- **Backend**: ESBuild bundles server code to `dist/index.js`
- **Database Migrations**: Drizzle Kit push/pull commands
- **Environment**: Production environment variables required

### Hosting Considerations
- **Database**: Requires PostgreSQL instance (Neon serverless configured)
- **Sessions**: Database-backed session storage
- **Static Assets**: Served from build directory
- **API Routes**: Express server handles all `/api/*` routes


## User Preferences

Preferred communication style: Simple, everyday language.
