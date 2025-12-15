# 📸 How to Change Images in MNL Exports Website

This guide will help you replace placeholder images with your actual product and team photos.

## 📁 Step 1: Add Your Images to the Images Folder

1. **Navigate to the images folder:**
   ```
   frontend/public/images/
   ```

2. **Add your image files** to this folder. You can use:
   - JPG files (`.jpg` or `.jpeg`)
   - PNG files (`.png`)
   - WebP files (`.webp`)

3. **Recommended image names:**
   - Product images:
     - `coconut-oil.jpg`
     - `handwoven-textiles.jpg`
     - `bamboo-products.jpg`
     - `mango-products.jpg`
     - `pearl-jewelry.jpg`
     - `coffee-beans.jpg`
     - `wooden-crafts.jpg`
     - `seaweed-products.jpg`
     - `shell-crafts.jpg`
   
   - Team images:
     - `team-maria.jpg`
     - `team-juan.jpg`
     - `team-ana.jpg`
   
   - Other images:
     - `about-office.jpg` (for the About page)

## 📝 Step 2: Update Image Paths in Code

### Option A: If Your Images Match the Recommended Names

If you named your images exactly as recommended above, **you don't need to change anything!** The code is already set up to use these paths.

### Option B: If You Used Different Names

You need to update the image paths in these files:

#### 1. **Product Images** - `frontend/src/pages/Products.tsx`

Find the `products` array (around line 48) and update the `image` property:

```javascript
{
  id: 1,
  name: 'Premium Coconut Oil',
  image: '/images/your-actual-image-name.jpg', // Change this
  // ... rest of product data
}
```

#### 2. **Featured Products** - `frontend/src/pages/Home.tsx`

Find the `featuredProducts` array (around line 50) and update:

```javascript
{
  id: 1,
  name: 'Premium Coconut Oil',
  image: '/images/your-actual-image-name.jpg', // Change this
  // ... rest of product data
}
```

#### 3. **Product Detail Page** - `frontend/src/pages/ProductDetail.tsx`

Find the `product` object (around line 30) and update:

```javascript
const product = {
  // ... other properties
  image: '/images/your-actual-image-name.jpg', // Change this
  // ... rest of product data
}
```

Also update `relatedProducts` array (around line 67):

```javascript
const relatedProducts = [
  {
    id: 2,
    image: '/images/your-actual-image-name.jpg', // Change this
    // ... rest
  }
]
```

#### 4. **Team Images** - `frontend/src/pages/About.tsx`

Find the `team` array (around line 52) and update:

```javascript
const team = [
  {
    name: 'Maria Santos',
    image: '/images/your-team-image-name.jpg', // Change this
    // ... rest
  }
]
```

Also update the office image (around line 127):

```javascript
src="/images/your-office-image.jpg" // Change this
```

## 🖼️ Image Requirements

For best results, follow these guidelines:

- **Format**: JPG, PNG, or WebP
- **Size**: 
  - Product images: 800x600px or larger (will be automatically resized)
  - Team photos: 400x400px (square format recommended)
  - About page image: 1200x800px or larger
- **File size**: Keep under 500KB per image for faster loading
- **Aspect ratio**: 
  - Products: 4:3 or 16:9 ratio works best
  - Team photos: 1:1 (square) recommended

## 🔗 Image Path Format

When referencing images in code, use this format:

```javascript
image: '/images/your-image-name.jpg'
```

**Important Notes:**
- Always start with `/images/` (forward slash)
- Use lowercase file names (recommended)
- Include the file extension (`.jpg`, `.png`, etc.)
- The path is relative to the `public` folder

## ✅ Step 3: Test Your Changes

1. **Save all your files**
2. **The React dev server should auto-reload** (if running)
3. **Check your browser** - you should see your new images!

If images don't appear:
- Check that file names match exactly (case-sensitive)
- Verify images are in `frontend/public/images/` folder
- Check browser console for any errors
- Make sure the React dev server is running

## 🌐 Using External Images (URLs)

If you want to use images from the internet instead of local files:

```javascript
image: 'https://example.com/your-image.jpg'
```

**Note:** External images may load slower and depend on the external server being available.

## 📦 Using Images from a CDN

You can also use images from services like:
- Cloudinary
- AWS S3
- Imgur
- Unsplash

Just use the full URL:

```javascript
image: 'https://res.cloudinary.com/your-account/image/upload/product.jpg'
```

## 🎨 Image Optimization Tips

1. **Compress images** before uploading (use tools like TinyPNG or ImageOptim)
2. **Use WebP format** for better compression (if supported)
3. **Create multiple sizes** for different screen sizes (optional, for advanced optimization)
4. **Use descriptive file names** that match your product names

## 🆘 Troubleshooting

**Problem: Images not showing**
- ✅ Check file path is correct (starts with `/images/`)
- ✅ Verify file exists in `frontend/public/images/` folder
- ✅ Check file name spelling (case-sensitive)
- ✅ Make sure file extension matches (`.jpg` vs `.jpeg`)
- ✅ Restart the React dev server

**Problem: Images are broken/not loading**
- ✅ Check browser console for 404 errors
- ✅ Verify image file is not corrupted
- ✅ Try opening the image directly in browser: `http://localhost:3000/images/your-image.jpg`

**Problem: Images are too large/slow to load**
- ✅ Compress images using an image optimizer
- ✅ Reduce image dimensions
- ✅ Convert to WebP format for better compression

## 📚 Quick Reference

| Location | File to Edit | What to Change |
|----------|-------------|----------------|
| Products Page | `frontend/src/pages/Products.tsx` | `products` array `image` property |
| Home Page | `frontend/src/pages/Home.tsx` | `featuredProducts` array `image` property |
| Product Detail | `frontend/src/pages/ProductDetail.tsx` | `product.image` and `relatedProducts` array |
| About Page | `frontend/src/pages/About.tsx` | `team` array `image` property and office image |

---

**Need Help?** If you're stuck, check the code comments in each file - they show exactly where to change the image paths!


