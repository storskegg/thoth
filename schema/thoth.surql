-- ------------------------------
-- OPTION
-- ------------------------------

OPTION IMPORT;

-- ------------------------------
-- TABLE: dict_era
-- ------------------------------

DEFINE TABLE dict_era TYPE NORMAL SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD name ON dict_era TYPE string PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: dict_era
-- ------------------------------


-- ------------------------------
-- TABLE: dict_grammar
-- ------------------------------

DEFINE TABLE dict_grammar TYPE NORMAL SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD type ON dict_grammar TYPE string PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: dict_grammar
-- ------------------------------


-- ------------------------------
-- TABLE: dict_language
-- ------------------------------

DEFINE TABLE dict_language TYPE NORMAL SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD name ON dict_language TYPE string PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: dict_language
-- ------------------------------


-- ------------------------------
-- TABLE: dict_translated_as
-- ------------------------------

DEFINE TABLE dict_translated_as TYPE RELATION IN dict_wordlist_egyptian OUT dict_wordlist_en | dict_wordlist_fr | dict_wordlist_de SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD era ON dict_translated_as TYPE record<dict_era> PERMISSIONS FULL;
DEFINE FIELD grammar_type ON dict_translated_as TYPE record<dict_grammar> PERMISSIONS FULL;
DEFINE FIELD in ON dict_translated_as TYPE record<dict_wordlist_egyptian> PERMISSIONS FULL;
DEFINE FIELD language ON dict_translated_as TYPE record<dict_language> PERMISSIONS FULL;
DEFINE FIELD out ON dict_translated_as TYPE record<dict_wordlist_en | dict_wordlist_fr | dict_wordlist_de> PERMISSIONS FULL;
DEFINE FIELD transliteration ON dict_translated_as TYPE record<dict_transliterations> PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: dict_translated_as
-- ------------------------------


-- ------------------------------
-- TABLE: dict_transliterations
-- ------------------------------

DEFINE TABLE dict_transliterations TYPE NORMAL SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD umschrift ON dict_transliterations TYPE string PERMISSIONS FULL;
DEFINE FIELD unicode ON dict_transliterations TYPE string PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: dict_transliterations
-- ------------------------------


-- ------------------------------
-- TABLE: dict_wordlist_de
-- ------------------------------

DEFINE TABLE dict_wordlist_de TYPE NORMAL SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD literals ON dict_wordlist_de TYPE set<string> PERMISSIONS FULL;
DEFINE FIELD literals[*] ON dict_wordlist_de TYPE string PERMISSIONS FULL;
DEFINE FIELD term ON dict_wordlist_de TYPE string PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: dict_wordlist_de
-- ------------------------------


-- ------------------------------
-- TABLE: dict_wordlist_egyptian
-- ------------------------------

DEFINE TABLE dict_wordlist_egyptian TYPE NORMAL SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD glyphs_gardiner_res ON dict_wordlist_egyptian TYPE string PERMISSIONS FULL;
DEFINE FIELD glyphs_unicode ON dict_wordlist_egyptian TYPE string PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: dict_wordlist_egyptian
-- ------------------------------


-- ------------------------------
-- TABLE: dict_wordlist_en
-- ------------------------------

DEFINE TABLE dict_wordlist_en TYPE NORMAL SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD literals ON dict_wordlist_en TYPE set<string> PERMISSIONS FULL;
DEFINE FIELD literals[*] ON dict_wordlist_en TYPE string PERMISSIONS FULL;
DEFINE FIELD term ON dict_wordlist_en TYPE string PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: dict_wordlist_en
-- ------------------------------


-- ------------------------------
-- TABLE: dict_wordlist_fr
-- ------------------------------

DEFINE TABLE dict_wordlist_fr TYPE NORMAL SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD literals ON dict_wordlist_fr TYPE set<string> PERMISSIONS FULL;
DEFINE FIELD literals[*] ON dict_wordlist_fr TYPE string PERMISSIONS FULL;
DEFINE FIELD term ON dict_wordlist_fr TYPE string PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: dict_wordlist_fr
-- ------------------------------


-- ------------------------------
-- TABLE: glyph_conditional_determinative_for
-- ------------------------------

DEFINE TABLE glyph_conditional_determinative_for TYPE RELATION IN glyph_hieroglyphs_all OUT glyph_determinatives SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD condition ON glyph_conditional_determinative_for TYPE any PERMISSIONS FULL;
DEFINE FIELD in ON glyph_conditional_determinative_for TYPE record<glyph_hieroglyphs_all> PERMISSIONS FULL;
DEFINE FIELD out ON glyph_conditional_determinative_for TYPE record<glyph_determinatives> PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: glyph_conditional_determinative_for
-- ------------------------------


-- ------------------------------
-- TABLE: glyph_determinative_for
-- ------------------------------

DEFINE TABLE glyph_determinative_for TYPE RELATION IN glyph_hieroglyphs_all OUT glyph_determinatives SCHEMALESS PERMISSIONS NONE;

DEFINE FIELD in ON glyph_determinative_for TYPE record<glyph_hieroglyphs_all> PERMISSIONS FULL;
DEFINE FIELD out ON glyph_determinative_for TYPE record<glyph_determinatives> PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: glyph_determinative_for
-- ------------------------------


-- ------------------------------
-- TABLE: glyph_determinative_in
-- ------------------------------

DEFINE TABLE glyph_determinative_in TYPE RELATION IN glyph_hieroglyphs_all OUT dict_wordlist_egyptian SCHEMALESS PERMISSIONS NONE;

DEFINE FIELD in ON glyph_determinative_in TYPE record<glyph_hieroglyphs_all> PERMISSIONS FULL;
DEFINE FIELD out ON glyph_determinative_in TYPE record<dict_wordlist_egyptian> PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: glyph_determinative_in
-- ------------------------------


-- ------------------------------
-- TABLE: glyph_determinatives
-- ------------------------------

DEFINE TABLE glyph_determinatives TYPE NORMAL SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD term ON glyph_determinatives TYPE string PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: glyph_determinatives
-- ------------------------------


-- ------------------------------
-- TABLE: glyph_grouped_by_shape
-- ------------------------------

DEFINE TABLE glyph_grouped_by_shape TYPE RELATION IN glyph_hieroglyphs_all OUT glyph_hieroglyph_groupings SCHEMALESS PERMISSIONS NONE;

DEFINE FIELD in ON glyph_grouped_by_shape TYPE record<glyph_hieroglyphs_all> PERMISSIONS FULL;
DEFINE FIELD out ON glyph_grouped_by_shape TYPE record<glyph_hieroglyph_groupings> PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: glyph_grouped_by_shape
-- ------------------------------


-- ------------------------------
-- TABLE: glyph_grouped_by_theme
-- ------------------------------

DEFINE TABLE glyph_grouped_by_theme TYPE RELATION IN glyph_hieroglyphs_all OUT glyph_hieroglyph_groupings SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD in ON glyph_grouped_by_theme TYPE record<glyph_hieroglyphs_all> PERMISSIONS FULL;
DEFINE FIELD out ON glyph_grouped_by_theme TYPE record<glyph_hieroglyph_groupings> PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: glyph_grouped_by_theme
-- ------------------------------


-- ------------------------------
-- TABLE: glyph_hieroglyph_groupings
-- ------------------------------

DEFINE TABLE glyph_hieroglyph_groupings TYPE NORMAL SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD name ON glyph_hieroglyph_groupings TYPE string PERMISSIONS FULL;
DEFINE FIELD prefix ON glyph_hieroglyph_groupings TYPE string PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: glyph_hieroglyph_groupings
-- ------------------------------


-- ------------------------------
-- TABLE: glyph_hieroglyphs_all
-- ------------------------------

DEFINE TABLE glyph_hieroglyphs_all TYPE NORMAL SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD description ON glyph_hieroglyphs_all TYPE string PERMISSIONS FULL;
DEFINE FIELD description_alternate ON glyph_hieroglyphs_all TYPE string PERMISSIONS FULL;
DEFINE FIELD gardiner_code ON glyph_hieroglyphs_all TYPE string PERMISSIONS FULL;
DEFINE FIELD glyph_unicode ON glyph_hieroglyphs_all TYPE string PERMISSIONS FULL;
DEFINE FIELD rare ON glyph_hieroglyphs_all TYPE bool PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: glyph_hieroglyphs_all
-- ------------------------------


-- ------------------------------
-- TABLE: glyph_ideogram_for
-- ------------------------------

DEFINE TABLE glyph_ideogram_for TYPE RELATION IN glyph_hieroglyphs_all OUT dict_wordlist_egyptian SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD in ON glyph_ideogram_for TYPE record<glyph_hieroglyphs_all> PERMISSIONS FULL;
DEFINE FIELD out ON glyph_ideogram_for TYPE record<dict_wordlist_egyptian> PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: glyph_ideogram_for
-- ------------------------------


-- ------------------------------
-- TABLE: glyph_phonogram_in
-- ------------------------------

DEFINE TABLE glyph_phonogram_in TYPE RELATION IN glyph_hieroglyphs_all OUT dict_wordlist_egyptian SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD dict_transliteration ON glyph_phonogram_in TYPE record<dict_transliterations> PERMISSIONS FULL;
DEFINE FIELD in ON glyph_phonogram_in TYPE record<glyph_hieroglyphs_all> PERMISSIONS FULL;
DEFINE FIELD out ON glyph_phonogram_in TYPE record<dict_wordlist_egyptian> PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: glyph_phonogram_in
-- ------------------------------


-- ------------------------------
-- TABLE: glyph_regrouped_from
-- ------------------------------

DEFINE TABLE glyph_regrouped_from TYPE RELATION IN glyph_grouped_by_theme OUT glyph_grouped_by_theme SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD in ON glyph_regrouped_from TYPE record<glyph_grouped_by_theme> PERMISSIONS FULL;
DEFINE FIELD out ON glyph_regrouped_from TYPE record<glyph_grouped_by_theme> PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: glyph_regrouped_from
-- ------------------------------


-- ------------------------------
-- TABLE: glyph_transliterated_as
-- ------------------------------

DEFINE TABLE glyph_transliterated_as TYPE RELATION IN glyph_hieroglyphs_all OUT glyph_transliteration SCHEMALESS PERMISSIONS NONE;

DEFINE FIELD in ON glyph_transliterated_as TYPE record<glyph_hieroglyphs_all> PERMISSIONS FULL;
DEFINE FIELD out ON glyph_transliterated_as TYPE record<glyph_transliteration> PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: glyph_transliterated_as
-- ------------------------------


-- ------------------------------
-- TABLE: glyph_transliteration
-- ------------------------------

DEFINE TABLE glyph_transliteration TYPE NORMAL SCHEMAFULL PERMISSIONS NONE;

DEFINE FIELD umschrift ON glyph_transliteration TYPE string PERMISSIONS FULL;
DEFINE FIELD unicode ON glyph_transliteration TYPE string PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: glyph_transliteration
-- ------------------------------


-- ------------------------------
-- TABLE: glyph_variant_of
-- ------------------------------

DEFINE TABLE glyph_variant_of TYPE RELATION IN glyph_hieroglyphs_all OUT glyph_hieroglyphs_all SCHEMALESS PERMISSIONS NONE;

DEFINE FIELD in ON glyph_variant_of TYPE record<glyph_hieroglyphs_all> PERMISSIONS FULL;
DEFINE FIELD out ON glyph_variant_of TYPE record<glyph_hieroglyphs_all> PERMISSIONS FULL;



-- ------------------------------
-- TABLE DATA: glyph_variant_of
-- ------------------------------


