# List of all @angular/layout components / subpackages.
LAYOUT_PACKAGES = [
  "core",
  "extended",
  "flex",
]

# server is exported separately
LAYOUT_DEPS = LAYOUT_PACKAGES + ["server"]

LAYOUT_TARGETS = ["//src/lib:flex-layout"] + ["//src/lib/%s" % p for p in LAYOUT_DEPS]


# Base rollup globals for dependencies and the root entry-point.
LAYOUT_ROLLUP_GLOBALS = {
  'tslib': 'tslib',
  '@angular/cdk/bidi': 'ng.cdk.bidi',
  '@angular/flex-layout': 'ng.flexLayout',
}

# Rollup globals for subpackages in the form of, e.g., {"@angular/cdk/table": "ng.cdk.table"}
LAYOUT_ROLLUP_GLOBALS.update({
  "@angular/flex-layout/%s" % p: "ng.flexLayout.%s" % p for p in LAYOUT_DEPS
})

NG_VERSION = "^6.0.0 || ^6.0.0-rc.3"
RXJS_VERSION = "^6.0.0 || ^6.0.0-rc.0"
CDK_VERSION = "^6.0.0 || ^6.0.0-rc.1"

PKG_GROUP_REPLACEMENTS = {
    "0.0.0-NG": NG_VERSION,
    "0.0.0-RXJS": RXJS_VERSION,
    "0.0.0-CDK": CDK_VERSION
}
