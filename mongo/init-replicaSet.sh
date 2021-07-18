set -e

mongosh --quiet --norc  --eval <<EOF
    try {
        rs.initiate({
            _id: 'dbrs',
            members: [
                { _id: 0, host: 'mongodb' }
            ]
        }, { force: true });
    } catch (e) {
    } finally {
        rs.status().ok;
    }
EOF