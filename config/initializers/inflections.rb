# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, "\\1en"
#   inflect.singular /^(ox)en/i, "\\1"
    inflect.irregular "comuna", "comunas"
    inflect.irregular "tipo_socio", "tipos_socios"
    inflect.irregular "asociado", "asociados"
    inflect.irregular "boleta", "boletas"
    inflect.irregular "tipo_pago", "tipos_pagos"
    inflect.irregular "precio", "precios"
    inflect.irregular "year", "years"
    inflect.irregular "mes", "meses"
    inflect.irregular "boleta_mes", "boletas_meses"

#   inflect.uncountable %w( fish sheep )
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym "RESTful"
# end
