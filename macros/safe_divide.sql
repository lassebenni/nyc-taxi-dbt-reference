{% macro safe_divide(numerator, denominator) %}
    {#-
      TODO: implement this macro, then delete the raise_compiler_error line below.

      It should return the SQL expression:   {{ numerator }} / NULLIF({{ denominator }}, 0)

      NULLIF(x, 0) returns NULL when x is 0, and x otherwise. Postgres propagates
      NULL through division, so a zero denominator yields NULL instead of a
      division-by-zero error. Return only the expression: no SELECT, no semicolon.
    -#}
    {{ exceptions.raise_compiler_error("safe_divide is not implemented yet -- see EXERCISE.md") }}
{% endmacro %}
