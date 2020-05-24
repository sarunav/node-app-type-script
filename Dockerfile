FROM sarunav/node-app-type-script:3.4-v10.16.0-4.2.0

ENV PORT 3001

EXPOSE 3001

COPY package.json package.json
RUN npm install

COPY . .
RUN npm run build

CMD ["node", "dist/"]
