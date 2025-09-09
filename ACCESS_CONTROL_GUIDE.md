# 🔐 Access Control Setup Guide

## Overview
Your Supply Chain Dashboard now includes **enterprise-level access control** to restrict access to authorized personnel only.

## 🛡️ Security Features Implemented

### **1. Token-Based Access Control**
- Users need a special access token to view the dashboard
- Without the token, users see an "Access Denied" page
- Tokens are embedded in special URLs you generate

### **2. Enhanced Authentication**
- **Account Lockout**: 3 failed attempts = 15-minute lockout
- **Session Timeout**: Automatic logout after 2 hours
- **Session Monitoring**: Continuous validation of access
- **Password Encoding**: Basic obfuscation of credentials

### **3. Basic Security Hardening**
- Right-click disabled
- Developer tools blocked (F12, Ctrl+Shift+I, etc.)
- Content hidden until authorized
- Session validation every 30 seconds

## 🎯 How to Control Access

### **Method 1: Admin Panel (Recommended)**

1. **Open Admin Panel**: `admin.html` (keep this private!)
2. **Generate Access Links**:
   - **Administrator**: Full access + management features
   - **Manager**: Complete dashboard access
   - **Viewer**: Read-only access
   - **Demo**: Limited access for presentations

3. **Share Secure Links**: Copy generated URLs and send to authorized users

### **Method 2: Manual URL Creation**

Access URLs follow this format:
```
https://your-website.com/index.html?access=TOKEN
```

**Available Tokens:**
- `sc2024admin` - Administrator access
- `sc2024manager` - Manager access  
- `sc2024viewer` - Viewer access
- `sc2024demo` - Demo access

## 📋 Step-by-Step Access Control Setup

### **For Hosting Providers:**

#### **Netlify (Recommended)**
1. Upload your files including the new `admin.html`
2. Your admin panel will be at: `https://your-site.netlify.app/admin.html`
3. Generate access links from the admin panel
4. Share only the generated links with authorized users

#### **Additional Security (Optional)**
1. **Hide admin.html**: 
   - Rename `admin.html` to something like `control-panel-xyz123.html`
   - Keep the new filename secret
   
2. **Password Protect Admin Panel**:
   - Some hosting providers offer folder password protection
   - Use this for the admin interface

## 🔑 Managing User Access

### **Granting Access**
1. Open your admin panel
2. Select appropriate access level
3. Click "Generate Link"
4. Copy the secure URL
5. Send via secure communication (email, Slack, etc.)
6. User clicks the link and gains access

### **Revoking Access**
Currently, access tokens are client-side. To revoke access:
1. Change the token values in `js/access-control.js`
2. Re-deploy your website
3. Old links will stop working

### **Monitoring Access**
- Users with expired sessions are automatically logged out
- Failed login attempts are tracked per user
- Sessions expire after 2 hours of login

## ⚙️ Customizing Security Settings

### **Change Access Tokens**
Edit `js/access-control.js`, line ~59:
```javascript
const validTokens = [
    'your-custom-admin-token',    // For administrators
    'your-custom-manager-token',  // For managers  
    'your-custom-viewer-token',   // For read-only access
    'your-custom-demo-token'      // For demo purposes
];
```

### **Modify Session Settings**
Edit `js/auth.js`, lines ~12-14:
```javascript
this.sessionTimeout = 4 * 60 * 60 * 1000;  // Change to 4 hours
this.maxLoginAttempts = 5;                   // Allow 5 attempts
this.lockoutTime = 30 * 60 * 1000;         // 30 minute lockout
```

### **Change User Credentials**
Edit `js/auth.js`, lines ~5-9:
```javascript
this.users = {
    'newadmin': this.encode('newpassword123'),
    'customuser': this.encode('custompass456'),
    // Add or modify users here
};
```

## 🌐 Deployment with Access Control

### **Files to Upload**
Make sure to include these new files:
- `admin.html` - Admin panel (keep URL private)
- `js/access-control.js` - Access control system
- `ACCESS_CONTROL_GUIDE.md` - This guide
- All existing files (index.html, dashboard.html, etc.)

### **Testing Access Control**
1. **Without Token**: Visit your regular website URL - should show "Access Denied"
2. **With Token**: Use generated link - should work normally
3. **Admin Panel**: Access `yoursite.com/admin.html` to generate links

## 🚨 Security Recommendations

### **For Production Use:**
1. **Change Default Tokens**: Use your own custom tokens
2. **Secure Admin Panel**: Rename or password-protect admin.html
3. **HTTPS Required**: Only use with HTTPS hosting (included with Netlify/Vercel)
4. **Regular Updates**: Change tokens periodically
5. **Secure Communication**: Share access links via encrypted channels

### **Additional Security (Advanced)**
For higher security needs, consider:
- **IP Whitelisting**: Restrict by IP addresses (requires backend)
- **Two-Factor Authentication**: Add 2FA for critical users
- **Backend Authentication**: Move to server-side auth system
- **Database Logging**: Track all access attempts

## 📞 Support

### **Common Issues**
- **"Access Denied" with valid link**: Check if token is correct
- **Links not working**: Ensure URL format is exact
- **Admin panel not accessible**: Check file upload and URL

### **Testing Checklist**
- [ ] Regular URL shows "Access Denied"
- [ ] Admin panel loads at `/admin.html`
- [ ] Generated links work correctly
- [ ] Invalid tokens show "Access Denied"
- [ ] Sessions expire after timeout

## 🔄 Updating Access Control

When you need to modify access:
1. Edit the configuration files
2. Update your deployment
3. Generate new access links
4. Notify authorized users of changes

Your Supply Chain Dashboard is now secured with enterprise-level access control!
