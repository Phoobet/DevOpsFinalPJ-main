# ใช้ base image ที่มี Node.js
FROM node:18-alpine

# กำหนด working directory ภายใน container
WORKDIR /app

# คัดลอกไฟล์ package.json และ package-lock.json ไปยัง container
COPY package*.json ./

# ติดตั้ง dependencies ที่โปรเจกต์ต้องการ
RUN npm install

# คัดลอกโค้ดทั้งหมดไปยัง container
COPY . .

# เปิดพอร์ตที่จะใช้
EXPOSE 3000

# รันคำสั่งเมื่อ container ทำงาน
CMD ["npm", "start"]
