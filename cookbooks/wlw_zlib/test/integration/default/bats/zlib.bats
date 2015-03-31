@test "zlib headers are available to gcc" {
  cat > test_zlib.h <<- EOF
    #include <zlib.h>
EOF
  gcc -E test_zlib.h
}
