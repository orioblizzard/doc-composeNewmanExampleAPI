# ใช้ภาพ Node.js เป็นฐาน
FROM node:14

# ตั้งแค่งานในโฟลเดอร์ /app
WORKDIR /app

# คัดลอกไฟล์ package.json และ package-lock.json ไปยังโฟลเดอร์ /app
COPY package*.json ./

# ติดตั้งแพ็คเกจ
RUN npm install

# คัดลอกโค้ดแอปลิเคชันไปยังโฟลเดอร์ /app
COPY . .

# แอพลิเคชันรันบนพอร์ต 3000
EXPOSE 3000

# คำสั่งเริ่มต้นแอพลิเคชัน
CMD [ "node", "app.js" ]
