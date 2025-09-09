# Supply Chain Management Website

A comprehensive supply chain management dashboard with secure authentication and interactive data visualizations.

## Features

### 🔐 Authentication System
- Secure login with User ID and Password
- Session management with automatic logout
- Multiple user roles supported

### 📊 Dashboard Components
- **Overview**: Key metrics with real-time updates
- **Supply Forecast**: Interactive charts showing predicted vs actual supply
- **News**: Supply chain related news feed
- **Supply & Demand**: Bar charts and regional distribution
- **Logistics**: Active routes and fleet status tracking
- **Lead Times**: Performance tracking by category
- **Inventory**: Stock levels and critical alerts

### 🎨 User Interface
- Modern dark theme design
- Fully responsive (mobile, tablet, desktop)
- Professional color scheme with gradient backgrounds
- Smooth animations and transitions
- Interactive charts using Chart.js

## Demo Credentials

Use any of these credentials to access the dashboard:

| User ID    | Password    | Role       |
|------------|-------------|------------|
| admin      | supply123   | Administrator |
| manager    | chain456    | Manager    |
| supervisor | logistics789| Supervisor |
| analyst    | forecast123 | Analyst    |

## File Structure

```
supply-chain-website/
├── index.html          # Login page
├── dashboard.html      # Main dashboard
├── styles/
│   ├── login.css      # Login page styling
│   └── dashboard.css   # Dashboard styling
├── js/
│   ├── auth.js        # Authentication system
│   └── dashboard.js   # Dashboard functionality & charts
└── README.md          # This file
```

## Setup Instructions

1. **Download or clone the project**
   ```bash
   git clone [repository-url]
   cd supply-chain-website
   ```

2. **Open the website**
   - Simply open `index.html` in your web browser
   - Or use a local server for better performance:
     ```bash
     # Using Python
     python -m http.server 8000
     
     # Using Node.js
     npx serve .
     
     # Then open http://localhost:8000
     ```

3. **Login**
   - Use any of the demo credentials above
   - The system will automatically redirect to the dashboard

## Technical Details

### Dependencies
- **Chart.js**: For interactive data visualizations
- **Font Awesome**: For icons
- **No backend required**: Runs entirely in the browser

### Browser Support
- Chrome, Firefox, Safari, Edge (latest versions)
- Mobile browsers supported
- Internet connection required for external CDN resources

### Security Features
- Client-side authentication (demo purposes)
- Session management using sessionStorage
- Automatic session validation
- Logout functionality

## Dashboard Sections

### 1. Overview
- Total Inventory count with trend indicators
- Active Shipments tracking
- Average Lead Time monitoring
- Critical Alerts summary

### 2. Supply Forecast
- Line chart showing predicted vs actual supply
- Monthly forecasting data
- Insights and risk factors

### 3. News
- Supply chain related news feed
- Real-time updates
- Categorized by relevance

### 4. Supply & Demand Analytics
- Bar charts comparing supply vs demand by quarter
- Regional distribution pie chart
- Performance metrics

### 5. Logistics Management
- Active route tracking with status indicators
- Fleet status (trucks, ships, aircraft)
- Real-time logistics monitoring

### 6. Lead Times
- Performance tracking by category
- Target vs actual comparison
- Trend analysis over time

### 7. Inventory Management
- Stock level visualization
- Critical alerts system
- Category-wise inventory tracking

## Customization

### Adding New Users
Edit the `users` object in `js/auth.js`:

```javascript
this.users = {
    'newuser': 'password123',
    'existing': 'users...'
};
```

### Modifying Charts
Charts are initialized in `js/dashboard.js`. Each chart can be customized by modifying the corresponding `init*Chart()` method.

### Styling Changes
- Login page: Edit `styles/login.css`
- Dashboard: Edit `styles/dashboard.css`
- CSS custom properties (variables) are defined in `:root` for easy theme customization

## Real-time Features

- Automatic data refresh every 30 seconds
- Dynamic metric updates
- Chart data variations to simulate live data
- Responsive chart resizing

## Mobile Responsiveness

- Collapsible sidebar on mobile devices
- Responsive grid layouts
- Touch-friendly interface
- Optimized for various screen sizes

## Future Enhancements

- Backend integration with real APIs
- User role-based permissions
- Data export functionality
- Advanced filtering and search
- Push notifications for critical alerts
- Multi-language support

## License

This project is created for demonstration purposes. Feel free to use and modify as needed.

## Support

For questions or issues, please refer to the documentation or contact the development team.
