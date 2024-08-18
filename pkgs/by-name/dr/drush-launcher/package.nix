{ lib
, stdenv
, fetchFromGitHub
, buildGoModule
}:

let
  version = "1.0.4";
in
buildGoModule {
  pname = "drush-launcher";
  inherit version;

  src = fetchFromGitHub {
    owner = "dasginganinja";
    repo = "drush-launcher";
    rev = "v${version}";
    hash = "sha256-zlo6/P6tjkSjfQ2w1RuiRFjYCi6D7oYzhdCoR+wdz4Y=";
  };

  vendorHash = null;
  doCheck = false;

  meta = with lib; {
    homepage = "https://github.com/dasginganinja/drush-launcher";
    description = "New go-based Drush Launcher - system-wide drush binary that finds project-specific drush to launch";
    license = licenses.gpl3;
    maintainers = with maintainers; [ freelock ];
  };
}
