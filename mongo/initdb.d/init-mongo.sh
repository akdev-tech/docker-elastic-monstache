
mongosh <<EOF
  db.createUser({
    user: 'root',
    pwd: 'toor',
    roles: [
      {
        role: 'readWrite',
        db: 'testDB',
      },
    ],
  });
EOF

