{
  lib,
  stdenv,
  bash,
  coreutils,
  gawk,
}:
stdenv.mkDerivation {
  pname = "cached-exec";
  version = "1.0";

  nativeBuildInputs = [ bash coreutils ];
  src = lib.cleanSource ./.;
  patchPhase = ''
    substituteInPlace ./bin/* \
      --replace 'sha256sum' '${coreutils}/bin/sha256sum' \
      --replace 'awk' '${gawk}/bin/awk'
  '';

  installPhase = ''
    mkdir -p $out/bin
    install ./bin/cached-eval $out/bin
    install ./bin/cached-exec $out/bin
  '';
}
