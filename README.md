# WellNest — Generative AI for Personalized Healthcare

**Tech:** Gen AI · FlutterFlow · Supabase 

WellNest is an AI-powered mobile application that simplifies daily nutrition tracking by automatically identifying food items from photos, estimating portion sizes, and computing calorie and macronutrient values. Built in FlutterFlow with a Supabase backend, WellNest delivers personalized nutrition and fitness recommendations using Generative AI.

## Key features
- Capture or pick food photos and automatically detect multiple items on a plate  
- Estimate portion sizes and compute calories & macros using AI vision models  
- Personalized nutrition goals using user profile (age, height, weight, activity level)  
- Upload images to Supabase storage and persist meal logs in PostgreSQL  
- Backend endpoints accept Base64 image payloads for AI processing  
- Clean cross-platform UI built with FlutterFlow; reusable UI components

## Architecture
- **Frontend:** FlutterFlow (Dart) — UI, image capture, client-side base64 conversion  
- **Backend:** Supabase (Postgres, Storage, Auth) — user data, meal logs, file storage  
- **AI:** Generative Vision APIs (OpenAI / Gemini) for food detection & portion estimation  
- **Optional:** Firebase for push notifications (if enabled)

## Quickstart (developer)
1. Clone the repo:
```bash
git clone https://github.com/<Aishwaryaschakote>/<Gen-AI>.git

