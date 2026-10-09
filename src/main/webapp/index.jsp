
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop | Discover Better</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
:root {
    --purple: #7257f5;
    --purple-dark: #4933c8;
    --ink: #191832;
    --muted: #77788f;
    --bg: #f7f7fc;
    --white: #fff;
    --border: #ecebf5;
    --shadow: 0 12px 35px rgba(35,30,82,.08);
}
* { box-sizing: border-box; margin: 0; padding: 0; }
html { scroll-behavior: smooth; }
body {
    font-family: Inter, Arial, sans-serif;
    background: var(--bg);
    color: var(--ink);
    line-height: 1.6;
}
a { color: inherit; text-decoration: none; }
button, input { font: inherit; }
button { cursor: pointer; }
.container { max-width: 1240px; width: 92%; margin: auto; }
.announcement {
    background: var(--ink); color: white; text-align: center;
    padding: 8px 12px; font-size: 12px;
}
.announcement i { color: #b8aaff; margin-right: 8px; }
header {
    background: rgba(255,255,255,.95);
    position: sticky; top: 0; z-index: 20;
    border-bottom: 1px solid var(--border);
    backdrop-filter: blur(15px);
}
.nav {
    display: flex; align-items: center; justify-content: space-between;
    gap: 20px; min-height: 78px;
}
.logo { font-size: 24px; font-weight: 800; letter-spacing: -1px; white-space: nowrap; }
.logo i, .logo span { color: var(--purple); }
nav { display: flex; align-items: center; gap: 22px; }
nav a { font-size: 13px; font-weight: 600; color: var(--muted); }
nav a:hover { color: var(--purple); }
.nav-right { display: flex; align-items: center; gap: 12px; }
.search {
    display: flex; align-items: center; gap: 8px;
    background: #f3f2fa; padding: 0 14px; border-radius: 30px;
    border: 1px solid transparent;
}
.search:focus-within { border-color: var(--purple); }
.search input {
    width: 150px; border: 0; outline: 0; padding: 11px 0;
    background: transparent; font-size: 12px;
}
.search button { border: 0; background: none; color: var(--muted); }
.cart {
    border: 0; background: var(--purple); color: white;
    border-radius: 50%; width: 42px; height: 42px; position: relative;
}
#cartCount {
    position: absolute; top: -5px; right: -5px;
    background: #ffb84d; color: var(--ink);
    font-size: 10px; font-weight: 800; border-radius: 50%;
    width: 19px; height: 19px; display: grid; place-items: center;
}
.menu-btn { display: none; border: 0; background: none; font-size: 22px; }
.hero {
    margin: 24px auto 0; width: 94%; max-width: 1500px;
    min-height: 480px; border-radius: 28px; overflow: hidden;
    display: flex; align-items: center; position: relative;
    color: white;
    background:
        linear-gradient(90deg, rgba(21,18,52,.97), rgba(42,30,92,.85) 52%, rgba(42,30,92,.15)),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=85") center/cover;
}
.hero-content { position: relative; padding: 60px 7%; max-width: 740px; }
.pill {
    display: inline-block; background: rgba(255,255,255,.13);
    color: #d7ceff; border: 1px solid rgba(255,255,255,.2);
    padding: 7px 14px; border-radius: 30px; font-size: 11px;
    font-weight: 700; margin-bottom: 22px;
}
.hero h1 {
    font-size: clamp(40px, 5.5vw, 66px);
    line-height: 1.08; letter-spacing: -2.5px; margin-bottom: 18px;
}
.hero h1 span { color: #b7a7ff; }
.hero p { color: #e0ddef; max-width: 480px; font-size: 15px; margin-bottom: 28px; }
.btn {
    border: 0; border-radius: 12px; padding: 13px 21px;
    display: inline-flex; align-items: center; justify-content: center;
    gap: 9px; font-weight: 700; font-size: 13px; transition: .25s;
}
.btn-primary { background: var(--purple); color: white; }
.btn-primary:hover { background: var(--purple-dark); transform: translateY(-2px); }
.btn-white { background: white; color: var(--ink); }
.btn-white:hover { background: #eae5ff; transform: translateY(-2px); }
.hero-actions { display: flex; flex-wrap: wrap; gap: 12px; }
.section { padding: 66px 0 0; }
.section-heading {
    display: flex; align-items: end; justify-content: space-between;
    gap: 15px; margin-bottom: 27px;
}
.eyebrow {
    color: var(--purple); text-transform: uppercase; letter-spacing: 2px;
    font-size: 10px; font-weight: 800; margin-bottom: 7px;
}
.section-heading h2 { font-size: 29px; letter-spacing: -1px; line-height: 1.2; }
.section-heading p { color: var(--muted); font-size: 13px; margin-top: 7px; }
.text-link { color: var(--purple-dark); font-weight: 700; font-size: 12px; }
.categories {
    display: grid; grid-template-columns: repeat(6, 1fr); gap: 15px;
}
.category {
    border: 1px solid var(--border); background: white;
    border-radius: 18px; padding: 23px 8px; text-align: center;
    cursor: pointer; transition: .25s;
}
.category:hover {
    transform: translateY(-5px); box-shadow: var(--shadow);
    border-color: #d5ceff;
}
.category-icon {
    width: 55px; height: 55px; display: grid; place-items: center;
    margin: 0 auto 12px; border-radius: 17px;
    background: #efecff; color: var(--purple); font-size: 22px;
}
.category h3 { font-size: 12px; }
.category p { font-size: 10px; color: var(--muted); margin-top: 4px; }
.filters { display: flex; gap: 9px; flex-wrap: wrap; margin-bottom: 22px; }
.filter {
    border: 1px solid var(--border); background: white; color: var(--muted);
    padding: 8px 15px; border-radius: 30px; font-size: 11px; font-weight: 700;
}
.filter.active, .filter:hover {
    background: var(--purple); color: white; border-color: var(--purple);
}
.products { display: grid; grid-template-columns: repeat(4,1fr); gap: 20px; }
.product {
    background: white; border: 1px solid var(--border);
    border-radius: 19px; overflow: hidden; transition: .25s;
}
.product:hover { transform: translateY(-6px); box-shadow: var(--shadow); }
.product-image { position: relative; aspect-ratio: 1/1; background: #f0eff7; overflow: hidden; }
.product-image img {
    width: 100%; height: 100%; object-fit: cover; display: block;
    transition: transform .35s;
}
.product:hover .product-image img { transform: scale(1.05); }
.badge {
    position: absolute; left: 12px; top: 12px; background: var(--purple);
    color: white; border-radius: 7px; padding: 5px 9px;
    font-size: 9px; font-weight: 800;
}
.badge.sale { background: #ffd166; color: #30274a; }
.wishlist {
    position: absolute; right: 12px; top: 12px;
    border: 0; background: white; color: #55536f;
    width: 34px; height: 34px; border-radius: 50%;
}
.wishlist.liked { color: #ec4d85; }
.product-body { padding: 16px 16px 10px; }
.product-category {
    font-size: 9px; color: var(--purple-dark);
    text-transform: uppercase; letter-spacing: 1px; font-weight: 800;
}
.product h3 { font-size: 13px; margin: 6px 0 8px; line-height: 1.45; }
.rating { color: #f1a72f; font-size: 11px; }
.rating span { color: var(--muted); margin-left: 5px; }
.price-row { display: flex; align-items: center; gap: 9px; margin-top: 8px; }
.price { font-size: 17px; font-weight: 800; }
.old-price { font-size: 11px; color: #a5a5b6; text-decoration: line-through; }
.product-footer { padding: 8px 16px 16px; }
.add-btn {
    width: 100%; border: 1px solid #e2dcff; background: #f0edff;
    color: var(--purple-dark); padding: 10px; border-radius: 10px;
    font-size: 11px; font-weight: 800; transition: .2s;
}
.add-btn:hover { background: var(--purple); color: white; }
.add-btn.added { background: #159b80; color: white; border-color: #159b80; }
.empty { grid-column: 1/-1; text-align: center; padding: 40px; color: var(--muted); }
.deal {
    display: grid; grid-template-columns: 1fr 1fr; overflow: hidden;
    border-radius: 24px; background: white; border: 1px solid var(--border);
    box-shadow: var(--shadow);
}
.deal-image { min-height: 330px; }
.deal-image img { width: 100%; height: 100%; object-fit: cover; display: block; }
.deal-content { padding: 42px; align-self: center; }
.deal-tag {
    display: inline-block; padding: 6px 12px; border-radius: 8px;
    background: #fff1c9; color: #775600; font-size: 10px;
    font-weight: 800; margin-bottom: 15px;
}
.deal-content h3 { font-size: 31px; letter-spacing: -1px; }
.deal-content p { color: var(--muted); font-size: 13px; margin: 10px 0 17px; }
.deal-price { font-size: 30px; color: var(--purple-dark); font-weight: 800; }
.deal-price del { color: #aaa; font-size: 16px; font-weight: 500; margin-left: 8px; }
.timer { display: flex; gap: 9px; margin: 20px 0; }
.timer div {
    background: #f0edff; border: 1px solid #e3ddff;
    border-radius: 10px; min-width: 56px; padding: 9px 10px; text-align: center;
}
.timer strong { display: block; font-size: 19px; }
.timer small { display: block; font-size: 9px; color: var(--muted); }
.reviews { display: grid; grid-template-columns: repeat(3,1fr); gap: 18px; }
.review {
    background: white; border: 1px solid var(--border);
    border-radius: 18px; padding: 24px;
}
.review-stars { color: #f1a72f; font-size: 13px; }
.review blockquote { font-size: 13px; margin: 13px 0 20px; color: #4e4d67; }
.reviewer { display: flex; align-items: center; gap: 11px; }
.avatar {
    width: 40px; height: 40px; border-radius: 50%; object-fit: cover;
}
.reviewer strong { display: block; font-size: 12px; }
.reviewer small { color: var(--muted); font-size: 10px; }
.newsletter {
    display: flex; align-items: center; justify-content: space-between; gap: 25px;
    padding: 42px; border-radius: 24px; color: white;
    background: radial-gradient(circle at 85% 10%, #5741a7, transparent 35%),
                linear-gradient(120deg,#191832,#30235e);
}
.newsletter h2 { font-size: 25px; letter-spacing: -.8px; }
.newsletter p { color: #d4d0e8; font-size: 12px; margin-top: 6px; }
.newsletter form { display: flex; gap: 9px; max-width: 460px; width: 100%; }
.newsletter input {
    min-width: 0; flex: 1; border: 1px solid #ffffff33;
    background: #ffffff12; color: white; border-radius: 11px;
    outline: 0; padding: 12px 15px; font-size: 12px;
}
.newsletter input::placeholder { color: #c6c0dd; }
.newsletter button { white-space: nowrap; }
#newsletterMsg { font-size: 11px; margin-top: 9px; }
footer { margin-top: 60px; background: white; border-top: 1px solid var(--border); }
.footer-main {
    padding: 45px 0; display: grid; grid-template-columns: 2fr 1fr 1fr 1fr; gap: 30px;
}
.footer-about p { max-width: 280px; color: var(--muted); font-size: 12px; margin-top: 12px; }
.footer-col h4 { font-size: 12px; margin-bottom: 14px; }
.footer-col a { display: block; font-size: 11px; color: var(--muted); margin: 9px 0; }
.footer-col a:hover { color: var(--purple); }
.socials { display: flex; gap: 9px; margin-top: 16px; }
.socials a {
    display: grid; place-items: center; width: 35px; height: 35px;
    background: #f0edff; color: var(--purple-dark); border-radius: 50%;
}
.footer-bottom { text-align: center; padding: 18px; border-top: 1px solid var(--border); color: var(--muted); font-size: 10px; }
.toast {
    position: fixed; right: 20px; bottom: 20px; z-index: 50;
    background: var(--ink); color: white; border-radius: 12px;
    padding: 13px 18px; font-size: 12px; box-shadow: var(--shadow);
    opacity: 0; transform: translateY(10px); pointer-events: none; transition: .25s;
}
.toast.show { opacity: 1; transform: translateY(0); }

@media(max-width:1000px) {
    nav { gap: 12px; }
    .search input { width: 100px; }
    .categories { grid-template-columns: repeat(3,1fr); }
    .products { grid-template-columns: repeat(3,1fr); }
    .deal-content { padding: 28px; }
    .footer-main { grid-template-columns: 1fr 1fr; }
}
@media(max-width:720px) {
    .container { width: 92%; }
    .nav { min-height: 68px; flex-wrap: wrap; gap: 10px; padding: 12px 0; }
    .menu-btn { display: block; }
    .logo { font-size: 21px; }
    nav {
        display: none; width: 100%; flex-direction: column; align-items: stretch;
        gap: 0; padding: 8px 0;
    }
    nav.open { display: flex; }
    nav a { padding: 10px; }
    .nav-right { margin-left: auto; }
    .search { display: none; }
    .hero { min-height: 400px; margin-top: 13px; border-radius: 20px; }
    .hero-content { padding: 38px 7%; }
    .hero h1 { letter-spacing: -1.5px; }
    .section { padding-top: 45px; }
    .section-heading h2 { font-size: 24px; }
    .categories { grid-template-columns: repeat(3,1fr); gap: 10px; }
    .category { padding: 16px 5px; }
    .category-icon { width: 45px; height: 45px; font-size: 18px; }
    .products { grid-template-columns: repeat(2,minmax(0,1fr)); gap: 12px; }
    .product-body { padding: 12px 11px 8px; }
    .product h3 { font-size: 12px; }
    .product-footer { padding: 7px 11px 12px; }
    .deal { grid-template-columns: 1fr; }
    .deal-image { min-height: 220px; max-height: 300px; }
    .deal-content { padding: 24px; }
    .deal-content h3 { font-size: 26px; }
    .reviews { grid-template-columns: 1fr; }
    .newsletter { padding: 27px 20px; flex-direction: column; align-items: stretch; }
    .newsletter form { flex-direction: column; }
    .footer-main { grid-template-columns: 1fr 1fr; gap: 25px; }
}
@media(max-width:390px) {
    .categories { grid-template-columns: repeat(2,1fr); }
    .section-heading { align-items: start; }
    .text-link { padding-top: 8px; }
    .timer { gap: 5px; }
    .timer div { min-width: 0; flex: 1; padding: 8px 5px; }
}
</style>
</head>

<body>
<div class="announcement">
    <i class="fa-solid fa-truck-fast"></i>
    FREE SHIPPING ON ORDERS OVER $75 &nbsp; • &nbsp; DISCOVER SOMETHING NEW
</div>

<header>
    <div class="container nav">
        <button class="menu-btn" id="menuBtn" aria-label="Toggle navigation">
            <i class="fa-solid fa-bars"></i>
        </button>
        <a href="#" class="logo"><i class="fa-solid fa-bag-shopping"></i> Nexus<span>Shop</span></a>

        <nav id="navMenu">
            <a href="#">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Trending</a>
            <a href="#deals">Deals</a>
            <a href="#reviews">Reviews</a>
        </nav>

        <div class="nav-right">
            <form class="search" id="searchForm">
                <input id="searchInput" type="search" placeholder="Search products..." aria-label="Search products">
                <button aria-label="Search"><i class="fa-solid fa-magnifying-glass"></i></button>
            </form>
            <button class="cart" id="cartBtn" aria-label="Shopping cart">
                <i class="fa-solid fa-bag-shopping"></i>
                <span id="cartCount">0</span>
            </button>
        </div>
    </div>
</header>

<main>
<section class="hero">
    <div class="hero-content">
        <span class="pill"><i class="fa-solid fa-sparkles"></i> THE NEW SEASON IS HERE</span>
        <h1>Find your next<br><span>favorite thing.</span></h1>
        <p>Thoughtfully picked fashion, technology and everyday essentials. Great finds, exciting prices, all in one place.</p>
        <div class="hero-actions">
            <a href="#products" class="btn btn-white">Explore collection <i class="fa-solid fa-arrow-right"></i></a>
            <a href="#deals" class="btn btn-primary">View special deals</a>
        </div>
    </div>
</section>

<section class="section" id="categories">
<div class="container">
    <div class="section-heading">
        <div><div class="eyebrow">Explore the edit</div><h2>Shop by category</h2>
        <p>Everything you love, all in one place.</p></div>
        <a href="#products" class="text-link">Browse all <i class="fa-solid fa-arrow-right"></i></a>
    </div>
    <div class="categories" id="categoryGrid"></div>
</div>
</section>

<section class="section" id="products">
<div class="container">
    <div class="section-heading">
        <div><div class="eyebrow">Handpicked for you</div><h2>Trending right now</h2>
        <p>Popular picks to elevate your everyday.</p></div>
    </div>
    <div class="filters" id="filters"></div>
    <div class="products" id="productGrid"></div>
</div>
</section>

<section class="section" id="deals">
<div class="container">
    <div class="section-heading">
        <div><div class="eyebrow">Don't miss out</div><h2>Today's special deal</h2>
        <p>A little something for your wish list.</p></div>
    </div>
    <div class="deal">
        <div class="deal-image">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85" alt="Laptop special offer">
        </div>
        <div class="deal-content">
            <span class="deal-tag"><i class="fa-solid fa-bolt"></i> LIMITED-TIME OFFER</span>
            <h3>MacBook Air M2</h3>
            <p>Lightweight design. Powerful performance. Your next big idea starts here.</p>
            <div class="deal-price">$999 <del>$1,199</del></div>
            <div class="timer">
                <div><strong id="hours">08</strong><small>Hours</small></div>
                <div><strong id="minutes">45</strong><small>Minutes</small></div>
                <div><strong id="seconds">00</strong><small>Seconds</small></div>
            </div>
            <button class="btn btn-primary" id="dealBtn"><i class="fa-solid fa-cart-plus"></i> Add deal to cart</button>
        </div>
    </div>
</div>
</section>

<section class="section" id="reviews">
<div class="container">
    <div class="section-heading">
        <div><div class="eyebrow">Kind words</div><h2>Love from our shoppers</h2>
        <p>A few reasons to make NexusShop your happy place.</p></div>
    </div>
    <div class="reviews">
        <article class="review">
            <div class="review-stars">★★★★★</div>
            <blockquote>“Fast delivery, beautiful packaging, and everything was exactly as described. Such a smooth experience!”</blockquote>
            <div class="reviewer">
                <img class="avatar" src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80" alt="">
                <div><strong>Ava Martin</strong><small>Verified shopper</small></div>
            </div>
        </article>
        <article class="review">
            <div class="review-stars">★★★★★</div>
            <blockquote>“Great selection and an easy-to-use website. Found what I wanted without spending hours searching.”</blockquote>
            <div class="reviewer">
                <img class="avatar" src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80" alt="">
                <div><strong>Michael Lee</strong><small>Regular customer</small></div>
            </div>
        </article>
        <article class="review">
            <div class="review-stars">★★★★★</div>
            <blockquote>“The deals are fantastic, and the whole shopping experience feels premium. I'll definitely be back.”</blockquote>
            <div class="reviewer">
                <img class="avatar" src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80" alt="">
                <div><strong>Sophia Chen</strong><small>Verified shopper</small></div>
            </div>
        </article>
    </div>
</div>
</section>

<section class="section">
<div class="container">
    <div class="newsletter">
        <div>
            <h2>A little good news?</h2>
            <p>Sign up for fresh finds, new arrivals and special offers.</p>
            <div id="newsletterMsg" aria-live="polite"></div>
        </div>
        <form id="newsletterForm">
            <input id="emailInput" type="email" placeholder="Your email address" required aria-label="Your email address">
            <button class="btn btn-primary" type="submit">Join the list <i class="fa-solid fa-arrow-right"></i></button>
        </form>
    </div>
</div>
</section>
</main>

<footer>
<div class="container footer-main">
    <div class="footer-about">
        <a href="#" class="logo"><i class="fa-solid fa-bag-shopping"></i> Nexus<span>Shop</span></a>
        <p>Your destination for thoughtful finds, everyday essentials and a little inspiration along the way.</p>
        <div class="socials">
            <a href="#" aria-label="Instagram"><i class="fa-brands fa-instagram"></i></a>
            <a href="#" aria-label="Facebook"><i class="fa-brands fa-facebook-f"></i></a>
            <a href="#" aria-label="Pinterest"><i class="fa-brands fa-pinterest-p"></i></a>
        </div>
    </div>
    <div class="footer-col"><h4>Explore</h4><a href="#categories">Categories</a><a href="#products">Trending</a><a href="#deals">Special deals</a></div>
    <div class="footer-col"><h4>Help</h4><a href="#">Contact us</a><a href="#">Shipping info</a><a href="#">Returns</a></div>
    <div class="footer-col"><h4>Company</h4><a href="#">About us</a><a href="#">Privacy policy</a><a href="#">Terms of use</a></div>
</div>
<div class="footer-bottom">© <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<div class="toast" id="toast" role="status" aria-live="polite"></div>

<script>
const categories = [
    {name:"Smartphones",icon:"fa-mobile-screen-button",count:24},
    {name:"Laptops",icon:"fa-laptop",count:18},
    {name:"Clothing",icon:"fa-shirt",count:42},
    {name:"Gadgets",icon:"fa-headphones",count:31},
    {name:"Footwear",icon:"fa-shoe-prints",count:27},
    {name:"Accessories",icon:"fa-clock",count:39}
];

const products = [
    {id:1,name:"iPhone 14 Pro Max",category:"Smartphones",price:1099,old:1199,rating:5,reviews:128,badge:"NEW",image:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=650&q=85"},
    {id:2,name:'MacBook Pro 14"',category:"Laptops",price:1999,rating:5,reviews:86,badge:"",image:"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=650&q=85"},
    {id:3,name:"Smart Watch Series",category:"Accessories",price:349,old:399,rating:5,reviews:214,badge:"SALE",image:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=650&q=85"},
    {id:4,name:"Everyday Sneakers",category:"Footwear",price:150,rating:4,reviews:53,badge:"",image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=650&q=85"},
    {id:5,name:"Classic Camera",category:"Gadgets",price:599,rating:5,reviews:42,badge:"POPULAR",image:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=650&q=85"},
    {id:6,name:"Signature Fragrance",category:"Accessories",price:120,rating:5,reviews:189,badge:"",image:"https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=650&q=85"},
    {id:7,name:"Weekend Backpack",category:"Accessories",price:79,old:99,rating:4,reviews:67,badge:"SALE",image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=650&q=85"},
    {id:8,name:"Wireless Headphones",category:"Gadgets",price:299,rating:5,reviews:156,badge:"",image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=650&q=85"}
];

let cartCount = 0;
let activeCategory = "All";
const cart = [];
const liked = new Set();

const categoryGrid = document.getElementById("categoryGrid");
const productGrid = document.getElementById("productGrid");
const filters = document.getElementById("filters");
const searchInput = document.getElementById("searchInput");
const toast = document.getElementById("toast");

function showToast(message) {
    toast.textContent = message;
    toast.classList.add("show");
    clearTimeout(showToast.timeout);
    showToast.timeout = setTimeout(() => toast.classList.remove("show"), 2400);
}

function renderCategories() {
    categoryGrid.innerHTML = categories.map(c => `
        <article class="category" data-category="${c.name}" tabindex="0">
            <div class="category-icon"><i class="fa-solid ${c.icon}"></i></div>
            <h3>${c.name}</h3>
            <p>${c.count} items</p>
        </article>
    `).join("");

    categoryGrid.querySelectorAll(".category").forEach(el => {
        const choose = () => {
            activeCategory = el.dataset.category;
            renderFilters();
            renderProducts();
            document.getElementById("products").scrollIntoView({behavior:"smooth"});
        };
        el.addEventListener("click", choose);
        el.addEventListener("keydown", e => {
            if (e.key === "Enter" || e.key === " ") { e.preventDefault(); choose(); }
        });
    });
}

function renderFilters() {
    const names = ["All", ...categories.map(c => c.name)];
    filters.innerHTML = names.map(name => `
        <button class="filter ${name === activeCategory ? "active" : ""}" data-filter="${name}">
            ${name}
        </button>
    `).join("");

    filters.querySelectorAll(".filter").forEach(btn => {
        btn.addEventListener("click", () => {
            activeCategory = btn.dataset.filter;
            renderFilters();
            renderProducts();
        });
    });
}

function renderProducts() {
    const query = searchInput.value.trim().toLowerCase();
    const shown = products.filter(p => {
        const categoryMatch = activeCategory === "All" || p.category === activeCategory;
        const searchMatch = (p.name + " " + p.category).toLowerCase().includes(query);
        return categoryMatch && searchMatch;
    });

    if (!shown.length) {
        productGrid.innerHTML = '<div class="empty">No products found. Try another search.</div>';
        return;
    }

    productGrid.innerHTML = shown.map(p => `
        <article class="product">
            <div class="product-image">
                <img src="${p.image}" alt="${p.name}" loading="lazy">
                ${p.badge ? `<span class="badge ${p.badge === "SALE" ? "sale" : ""}">${p.badge}</span>` : ""}
                <button class="wishlist ${liked.has(p.id) ? "liked" : ""}" data-wish="${p.id}" aria-label="Toggle wishlist">
                    <i class="${liked.has(p.id) ? "fa-solid" : "fa-regular"} fa-heart"></i>
                </button>
            </div>
            <div class="product-body">
                <div class="product-category">${p.category}</div>
                <h3>${p.name}</h3>
                <div class="rating">★★★★★ <span>(${p.reviews} reviews)</span></div>
                <div class="price-row">
                    <span class="price">$${p.price.toLocaleString("en-US")}</span>
                    ${p.old ? `<span class="old-price">$${p.old.toLocaleString("en-US")}</span>` : ""}
                </div>
            </div>
            <div class="product-footer">
                <button class="add-btn" data-add="${p.id}"><i class="fa-solid fa-plus"></i> Add to cart</button>
            </div>
        </article>
    `).join("");

    productGrid.querySelectorAll("[data-add]").forEach(btn => {
        btn.addEventListener("click", () => {
            const product = products.find(p => p.id === Number(btn.dataset.add));
            addToCart(product);
            btn.classList.add("added");
            btn.innerHTML = '<i class="fa-solid fa-check"></i> Added';
        });
    });

    productGrid.querySelectorAll("[data-wish]").forEach(btn => {
        btn.addEventListener("click", () => {
            const id = Number(btn.dataset.wish);
            liked.has(id) ? liked.delete(id) : liked.add(id);
            renderProducts();
            showToast(liked.has(id) ? "Added to your wishlist" : "Removed from wishlist");
        });
    });
}

function addToCart(product) {
    cart.push(product);
    cartCount++;
    document.getElementById("cartCount").textContent = cartCount;
    showToast(product.name + " added to cart");
}

document.getElementById("searchForm").addEventListener("submit", e => {
    e.preventDefault();
    renderProducts();
    document.getElementById("products").scrollIntoView({behavior:"smooth"});
});

searchInput.addEventListener("input", renderProducts);

document.getElementById("cartBtn").addEventListener("click", () => {
    if (!cart.length) {
        showToast("Your cart is empty");
        return;
    }
    const summary = cart.reduce((sum, p) => sum + p.price, 0);
    showToast(`${cart.length} item(s) · Total $${summary.toLocaleString("en-US")}`);
});

document.getElementById("dealBtn").addEventListener("click", () => {
    addToCart({id:99,name:"MacBook Air M2 Deal",price:999});
});

document.getElementById("menuBtn").addEventListener("click", () => {
    document.getElementById("navMenu").classList.toggle("open");
});

document.querySelectorAll("#navMenu a").forEach(link => {
    link.addEventListener("click", () => document.getElementById("navMenu").classList.remove("open"));
});

document.getElementById("newsletterForm").addEventListener("submit", e => {
    e.preventDefault();
    const email = document.getElementById("emailInput").value.trim();
    document.getElementById("newsletterMsg").textContent =
        "Thanks for your interest! Newsletter signup is a frontend demo.";
    document.getElementById("emailInput").value = "";
});

let remaining = 8 * 3600 + 45 * 60;
function updateTimer() {
    remaining = remaining > 0 ? remaining - 1 : 8 * 3600 + 45 * 60;
    document.getElementById("hours").textContent = String(Math.floor(remaining / 3600)).padStart(2,"0");
    document.getElementById("minutes").textContent = String(Math.floor((remaining % 3600) / 60)).padStart(2,"0");
    document.getElementById("seconds").textContent = String(remaining % 60).padStart(2,"0");
}

document.getElementById("year").textContent = new Date().getFullYear();
renderCategories();
renderFilters();
renderProducts();
setInterval(updateTimer, 1000);
</script>
</body>
</html>
