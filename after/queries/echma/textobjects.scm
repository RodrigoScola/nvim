
(interface_declaration) @class.outer

(interface_declaration
  body: (interface_body
    .
    "{"
    .
    (_) @_start @_end
    _? @_end
    .
    "}"
    (#make-range! "class.inner" @_start @_end)))

(type_alias_declaration) @class.outer

(type_alias_declaration
  value: (object_type
    .
    "{"
    .
    (_) @_start @_end
    _? @_end
    .
    "}"
    (#make-range! "class.inner" @_start @_end)))

(enum_declaration) @class.outer

(enum_declaration
  body: (enum_body
    .
    "{"
    .
    (_) @_start @_end
    _? @_end
    .
    "}"
    (#make-range! "class.inner" @_start @_end)))

(object
  (pair
    key: (_) @property.lhs
    value: (_) @property.inner @property.rhs) @property.outer)

