### FSX ###
_build_fsx() {
local BASEURL="http://codemonkey.org.uk/projects/fsx"

_download_file "fsx.c" "${BASEURL}/fsx-linux.c"

mkdir -p "target/fsx"
cp -vf "download/fsx.c" "target/fsx/"
pushd "target/fsx"
${CC} ${CFLAGS} ${CPPFLAGS} ${LDFLAGS} -o fsx fsx.c
mkdir -p "${DEST}/bin"
cp -vf "fsx" "${DEST}/bin/"
popd
}

_build() {
  _build_fsx
  _package
}
