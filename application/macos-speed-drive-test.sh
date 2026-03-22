
# Write test
time dd if=/dev/zero of=testfile bs=1000k count=10000

# Read test
time dd if=testfile of=/dev/null bs=1000k count=10000

# Clean up
rm testfile 