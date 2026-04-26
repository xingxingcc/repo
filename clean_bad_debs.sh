for deb in debfiles/*.deb; do
    echo "Checking $deb..."
    dpkg-deb --info "$deb" >/dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "❌ Bad deb found: $deb"
    fi
done
