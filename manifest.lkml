project_name: "block-google-ads-transfer"

# Library of common ad metrics definitions and date periods
remote_dependency: app-marketing-common {
  url: "git://github.com/looker/app-marketing-common-bigquery"
  ref: "3d8fe8aa069aecfb55b245599cf2f7a9ed1b8f36"
}

remote_dependency: app-marketing-google-ads-adapter {
  url: "git://github.com/looker/app-marketing-google-ads-transfer-bigquery"
  ref: "372c25112eb5717c376f702c91b124e39c0e27fc"
}

remote_dependency: app-marketing-google-ads {
  url: "git://github.com/looker/app-marketing-google-ads"
  ref: "858973420837f60f27f6ffa30a431e755d61de7a"
}

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
  override_constant: ADWORDS_SCHEMA {
    value: "@{ADWORDS_SCHEMA}"
  }
    override_constant: ADWORDS_CUSTOMER_ID {
      value: "@{ADWORDS_CUSTOMER_ID}"
}

}

constant: CONFIG_PROJECT_NAME {
  value: "block-google-ads-transfer-config"
  export: override_required
}

constant: CONNECTION_NAME {
  value: "looker_application"
  export: override_required
}

constant: ADWORDS_SCHEMA {
  value: "adwords_v201609"
  export: override_required
}

constant: ADWORDS_CUSTOMER_ID {
  value: "6747157124"
  export: override_required
}
