; "calc.pb"
; ==============================================================================
; Main "Calculator" file for testing a 'would be' generated parser by Lemon PB.
; Adapted from Serghei Iakovlev's "lemon/examples/calc/main.c".
;
; The authors of this program disclaim copyright.
; ==============================================================================

; Still the original C code from "main.c", only comments were adapted.

int main()
{
    void* pParser = ParseAlloc (malloc);

    ;; First input:
    ;; 15 / 5
    ;;
    Parse (pParser, INTEGER, 15);
    Parse (pParser, DIVIDE, 0);
    Parse (pParser, INTEGER, 5);
    Parse (pParser, 0, 0);

    ;; Second input:
    ;; 50 + 125
    ;;
    Parse (pParser, INTEGER, 50);
    Parse (pParser, PLUS, 0);
    Parse (pParser, INTEGER, 125);
    Parse (pParser, 0, 0);

    ;; Third input:
    ;; 50 * 125 + 125
    ;;
    Parse (pParser, INTEGER, 50);
    Parse (pParser, TIMES, 0);
    Parse (pParser, INTEGER, 125);
    Parse (pParser, PLUS, 0);
    Parse (pParser, INTEGER, 125);
    Parse (pParser, 0, 0);

    ParseFree(pParser, free);

    return 0;
}
