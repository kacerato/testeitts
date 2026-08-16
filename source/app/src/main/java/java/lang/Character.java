package java.lang;

import android.bluetooth.le.AdvertisingSetParameters;
import android.icu.text.DateFormat;
import android.opengl.EGL14;
import android.opengl.EGLExt;
import android.opengl.GLES30;
import android.text.format.DateUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.apksig.internal.apk.v4.V4Signature;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.jme3.renderer.opengl.GL2;
import dalvik.bytecode.Opcodes;
import java.io.Serializable;
import java.lang.constant.Constable;
import java.lang.constant.ConstantDescs;
import java.lang.constant.DynamicConstantDesc;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import jdk.internal.ValueBased;
import jdk.internal.misc.CDS;
import jdk.internal.vm.annotation.IntrinsicCandidate;
import jdk.internal.vm.annotation.Stable;
import nl.C14458b;
import nl.m;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import vn.c;
import w2.C15883c;
import x0.C16039a;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Character.class
 */
@ValueBased
public final class Character implements Serializable, Comparable<Character>, Constable {
    public static final int MIN_RADIX = 2;
    public static final int MAX_RADIX = 36;
    public static final char MIN_VALUE = 0;
    public static final char MAX_VALUE = '\uffff';
    public static final Class<Character> TYPE;
    public static final byte UNASSIGNED = 0;
    public static final byte UPPERCASE_LETTER = 1;
    public static final byte LOWERCASE_LETTER = 2;
    public static final byte TITLECASE_LETTER = 3;
    public static final byte MODIFIER_LETTER = 4;
    public static final byte OTHER_LETTER = 5;
    public static final byte NON_SPACING_MARK = 6;
    public static final byte ENCLOSING_MARK = 7;
    public static final byte COMBINING_SPACING_MARK = 8;
    public static final byte DECIMAL_DIGIT_NUMBER = 9;
    public static final byte LETTER_NUMBER = 10;
    public static final byte OTHER_NUMBER = 11;
    public static final byte SPACE_SEPARATOR = 12;
    public static final byte LINE_SEPARATOR = 13;
    public static final byte PARAGRAPH_SEPARATOR = 14;
    public static final byte CONTROL = 15;
    public static final byte FORMAT = 16;
    public static final byte PRIVATE_USE = 18;
    public static final byte SURROGATE = 19;
    public static final byte DASH_PUNCTUATION = 20;
    public static final byte START_PUNCTUATION = 21;
    public static final byte END_PUNCTUATION = 22;
    public static final byte CONNECTOR_PUNCTUATION = 23;
    public static final byte OTHER_PUNCTUATION = 24;
    public static final byte MATH_SYMBOL = 25;
    public static final byte CURRENCY_SYMBOL = 26;
    public static final byte MODIFIER_SYMBOL = 27;
    public static final byte OTHER_SYMBOL = 28;
    public static final byte INITIAL_QUOTE_PUNCTUATION = 29;
    public static final byte FINAL_QUOTE_PUNCTUATION = 30;
    static final int ERROR = -1;
    public static final byte DIRECTIONALITY_UNDEFINED = -1;
    public static final byte DIRECTIONALITY_LEFT_TO_RIGHT = 0;
    public static final byte DIRECTIONALITY_RIGHT_TO_LEFT = 1;
    public static final byte DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC = 2;
    public static final byte DIRECTIONALITY_EUROPEAN_NUMBER = 3;
    public static final byte DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR = 4;
    public static final byte DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR = 5;
    public static final byte DIRECTIONALITY_ARABIC_NUMBER = 6;
    public static final byte DIRECTIONALITY_COMMON_NUMBER_SEPARATOR = 7;
    public static final byte DIRECTIONALITY_NONSPACING_MARK = 8;
    public static final byte DIRECTIONALITY_BOUNDARY_NEUTRAL = 9;
    public static final byte DIRECTIONALITY_PARAGRAPH_SEPARATOR = 10;
    public static final byte DIRECTIONALITY_SEGMENT_SEPARATOR = 11;
    public static final byte DIRECTIONALITY_WHITESPACE = 12;
    public static final byte DIRECTIONALITY_OTHER_NEUTRALS = 13;
    public static final byte DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING = 14;
    public static final byte DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE = 15;
    public static final byte DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING = 16;
    public static final byte DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE = 17;
    public static final byte DIRECTIONALITY_POP_DIRECTIONAL_FORMAT = 18;
    public static final byte DIRECTIONALITY_LEFT_TO_RIGHT_ISOLATE = 19;
    public static final byte DIRECTIONALITY_RIGHT_TO_LEFT_ISOLATE = 20;
    public static final byte DIRECTIONALITY_FIRST_STRONG_ISOLATE = 21;
    public static final byte DIRECTIONALITY_POP_DIRECTIONAL_ISOLATE = 22;
    public static final char MIN_HIGH_SURROGATE = '\ud800';
    public static final char MAX_HIGH_SURROGATE = '\udbff';
    public static final char MIN_LOW_SURROGATE = '\udc00';
    public static final char MAX_LOW_SURROGATE = '\udfff';
    public static final char MIN_SURROGATE = '\ud800';
    public static final char MAX_SURROGATE = '\udfff';
    public static final int MIN_SUPPLEMENTARY_CODE_POINT = 65536;
    public static final int MIN_CODE_POINT = 0;
    public static final int MAX_CODE_POINT = 1114111;
    private final char value;
    private static final long serialVersionUID = 3786198910865385080L;
    public static final int SIZE = 16;
    public static final int BYTES = 2;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !Character.class.desiredAssertionStatus();
        TYPE = Class.getPrimitiveClass("char");
    }

    @Override
    public Optional<DynamicConstantDesc<Character>> describeConstable() {
        return Optional.of(DynamicConstantDesc.ofNamed(ConstantDescs.BSM_EXPLICIT_CAST, ConstantDescs.DEFAULT_NAME, ConstantDescs.CD_char, Integer.valueOf(this.value)));
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Character$Subset.class
 */
    public static class Subset {
        private String name;

        public Subset(String name) {
            if (name == null) {
                throw new NullPointerException("name");
            }
            this.name = name;
        }

        public final boolean equals(Object obj) {
            return this == obj;
        }

        public final int hashCode() {
            return super.hashCode();
        }

        public final String toString() {
            return this.name;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Character$UnicodeBlock.class
 */
    public static final class UnicodeBlock extends Subset {
        private static final int NUM_ENTITIES = 782;
        private static Map<String, UnicodeBlock> map = HashMap.newHashMap(NUM_ENTITIES);
        public static final UnicodeBlock BASIC_LATIN = new UnicodeBlock("BASIC_LATIN", "BASIC LATIN", "BASICLATIN");
        public static final UnicodeBlock LATIN_1_SUPPLEMENT = new UnicodeBlock("LATIN_1_SUPPLEMENT", "LATIN-1 SUPPLEMENT", "LATIN-1SUPPLEMENT");
        public static final UnicodeBlock LATIN_EXTENDED_A = new UnicodeBlock("LATIN_EXTENDED_A", "LATIN EXTENDED-A", "LATINEXTENDED-A");
        public static final UnicodeBlock LATIN_EXTENDED_B = new UnicodeBlock("LATIN_EXTENDED_B", "LATIN EXTENDED-B", "LATINEXTENDED-B");
        public static final UnicodeBlock IPA_EXTENSIONS = new UnicodeBlock("IPA_EXTENSIONS", "IPA EXTENSIONS", "IPAEXTENSIONS");
        public static final UnicodeBlock SPACING_MODIFIER_LETTERS = new UnicodeBlock("SPACING_MODIFIER_LETTERS", "SPACING MODIFIER LETTERS", "SPACINGMODIFIERLETTERS");
        public static final UnicodeBlock COMBINING_DIACRITICAL_MARKS = new UnicodeBlock("COMBINING_DIACRITICAL_MARKS", "COMBINING DIACRITICAL MARKS", "COMBININGDIACRITICALMARKS");
        public static final UnicodeBlock GREEK = new UnicodeBlock("GREEK", "GREEK AND COPTIC", "GREEKANDCOPTIC");
        public static final UnicodeBlock CYRILLIC = new UnicodeBlock("CYRILLIC");
        public static final UnicodeBlock ARMENIAN = new UnicodeBlock("ARMENIAN");
        public static final UnicodeBlock HEBREW = new UnicodeBlock("HEBREW");
        public static final UnicodeBlock ARABIC = new UnicodeBlock("ARABIC");
        public static final UnicodeBlock DEVANAGARI = new UnicodeBlock("DEVANAGARI");
        public static final UnicodeBlock BENGALI = new UnicodeBlock("BENGALI");
        public static final UnicodeBlock GURMUKHI = new UnicodeBlock("GURMUKHI");
        public static final UnicodeBlock GUJARATI = new UnicodeBlock("GUJARATI");
        public static final UnicodeBlock ORIYA = new UnicodeBlock("ORIYA");
        public static final UnicodeBlock TAMIL = new UnicodeBlock("TAMIL");
        public static final UnicodeBlock TELUGU = new UnicodeBlock("TELUGU");
        public static final UnicodeBlock KANNADA = new UnicodeBlock("KANNADA");
        public static final UnicodeBlock MALAYALAM = new UnicodeBlock("MALAYALAM");
        public static final UnicodeBlock THAI = new UnicodeBlock("THAI");
        public static final UnicodeBlock LAO = new UnicodeBlock("LAO");
        public static final UnicodeBlock TIBETAN = new UnicodeBlock("TIBETAN");
        public static final UnicodeBlock GEORGIAN = new UnicodeBlock("GEORGIAN");
        public static final UnicodeBlock HANGUL_JAMO = new UnicodeBlock("HANGUL_JAMO", "HANGUL JAMO", "HANGULJAMO");
        public static final UnicodeBlock LATIN_EXTENDED_ADDITIONAL = new UnicodeBlock("LATIN_EXTENDED_ADDITIONAL", "LATIN EXTENDED ADDITIONAL", "LATINEXTENDEDADDITIONAL");
        public static final UnicodeBlock GREEK_EXTENDED = new UnicodeBlock("GREEK_EXTENDED", "GREEK EXTENDED", "GREEKEXTENDED");
        public static final UnicodeBlock GENERAL_PUNCTUATION = new UnicodeBlock("GENERAL_PUNCTUATION", "GENERAL PUNCTUATION", "GENERALPUNCTUATION");
        public static final UnicodeBlock SUPERSCRIPTS_AND_SUBSCRIPTS = new UnicodeBlock("SUPERSCRIPTS_AND_SUBSCRIPTS", "SUPERSCRIPTS AND SUBSCRIPTS", "SUPERSCRIPTSANDSUBSCRIPTS");
        public static final UnicodeBlock CURRENCY_SYMBOLS = new UnicodeBlock("CURRENCY_SYMBOLS", "CURRENCY SYMBOLS", "CURRENCYSYMBOLS");
        public static final UnicodeBlock COMBINING_MARKS_FOR_SYMBOLS = new UnicodeBlock("COMBINING_MARKS_FOR_SYMBOLS", "COMBINING DIACRITICAL MARKS FOR SYMBOLS", "COMBININGDIACRITICALMARKSFORSYMBOLS", "COMBINING MARKS FOR SYMBOLS", "COMBININGMARKSFORSYMBOLS");
        public static final UnicodeBlock LETTERLIKE_SYMBOLS = new UnicodeBlock("LETTERLIKE_SYMBOLS", "LETTERLIKE SYMBOLS", "LETTERLIKESYMBOLS");
        public static final UnicodeBlock NUMBER_FORMS = new UnicodeBlock("NUMBER_FORMS", "NUMBER FORMS", "NUMBERFORMS");
        public static final UnicodeBlock ARROWS = new UnicodeBlock("ARROWS");
        public static final UnicodeBlock MATHEMATICAL_OPERATORS = new UnicodeBlock("MATHEMATICAL_OPERATORS", "MATHEMATICAL OPERATORS", "MATHEMATICALOPERATORS");
        public static final UnicodeBlock MISCELLANEOUS_TECHNICAL = new UnicodeBlock("MISCELLANEOUS_TECHNICAL", "MISCELLANEOUS TECHNICAL", "MISCELLANEOUSTECHNICAL");
        public static final UnicodeBlock CONTROL_PICTURES = new UnicodeBlock("CONTROL_PICTURES", "CONTROL PICTURES", "CONTROLPICTURES");
        public static final UnicodeBlock OPTICAL_CHARACTER_RECOGNITION = new UnicodeBlock("OPTICAL_CHARACTER_RECOGNITION", "OPTICAL CHARACTER RECOGNITION", "OPTICALCHARACTERRECOGNITION");
        public static final UnicodeBlock ENCLOSED_ALPHANUMERICS = new UnicodeBlock("ENCLOSED_ALPHANUMERICS", "ENCLOSED ALPHANUMERICS", "ENCLOSEDALPHANUMERICS");
        public static final UnicodeBlock BOX_DRAWING = new UnicodeBlock("BOX_DRAWING", "BOX DRAWING", "BOXDRAWING");
        public static final UnicodeBlock BLOCK_ELEMENTS = new UnicodeBlock("BLOCK_ELEMENTS", "BLOCK ELEMENTS", "BLOCKELEMENTS");
        public static final UnicodeBlock GEOMETRIC_SHAPES = new UnicodeBlock("GEOMETRIC_SHAPES", "GEOMETRIC SHAPES", "GEOMETRICSHAPES");
        public static final UnicodeBlock MISCELLANEOUS_SYMBOLS = new UnicodeBlock("MISCELLANEOUS_SYMBOLS", "MISCELLANEOUS SYMBOLS", "MISCELLANEOUSSYMBOLS");
        public static final UnicodeBlock DINGBATS = new UnicodeBlock("DINGBATS");
        public static final UnicodeBlock CJK_SYMBOLS_AND_PUNCTUATION = new UnicodeBlock("CJK_SYMBOLS_AND_PUNCTUATION", "CJK SYMBOLS AND PUNCTUATION", "CJKSYMBOLSANDPUNCTUATION");
        public static final UnicodeBlock HIRAGANA = new UnicodeBlock("HIRAGANA");
        public static final UnicodeBlock KATAKANA = new UnicodeBlock("KATAKANA");
        public static final UnicodeBlock BOPOMOFO = new UnicodeBlock("BOPOMOFO");
        public static final UnicodeBlock HANGUL_COMPATIBILITY_JAMO = new UnicodeBlock("HANGUL_COMPATIBILITY_JAMO", "HANGUL COMPATIBILITY JAMO", "HANGULCOMPATIBILITYJAMO");
        public static final UnicodeBlock KANBUN = new UnicodeBlock("KANBUN");
        public static final UnicodeBlock ENCLOSED_CJK_LETTERS_AND_MONTHS = new UnicodeBlock("ENCLOSED_CJK_LETTERS_AND_MONTHS", "ENCLOSED CJK LETTERS AND MONTHS", "ENCLOSEDCJKLETTERSANDMONTHS");
        public static final UnicodeBlock CJK_COMPATIBILITY = new UnicodeBlock("CJK_COMPATIBILITY", "CJK COMPATIBILITY", "CJKCOMPATIBILITY");
        public static final UnicodeBlock CJK_UNIFIED_IDEOGRAPHS = new UnicodeBlock("CJK_UNIFIED_IDEOGRAPHS", "CJK UNIFIED IDEOGRAPHS", "CJKUNIFIEDIDEOGRAPHS");
        public static final UnicodeBlock HANGUL_SYLLABLES = new UnicodeBlock("HANGUL_SYLLABLES", "HANGUL SYLLABLES", "HANGULSYLLABLES");
        public static final UnicodeBlock PRIVATE_USE_AREA = new UnicodeBlock("PRIVATE_USE_AREA", "PRIVATE USE AREA", "PRIVATEUSEAREA");
        public static final UnicodeBlock CJK_COMPATIBILITY_IDEOGRAPHS = new UnicodeBlock("CJK_COMPATIBILITY_IDEOGRAPHS", "CJK COMPATIBILITY IDEOGRAPHS", "CJKCOMPATIBILITYIDEOGRAPHS");
        public static final UnicodeBlock ALPHABETIC_PRESENTATION_FORMS = new UnicodeBlock("ALPHABETIC_PRESENTATION_FORMS", "ALPHABETIC PRESENTATION FORMS", "ALPHABETICPRESENTATIONFORMS");
        public static final UnicodeBlock ARABIC_PRESENTATION_FORMS_A = new UnicodeBlock("ARABIC_PRESENTATION_FORMS_A", "ARABIC PRESENTATION FORMS-A", "ARABICPRESENTATIONFORMS-A");
        public static final UnicodeBlock COMBINING_HALF_MARKS = new UnicodeBlock("COMBINING_HALF_MARKS", "COMBINING HALF MARKS", "COMBININGHALFMARKS");
        public static final UnicodeBlock CJK_COMPATIBILITY_FORMS = new UnicodeBlock("CJK_COMPATIBILITY_FORMS", "CJK COMPATIBILITY FORMS", "CJKCOMPATIBILITYFORMS");
        public static final UnicodeBlock SMALL_FORM_VARIANTS = new UnicodeBlock("SMALL_FORM_VARIANTS", "SMALL FORM VARIANTS", "SMALLFORMVARIANTS");
        public static final UnicodeBlock ARABIC_PRESENTATION_FORMS_B = new UnicodeBlock("ARABIC_PRESENTATION_FORMS_B", "ARABIC PRESENTATION FORMS-B", "ARABICPRESENTATIONFORMS-B");
        public static final UnicodeBlock HALFWIDTH_AND_FULLWIDTH_FORMS = new UnicodeBlock("HALFWIDTH_AND_FULLWIDTH_FORMS", "HALFWIDTH AND FULLWIDTH FORMS", "HALFWIDTHANDFULLWIDTHFORMS");
        public static final UnicodeBlock SPECIALS = new UnicodeBlock("SPECIALS");

        @Deprecated(since = "1.5")
        public static final UnicodeBlock SURROGATES_AREA = new UnicodeBlock("SURROGATES_AREA");
        public static final UnicodeBlock SYRIAC = new UnicodeBlock("SYRIAC");
        public static final UnicodeBlock THAANA = new UnicodeBlock("THAANA");
        public static final UnicodeBlock SINHALA = new UnicodeBlock("SINHALA");
        public static final UnicodeBlock MYANMAR = new UnicodeBlock("MYANMAR");
        public static final UnicodeBlock ETHIOPIC = new UnicodeBlock("ETHIOPIC");
        public static final UnicodeBlock CHEROKEE = new UnicodeBlock("CHEROKEE");
        public static final UnicodeBlock UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS = new UnicodeBlock("UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS", "UNIFIED CANADIAN ABORIGINAL SYLLABICS", "UNIFIEDCANADIANABORIGINALSYLLABICS");
        public static final UnicodeBlock OGHAM = new UnicodeBlock("OGHAM");
        public static final UnicodeBlock RUNIC = new UnicodeBlock("RUNIC");
        public static final UnicodeBlock KHMER = new UnicodeBlock("KHMER");
        public static final UnicodeBlock MONGOLIAN = new UnicodeBlock("MONGOLIAN");
        public static final UnicodeBlock BRAILLE_PATTERNS = new UnicodeBlock("BRAILLE_PATTERNS", "BRAILLE PATTERNS", "BRAILLEPATTERNS");
        public static final UnicodeBlock CJK_RADICALS_SUPPLEMENT = new UnicodeBlock("CJK_RADICALS_SUPPLEMENT", "CJK RADICALS SUPPLEMENT", "CJKRADICALSSUPPLEMENT");
        public static final UnicodeBlock KANGXI_RADICALS = new UnicodeBlock("KANGXI_RADICALS", "KANGXI RADICALS", "KANGXIRADICALS");
        public static final UnicodeBlock IDEOGRAPHIC_DESCRIPTION_CHARACTERS = new UnicodeBlock("IDEOGRAPHIC_DESCRIPTION_CHARACTERS", "IDEOGRAPHIC DESCRIPTION CHARACTERS", "IDEOGRAPHICDESCRIPTIONCHARACTERS");
        public static final UnicodeBlock BOPOMOFO_EXTENDED = new UnicodeBlock("BOPOMOFO_EXTENDED", "BOPOMOFO EXTENDED", "BOPOMOFOEXTENDED");
        public static final UnicodeBlock CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A = new UnicodeBlock("CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A", "CJK UNIFIED IDEOGRAPHS EXTENSION A", "CJKUNIFIEDIDEOGRAPHSEXTENSIONA");
        public static final UnicodeBlock YI_SYLLABLES = new UnicodeBlock("YI_SYLLABLES", "YI SYLLABLES", "YISYLLABLES");
        public static final UnicodeBlock YI_RADICALS = new UnicodeBlock("YI_RADICALS", "YI RADICALS", "YIRADICALS");
        public static final UnicodeBlock CYRILLIC_SUPPLEMENTARY = new UnicodeBlock("CYRILLIC_SUPPLEMENTARY", "CYRILLIC SUPPLEMENTARY", "CYRILLICSUPPLEMENTARY", "CYRILLIC SUPPLEMENT", "CYRILLICSUPPLEMENT");
        public static final UnicodeBlock TAGALOG = new UnicodeBlock("TAGALOG");
        public static final UnicodeBlock HANUNOO = new UnicodeBlock("HANUNOO");
        public static final UnicodeBlock BUHID = new UnicodeBlock("BUHID");
        public static final UnicodeBlock TAGBANWA = new UnicodeBlock("TAGBANWA");
        public static final UnicodeBlock LIMBU = new UnicodeBlock("LIMBU");
        public static final UnicodeBlock TAI_LE = new UnicodeBlock("TAI_LE", "TAI LE", "TAILE");
        public static final UnicodeBlock KHMER_SYMBOLS = new UnicodeBlock("KHMER_SYMBOLS", "KHMER SYMBOLS", "KHMERSYMBOLS");
        public static final UnicodeBlock PHONETIC_EXTENSIONS = new UnicodeBlock("PHONETIC_EXTENSIONS", "PHONETIC EXTENSIONS", "PHONETICEXTENSIONS");
        public static final UnicodeBlock MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A = new UnicodeBlock("MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A", "MISCELLANEOUS MATHEMATICAL SYMBOLS-A", "MISCELLANEOUSMATHEMATICALSYMBOLS-A");
        public static final UnicodeBlock SUPPLEMENTAL_ARROWS_A = new UnicodeBlock("SUPPLEMENTAL_ARROWS_A", "SUPPLEMENTAL ARROWS-A", "SUPPLEMENTALARROWS-A");
        public static final UnicodeBlock SUPPLEMENTAL_ARROWS_B = new UnicodeBlock("SUPPLEMENTAL_ARROWS_B", "SUPPLEMENTAL ARROWS-B", "SUPPLEMENTALARROWS-B");
        public static final UnicodeBlock MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B = new UnicodeBlock("MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B", "MISCELLANEOUS MATHEMATICAL SYMBOLS-B", "MISCELLANEOUSMATHEMATICALSYMBOLS-B");
        public static final UnicodeBlock SUPPLEMENTAL_MATHEMATICAL_OPERATORS = new UnicodeBlock("SUPPLEMENTAL_MATHEMATICAL_OPERATORS", "SUPPLEMENTAL MATHEMATICAL OPERATORS", "SUPPLEMENTALMATHEMATICALOPERATORS");
        public static final UnicodeBlock MISCELLANEOUS_SYMBOLS_AND_ARROWS = new UnicodeBlock("MISCELLANEOUS_SYMBOLS_AND_ARROWS", "MISCELLANEOUS SYMBOLS AND ARROWS", "MISCELLANEOUSSYMBOLSANDARROWS");
        public static final UnicodeBlock KATAKANA_PHONETIC_EXTENSIONS = new UnicodeBlock("KATAKANA_PHONETIC_EXTENSIONS", "KATAKANA PHONETIC EXTENSIONS", "KATAKANAPHONETICEXTENSIONS");
        public static final UnicodeBlock YIJING_HEXAGRAM_SYMBOLS = new UnicodeBlock("YIJING_HEXAGRAM_SYMBOLS", "YIJING HEXAGRAM SYMBOLS", "YIJINGHEXAGRAMSYMBOLS");
        public static final UnicodeBlock VARIATION_SELECTORS = new UnicodeBlock("VARIATION_SELECTORS", "VARIATION SELECTORS", "VARIATIONSELECTORS");
        public static final UnicodeBlock LINEAR_B_SYLLABARY = new UnicodeBlock("LINEAR_B_SYLLABARY", "LINEAR B SYLLABARY", "LINEARBSYLLABARY");
        public static final UnicodeBlock LINEAR_B_IDEOGRAMS = new UnicodeBlock("LINEAR_B_IDEOGRAMS", "LINEAR B IDEOGRAMS", "LINEARBIDEOGRAMS");
        public static final UnicodeBlock AEGEAN_NUMBERS = new UnicodeBlock("AEGEAN_NUMBERS", "AEGEAN NUMBERS", "AEGEANNUMBERS");
        public static final UnicodeBlock OLD_ITALIC = new UnicodeBlock("OLD_ITALIC", "OLD ITALIC", "OLDITALIC");
        public static final UnicodeBlock GOTHIC = new UnicodeBlock("GOTHIC");
        public static final UnicodeBlock UGARITIC = new UnicodeBlock("UGARITIC");
        public static final UnicodeBlock DESERET = new UnicodeBlock("DESERET");
        public static final UnicodeBlock SHAVIAN = new UnicodeBlock("SHAVIAN");
        public static final UnicodeBlock OSMANYA = new UnicodeBlock("OSMANYA");
        public static final UnicodeBlock CYPRIOT_SYLLABARY = new UnicodeBlock("CYPRIOT_SYLLABARY", "CYPRIOT SYLLABARY", "CYPRIOTSYLLABARY");
        public static final UnicodeBlock BYZANTINE_MUSICAL_SYMBOLS = new UnicodeBlock("BYZANTINE_MUSICAL_SYMBOLS", "BYZANTINE MUSICAL SYMBOLS", "BYZANTINEMUSICALSYMBOLS");
        public static final UnicodeBlock MUSICAL_SYMBOLS = new UnicodeBlock("MUSICAL_SYMBOLS", "MUSICAL SYMBOLS", "MUSICALSYMBOLS");
        public static final UnicodeBlock TAI_XUAN_JING_SYMBOLS = new UnicodeBlock("TAI_XUAN_JING_SYMBOLS", "TAI XUAN JING SYMBOLS", "TAIXUANJINGSYMBOLS");
        public static final UnicodeBlock MATHEMATICAL_ALPHANUMERIC_SYMBOLS = new UnicodeBlock("MATHEMATICAL_ALPHANUMERIC_SYMBOLS", "MATHEMATICAL ALPHANUMERIC SYMBOLS", "MATHEMATICALALPHANUMERICSYMBOLS");
        public static final UnicodeBlock CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B = new UnicodeBlock("CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B", "CJK UNIFIED IDEOGRAPHS EXTENSION B", "CJKUNIFIEDIDEOGRAPHSEXTENSIONB");
        public static final UnicodeBlock CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT = new UnicodeBlock("CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT", "CJK COMPATIBILITY IDEOGRAPHS SUPPLEMENT", "CJKCOMPATIBILITYIDEOGRAPHSSUPPLEMENT");
        public static final UnicodeBlock TAGS = new UnicodeBlock("TAGS");
        public static final UnicodeBlock VARIATION_SELECTORS_SUPPLEMENT = new UnicodeBlock("VARIATION_SELECTORS_SUPPLEMENT", "VARIATION SELECTORS SUPPLEMENT", "VARIATIONSELECTORSSUPPLEMENT");
        public static final UnicodeBlock SUPPLEMENTARY_PRIVATE_USE_AREA_A = new UnicodeBlock("SUPPLEMENTARY_PRIVATE_USE_AREA_A", "SUPPLEMENTARY PRIVATE USE AREA-A", "SUPPLEMENTARYPRIVATEUSEAREA-A");
        public static final UnicodeBlock SUPPLEMENTARY_PRIVATE_USE_AREA_B = new UnicodeBlock("SUPPLEMENTARY_PRIVATE_USE_AREA_B", "SUPPLEMENTARY PRIVATE USE AREA-B", "SUPPLEMENTARYPRIVATEUSEAREA-B");
        public static final UnicodeBlock HIGH_SURROGATES = new UnicodeBlock("HIGH_SURROGATES", "HIGH SURROGATES", "HIGHSURROGATES");
        public static final UnicodeBlock HIGH_PRIVATE_USE_SURROGATES = new UnicodeBlock("HIGH_PRIVATE_USE_SURROGATES", "HIGH PRIVATE USE SURROGATES", "HIGHPRIVATEUSESURROGATES");
        public static final UnicodeBlock LOW_SURROGATES = new UnicodeBlock("LOW_SURROGATES", "LOW SURROGATES", "LOWSURROGATES");
        public static final UnicodeBlock ARABIC_SUPPLEMENT = new UnicodeBlock("ARABIC_SUPPLEMENT", "ARABIC SUPPLEMENT", "ARABICSUPPLEMENT");
        public static final UnicodeBlock NKO = new UnicodeBlock("NKO");
        public static final UnicodeBlock SAMARITAN = new UnicodeBlock("SAMARITAN");
        public static final UnicodeBlock MANDAIC = new UnicodeBlock("MANDAIC");
        public static final UnicodeBlock ETHIOPIC_SUPPLEMENT = new UnicodeBlock("ETHIOPIC_SUPPLEMENT", "ETHIOPIC SUPPLEMENT", "ETHIOPICSUPPLEMENT");
        public static final UnicodeBlock UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS_EXTENDED = new UnicodeBlock("UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS_EXTENDED", "UNIFIED CANADIAN ABORIGINAL SYLLABICS EXTENDED", "UNIFIEDCANADIANABORIGINALSYLLABICSEXTENDED");
        public static final UnicodeBlock NEW_TAI_LUE = new UnicodeBlock("NEW_TAI_LUE", "NEW TAI LUE", "NEWTAILUE");
        public static final UnicodeBlock BUGINESE = new UnicodeBlock("BUGINESE");
        public static final UnicodeBlock TAI_THAM = new UnicodeBlock("TAI_THAM", "TAI THAM", "TAITHAM");
        public static final UnicodeBlock BALINESE = new UnicodeBlock("BALINESE");
        public static final UnicodeBlock SUNDANESE = new UnicodeBlock("SUNDANESE");
        public static final UnicodeBlock BATAK = new UnicodeBlock("BATAK");
        public static final UnicodeBlock LEPCHA = new UnicodeBlock("LEPCHA");
        public static final UnicodeBlock OL_CHIKI = new UnicodeBlock("OL_CHIKI", "OL CHIKI", "OLCHIKI");
        public static final UnicodeBlock VEDIC_EXTENSIONS = new UnicodeBlock("VEDIC_EXTENSIONS", "VEDIC EXTENSIONS", "VEDICEXTENSIONS");
        public static final UnicodeBlock PHONETIC_EXTENSIONS_SUPPLEMENT = new UnicodeBlock("PHONETIC_EXTENSIONS_SUPPLEMENT", "PHONETIC EXTENSIONS SUPPLEMENT", "PHONETICEXTENSIONSSUPPLEMENT");
        public static final UnicodeBlock COMBINING_DIACRITICAL_MARKS_SUPPLEMENT = new UnicodeBlock("COMBINING_DIACRITICAL_MARKS_SUPPLEMENT", "COMBINING DIACRITICAL MARKS SUPPLEMENT", "COMBININGDIACRITICALMARKSSUPPLEMENT");
        public static final UnicodeBlock GLAGOLITIC = new UnicodeBlock("GLAGOLITIC");
        public static final UnicodeBlock LATIN_EXTENDED_C = new UnicodeBlock("LATIN_EXTENDED_C", "LATIN EXTENDED-C", "LATINEXTENDED-C");
        public static final UnicodeBlock COPTIC = new UnicodeBlock("COPTIC");
        public static final UnicodeBlock GEORGIAN_SUPPLEMENT = new UnicodeBlock("GEORGIAN_SUPPLEMENT", "GEORGIAN SUPPLEMENT", "GEORGIANSUPPLEMENT");
        public static final UnicodeBlock TIFINAGH = new UnicodeBlock("TIFINAGH");
        public static final UnicodeBlock ETHIOPIC_EXTENDED = new UnicodeBlock("ETHIOPIC_EXTENDED", "ETHIOPIC EXTENDED", "ETHIOPICEXTENDED");
        public static final UnicodeBlock CYRILLIC_EXTENDED_A = new UnicodeBlock("CYRILLIC_EXTENDED_A", "CYRILLIC EXTENDED-A", "CYRILLICEXTENDED-A");
        public static final UnicodeBlock SUPPLEMENTAL_PUNCTUATION = new UnicodeBlock("SUPPLEMENTAL_PUNCTUATION", "SUPPLEMENTAL PUNCTUATION", "SUPPLEMENTALPUNCTUATION");
        public static final UnicodeBlock CJK_STROKES = new UnicodeBlock("CJK_STROKES", "CJK STROKES", "CJKSTROKES");
        public static final UnicodeBlock LISU = new UnicodeBlock("LISU");
        public static final UnicodeBlock VAI = new UnicodeBlock("VAI");
        public static final UnicodeBlock CYRILLIC_EXTENDED_B = new UnicodeBlock("CYRILLIC_EXTENDED_B", "CYRILLIC EXTENDED-B", "CYRILLICEXTENDED-B");
        public static final UnicodeBlock BAMUM = new UnicodeBlock("BAMUM");
        public static final UnicodeBlock MODIFIER_TONE_LETTERS = new UnicodeBlock("MODIFIER_TONE_LETTERS", "MODIFIER TONE LETTERS", "MODIFIERTONELETTERS");
        public static final UnicodeBlock LATIN_EXTENDED_D = new UnicodeBlock("LATIN_EXTENDED_D", "LATIN EXTENDED-D", "LATINEXTENDED-D");
        public static final UnicodeBlock SYLOTI_NAGRI = new UnicodeBlock("SYLOTI_NAGRI", "SYLOTI NAGRI", "SYLOTINAGRI");
        public static final UnicodeBlock COMMON_INDIC_NUMBER_FORMS = new UnicodeBlock("COMMON_INDIC_NUMBER_FORMS", "COMMON INDIC NUMBER FORMS", "COMMONINDICNUMBERFORMS");
        public static final UnicodeBlock PHAGS_PA = new UnicodeBlock("PHAGS_PA", "PHAGS-PA");
        public static final UnicodeBlock SAURASHTRA = new UnicodeBlock("SAURASHTRA");
        public static final UnicodeBlock DEVANAGARI_EXTENDED = new UnicodeBlock("DEVANAGARI_EXTENDED", "DEVANAGARI EXTENDED", "DEVANAGARIEXTENDED");
        public static final UnicodeBlock KAYAH_LI = new UnicodeBlock("KAYAH_LI", "KAYAH LI", "KAYAHLI");
        public static final UnicodeBlock REJANG = new UnicodeBlock("REJANG");
        public static final UnicodeBlock HANGUL_JAMO_EXTENDED_A = new UnicodeBlock("HANGUL_JAMO_EXTENDED_A", "HANGUL JAMO EXTENDED-A", "HANGULJAMOEXTENDED-A");
        public static final UnicodeBlock JAVANESE = new UnicodeBlock("JAVANESE");
        public static final UnicodeBlock CHAM = new UnicodeBlock("CHAM");
        public static final UnicodeBlock MYANMAR_EXTENDED_A = new UnicodeBlock("MYANMAR_EXTENDED_A", "MYANMAR EXTENDED-A", "MYANMAREXTENDED-A");
        public static final UnicodeBlock TAI_VIET = new UnicodeBlock("TAI_VIET", "TAI VIET", "TAIVIET");
        public static final UnicodeBlock ETHIOPIC_EXTENDED_A = new UnicodeBlock("ETHIOPIC_EXTENDED_A", "ETHIOPIC EXTENDED-A", "ETHIOPICEXTENDED-A");
        public static final UnicodeBlock MEETEI_MAYEK = new UnicodeBlock("MEETEI_MAYEK", "MEETEI MAYEK", "MEETEIMAYEK");
        public static final UnicodeBlock HANGUL_JAMO_EXTENDED_B = new UnicodeBlock("HANGUL_JAMO_EXTENDED_B", "HANGUL JAMO EXTENDED-B", "HANGULJAMOEXTENDED-B");
        public static final UnicodeBlock VERTICAL_FORMS = new UnicodeBlock("VERTICAL_FORMS", "VERTICAL FORMS", "VERTICALFORMS");
        public static final UnicodeBlock ANCIENT_GREEK_NUMBERS = new UnicodeBlock("ANCIENT_GREEK_NUMBERS", "ANCIENT GREEK NUMBERS", "ANCIENTGREEKNUMBERS");
        public static final UnicodeBlock ANCIENT_SYMBOLS = new UnicodeBlock("ANCIENT_SYMBOLS", "ANCIENT SYMBOLS", "ANCIENTSYMBOLS");
        public static final UnicodeBlock PHAISTOS_DISC = new UnicodeBlock("PHAISTOS_DISC", "PHAISTOS DISC", "PHAISTOSDISC");
        public static final UnicodeBlock LYCIAN = new UnicodeBlock("LYCIAN");
        public static final UnicodeBlock CARIAN = new UnicodeBlock("CARIAN");
        public static final UnicodeBlock OLD_PERSIAN = new UnicodeBlock("OLD_PERSIAN", "OLD PERSIAN", "OLDPERSIAN");
        public static final UnicodeBlock IMPERIAL_ARAMAIC = new UnicodeBlock("IMPERIAL_ARAMAIC", "IMPERIAL ARAMAIC", "IMPERIALARAMAIC");
        public static final UnicodeBlock PHOENICIAN = new UnicodeBlock("PHOENICIAN");
        public static final UnicodeBlock LYDIAN = new UnicodeBlock("LYDIAN");
        public static final UnicodeBlock KHAROSHTHI = new UnicodeBlock("KHAROSHTHI");
        public static final UnicodeBlock OLD_SOUTH_ARABIAN = new UnicodeBlock("OLD_SOUTH_ARABIAN", "OLD SOUTH ARABIAN", "OLDSOUTHARABIAN");
        public static final UnicodeBlock AVESTAN = new UnicodeBlock("AVESTAN");
        public static final UnicodeBlock INSCRIPTIONAL_PARTHIAN = new UnicodeBlock("INSCRIPTIONAL_PARTHIAN", "INSCRIPTIONAL PARTHIAN", "INSCRIPTIONALPARTHIAN");
        public static final UnicodeBlock INSCRIPTIONAL_PAHLAVI = new UnicodeBlock("INSCRIPTIONAL_PAHLAVI", "INSCRIPTIONAL PAHLAVI", "INSCRIPTIONALPAHLAVI");
        public static final UnicodeBlock OLD_TURKIC = new UnicodeBlock("OLD_TURKIC", "OLD TURKIC", "OLDTURKIC");
        public static final UnicodeBlock RUMI_NUMERAL_SYMBOLS = new UnicodeBlock("RUMI_NUMERAL_SYMBOLS", "RUMI NUMERAL SYMBOLS", "RUMINUMERALSYMBOLS");
        public static final UnicodeBlock BRAHMI = new UnicodeBlock("BRAHMI");
        public static final UnicodeBlock KAITHI = new UnicodeBlock("KAITHI");
        public static final UnicodeBlock CUNEIFORM = new UnicodeBlock("CUNEIFORM");
        public static final UnicodeBlock CUNEIFORM_NUMBERS_AND_PUNCTUATION = new UnicodeBlock("CUNEIFORM_NUMBERS_AND_PUNCTUATION", "CUNEIFORM NUMBERS AND PUNCTUATION", "CUNEIFORMNUMBERSANDPUNCTUATION");
        public static final UnicodeBlock EGYPTIAN_HIEROGLYPHS = new UnicodeBlock("EGYPTIAN_HIEROGLYPHS", "EGYPTIAN HIEROGLYPHS", "EGYPTIANHIEROGLYPHS");
        public static final UnicodeBlock BAMUM_SUPPLEMENT = new UnicodeBlock("BAMUM_SUPPLEMENT", "BAMUM SUPPLEMENT", "BAMUMSUPPLEMENT");
        public static final UnicodeBlock KANA_SUPPLEMENT = new UnicodeBlock("KANA_SUPPLEMENT", "KANA SUPPLEMENT", "KANASUPPLEMENT");
        public static final UnicodeBlock ANCIENT_GREEK_MUSICAL_NOTATION = new UnicodeBlock("ANCIENT_GREEK_MUSICAL_NOTATION", "ANCIENT GREEK MUSICAL NOTATION", "ANCIENTGREEKMUSICALNOTATION");
        public static final UnicodeBlock COUNTING_ROD_NUMERALS = new UnicodeBlock("COUNTING_ROD_NUMERALS", "COUNTING ROD NUMERALS", "COUNTINGRODNUMERALS");
        public static final UnicodeBlock MAHJONG_TILES = new UnicodeBlock("MAHJONG_TILES", "MAHJONG TILES", "MAHJONGTILES");
        public static final UnicodeBlock DOMINO_TILES = new UnicodeBlock("DOMINO_TILES", "DOMINO TILES", "DOMINOTILES");
        public static final UnicodeBlock PLAYING_CARDS = new UnicodeBlock("PLAYING_CARDS", "PLAYING CARDS", "PLAYINGCARDS");
        public static final UnicodeBlock ENCLOSED_ALPHANUMERIC_SUPPLEMENT = new UnicodeBlock("ENCLOSED_ALPHANUMERIC_SUPPLEMENT", "ENCLOSED ALPHANUMERIC SUPPLEMENT", "ENCLOSEDALPHANUMERICSUPPLEMENT");
        public static final UnicodeBlock ENCLOSED_IDEOGRAPHIC_SUPPLEMENT = new UnicodeBlock("ENCLOSED_IDEOGRAPHIC_SUPPLEMENT", "ENCLOSED IDEOGRAPHIC SUPPLEMENT", "ENCLOSEDIDEOGRAPHICSUPPLEMENT");
        public static final UnicodeBlock MISCELLANEOUS_SYMBOLS_AND_PICTOGRAPHS = new UnicodeBlock("MISCELLANEOUS_SYMBOLS_AND_PICTOGRAPHS", "MISCELLANEOUS SYMBOLS AND PICTOGRAPHS", "MISCELLANEOUSSYMBOLSANDPICTOGRAPHS");
        public static final UnicodeBlock EMOTICONS = new UnicodeBlock("EMOTICONS");
        public static final UnicodeBlock TRANSPORT_AND_MAP_SYMBOLS = new UnicodeBlock("TRANSPORT_AND_MAP_SYMBOLS", "TRANSPORT AND MAP SYMBOLS", "TRANSPORTANDMAPSYMBOLS");
        public static final UnicodeBlock ALCHEMICAL_SYMBOLS = new UnicodeBlock("ALCHEMICAL_SYMBOLS", "ALCHEMICAL SYMBOLS", "ALCHEMICALSYMBOLS");
        public static final UnicodeBlock CJK_UNIFIED_IDEOGRAPHS_EXTENSION_C = new UnicodeBlock("CJK_UNIFIED_IDEOGRAPHS_EXTENSION_C", "CJK UNIFIED IDEOGRAPHS EXTENSION C", "CJKUNIFIEDIDEOGRAPHSEXTENSIONC");
        public static final UnicodeBlock CJK_UNIFIED_IDEOGRAPHS_EXTENSION_D = new UnicodeBlock("CJK_UNIFIED_IDEOGRAPHS_EXTENSION_D", "CJK UNIFIED IDEOGRAPHS EXTENSION D", "CJKUNIFIEDIDEOGRAPHSEXTENSIOND");
        public static final UnicodeBlock ARABIC_EXTENDED_A = new UnicodeBlock("ARABIC_EXTENDED_A", "ARABIC EXTENDED-A", "ARABICEXTENDED-A");
        public static final UnicodeBlock SUNDANESE_SUPPLEMENT = new UnicodeBlock("SUNDANESE_SUPPLEMENT", "SUNDANESE SUPPLEMENT", "SUNDANESESUPPLEMENT");
        public static final UnicodeBlock MEETEI_MAYEK_EXTENSIONS = new UnicodeBlock("MEETEI_MAYEK_EXTENSIONS", "MEETEI MAYEK EXTENSIONS", "MEETEIMAYEKEXTENSIONS");
        public static final UnicodeBlock MEROITIC_HIEROGLYPHS = new UnicodeBlock("MEROITIC_HIEROGLYPHS", "MEROITIC HIEROGLYPHS", "MEROITICHIEROGLYPHS");
        public static final UnicodeBlock MEROITIC_CURSIVE = new UnicodeBlock("MEROITIC_CURSIVE", "MEROITIC CURSIVE", "MEROITICCURSIVE");
        public static final UnicodeBlock SORA_SOMPENG = new UnicodeBlock("SORA_SOMPENG", "SORA SOMPENG", "SORASOMPENG");
        public static final UnicodeBlock CHAKMA = new UnicodeBlock("CHAKMA");
        public static final UnicodeBlock SHARADA = new UnicodeBlock("SHARADA");
        public static final UnicodeBlock TAKRI = new UnicodeBlock("TAKRI");
        public static final UnicodeBlock MIAO = new UnicodeBlock("MIAO");
        public static final UnicodeBlock ARABIC_MATHEMATICAL_ALPHABETIC_SYMBOLS = new UnicodeBlock("ARABIC_MATHEMATICAL_ALPHABETIC_SYMBOLS", "ARABIC MATHEMATICAL ALPHABETIC SYMBOLS", "ARABICMATHEMATICALALPHABETICSYMBOLS");
        public static final UnicodeBlock COMBINING_DIACRITICAL_MARKS_EXTENDED = new UnicodeBlock("COMBINING_DIACRITICAL_MARKS_EXTENDED", "COMBINING DIACRITICAL MARKS EXTENDED", "COMBININGDIACRITICALMARKSEXTENDED");
        public static final UnicodeBlock MYANMAR_EXTENDED_B = new UnicodeBlock("MYANMAR_EXTENDED_B", "MYANMAR EXTENDED-B", "MYANMAREXTENDED-B");
        public static final UnicodeBlock LATIN_EXTENDED_E = new UnicodeBlock("LATIN_EXTENDED_E", "LATIN EXTENDED-E", "LATINEXTENDED-E");
        public static final UnicodeBlock COPTIC_EPACT_NUMBERS = new UnicodeBlock("COPTIC_EPACT_NUMBERS", "COPTIC EPACT NUMBERS", "COPTICEPACTNUMBERS");
        public static final UnicodeBlock OLD_PERMIC = new UnicodeBlock("OLD_PERMIC", "OLD PERMIC", "OLDPERMIC");
        public static final UnicodeBlock ELBASAN = new UnicodeBlock("ELBASAN");
        public static final UnicodeBlock CAUCASIAN_ALBANIAN = new UnicodeBlock("CAUCASIAN_ALBANIAN", "CAUCASIAN ALBANIAN", "CAUCASIANALBANIAN");
        public static final UnicodeBlock LINEAR_A = new UnicodeBlock("LINEAR_A", "LINEAR A", "LINEARA");
        public static final UnicodeBlock PALMYRENE = new UnicodeBlock("PALMYRENE");
        public static final UnicodeBlock NABATAEAN = new UnicodeBlock("NABATAEAN");
        public static final UnicodeBlock OLD_NORTH_ARABIAN = new UnicodeBlock("OLD_NORTH_ARABIAN", "OLD NORTH ARABIAN", "OLDNORTHARABIAN");
        public static final UnicodeBlock MANICHAEAN = new UnicodeBlock("MANICHAEAN");
        public static final UnicodeBlock PSALTER_PAHLAVI = new UnicodeBlock("PSALTER_PAHLAVI", "PSALTER PAHLAVI", "PSALTERPAHLAVI");
        public static final UnicodeBlock MAHAJANI = new UnicodeBlock("MAHAJANI");
        public static final UnicodeBlock SINHALA_ARCHAIC_NUMBERS = new UnicodeBlock("SINHALA_ARCHAIC_NUMBERS", "SINHALA ARCHAIC NUMBERS", "SINHALAARCHAICNUMBERS");
        public static final UnicodeBlock KHOJKI = new UnicodeBlock("KHOJKI");
        public static final UnicodeBlock KHUDAWADI = new UnicodeBlock("KHUDAWADI");
        public static final UnicodeBlock GRANTHA = new UnicodeBlock("GRANTHA");
        public static final UnicodeBlock TIRHUTA = new UnicodeBlock("TIRHUTA");
        public static final UnicodeBlock SIDDHAM = new UnicodeBlock("SIDDHAM");
        public static final UnicodeBlock MODI = new UnicodeBlock("MODI");
        public static final UnicodeBlock WARANG_CITI = new UnicodeBlock("WARANG_CITI", "WARANG CITI", "WARANGCITI");
        public static final UnicodeBlock PAU_CIN_HAU = new UnicodeBlock("PAU_CIN_HAU", "PAU CIN HAU", "PAUCINHAU");
        public static final UnicodeBlock MRO = new UnicodeBlock("MRO");
        public static final UnicodeBlock BASSA_VAH = new UnicodeBlock("BASSA_VAH", "BASSA VAH", "BASSAVAH");
        public static final UnicodeBlock PAHAWH_HMONG = new UnicodeBlock("PAHAWH_HMONG", "PAHAWH HMONG", "PAHAWHHMONG");
        public static final UnicodeBlock DUPLOYAN = new UnicodeBlock("DUPLOYAN");
        public static final UnicodeBlock SHORTHAND_FORMAT_CONTROLS = new UnicodeBlock("SHORTHAND_FORMAT_CONTROLS", "SHORTHAND FORMAT CONTROLS", "SHORTHANDFORMATCONTROLS");
        public static final UnicodeBlock MENDE_KIKAKUI = new UnicodeBlock("MENDE_KIKAKUI", "MENDE KIKAKUI", "MENDEKIKAKUI");
        public static final UnicodeBlock ORNAMENTAL_DINGBATS = new UnicodeBlock("ORNAMENTAL_DINGBATS", "ORNAMENTAL DINGBATS", "ORNAMENTALDINGBATS");
        public static final UnicodeBlock GEOMETRIC_SHAPES_EXTENDED = new UnicodeBlock("GEOMETRIC_SHAPES_EXTENDED", "GEOMETRIC SHAPES EXTENDED", "GEOMETRICSHAPESEXTENDED");
        public static final UnicodeBlock SUPPLEMENTAL_ARROWS_C = new UnicodeBlock("SUPPLEMENTAL_ARROWS_C", "SUPPLEMENTAL ARROWS-C", "SUPPLEMENTALARROWS-C");
        public static final UnicodeBlock CHEROKEE_SUPPLEMENT = new UnicodeBlock("CHEROKEE_SUPPLEMENT", "CHEROKEE SUPPLEMENT", "CHEROKEESUPPLEMENT");
        public static final UnicodeBlock HATRAN = new UnicodeBlock("HATRAN");
        public static final UnicodeBlock OLD_HUNGARIAN = new UnicodeBlock("OLD_HUNGARIAN", "OLD HUNGARIAN", "OLDHUNGARIAN");
        public static final UnicodeBlock MULTANI = new UnicodeBlock("MULTANI");
        public static final UnicodeBlock AHOM = new UnicodeBlock("AHOM");
        public static final UnicodeBlock EARLY_DYNASTIC_CUNEIFORM = new UnicodeBlock("EARLY_DYNASTIC_CUNEIFORM", "EARLY DYNASTIC CUNEIFORM", "EARLYDYNASTICCUNEIFORM");
        public static final UnicodeBlock ANATOLIAN_HIEROGLYPHS = new UnicodeBlock("ANATOLIAN_HIEROGLYPHS", "ANATOLIAN HIEROGLYPHS", "ANATOLIANHIEROGLYPHS");
        public static final UnicodeBlock SUTTON_SIGNWRITING = new UnicodeBlock("SUTTON_SIGNWRITING", "SUTTON SIGNWRITING", "SUTTONSIGNWRITING");
        public static final UnicodeBlock SUPPLEMENTAL_SYMBOLS_AND_PICTOGRAPHS = new UnicodeBlock("SUPPLEMENTAL_SYMBOLS_AND_PICTOGRAPHS", "SUPPLEMENTAL SYMBOLS AND PICTOGRAPHS", "SUPPLEMENTALSYMBOLSANDPICTOGRAPHS");
        public static final UnicodeBlock CJK_UNIFIED_IDEOGRAPHS_EXTENSION_E = new UnicodeBlock("CJK_UNIFIED_IDEOGRAPHS_EXTENSION_E", "CJK UNIFIED IDEOGRAPHS EXTENSION E", "CJKUNIFIEDIDEOGRAPHSEXTENSIONE");
        public static final UnicodeBlock SYRIAC_SUPPLEMENT = new UnicodeBlock("SYRIAC_SUPPLEMENT", "SYRIAC SUPPLEMENT", "SYRIACSUPPLEMENT");
        public static final UnicodeBlock CYRILLIC_EXTENDED_C = new UnicodeBlock("CYRILLIC_EXTENDED_C", "CYRILLIC EXTENDED-C", "CYRILLICEXTENDED-C");
        public static final UnicodeBlock OSAGE = new UnicodeBlock("OSAGE");
        public static final UnicodeBlock NEWA = new UnicodeBlock("NEWA");
        public static final UnicodeBlock MONGOLIAN_SUPPLEMENT = new UnicodeBlock("MONGOLIAN_SUPPLEMENT", "MONGOLIAN SUPPLEMENT", "MONGOLIANSUPPLEMENT");
        public static final UnicodeBlock MARCHEN = new UnicodeBlock("MARCHEN");
        public static final UnicodeBlock IDEOGRAPHIC_SYMBOLS_AND_PUNCTUATION = new UnicodeBlock("IDEOGRAPHIC_SYMBOLS_AND_PUNCTUATION", "IDEOGRAPHIC SYMBOLS AND PUNCTUATION", "IDEOGRAPHICSYMBOLSANDPUNCTUATION");
        public static final UnicodeBlock TANGUT = new UnicodeBlock("TANGUT");
        public static final UnicodeBlock TANGUT_COMPONENTS = new UnicodeBlock("TANGUT_COMPONENTS", "TANGUT COMPONENTS", "TANGUTCOMPONENTS");
        public static final UnicodeBlock KANA_EXTENDED_A = new UnicodeBlock("KANA_EXTENDED_A", "KANA EXTENDED-A", "KANAEXTENDED-A");
        public static final UnicodeBlock GLAGOLITIC_SUPPLEMENT = new UnicodeBlock("GLAGOLITIC_SUPPLEMENT", "GLAGOLITIC SUPPLEMENT", "GLAGOLITICSUPPLEMENT");
        public static final UnicodeBlock ADLAM = new UnicodeBlock("ADLAM");
        public static final UnicodeBlock MASARAM_GONDI = new UnicodeBlock("MASARAM_GONDI", "MASARAM GONDI", "MASARAMGONDI");
        public static final UnicodeBlock ZANABAZAR_SQUARE = new UnicodeBlock("ZANABAZAR_SQUARE", "ZANABAZAR SQUARE", "ZANABAZARSQUARE");
        public static final UnicodeBlock NUSHU = new UnicodeBlock("NUSHU");
        public static final UnicodeBlock SOYOMBO = new UnicodeBlock("SOYOMBO");
        public static final UnicodeBlock BHAIKSUKI = new UnicodeBlock("BHAIKSUKI");
        public static final UnicodeBlock CJK_UNIFIED_IDEOGRAPHS_EXTENSION_F = new UnicodeBlock("CJK_UNIFIED_IDEOGRAPHS_EXTENSION_F", "CJK UNIFIED IDEOGRAPHS EXTENSION F", "CJKUNIFIEDIDEOGRAPHSEXTENSIONF");
        public static final UnicodeBlock GEORGIAN_EXTENDED = new UnicodeBlock("GEORGIAN_EXTENDED", "GEORGIAN EXTENDED", "GEORGIANEXTENDED");
        public static final UnicodeBlock HANIFI_ROHINGYA = new UnicodeBlock("HANIFI_ROHINGYA", "HANIFI ROHINGYA", "HANIFIROHINGYA");
        public static final UnicodeBlock OLD_SOGDIAN = new UnicodeBlock("OLD_SOGDIAN", "OLD SOGDIAN", "OLDSOGDIAN");
        public static final UnicodeBlock SOGDIAN = new UnicodeBlock("SOGDIAN");
        public static final UnicodeBlock DOGRA = new UnicodeBlock("DOGRA");
        public static final UnicodeBlock GUNJALA_GONDI = new UnicodeBlock("GUNJALA_GONDI", "GUNJALA GONDI", "GUNJALAGONDI");
        public static final UnicodeBlock MAKASAR = new UnicodeBlock("MAKASAR");
        public static final UnicodeBlock MEDEFAIDRIN = new UnicodeBlock("MEDEFAIDRIN");
        public static final UnicodeBlock MAYAN_NUMERALS = new UnicodeBlock("MAYAN_NUMERALS", "MAYAN NUMERALS", "MAYANNUMERALS");
        public static final UnicodeBlock INDIC_SIYAQ_NUMBERS = new UnicodeBlock("INDIC_SIYAQ_NUMBERS", "INDIC SIYAQ NUMBERS", "INDICSIYAQNUMBERS");
        public static final UnicodeBlock CHESS_SYMBOLS = new UnicodeBlock("CHESS_SYMBOLS", "CHESS SYMBOLS", "CHESSSYMBOLS");
        public static final UnicodeBlock ELYMAIC = new UnicodeBlock("ELYMAIC");
        public static final UnicodeBlock NANDINAGARI = new UnicodeBlock("NANDINAGARI");
        public static final UnicodeBlock TAMIL_SUPPLEMENT = new UnicodeBlock("TAMIL_SUPPLEMENT", "TAMIL SUPPLEMENT", "TAMILSUPPLEMENT");
        public static final UnicodeBlock EGYPTIAN_HIEROGLYPH_FORMAT_CONTROLS = new UnicodeBlock("EGYPTIAN_HIEROGLYPH_FORMAT_CONTROLS", "EGYPTIAN HIEROGLYPH FORMAT CONTROLS", "EGYPTIANHIEROGLYPHFORMATCONTROLS");
        public static final UnicodeBlock SMALL_KANA_EXTENSION = new UnicodeBlock("SMALL_KANA_EXTENSION", "SMALL KANA EXTENSION", "SMALLKANAEXTENSION");
        public static final UnicodeBlock NYIAKENG_PUACHUE_HMONG = new UnicodeBlock("NYIAKENG_PUACHUE_HMONG", "NYIAKENG PUACHUE HMONG", "NYIAKENGPUACHUEHMONG");
        public static final UnicodeBlock WANCHO = new UnicodeBlock("WANCHO");
        public static final UnicodeBlock OTTOMAN_SIYAQ_NUMBERS = new UnicodeBlock("OTTOMAN_SIYAQ_NUMBERS", "OTTOMAN SIYAQ NUMBERS", "OTTOMANSIYAQNUMBERS");
        public static final UnicodeBlock SYMBOLS_AND_PICTOGRAPHS_EXTENDED_A = new UnicodeBlock("SYMBOLS_AND_PICTOGRAPHS_EXTENDED_A", "SYMBOLS AND PICTOGRAPHS EXTENDED-A", "SYMBOLSANDPICTOGRAPHSEXTENDED-A");
        public static final UnicodeBlock YEZIDI = new UnicodeBlock("YEZIDI");
        public static final UnicodeBlock CHORASMIAN = new UnicodeBlock("CHORASMIAN");
        public static final UnicodeBlock DIVES_AKURU = new UnicodeBlock("DIVES_AKURU", "DIVES AKURU", "DIVESAKURU");
        public static final UnicodeBlock LISU_SUPPLEMENT = new UnicodeBlock("LISU_SUPPLEMENT", "LISU SUPPLEMENT", "LISUSUPPLEMENT");
        public static final UnicodeBlock KHITAN_SMALL_SCRIPT = new UnicodeBlock("KHITAN_SMALL_SCRIPT", "KHITAN SMALL SCRIPT", "KHITANSMALLSCRIPT");
        public static final UnicodeBlock TANGUT_SUPPLEMENT = new UnicodeBlock("TANGUT_SUPPLEMENT", "TANGUT SUPPLEMENT", "TANGUTSUPPLEMENT");
        public static final UnicodeBlock SYMBOLS_FOR_LEGACY_COMPUTING = new UnicodeBlock("SYMBOLS_FOR_LEGACY_COMPUTING", "SYMBOLS FOR LEGACY COMPUTING", "SYMBOLSFORLEGACYCOMPUTING");
        public static final UnicodeBlock CJK_UNIFIED_IDEOGRAPHS_EXTENSION_G = new UnicodeBlock("CJK_UNIFIED_IDEOGRAPHS_EXTENSION_G", "CJK UNIFIED IDEOGRAPHS EXTENSION G", "CJKUNIFIEDIDEOGRAPHSEXTENSIONG");
        public static final UnicodeBlock ARABIC_EXTENDED_B = new UnicodeBlock("ARABIC_EXTENDED_B", "ARABIC EXTENDED-B", "ARABICEXTENDED-B");
        public static final UnicodeBlock VITHKUQI = new UnicodeBlock("VITHKUQI");
        public static final UnicodeBlock LATIN_EXTENDED_F = new UnicodeBlock("LATIN_EXTENDED_F", "LATIN EXTENDED-F", "LATINEXTENDED-F");
        public static final UnicodeBlock OLD_UYGHUR = new UnicodeBlock("OLD_UYGHUR", "OLD UYGHUR", "OLDUYGHUR");
        public static final UnicodeBlock UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS_EXTENDED_A = new UnicodeBlock("UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS_EXTENDED_A", "UNIFIED CANADIAN ABORIGINAL SYLLABICS EXTENDED-A", "UNIFIEDCANADIANABORIGINALSYLLABICSEXTENDED-A");
        public static final UnicodeBlock CYPRO_MINOAN = new UnicodeBlock("CYPRO_MINOAN", "CYPRO-MINOAN", "CYPRO-MINOAN");
        public static final UnicodeBlock TANGSA = new UnicodeBlock("TANGSA");
        public static final UnicodeBlock KANA_EXTENDED_B = new UnicodeBlock("KANA_EXTENDED_B", "KANA EXTENDED-B", "KANAEXTENDED-B");
        public static final UnicodeBlock ZNAMENNY_MUSICAL_NOTATION = new UnicodeBlock("ZNAMENNY_MUSICAL_NOTATION", "ZNAMENNY MUSICAL NOTATION", "ZNAMENNYMUSICALNOTATION");
        public static final UnicodeBlock LATIN_EXTENDED_G = new UnicodeBlock("LATIN_EXTENDED_G", "LATIN EXTENDED-G", "LATINEXTENDED-G");
        public static final UnicodeBlock TOTO = new UnicodeBlock("TOTO");
        public static final UnicodeBlock ETHIOPIC_EXTENDED_B = new UnicodeBlock("ETHIOPIC_EXTENDED_B", "ETHIOPIC EXTENDED-B", "ETHIOPICEXTENDED-B");
        public static final UnicodeBlock ARABIC_EXTENDED_C = new UnicodeBlock("ARABIC_EXTENDED_C", "ARABIC EXTENDED-C", "ARABICEXTENDED-C");
        public static final UnicodeBlock DEVANAGARI_EXTENDED_A = new UnicodeBlock("DEVANAGARI_EXTENDED_A", "DEVANAGARI EXTENDED-A", "DEVANAGARIEXTENDED-A");
        public static final UnicodeBlock KAWI = new UnicodeBlock("KAWI");
        public static final UnicodeBlock KAKTOVIK_NUMERALS = new UnicodeBlock("KAKTOVIK_NUMERALS", "KAKTOVIK NUMERALS", "KAKTOVIKNUMERALS");
        public static final UnicodeBlock CYRILLIC_EXTENDED_D = new UnicodeBlock("CYRILLIC_EXTENDED_D", "CYRILLIC EXTENDED-D", "CYRILLICEXTENDED-D");
        public static final UnicodeBlock NAG_MUNDARI = new UnicodeBlock("NAG_MUNDARI", "NAG MUNDARI", "NAGMUNDARI");
        public static final UnicodeBlock CJK_UNIFIED_IDEOGRAPHS_EXTENSION_H = new UnicodeBlock("CJK_UNIFIED_IDEOGRAPHS_EXTENSION_H", "CJK UNIFIED IDEOGRAPHS EXTENSION H", "CJKUNIFIEDIDEOGRAPHSEXTENSIONH");
        public static final UnicodeBlock CJK_UNIFIED_IDEOGRAPHS_EXTENSION_I = new UnicodeBlock("CJK_UNIFIED_IDEOGRAPHS_EXTENSION_I", "CJK UNIFIED IDEOGRAPHS EXTENSION I", "CJKUNIFIEDIDEOGRAPHSEXTENSIONI");
        public static final UnicodeBlock TODHRI = new UnicodeBlock("TODHRI");
        public static final UnicodeBlock GARAY = new UnicodeBlock("GARAY");
        public static final UnicodeBlock TULU_TIGALARI = new UnicodeBlock("TULU_TIGALARI", "TULU-TIGALARI");
        public static final UnicodeBlock MYANMAR_EXTENDED_C = new UnicodeBlock("MYANMAR_EXTENDED_C", "MYANMAR EXTENDED-C", "MYANMAREXTENDED-C");
        public static final UnicodeBlock SUNUWAR = new UnicodeBlock("SUNUWAR");
        public static final UnicodeBlock EGYPTIAN_HIEROGLYPHS_EXTENDED_A = new UnicodeBlock("EGYPTIAN_HIEROGLYPHS_EXTENDED_A", "EGYPTIAN HIEROGLYPHS EXTENDED-A", "EGYPTIANHIEROGLYPHSEXTENDED-A");
        public static final UnicodeBlock GURUNG_KHEMA = new UnicodeBlock("GURUNG_KHEMA", "GURUNG KHEMA", "GURUNGKHEMA");
        public static final UnicodeBlock KIRAT_RAI = new UnicodeBlock("KIRAT_RAI", "KIRAT RAI", "KIRATRAI");
        public static final UnicodeBlock SYMBOLS_FOR_LEGACY_COMPUTING_SUPPLEMENT = new UnicodeBlock("SYMBOLS_FOR_LEGACY_COMPUTING_SUPPLEMENT", "SYMBOLS FOR LEGACY COMPUTING SUPPLEMENT", "SYMBOLSFORLEGACYCOMPUTINGSUPPLEMENT");
        public static final UnicodeBlock OL_ONAL = new UnicodeBlock("OL_ONAL", "OL ONAL", "OLONAL");
        private static final int[] blockStarts = {0, 128, 256, 384, 592, 688, 768, 880, 1024, 1280, 1328, 1424, 1536, 1792, 1872, 1920, 1984, 2048, 2112, m.f98336f, 2160, 2208, 2304, 2432, DateUtils.FORMAT_NO_NOON_MIDNIGHT, 2688, 2816, 2944, 3072, 3200, 3328, 3456, 3584, 3712, c.f121708B, 4096, 4256, 4352, 4608, 4992, 5024, 5120, 5760, 5792, 5888, 5920, 5952, 5984, 6016, GLES30.GL_COLOR, 6320, 6400, 6480, 6528, 6624, 6656, 6688, 6832, GL2.GL_POINT, 7040, 7104, V4Signature.MAX_SIGNING_INFOS_SIZE, 7248, 7296, 7312, 7360, 7376, 7424, 7552, 7616, 7680, 7936, 8192, 8304, 8352, 8400, 8448, 8528, 8592, 8704, 8960, 9216, 9280, 9312, 9472, 9600, 9632, 9728, 9984, 10176, 10224, 10240, 10496, 10624, 10752, 11008, 11264, 11360, 11392, 11520, 11568, 11648, 11744, 11776, 11904, 12032, 12256, 12272, 12288, 12352, EGL14.EGL_OPENGL_ES_API, 12544, 12592, 12688, 12704, 12736, 12784, 12800, 13056, C14458b.f98304e, 19904, 19968, 40960, 42128, 42192, 42240, 42560, 42656, 42752, 42784, 43008, 43056, 43072, 43136, 43232, 43264, 43312, 43360, 43392, 43488, 43520, 43616, 43648, 43744, 43776, 43824, 43888, 43968, 44032, 55216, 55296, 56192, 56320, 57344, 63744, 64256, 64336, 65024, 65040, 65056, 65072, 65104, 65136, 65280, 65520, 65536, 65664, 65792, 65856, 65936, 66000, 66048, 66176, 66208, 66272, 66304, 66352, 66384, 66432, 66464, 66528, 66560, 66640, 66688, 66736, 66816, 66864, 66928, 67008, 67072, 67456, 67520, 67584, 67648, 67680, 67712, 67760, 67808, 67840, 67872, 67904, 67968, 68000, 68096, 68192, 68224, 68256, 68288, 68352, 68416, 68448, 68480, 68528, 68608, 68688, 68736, 68864, 68928, 69008, 69216, 69248, 69312, 69376, 69424, 69488, 69552, 69600, 69632, 69760, 69840, 69888, 69968, 70016, 70112, 70144, 70224, 70272, 70320, 70400, 70528, 70656, 70784, 70880, 71040, 71168, 71264, 71296, 71376, 71424, 71504, 71680, 71760, 71840, 71936, 72032, 72096, 72192, 72272, 72368, 72384, 72448, 72544, 72640, 72704, 72816, 72896, 72960, 73056, 73136, 73440, 73472, 73568, 73648, 73664, 73728, 74752, 74880, 75088, 77712, 77824, 78896, 78944, 82944, 83584, 90368, 90432, 92160, 92736, 92784, 92880, 92928, 93072, 93504, 93568, 93760, 93856, 93952, 94112, 94176, 94208, 100352, 101120, 101632, 101760, 110576, 110592, 110848, 110896, 110960, 111360, 113664, 113824, 113840, 117760, 118464, 118528, 118736, 118784, 119040, 119296, 119376, 119488, 119520, 119552, 119648, 119680, 119808, 120832, 121520, 122624, 122880, 122928, 123024, 123136, 123216, 123536, 123584, 123648, 124112, 124160, 124368, 124416, 124896, 124928, 125152, 125184, 125280, 126064, 126144, 126208, 126288, 126464, 126720, 126976, 127024, 127136, 127232, 127488, 127744, 128512, 128592, 128640, 128768, 128896, 129024, 129280, 129536, 129648, 129792, 130048, 131072, 173792, 173824, 177984, 178208, 183984, 191472, 192096, 194560, 195104, 196608, 201552, 205744, 917504, 917632, 917760, 918000, 983040, 1048576};
        private static final UnicodeBlock[] blocks = {BASIC_LATIN, LATIN_1_SUPPLEMENT, LATIN_EXTENDED_A, LATIN_EXTENDED_B, IPA_EXTENSIONS, SPACING_MODIFIER_LETTERS, COMBINING_DIACRITICAL_MARKS, GREEK, CYRILLIC, CYRILLIC_SUPPLEMENTARY, ARMENIAN, HEBREW, ARABIC, SYRIAC, ARABIC_SUPPLEMENT, THAANA, NKO, SAMARITAN, MANDAIC, SYRIAC_SUPPLEMENT, ARABIC_EXTENDED_B, ARABIC_EXTENDED_A, DEVANAGARI, BENGALI, GURMUKHI, GUJARATI, ORIYA, TAMIL, TELUGU, KANNADA, MALAYALAM, SINHALA, THAI, LAO, TIBETAN, MYANMAR, GEORGIAN, HANGUL_JAMO, ETHIOPIC, ETHIOPIC_SUPPLEMENT, CHEROKEE, UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS, OGHAM, RUNIC, TAGALOG, HANUNOO, BUHID, TAGBANWA, KHMER, MONGOLIAN, UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS_EXTENDED, LIMBU, TAI_LE, NEW_TAI_LUE, KHMER_SYMBOLS, BUGINESE, TAI_THAM, COMBINING_DIACRITICAL_MARKS_EXTENDED, BALINESE, SUNDANESE, BATAK, LEPCHA, OL_CHIKI, CYRILLIC_EXTENDED_C, GEORGIAN_EXTENDED, SUNDANESE_SUPPLEMENT, VEDIC_EXTENSIONS, PHONETIC_EXTENSIONS, PHONETIC_EXTENSIONS_SUPPLEMENT, COMBINING_DIACRITICAL_MARKS_SUPPLEMENT, LATIN_EXTENDED_ADDITIONAL, GREEK_EXTENDED, GENERAL_PUNCTUATION, SUPERSCRIPTS_AND_SUBSCRIPTS, CURRENCY_SYMBOLS, COMBINING_MARKS_FOR_SYMBOLS, LETTERLIKE_SYMBOLS, NUMBER_FORMS, ARROWS, MATHEMATICAL_OPERATORS, MISCELLANEOUS_TECHNICAL, CONTROL_PICTURES, OPTICAL_CHARACTER_RECOGNITION, ENCLOSED_ALPHANUMERICS, BOX_DRAWING, BLOCK_ELEMENTS, GEOMETRIC_SHAPES, MISCELLANEOUS_SYMBOLS, DINGBATS, MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A, SUPPLEMENTAL_ARROWS_A, BRAILLE_PATTERNS, SUPPLEMENTAL_ARROWS_B, MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B, SUPPLEMENTAL_MATHEMATICAL_OPERATORS, MISCELLANEOUS_SYMBOLS_AND_ARROWS, GLAGOLITIC, LATIN_EXTENDED_C, COPTIC, GEORGIAN_SUPPLEMENT, TIFINAGH, ETHIOPIC_EXTENDED, CYRILLIC_EXTENDED_A, SUPPLEMENTAL_PUNCTUATION, CJK_RADICALS_SUPPLEMENT, KANGXI_RADICALS, null, IDEOGRAPHIC_DESCRIPTION_CHARACTERS, CJK_SYMBOLS_AND_PUNCTUATION, HIRAGANA, KATAKANA, BOPOMOFO, HANGUL_COMPATIBILITY_JAMO, KANBUN, BOPOMOFO_EXTENDED, CJK_STROKES, KATAKANA_PHONETIC_EXTENSIONS, ENCLOSED_CJK_LETTERS_AND_MONTHS, CJK_COMPATIBILITY, CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A, YIJING_HEXAGRAM_SYMBOLS, CJK_UNIFIED_IDEOGRAPHS, YI_SYLLABLES, YI_RADICALS, LISU, VAI, CYRILLIC_EXTENDED_B, BAMUM, MODIFIER_TONE_LETTERS, LATIN_EXTENDED_D, SYLOTI_NAGRI, COMMON_INDIC_NUMBER_FORMS, PHAGS_PA, SAURASHTRA, DEVANAGARI_EXTENDED, KAYAH_LI, REJANG, HANGUL_JAMO_EXTENDED_A, JAVANESE, MYANMAR_EXTENDED_B, CHAM, MYANMAR_EXTENDED_A, TAI_VIET, MEETEI_MAYEK_EXTENSIONS, ETHIOPIC_EXTENDED_A, LATIN_EXTENDED_E, CHEROKEE_SUPPLEMENT, MEETEI_MAYEK, HANGUL_SYLLABLES, HANGUL_JAMO_EXTENDED_B, HIGH_SURROGATES, HIGH_PRIVATE_USE_SURROGATES, LOW_SURROGATES, PRIVATE_USE_AREA, CJK_COMPATIBILITY_IDEOGRAPHS, ALPHABETIC_PRESENTATION_FORMS, ARABIC_PRESENTATION_FORMS_A, VARIATION_SELECTORS, VERTICAL_FORMS, COMBINING_HALF_MARKS, CJK_COMPATIBILITY_FORMS, SMALL_FORM_VARIANTS, ARABIC_PRESENTATION_FORMS_B, HALFWIDTH_AND_FULLWIDTH_FORMS, SPECIALS, LINEAR_B_SYLLABARY, LINEAR_B_IDEOGRAMS, AEGEAN_NUMBERS, ANCIENT_GREEK_NUMBERS, ANCIENT_SYMBOLS, PHAISTOS_DISC, null, LYCIAN, CARIAN, COPTIC_EPACT_NUMBERS, OLD_ITALIC, GOTHIC, OLD_PERMIC, UGARITIC, OLD_PERSIAN, null, DESERET, SHAVIAN, OSMANYA, OSAGE, ELBASAN, CAUCASIAN_ALBANIAN, VITHKUQI, TODHRI, LINEAR_A, LATIN_EXTENDED_F, null, CYPRIOT_SYLLABARY, IMPERIAL_ARAMAIC, PALMYRENE, NABATAEAN, null, HATRAN, PHOENICIAN, LYDIAN, null, MEROITIC_HIEROGLYPHS, MEROITIC_CURSIVE, KHAROSHTHI, OLD_SOUTH_ARABIAN, OLD_NORTH_ARABIAN, null, MANICHAEAN, AVESTAN, INSCRIPTIONAL_PARTHIAN, INSCRIPTIONAL_PAHLAVI, PSALTER_PAHLAVI, null, OLD_TURKIC, null, OLD_HUNGARIAN, HANIFI_ROHINGYA, GARAY, null, RUMI_NUMERAL_SYMBOLS, YEZIDI, ARABIC_EXTENDED_C, OLD_SOGDIAN, SOGDIAN, OLD_UYGHUR, CHORASMIAN, ELYMAIC, BRAHMI, KAITHI, SORA_SOMPENG, CHAKMA, MAHAJANI, SHARADA, SINHALA_ARCHAIC_NUMBERS, KHOJKI, null, MULTANI, KHUDAWADI, GRANTHA, TULU_TIGALARI, NEWA, TIRHUTA, null, SIDDHAM, MODI, MONGOLIAN_SUPPLEMENT, TAKRI, MYANMAR_EXTENDED_C, AHOM, null, DOGRA, null, WARANG_CITI, DIVES_AKURU, null, NANDINAGARI, ZANABAZAR_SQUARE, SOYOMBO, UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS_EXTENDED_A, PAU_CIN_HAU, DEVANAGARI_EXTENDED_A, null, SUNUWAR, BHAIKSUKI, MARCHEN, null, MASARAM_GONDI, GUNJALA_GONDI, null, MAKASAR, KAWI, null, LISU_SUPPLEMENT, TAMIL_SUPPLEMENT, CUNEIFORM, CUNEIFORM_NUMBERS_AND_PUNCTUATION, EARLY_DYNASTIC_CUNEIFORM, null, CYPRO_MINOAN, EGYPTIAN_HIEROGLYPHS, EGYPTIAN_HIEROGLYPH_FORMAT_CONTROLS, EGYPTIAN_HIEROGLYPHS_EXTENDED_A, ANATOLIAN_HIEROGLYPHS, null, GURUNG_KHEMA, null, BAMUM_SUPPLEMENT, MRO, TANGSA, BASSA_VAH, PAHAWH_HMONG, null, KIRAT_RAI, null, MEDEFAIDRIN, null, MIAO, null, IDEOGRAPHIC_SYMBOLS_AND_PUNCTUATION, TANGUT, TANGUT_COMPONENTS, KHITAN_SMALL_SCRIPT, TANGUT_SUPPLEMENT, null, KANA_EXTENDED_B, KANA_SUPPLEMENT, KANA_EXTENDED_A, SMALL_KANA_EXTENSION, NUSHU, null, DUPLOYAN, SHORTHAND_FORMAT_CONTROLS, null, SYMBOLS_FOR_LEGACY_COMPUTING_SUPPLEMENT, null, ZNAMENNY_MUSICAL_NOTATION, null, BYZANTINE_MUSICAL_SYMBOLS, MUSICAL_SYMBOLS, ANCIENT_GREEK_MUSICAL_NOTATION, null, KAKTOVIK_NUMERALS, MAYAN_NUMERALS, TAI_XUAN_JING_SYMBOLS, COUNTING_ROD_NUMERALS, null, MATHEMATICAL_ALPHANUMERIC_SYMBOLS, SUTTON_SIGNWRITING, null, LATIN_EXTENDED_G, GLAGOLITIC_SUPPLEMENT, CYRILLIC_EXTENDED_D, null, NYIAKENG_PUACHUE_HMONG, null, TOTO, WANCHO, null, NAG_MUNDARI, null, OL_ONAL, null, ETHIOPIC_EXTENDED_B, MENDE_KIKAKUI, null, ADLAM, null, INDIC_SIYAQ_NUMBERS, null, OTTOMAN_SIYAQ_NUMBERS, null, ARABIC_MATHEMATICAL_ALPHABETIC_SYMBOLS, null, MAHJONG_TILES, DOMINO_TILES, PLAYING_CARDS, ENCLOSED_ALPHANUMERIC_SUPPLEMENT, ENCLOSED_IDEOGRAPHIC_SUPPLEMENT, MISCELLANEOUS_SYMBOLS_AND_PICTOGRAPHS, EMOTICONS, ORNAMENTAL_DINGBATS, TRANSPORT_AND_MAP_SYMBOLS, ALCHEMICAL_SYMBOLS, GEOMETRIC_SHAPES_EXTENDED, SUPPLEMENTAL_ARROWS_C, SUPPLEMENTAL_SYMBOLS_AND_PICTOGRAPHS, CHESS_SYMBOLS, SYMBOLS_AND_PICTOGRAPHS_EXTENDED_A, SYMBOLS_FOR_LEGACY_COMPUTING, null, CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B, null, CJK_UNIFIED_IDEOGRAPHS_EXTENSION_C, CJK_UNIFIED_IDEOGRAPHS_EXTENSION_D, CJK_UNIFIED_IDEOGRAPHS_EXTENSION_E, CJK_UNIFIED_IDEOGRAPHS_EXTENSION_F, CJK_UNIFIED_IDEOGRAPHS_EXTENSION_I, null, CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT, null, CJK_UNIFIED_IDEOGRAPHS_EXTENSION_G, CJK_UNIFIED_IDEOGRAPHS_EXTENSION_H, null, TAGS, null, VARIATION_SELECTORS_SUPPLEMENT, null, SUPPLEMENTARY_PRIVATE_USE_AREA_A, SUPPLEMENTARY_PRIVATE_USE_AREA_B};

        private UnicodeBlock(String idName) {
            super(idName);
            map.put(idName, this);
        }

        private UnicodeBlock(String idName, String alias) {
            this(idName);
            map.put(alias, this);
        }

        private UnicodeBlock(String idName, String... aliases) {
            this(idName);
            for (String alias : aliases) {
                map.put(alias, this);
            }
        }

        public static UnicodeBlock of(char c10) {
            return of((int) c10);
        }

        public static UnicodeBlock of(int codePoint) {
            if (!Character.isValidCodePoint(codePoint)) {
                throw new IllegalArgumentException(String.format("Not a valid Unicode code point: 0x%X", Integer.valueOf(codePoint)));
            }
            int bottom = 0;
            int top = blockStarts.length;
            int i10 = top;
            while (true) {
                int current = i10 / 2;
                if (top - bottom > 1) {
                    if (codePoint >= blockStarts[current]) {
                        bottom = current;
                    } else {
                        top = current;
                    }
                    i10 = top + bottom;
                } else {
                    return blocks[current];
                }
            }
        }

        public static final UnicodeBlock forName(String blockName) {
            UnicodeBlock block = map.get(blockName.toUpperCase(Locale.US));
            if (block == null) {
                throw new IllegalArgumentException("Not a valid block name: " + blockName);
            }
            return block;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Character$UnicodeScript.class
 */
    public enum UnicodeScript {
        COMMON,
        LATIN,
        GREEK,
        CYRILLIC,
        ARMENIAN,
        HEBREW,
        ARABIC,
        SYRIAC,
        THAANA,
        DEVANAGARI,
        BENGALI,
        GURMUKHI,
        GUJARATI,
        ORIYA,
        TAMIL,
        TELUGU,
        KANNADA,
        MALAYALAM,
        SINHALA,
        THAI,
        LAO,
        TIBETAN,
        MYANMAR,
        GEORGIAN,
        HANGUL,
        ETHIOPIC,
        CHEROKEE,
        CANADIAN_ABORIGINAL,
        OGHAM,
        RUNIC,
        KHMER,
        MONGOLIAN,
        HIRAGANA,
        KATAKANA,
        BOPOMOFO,
        HAN,
        YI,
        OLD_ITALIC,
        GOTHIC,
        DESERET,
        INHERITED,
        TAGALOG,
        HANUNOO,
        BUHID,
        TAGBANWA,
        LIMBU,
        TAI_LE,
        LINEAR_B,
        UGARITIC,
        SHAVIAN,
        OSMANYA,
        CYPRIOT,
        BRAILLE,
        BUGINESE,
        COPTIC,
        NEW_TAI_LUE,
        GLAGOLITIC,
        TIFINAGH,
        SYLOTI_NAGRI,
        OLD_PERSIAN,
        KHAROSHTHI,
        BALINESE,
        CUNEIFORM,
        PHOENICIAN,
        PHAGS_PA,
        NKO,
        SUNDANESE,
        BATAK,
        LEPCHA,
        OL_CHIKI,
        VAI,
        SAURASHTRA,
        KAYAH_LI,
        REJANG,
        LYCIAN,
        CARIAN,
        LYDIAN,
        CHAM,
        TAI_THAM,
        TAI_VIET,
        AVESTAN,
        EGYPTIAN_HIEROGLYPHS,
        SAMARITAN,
        MANDAIC,
        LISU,
        BAMUM,
        JAVANESE,
        MEETEI_MAYEK,
        IMPERIAL_ARAMAIC,
        OLD_SOUTH_ARABIAN,
        INSCRIPTIONAL_PARTHIAN,
        INSCRIPTIONAL_PAHLAVI,
        OLD_TURKIC,
        BRAHMI,
        KAITHI,
        MEROITIC_HIEROGLYPHS,
        MEROITIC_CURSIVE,
        SORA_SOMPENG,
        CHAKMA,
        SHARADA,
        TAKRI,
        MIAO,
        CAUCASIAN_ALBANIAN,
        BASSA_VAH,
        DUPLOYAN,
        ELBASAN,
        GRANTHA,
        PAHAWH_HMONG,
        KHOJKI,
        LINEAR_A,
        MAHAJANI,
        MANICHAEAN,
        MENDE_KIKAKUI,
        MODI,
        MRO,
        OLD_NORTH_ARABIAN,
        NABATAEAN,
        PALMYRENE,
        PAU_CIN_HAU,
        OLD_PERMIC,
        PSALTER_PAHLAVI,
        SIDDHAM,
        KHUDAWADI,
        TIRHUTA,
        WARANG_CITI,
        AHOM,
        ANATOLIAN_HIEROGLYPHS,
        HATRAN,
        MULTANI,
        OLD_HUNGARIAN,
        SIGNWRITING,
        ADLAM,
        BHAIKSUKI,
        MARCHEN,
        NEWA,
        OSAGE,
        TANGUT,
        MASARAM_GONDI,
        NUSHU,
        SOYOMBO,
        ZANABAZAR_SQUARE,
        HANIFI_ROHINGYA,
        OLD_SOGDIAN,
        SOGDIAN,
        DOGRA,
        GUNJALA_GONDI,
        MAKASAR,
        MEDEFAIDRIN,
        ELYMAIC,
        NANDINAGARI,
        NYIAKENG_PUACHUE_HMONG,
        WANCHO,
        YEZIDI,
        CHORASMIAN,
        DIVES_AKURU,
        KHITAN_SMALL_SCRIPT,
        VITHKUQI,
        OLD_UYGHUR,
        CYPRO_MINOAN,
        TANGSA,
        TOTO,
        KAWI,
        NAG_MUNDARI,
        TODHRI,
        GARAY,
        TULU_TIGALARI,
        SUNUWAR,
        GURUNG_KHEMA,
        KIRAT_RAI,
        OL_ONAL,
        UNKNOWN;

        private static final int[] scriptStarts = {0, 65, 91, 97, 123, 170, 171, 186, 187, 192, 215, 216, 247, 248, 697, 736, 741, 746, 748, 768, 880, 884, 885, 888, 890, 894, 895, 896, 900, 901, 902, TypedValues.Custom.TYPE_STRING, TypedValues.Custom.TYPE_BOOLEAN, 907, 908, 909, 910, 930, 931, 994, 1008, 1024, 1157, 1159, 1328, 1329, 1367, 1369, 1419, 1421, 1424, 1425, 1480, 1488, 1515, 1519, 1525, 1536, 1541, 1542, 1548, 1549, 1563, 1564, 1567, 1568, AdvertisingSetParameters.INTERVAL_HIGH, 1601, 1611, 1622, 1648, 1649, 1757, 1758, 1792, 1806, 1807, 1867, 1869, 1872, 1920, 1970, 1984, 2043, 2045, 2048, 2094, 2096, 2111, 2112, 2140, 2142, 2143, m.f98336f, 2155, 2160, 2191, 2192, 2194, 2199, 2274, 2275, 2304, 2385, 2389, 2404, 2406, 2432, 2436, 2437, 2445, 2447, 2449, 2451, 2473, 2474, 2481, 2482, 2483, 2486, 2490, 2492, 2501, 2503, 2505, 2507, 2511, 2519, 2520, 2524, 2526, 2527, 2532, 2534, Opcodes.OP_IGET_BOOLEAN_JUMBO, 2561, 2564, 2565, 2571, 2575, 2577, 2579, 2601, 2602, 2609, 2610, 2612, 2613, 2615, 2616, 2618, 2620, 2621, 2622, 2627, 2631, 2633, 2635, 2638, 2641, 2642, 2649, 2653, 2654, 2655, 2662, 2679, 2689, 2692, 2693, 2702, 2703, 2706, 2707, 2729, 2730, 2737, 2738, 2740, 2741, 2746, 2748, 2758, 2759, 2762, 2763, 2766, 2768, 2769, 2784, 2788, 2790, 2802, 2809, 2816, 2817, 2820, 2821, 2829, 2831, 2833, 2835, 2857, 2858, 2865, 2866, 2868, 2869, 2874, 2876, 2885, 2887, 2889, 2891, 2894, 2901, 2904, 2908, 2910, 2911, 2916, 2918, 2936, 2946, 2948, 2949, 2955, 2958, 2961, 2962, 2966, 2969, 2971, 2972, 2973, 2974, 2976, 2979, 2981, 2984, 2987, 2990, C16039a.f127855v, C16039a.f127859z, 3011, 3014, 3017, 3018, 3022, 3024, 3025, 3031, 3032, 3046, 3067, 3072, 3085, 3086, 3089, 3090, 3113, 3114, 3130, 3132, 3141, 3142, 3145, 3146, 3150, 3157, 3159, 3160, 3163, 3165, 3166, 3168, 3172, 3174, 3184, 3191, 3200, 3213, 3214, 3217, 3218, 3241, 3242, 3252, 3253, 3258, 3260, 3269, 3270, 3273, 3274, 3278, 3285, 3287, 3293, 3295, 3296, 3300, 3302, 3312, 3313, GLES30.GL_UNPACK_SKIP_PIXELS, 3328, 3341, 3342, 3345, 3346, 3397, 3398, 3401, 3402, 3408, 3412, 3428, 3430, 3456, 3457, 3460, 3461, 3479, 3482, 3506, 3507, 3516, 3517, 3518, 3520, 3527, 3530, 3531, 3535, 3541, 3542, 3543, 3544, 3552, 3558, 3568, 3570, 3573, 3585, 3643, 3647, 3648, 3676, 3713, 3715, 3716, 3717, 3718, 3723, 3724, 3748, 3749, 3750, 3751, 3774, 3776, 3781, 3782, 3783, 3784, 3791, 3792, 3802, 3804, 3808, c.f121708B, 3912, 3913, 3949, 3953, 3992, 3993, 4029, 4030, 4045, 4046, 4053, 4057, 4059, 4096, 4256, 4294, 4295, 4296, 4301, 4302, 4304, 4347, 4348, 4352, 4608, 4681, 4682, 4686, 4688, 4695, 4696, 4697, 4698, 4702, 4704, 4745, 4746, 4750, 4752, 4785, 4786, 4790, 4792, 4799, 4800, 4801, 4802, 4806, 4808, 4823, 4824, 4881, 4882, 4886, 4888, 4955, 4957, 4989, 4992, 5018, 5024, 5110, 5112, 5118, 5120, 5760, 5789, 5792, 5867, 5870, 5881, 5888, 5910, 5919, 5920, 5941, 5943, 5952, 5972, 5984, 5997, 5998, 6001, 6002, 6004, 6016, 6110, 6112, 6122, 6128, 6138, GLES30.GL_COLOR, GLES30.GL_STENCIL, 6148, 6149, 6150, 6170, 6176, 6265, 6272, 6315, 6320, 6390, 6400, 6431, 6432, 6444, 6448, 6460, 6464, 6465, 6468, 6480, 6510, 6512, 6517, 6528, 6572, 6576, 6602, 6608, 6619, 6622, 6624, 6656, 6684, 6686, 6688, 6751, 6752, 6781, 6783, 6794, 6800, 6810, 6816, 6830, 6832, 6863, GL2.GL_POINT, 6989, 6990, 7040, 7104, 7156, 7164, V4Signature.MAX_SIGNING_INFOS_SIZE, 7224, 7227, 7242, 7245, 7248, 7296, 7307, 7312, 7355, 7357, 7360, 7368, 7376, 7379, 7380, 7393, 7394, 7401, 7405, 7406, 7412, 7413, 7416, 7418, 7419, 7424, 7462, 7467, 7468, 7517, 7522, 7526, 7531, 7544, 7545, 7615, 7616, 7680, 7936, 7958, 7960, 7966, 7968, 8006, 8008, 8014, 8016, 8024, 8025, 8026, 8027, 8028, 8029, 8030, 8031, 8062, 8064, 8117, 8118, 8133, 8134, 8148, 8150, 8156, 8157, 8176, 8178, 8181, 8182, 8191, 8192, 8204, 8206, 8293, 8294, 8305, 8306, 8308, 8319, 8320, 8335, 8336, 8349, 8352, 8385, 8400, 8433, 8448, 8486, 8487, 8490, 8492, 8498, 8499, 8526, 8527, 8544, 8585, 8588, 8592, 9258, 9280, 9291, 9312, 10240, 10496, 11124, 11126, 11158, 11159, 11264, 11360, 11392, 11508, 11513, 11520, 11558, 11559, 11560, 11565, 11566, 11568, 11624, 11631, 11633, 11647, 11648, 11671, 11680, 11687, 11688, 11695, 11696, 11703, 11704, 11711, 11712, 11719, 11720, 11727, 11728, 11735, 11736, 11743, 11744, 11776, 11870, 11904, 11930, 11931, 12020, 12032, 12246, 12272, 12293, 12294, 12295, 12296, 12321, 12330, 12334, 12336, 12344, EGL14.EGL_MAX_SWAP_INTERVAL, 12352, EGL14.EGL_MATCH_NATIVE_PIXMAP, EGL14.EGL_CONTEXT_CLIENT_TYPE, EGL14.EGL_MULTISAMPLE_RESOLVE, EGL14.EGL_MULTISAMPLE_RESOLVE_BOX, 12445, EGL14.EGL_OPENGL_ES_API, EGL14.EGL_OPENVG_API, EGLExt.EGL_CONTEXT_MINOR_VERSION_KHR, 12541, 12544, 12549, 12592, 12593, 12687, 12688, 12704, 12736, 12774, 12783, 12784, 12800, 12831, 12832, 12896, 12927, 13008, 13055, 13056, 13144, C14458b.f98304e, 19904, 19968, 40960, 42125, 42128, 42183, 42192, 42240, 42540, 42560, 42656, 42744, 42752, 42786, 42888, 42891, 42958, 42960, 42962, 42963, 42964, 42965, 42973, 42994, 43008, 43053, 43056, 43066, 43072, 43128, 43136, 43206, 43214, 43226, 43232, 43264, 43310, 43311, 43312, 43348, 43359, 43360, 43389, 43392, 43470, 43471, 43472, 43482, 43486, 43488, 43519, 43520, 43575, 43584, 43598, 43600, 43610, 43612, 43616, 43648, 43715, 43739, 43744, 43767, 43777, 43783, 43785, 43791, 43793, 43799, 43808, 43815, 43816, 43823, 43824, 43867, 43868, 43877, 43878, 43882, 43884, 43888, 43968, 44014, 44016, 44026, 44032, 55204, 55216, 55239, 55243, 55292, 63744, 64110, 64112, 64218, 64256, 64263, 64275, 64280, 64285, 64311, 64312, 64317, 64318, 64319, 64320, 64322, 64323, 64325, 64326, 64336, 64451, 64467, 64830, 64832, 64912, 64914, 64968, 64975, 64976, 65008, 65024, 65040, 65050, 65056, 65070, 65072, 65107, 65108, 65127, 65128, 65132, 65136, 65141, 65142, 65277, 65279, 65280, 65281, 65313, 65339, 65345, 65371, 65382, 65392, 65393, 65438, 65440, 65471, 65474, 65480, 65482, 65488, 65490, DefaultImageHeaderParser.f59321e, 65498, 65501, 65504, 65511, 65512, 65519, 65529, 65534, 65536, 65548, 65549, 65575, 65576, 65595, 65596, 65598, 65599, 65614, 65616, 65630, 65664, 65787, 65792, 65795, 65799, 65844, 65847, 65856, 65935, 65936, 65949, 65952, 65953, 66000, 66045, 66046, 66176, 66205, 66208, 66257, 66272, 66273, 66300, 66304, 66340, 66349, 66352, 66379, 66384, 66427, 66432, 66462, 66463, 66464, 66500, 66504, 66518, 66560, 66640, 66688, 66718, 66720, 66730, 66736, 66772, 66776, 66812, 66816, 66856, 66864, 66916, 66927, 66928, 66939, 66940, 66955, 66956, 66963, 66964, 66966, 66967, 66978, 66979, 66994, 66995, 67002, 67003, 67005, 67008, 67060, 67072, 67383, 67392, 67414, 67424, 67432, 67456, 67462, 67463, 67505, 67506, 67515, 67584, 67590, 67592, 67593, 67594, 67638, 67639, 67641, 67644, 67645, 67647, 67648, 67670, 67671, 67680, 67712, 67743, 67751, 67760, 67808, 67827, 67828, 67830, 67835, 67840, 67868, 67871, 67872, 
        67898, 67903, 67904, 67968, 68000, 68024, 68028, 68048, 68050, 68096, 68100, 68101, 68103, 68108, 68116, 68117, 68120, 68121, 68150, 68152, 68155, 68159, 68169, 68176, 68185, 68192, 68224, 68256, 68288, 68327, 68331, 68343, 68352, 68406, 68409, 68416, 68438, 68440, 68448, 68467, 68472, 68480, 68498, 68505, 68509, 68521, 68528, 68608, 68681, 68736, 68787, 68800, 68851, 68858, 68864, 68904, 68912, 68922, 68928, 68966, 68969, 68998, 69006, 69008, 69216, 69247, 69248, 69290, 69291, 69294, 69296, 69298, 69314, 69317, 69372, 69376, 69416, 69424, 69466, 69488, 69514, 69552, 69580, 69600, 69623, 69632, 69710, 69714, 69750, 69759, 69760, 69827, 69837, 69838, 69840, 69865, 69872, 69882, 69888, 69941, 69942, 69960, 69968, 70007, 70016, 70112, 70113, 70133, 70144, 70162, 70163, 70210, 70272, 70279, 70280, 70281, 70282, 70286, 70287, 70302, 70303, 70314, 70320, 70379, 70384, 70394, 70400, 70404, 70405, 70413, 70415, 70417, 70419, 70441, 70442, 70449, 70450, 70452, 70453, 70458, 70459, 70460, 70469, 70471, 70473, 70475, 70478, 70480, 70481, 70487, 70488, 70493, 70500, 70502, 70509, 70512, 70517, 70528, 70538, 70539, 70540, 70542, 70543, 70544, 70582, 70583, 70593, 70594, 70595, 70597, 70598, 70599, 70603, 70604, 70614, 70615, 70617, 70625, 70627, 70656, 70748, 70749, 70754, 70784, 70856, 70864, 70874, 71040, 71094, 71096, 71134, 71168, 71237, 71248, 71258, 71264, 71277, 71296, 71354, 71360, 71370, 71376, 71396, 71424, 71451, 71453, 71468, 71472, 71495, 71680, 71740, 71840, 71923, 71935, 71936, 71943, 71945, 71946, 71948, 71956, 71957, 71959, 71960, 71990, 71991, 71993, 71995, 72007, 72016, 72026, 72096, 72104, 72106, 72152, 72154, 72165, 72192, 72264, 72272, 72355, 72368, 72384, 72441, 72448, 72458, 72640, 72674, 72688, 72698, 72704, 72713, 72714, 72759, 72760, 72774, 72784, 72813, 72816, 72848, 72850, 72872, 72873, 72887, 72960, 72967, 72968, 72970, 72971, 73015, 73018, 73019, 73020, 73022, 73023, 73032, 73040, 73050, 73056, 73062, 73063, 73065, 73066, 73103, 73104, 73106, 73107, 73113, 73120, 73130, 73440, 73465, 73472, 73489, 73490, 73531, 73534, 73563, 73648, 73649, 73664, 73714, 73727, 73728, 74650, 74752, 74863, 74864, 74869, 74880, 75076, 77712, 77811, 77824, 78934, 78944, 82939, 82944, 83527, 90368, 90426, 92160, 92729, 92736, 92767, 92768, 92778, 92782, 92784, 92863, 92864, 92874, 92880, 92910, 92912, 92918, 92928, 92998, 93008, 93018, 93019, 93026, 93027, 93048, 93053, 93072, 93504, 93562, 93760, 93851, 93952, 94027, 94031, 94088, 94095, 94112, 94176, 94177, 94178, 94180, 94181, 94192, 94194, 94208, 100344, 100352, 101120, 101590, 101631, 101632, 101641, 110576, 110580, 110581, 110588, 110589, 110591, 110592, 110593, 110880, 110883, 110898, 110899, 110928, 110931, 110933, 110934, 110948, 110952, 110960, 111356, 113664, 113771, 113776, 113789, 113792, 113801, 113808, 113818, 113820, 113824, 113828, 117760, 118010, 118016, 118452, 118528, 118574, 118576, 118599, 118608, 118724, 118784, 119030, 119040, 119079, 119081, 119143, 119146, 119163, 119171, 119173, 119180, 119210, 119214, 119275, 119296, 119366, 119488, 119508, 119520, 119540, 119552, 119639, 119648, 119673, 119808, 119893, 119894, 119965, 119966, 119968, 119970, 119971, 119973, 119975, 119977, 119981, 119982, 119994, 119995, 119996, 119997, 120004, 120005, 120070, 120071, 120075, 120077, 120085, 120086, 120093, 120094, 120122, 120123, 120127, 120128, 120133, 120134, 120135, 120138, 120145, 120146, 120486, 120488, 120780, 120782, 120832, 121484, 121499, 121504, 121505, 121520, 122624, 122655, 122661, 122667, 122880, 122887, 122888, 122905, 122907, 122914, 122915, 122917, 122918, 122923, 122928, 122990, 123023, 123024, 123136, 123181, 123184, 123198, 123200, 123210, 123214, 123216, 123536, 123567, 123584, 123642, 123647, 123648, 124112, 124154, 124368, 124411, 124415, 124416, 124896, 124903, 124904, 124908, 124909, 124911, 124912, 124927, 124928, 125125, 125127, 125143, 125184, 125260, 125264, 125274, 125278, 125280, 126065, 126133, 126209, 126270, 126464, 126468, 126469, 126496, 126497, 126499, 126500, 126501, 126503, 126504, 126505, 126515, 126516, 126520, 126521, 126522, 126523, 126524, 126530, 126531, 126535, 126536, 126537, 126538, 126539, 126540, 126541, 126544, 126545, 126547, 126548, 126549, 126551, 126552, 126553, 126554, 126555, 126556, 126557, 126558, 126559, 126560, 126561, 126563, 126564, 126565, 126567, 126571, 126572, 126579, 126580, 126584, 126585, 126589, 126590, 126591, 126592, 126602, 126603, 126620, 126625, 126628, 126629, 126634, 126635, 126652, 126704, 126706, 126976, 127020, 127024, 127124, 127136, 127151, 127153, 127168, 127169, 127184, 127185, 127222, 127232, 127406, 127462, 127488, 127489, 127491, 127504, 127548, 127552, 127561, 127568, 127570, 127584, 127590, 127744, 128728, 128732, 128749, 128752, 128765, 128768, 128887, 128891, 128986, 128992, 129004, 129008, 129009, 129024, 129036, 129040, 129096, 129104, 129114, 129120, 129160, 129168, 129198, 129200, 129212, 129216, 129218, 129280, 129620, 129632, 129646, 129648, 129661, 129664, 129674, 129679, 129735, 129742, 129757, 129759, 129770, 129776, 129785, 129792, 129939, 129940, 130042, 131072, 173792, 173824, 177978, 177984, 178206, 178208, 183970, 183984, 191457, 191472, 192094, 194560, 195102, 196608, 201547, 201552, 205744, 917505, 917506, 917536, 917632, 917760, 918000};
        private static final UnicodeScript[] scripts = {COMMON, LATIN, COMMON, LATIN, COMMON, LATIN, COMMON, LATIN, COMMON, LATIN, COMMON, LATIN, COMMON, LATIN, COMMON, LATIN, COMMON, BOPOMOFO, COMMON, INHERITED, GREEK, COMMON, GREEK, UNKNOWN, GREEK, COMMON, GREEK, UNKNOWN, GREEK, COMMON, GREEK, COMMON, GREEK, UNKNOWN, GREEK, UNKNOWN, GREEK, UNKNOWN, GREEK, COPTIC, GREEK, CYRILLIC, INHERITED, CYRILLIC, UNKNOWN, ARMENIAN, UNKNOWN, ARMENIAN, UNKNOWN, ARMENIAN, UNKNOWN, HEBREW, UNKNOWN, HEBREW, UNKNOWN, HEBREW, UNKNOWN, ARABIC, COMMON, ARABIC, COMMON, ARABIC, COMMON, ARABIC, COMMON, ARABIC, COMMON, ARABIC, INHERITED, ARABIC, INHERITED, ARABIC, COMMON, ARABIC, SYRIAC, UNKNOWN, SYRIAC, UNKNOWN, SYRIAC, ARABIC, THAANA, UNKNOWN, NKO, UNKNOWN, NKO, SAMARITAN, UNKNOWN, SAMARITAN, UNKNOWN, MANDAIC, UNKNOWN, MANDAIC, UNKNOWN, SYRIAC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, COMMON, ARABIC, DEVANAGARI, INHERITED, DEVANAGARI, COMMON, DEVANAGARI, BENGALI, UNKNOWN, BENGALI, UNKNOWN, BENGALI, UNKNOWN, BENGALI, UNKNOWN, BENGALI, UNKNOWN, BENGALI, UNKNOWN, BENGALI, UNKNOWN, BENGALI, UNKNOWN, BENGALI, UNKNOWN, BENGALI, UNKNOWN, BENGALI, UNKNOWN, BENGALI, UNKNOWN, BENGALI, UNKNOWN, BENGALI, UNKNOWN, GURMUKHI, UNKNOWN, GURMUKHI, UNKNOWN, GURMUKHI, UNKNOWN, GURMUKHI, UNKNOWN, GURMUKHI, UNKNOWN, GURMUKHI, UNKNOWN, GURMUKHI, UNKNOWN, GURMUKHI, UNKNOWN, GURMUKHI, UNKNOWN, GURMUKHI, UNKNOWN, GURMUKHI, UNKNOWN, GURMUKHI, UNKNOWN, GURMUKHI, UNKNOWN, GURMUKHI, UNKNOWN, GURMUKHI, UNKNOWN, GURMUKHI, UNKNOWN, GUJARATI, UNKNOWN, GUJARATI, UNKNOWN, GUJARATI, UNKNOWN, GUJARATI, UNKNOWN, GUJARATI, UNKNOWN, GUJARATI, UNKNOWN, GUJARATI, UNKNOWN, GUJARATI, UNKNOWN, GUJARATI, UNKNOWN, GUJARATI, UNKNOWN, GUJARATI, UNKNOWN, GUJARATI, UNKNOWN, GUJARATI, UNKNOWN, GUJARATI, UNKNOWN, ORIYA, UNKNOWN, ORIYA, UNKNOWN, ORIYA, UNKNOWN, ORIYA, UNKNOWN, ORIYA, UNKNOWN, ORIYA, UNKNOWN, ORIYA, UNKNOWN, ORIYA, UNKNOWN, ORIYA, UNKNOWN, ORIYA, UNKNOWN, ORIYA, UNKNOWN, ORIYA, UNKNOWN, ORIYA, UNKNOWN, ORIYA, UNKNOWN, TAMIL, UNKNOWN, TAMIL, UNKNOWN, TAMIL, UNKNOWN, TAMIL, UNKNOWN, TAMIL, UNKNOWN, TAMIL, UNKNOWN, TAMIL, UNKNOWN, TAMIL, UNKNOWN, TAMIL, UNKNOWN, TAMIL, UNKNOWN, TAMIL, UNKNOWN, TAMIL, UNKNOWN, TAMIL, UNKNOWN, TAMIL, UNKNOWN, TAMIL, UNKNOWN, TAMIL, UNKNOWN, TELUGU, UNKNOWN, TELUGU, UNKNOWN, TELUGU, UNKNOWN, TELUGU, UNKNOWN, TELUGU, UNKNOWN, TELUGU, UNKNOWN, TELUGU, UNKNOWN, TELUGU, UNKNOWN, TELUGU, UNKNOWN, TELUGU, UNKNOWN, TELUGU, UNKNOWN, TELUGU, UNKNOWN, TELUGU, KANNADA, UNKNOWN, KANNADA, UNKNOWN, KANNADA, UNKNOWN, KANNADA, UNKNOWN, KANNADA, UNKNOWN, KANNADA, UNKNOWN, KANNADA, UNKNOWN, KANNADA, UNKNOWN, KANNADA, UNKNOWN, KANNADA, UNKNOWN, KANNADA, UNKNOWN, KANNADA, UNKNOWN, KANNADA, UNKNOWN, MALAYALAM, UNKNOWN, MALAYALAM, UNKNOWN, MALAYALAM, UNKNOWN, MALAYALAM, UNKNOWN, MALAYALAM, UNKNOWN, MALAYALAM, UNKNOWN, MALAYALAM, UNKNOWN, SINHALA, UNKNOWN, SINHALA, UNKNOWN, SINHALA, UNKNOWN, SINHALA, UNKNOWN, SINHALA, UNKNOWN, SINHALA, UNKNOWN, SINHALA, UNKNOWN, SINHALA, UNKNOWN, SINHALA, UNKNOWN, SINHALA, UNKNOWN, SINHALA, UNKNOWN, SINHALA, UNKNOWN, THAI, UNKNOWN, COMMON, THAI, UNKNOWN, LAO, UNKNOWN, LAO, UNKNOWN, LAO, UNKNOWN, LAO, UNKNOWN, LAO, UNKNOWN, LAO, UNKNOWN, LAO, UNKNOWN, LAO, UNKNOWN, LAO, UNKNOWN, LAO, UNKNOWN, LAO, UNKNOWN, TIBETAN, UNKNOWN, TIBETAN, UNKNOWN, TIBETAN, UNKNOWN, TIBETAN, UNKNOWN, TIBETAN, UNKNOWN, TIBETAN, COMMON, TIBETAN, UNKNOWN, MYANMAR, GEORGIAN, UNKNOWN, GEORGIAN, UNKNOWN, GEORGIAN, UNKNOWN, GEORGIAN, COMMON, GEORGIAN, HANGUL, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, CHEROKEE, UNKNOWN, CHEROKEE, UNKNOWN, CANADIAN_ABORIGINAL, OGHAM, UNKNOWN, RUNIC, COMMON, RUNIC, UNKNOWN, TAGALOG, UNKNOWN, TAGALOG, HANUNOO, COMMON, UNKNOWN, BUHID, UNKNOWN, TAGBANWA, UNKNOWN, TAGBANWA, UNKNOWN, TAGBANWA, UNKNOWN, KHMER, UNKNOWN, KHMER, UNKNOWN, KHMER, UNKNOWN, MONGOLIAN, COMMON, MONGOLIAN, COMMON, MONGOLIAN, UNKNOWN, MONGOLIAN, UNKNOWN, MONGOLIAN, UNKNOWN, CANADIAN_ABORIGINAL, UNKNOWN, LIMBU, UNKNOWN, LIMBU, UNKNOWN, LIMBU, UNKNOWN, LIMBU, UNKNOWN, LIMBU, TAI_LE, UNKNOWN, TAI_LE, UNKNOWN, NEW_TAI_LUE, UNKNOWN, NEW_TAI_LUE, UNKNOWN, NEW_TAI_LUE, UNKNOWN, NEW_TAI_LUE, KHMER, BUGINESE, UNKNOWN, BUGINESE, TAI_THAM, UNKNOWN, TAI_THAM, UNKNOWN, TAI_THAM, UNKNOWN, TAI_THAM, UNKNOWN, TAI_THAM, UNKNOWN, INHERITED, UNKNOWN, BALINESE, UNKNOWN, BALINESE, SUNDANESE, BATAK, UNKNOWN, BATAK, LEPCHA, UNKNOWN, LEPCHA, UNKNOWN, LEPCHA, OL_CHIKI, CYRILLIC, UNKNOWN, GEORGIAN, UNKNOWN, GEORGIAN, SUNDANESE, UNKNOWN, INHERITED, COMMON, INHERITED, COMMON, INHERITED, COMMON, INHERITED, COMMON, INHERITED, COMMON, INHERITED, COMMON, UNKNOWN, LATIN, GREEK, CYRILLIC, LATIN, GREEK, LATIN, GREEK, LATIN, CYRILLIC, LATIN, GREEK, INHERITED, LATIN, GREEK, UNKNOWN, GREEK, UNKNOWN, GREEK, UNKNOWN, GREEK, UNKNOWN, GREEK, UNKNOWN, GREEK, UNKNOWN, GREEK, UNKNOWN, GREEK, UNKNOWN, GREEK, UNKNOWN, GREEK, UNKNOWN, GREEK, UNKNOWN, GREEK, UNKNOWN, GREEK, UNKNOWN, GREEK, UNKNOWN, GREEK, UNKNOWN, GREEK, UNKNOWN, COMMON, INHERITED, COMMON, UNKNOWN, COMMON, LATIN, UNKNOWN, COMMON, LATIN, COMMON, UNKNOWN, LATIN, UNKNOWN, COMMON, UNKNOWN, INHERITED, UNKNOWN, COMMON, GREEK, COMMON, LATIN, COMMON, LATIN, COMMON, LATIN, COMMON, LATIN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, BRAILLE, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, GLAGOLITIC, LATIN, COPTIC, UNKNOWN, COPTIC, GEORGIAN, UNKNOWN, GEORGIAN, UNKNOWN, GEORGIAN, UNKNOWN, TIFINAGH, UNKNOWN, TIFINAGH, UNKNOWN, TIFINAGH, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, CYRILLIC, COMMON, UNKNOWN, HAN, UNKNOWN, HAN, UNKNOWN, HAN, UNKNOWN, COMMON, HAN, COMMON, HAN, COMMON, HAN, INHERITED, HANGUL, COMMON, HAN, COMMON, UNKNOWN, HIRAGANA, UNKNOWN, INHERITED, COMMON, HIRAGANA, COMMON, KATAKANA, COMMON, KATAKANA, UNKNOWN, BOPOMOFO, UNKNOWN, HANGUL, UNKNOWN, COMMON, BOPOMOFO, COMMON, UNKNOWN, COMMON, KATAKANA, HANGUL, UNKNOWN, COMMON, HANGUL, COMMON, KATAKANA, COMMON, KATAKANA, COMMON, HAN, COMMON, HAN, YI, UNKNOWN, YI, UNKNOWN, LISU, VAI, UNKNOWN, CYRILLIC, BAMUM, UNKNOWN, COMMON, LATIN, COMMON, LATIN, UNKNOWN, LATIN, UNKNOWN, LATIN, UNKNOWN, LATIN, UNKNOWN, LATIN, SYLOTI_NAGRI, UNKNOWN, COMMON, UNKNOWN, PHAGS_PA, UNKNOWN, SAURASHTRA, UNKNOWN, SAURASHTRA, UNKNOWN, DEVANAGARI, KAYAH_LI, COMMON, KAYAH_LI, REJANG, UNKNOWN, REJANG, HANGUL, UNKNOWN, JAVANESE, UNKNOWN, COMMON, JAVANESE, UNKNOWN, JAVANESE, MYANMAR, UNKNOWN, CHAM, UNKNOWN, CHAM, UNKNOWN, CHAM, UNKNOWN, CHAM, MYANMAR, TAI_VIET, UNKNOWN, TAI_VIET, MEETEI_MAYEK, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, LATIN, COMMON, LATIN, GREEK, LATIN, COMMON, UNKNOWN, CHEROKEE, MEETEI_MAYEK, UNKNOWN, MEETEI_MAYEK, UNKNOWN, HANGUL, UNKNOWN, HANGUL, UNKNOWN, HANGUL, UNKNOWN, HAN, UNKNOWN, HAN, UNKNOWN, LATIN, UNKNOWN, ARMENIAN, UNKNOWN, HEBREW, UNKNOWN, HEBREW, UNKNOWN, HEBREW, UNKNOWN, HEBREW, UNKNOWN, HEBREW, UNKNOWN, HEBREW, ARABIC, UNKNOWN, ARABIC, COMMON, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, INHERITED, COMMON, UNKNOWN, INHERITED, CYRILLIC, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, COMMON, UNKNOWN, COMMON, LATIN, COMMON, LATIN, COMMON, KATAKANA, COMMON, KATAKANA, COMMON, HANGUL, UNKNOWN, HANGUL, UNKNOWN, HANGUL, UNKNOWN, HANGUL, UNKNOWN, HANGUL, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, LINEAR_B, UNKNOWN, LINEAR_B, UNKNOWN, LINEAR_B, UNKNOWN, LINEAR_B, UNKNOWN, LINEAR_B, UNKNOWN, LINEAR_B, UNKNOWN, LINEAR_B, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, GREEK, UNKNOWN, COMMON, UNKNOWN, GREEK, UNKNOWN, COMMON, INHERITED, UNKNOWN, LYCIAN, UNKNOWN, CARIAN, UNKNOWN, INHERITED, COMMON, UNKNOWN, OLD_ITALIC, UNKNOWN, OLD_ITALIC, GOTHIC, UNKNOWN, OLD_PERMIC, UNKNOWN, UGARITIC, UNKNOWN, UGARITIC, OLD_PERSIAN, UNKNOWN, OLD_PERSIAN, UNKNOWN, DESERET, SHAVIAN, OSMANYA, UNKNOWN, OSMANYA, UNKNOWN, OSAGE, UNKNOWN, OSAGE, UNKNOWN, ELBASAN, UNKNOWN, CAUCASIAN_ALBANIAN, UNKNOWN, CAUCASIAN_ALBANIAN, VITHKUQI, UNKNOWN, VITHKUQI, UNKNOWN, VITHKUQI, UNKNOWN, VITHKUQI, UNKNOWN, VITHKUQI, UNKNOWN, VITHKUQI, UNKNOWN, VITHKUQI, UNKNOWN, VITHKUQI, UNKNOWN, TODHRI, UNKNOWN, LINEAR_A, UNKNOWN, LINEAR_A, UNKNOWN, LINEAR_A, UNKNOWN, LATIN, UNKNOWN, LATIN, UNKNOWN, LATIN, UNKNOWN, CYPRIOT, UNKNOWN, CYPRIOT, UNKNOWN, CYPRIOT, UNKNOWN, CYPRIOT, UNKNOWN, CYPRIOT, UNKNOWN, CYPRIOT, IMPERIAL_ARAMAIC, UNKNOWN, IMPERIAL_ARAMAIC, PALMYRENE, NABATAEAN, UNKNOWN, NABATAEAN, UNKNOWN, HATRAN, UNKNOWN, HATRAN, UNKNOWN, HATRAN, PHOENICIAN, UNKNOWN, PHOENICIAN, LYDIAN, 
        UNKNOWN, LYDIAN, UNKNOWN, MEROITIC_HIEROGLYPHS, MEROITIC_CURSIVE, UNKNOWN, MEROITIC_CURSIVE, UNKNOWN, MEROITIC_CURSIVE, KHAROSHTHI, UNKNOWN, KHAROSHTHI, UNKNOWN, KHAROSHTHI, UNKNOWN, KHAROSHTHI, UNKNOWN, KHAROSHTHI, UNKNOWN, KHAROSHTHI, UNKNOWN, KHAROSHTHI, UNKNOWN, KHAROSHTHI, UNKNOWN, OLD_SOUTH_ARABIAN, OLD_NORTH_ARABIAN, UNKNOWN, MANICHAEAN, UNKNOWN, MANICHAEAN, UNKNOWN, AVESTAN, UNKNOWN, AVESTAN, INSCRIPTIONAL_PARTHIAN, UNKNOWN, INSCRIPTIONAL_PARTHIAN, INSCRIPTIONAL_PAHLAVI, UNKNOWN, INSCRIPTIONAL_PAHLAVI, PSALTER_PAHLAVI, UNKNOWN, PSALTER_PAHLAVI, UNKNOWN, PSALTER_PAHLAVI, UNKNOWN, OLD_TURKIC, UNKNOWN, OLD_HUNGARIAN, UNKNOWN, OLD_HUNGARIAN, UNKNOWN, OLD_HUNGARIAN, HANIFI_ROHINGYA, UNKNOWN, HANIFI_ROHINGYA, UNKNOWN, GARAY, UNKNOWN, GARAY, UNKNOWN, GARAY, UNKNOWN, ARABIC, UNKNOWN, YEZIDI, UNKNOWN, YEZIDI, UNKNOWN, YEZIDI, UNKNOWN, ARABIC, UNKNOWN, ARABIC, OLD_SOGDIAN, UNKNOWN, SOGDIAN, UNKNOWN, OLD_UYGHUR, UNKNOWN, CHORASMIAN, UNKNOWN, ELYMAIC, UNKNOWN, BRAHMI, UNKNOWN, BRAHMI, UNKNOWN, BRAHMI, KAITHI, UNKNOWN, KAITHI, UNKNOWN, SORA_SOMPENG, UNKNOWN, SORA_SOMPENG, UNKNOWN, CHAKMA, UNKNOWN, CHAKMA, UNKNOWN, MAHAJANI, UNKNOWN, SHARADA, UNKNOWN, SINHALA, UNKNOWN, KHOJKI, UNKNOWN, KHOJKI, UNKNOWN, MULTANI, UNKNOWN, MULTANI, UNKNOWN, MULTANI, UNKNOWN, MULTANI, UNKNOWN, MULTANI, UNKNOWN, KHUDAWADI, UNKNOWN, KHUDAWADI, UNKNOWN, GRANTHA, UNKNOWN, GRANTHA, UNKNOWN, GRANTHA, UNKNOWN, GRANTHA, UNKNOWN, GRANTHA, UNKNOWN, GRANTHA, UNKNOWN, GRANTHA, UNKNOWN, INHERITED, GRANTHA, UNKNOWN, GRANTHA, UNKNOWN, GRANTHA, UNKNOWN, GRANTHA, UNKNOWN, GRANTHA, UNKNOWN, GRANTHA, UNKNOWN, GRANTHA, UNKNOWN, GRANTHA, UNKNOWN, TULU_TIGALARI, UNKNOWN, TULU_TIGALARI, UNKNOWN, TULU_TIGALARI, UNKNOWN, TULU_TIGALARI, UNKNOWN, TULU_TIGALARI, UNKNOWN, TULU_TIGALARI, UNKNOWN, TULU_TIGALARI, UNKNOWN, TULU_TIGALARI, UNKNOWN, TULU_TIGALARI, UNKNOWN, TULU_TIGALARI, UNKNOWN, TULU_TIGALARI, UNKNOWN, NEWA, UNKNOWN, NEWA, UNKNOWN, TIRHUTA, UNKNOWN, TIRHUTA, UNKNOWN, SIDDHAM, UNKNOWN, SIDDHAM, UNKNOWN, MODI, UNKNOWN, MODI, UNKNOWN, MONGOLIAN, UNKNOWN, TAKRI, UNKNOWN, TAKRI, UNKNOWN, MYANMAR, UNKNOWN, AHOM, UNKNOWN, AHOM, UNKNOWN, AHOM, UNKNOWN, DOGRA, UNKNOWN, WARANG_CITI, UNKNOWN, WARANG_CITI, DIVES_AKURU, UNKNOWN, DIVES_AKURU, UNKNOWN, DIVES_AKURU, UNKNOWN, DIVES_AKURU, UNKNOWN, DIVES_AKURU, UNKNOWN, DIVES_AKURU, UNKNOWN, DIVES_AKURU, UNKNOWN, DIVES_AKURU, UNKNOWN, NANDINAGARI, UNKNOWN, NANDINAGARI, UNKNOWN, NANDINAGARI, UNKNOWN, ZANABAZAR_SQUARE, UNKNOWN, SOYOMBO, UNKNOWN, CANADIAN_ABORIGINAL, PAU_CIN_HAU, UNKNOWN, DEVANAGARI, UNKNOWN, SUNUWAR, UNKNOWN, SUNUWAR, UNKNOWN, BHAIKSUKI, UNKNOWN, BHAIKSUKI, UNKNOWN, BHAIKSUKI, UNKNOWN, BHAIKSUKI, UNKNOWN, MARCHEN, UNKNOWN, MARCHEN, UNKNOWN, MARCHEN, UNKNOWN, MASARAM_GONDI, UNKNOWN, MASARAM_GONDI, UNKNOWN, MASARAM_GONDI, UNKNOWN, MASARAM_GONDI, UNKNOWN, MASARAM_GONDI, UNKNOWN, MASARAM_GONDI, UNKNOWN, MASARAM_GONDI, UNKNOWN, GUNJALA_GONDI, UNKNOWN, GUNJALA_GONDI, UNKNOWN, GUNJALA_GONDI, UNKNOWN, GUNJALA_GONDI, UNKNOWN, GUNJALA_GONDI, UNKNOWN, GUNJALA_GONDI, UNKNOWN, MAKASAR, UNKNOWN, KAWI, UNKNOWN, KAWI, UNKNOWN, KAWI, UNKNOWN, LISU, UNKNOWN, TAMIL, UNKNOWN, TAMIL, CUNEIFORM, UNKNOWN, CUNEIFORM, UNKNOWN, CUNEIFORM, UNKNOWN, CUNEIFORM, UNKNOWN, CYPRO_MINOAN, UNKNOWN, EGYPTIAN_HIEROGLYPHS, UNKNOWN, EGYPTIAN_HIEROGLYPHS, UNKNOWN, ANATOLIAN_HIEROGLYPHS, UNKNOWN, GURUNG_KHEMA, UNKNOWN, BAMUM, UNKNOWN, MRO, UNKNOWN, MRO, UNKNOWN, MRO, TANGSA, UNKNOWN, TANGSA, UNKNOWN, BASSA_VAH, UNKNOWN, BASSA_VAH, UNKNOWN, PAHAWH_HMONG, UNKNOWN, PAHAWH_HMONG, UNKNOWN, PAHAWH_HMONG, UNKNOWN, PAHAWH_HMONG, UNKNOWN, PAHAWH_HMONG, UNKNOWN, KIRAT_RAI, UNKNOWN, MEDEFAIDRIN, UNKNOWN, MIAO, UNKNOWN, MIAO, UNKNOWN, MIAO, UNKNOWN, TANGUT, NUSHU, HAN, KHITAN_SMALL_SCRIPT, UNKNOWN, HAN, UNKNOWN, TANGUT, UNKNOWN, TANGUT, KHITAN_SMALL_SCRIPT, UNKNOWN, KHITAN_SMALL_SCRIPT, TANGUT, UNKNOWN, KATAKANA, UNKNOWN, KATAKANA, UNKNOWN, KATAKANA, UNKNOWN, KATAKANA, HIRAGANA, KATAKANA, UNKNOWN, HIRAGANA, UNKNOWN, HIRAGANA, UNKNOWN, KATAKANA, UNKNOWN, KATAKANA, UNKNOWN, NUSHU, UNKNOWN, DUPLOYAN, UNKNOWN, DUPLOYAN, UNKNOWN, DUPLOYAN, UNKNOWN, DUPLOYAN, UNKNOWN, DUPLOYAN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, INHERITED, UNKNOWN, INHERITED, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, INHERITED, COMMON, INHERITED, COMMON, INHERITED, COMMON, INHERITED, COMMON, UNKNOWN, GREEK, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, SIGNWRITING, UNKNOWN, SIGNWRITING, UNKNOWN, SIGNWRITING, UNKNOWN, LATIN, UNKNOWN, LATIN, UNKNOWN, GLAGOLITIC, UNKNOWN, GLAGOLITIC, UNKNOWN, GLAGOLITIC, UNKNOWN, GLAGOLITIC, UNKNOWN, GLAGOLITIC, UNKNOWN, CYRILLIC, UNKNOWN, CYRILLIC, UNKNOWN, NYIAKENG_PUACHUE_HMONG, UNKNOWN, NYIAKENG_PUACHUE_HMONG, UNKNOWN, NYIAKENG_PUACHUE_HMONG, UNKNOWN, NYIAKENG_PUACHUE_HMONG, UNKNOWN, TOTO, UNKNOWN, WANCHO, UNKNOWN, WANCHO, UNKNOWN, NAG_MUNDARI, UNKNOWN, OL_ONAL, UNKNOWN, OL_ONAL, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, ETHIOPIC, UNKNOWN, MENDE_KIKAKUI, UNKNOWN, MENDE_KIKAKUI, UNKNOWN, ADLAM, UNKNOWN, ADLAM, UNKNOWN, ADLAM, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, ARABIC, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, HIRAGANA, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, HAN, UNKNOWN, HAN, UNKNOWN, HAN, UNKNOWN, HAN, UNKNOWN, HAN, UNKNOWN, HAN, UNKNOWN, HAN, UNKNOWN, HAN, UNKNOWN, HAN, UNKNOWN, COMMON, UNKNOWN, COMMON, UNKNOWN, INHERITED, UNKNOWN};
        private static final HashMap<String, UnicodeScript> aliases = HashMap.newHashMap(UNKNOWN.ordinal() + 1);

        static {
            aliases.put("ADLM", ADLAM);
            aliases.put("AGHB", CAUCASIAN_ALBANIAN);
            aliases.put("AHOM", AHOM);
            aliases.put("ARAB", ARABIC);
            aliases.put("ARMI", IMPERIAL_ARAMAIC);
            aliases.put("ARMN", ARMENIAN);
            aliases.put("AVST", AVESTAN);
            aliases.put("BALI", BALINESE);
            aliases.put("BAMU", BAMUM);
            aliases.put("BASS", BASSA_VAH);
            aliases.put("BATK", BATAK);
            aliases.put("BENG", BENGALI);
            aliases.put("BHKS", BHAIKSUKI);
            aliases.put("BOPO", BOPOMOFO);
            aliases.put("BRAH", BRAHMI);
            aliases.put("BRAI", BRAILLE);
            aliases.put("BUGI", BUGINESE);
            aliases.put("BUHD", BUHID);
            aliases.put("CAKM", CHAKMA);
            aliases.put("CANS", CANADIAN_ABORIGINAL);
            aliases.put("CARI", CARIAN);
            aliases.put("CHAM", CHAM);
            aliases.put("CHER", CHEROKEE);
            aliases.put("CHRS", CHORASMIAN);
            aliases.put("COPT", COPTIC);
            aliases.put("CPMN", CYPRO_MINOAN);
            aliases.put("CPRT", CYPRIOT);
            aliases.put("CYRL", CYRILLIC);
            aliases.put("DEVA", DEVANAGARI);
            aliases.put("DIAK", DIVES_AKURU);
            aliases.put("DOGR", DOGRA);
            aliases.put("DSRT", DESERET);
            aliases.put("DUPL", DUPLOYAN);
            aliases.put("EGYP", EGYPTIAN_HIEROGLYPHS);
            aliases.put("ELBA", ELBASAN);
            aliases.put("ELYM", ELYMAIC);
            aliases.put("ETHI", ETHIOPIC);
            aliases.put("GARA", GARAY);
            aliases.put("GEOR", GEORGIAN);
            aliases.put("GLAG", GLAGOLITIC);
            aliases.put("GONG", GUNJALA_GONDI);
            aliases.put("GONM", MASARAM_GONDI);
            aliases.put("GOTH", GOTHIC);
            aliases.put("GRAN", GRANTHA);
            aliases.put("GREK", GREEK);
            aliases.put("GUJR", GUJARATI);
            aliases.put("GUKH", GURUNG_KHEMA);
            aliases.put("GURU", GURMUKHI);
            aliases.put("HANG", HANGUL);
            aliases.put("HANI", HAN);
            aliases.put("HANO", HANUNOO);
            aliases.put("HATR", HATRAN);
            aliases.put("HEBR", HEBREW);
            aliases.put("HIRA", HIRAGANA);
            aliases.put("HLUW", ANATOLIAN_HIEROGLYPHS);
            aliases.put("HMNG", PAHAWH_HMONG);
            aliases.put("HMNP", NYIAKENG_PUACHUE_HMONG);
            aliases.put("HUNG", OLD_HUNGARIAN);
            aliases.put("ITAL", OLD_ITALIC);
            aliases.put(SuffixConstants.EXTENSION_JAVA, JAVANESE);
            aliases.put("KALI", KAYAH_LI);
            aliases.put("KANA", KATAKANA);
            aliases.put("KAWI", KAWI);
            aliases.put("KHAR", KHAROSHTHI);
            aliases.put("KHMR", KHMER);
            aliases.put("KHOJ", KHOJKI);
            aliases.put("KITS", KHITAN_SMALL_SCRIPT);
            aliases.put("KNDA", KANNADA);
            aliases.put("KRAI", KIRAT_RAI);
            aliases.put("KTHI", KAITHI);
            aliases.put("LANA", TAI_THAM);
            aliases.put("LAOO", LAO);
            aliases.put("LATN", LATIN);
            aliases.put("LEPC", LEPCHA);
            aliases.put("LIMB", LIMBU);
            aliases.put("LINA", LINEAR_A);
            aliases.put("LINB", LINEAR_B);
            aliases.put("LISU", LISU);
            aliases.put("LYCI", LYCIAN);
            aliases.put("LYDI", LYDIAN);
            aliases.put("MAHJ", MAHAJANI);
            aliases.put("MAKA", MAKASAR);
            aliases.put("MAND", MANDAIC);
            aliases.put("MANI", MANICHAEAN);
            aliases.put("MARC", MARCHEN);
            aliases.put("MEDF", MEDEFAIDRIN);
            aliases.put("MEND", MENDE_KIKAKUI);
            aliases.put("MERC", MEROITIC_CURSIVE);
            aliases.put("MERO", MEROITIC_HIEROGLYPHS);
            aliases.put("MLYM", MALAYALAM);
            aliases.put("MODI", MODI);
            aliases.put("MONG", MONGOLIAN);
            aliases.put("MROO", MRO);
            aliases.put("MTEI", MEETEI_MAYEK);
            aliases.put("MULT", MULTANI);
            aliases.put("MYMR", MYANMAR);
            aliases.put("NAGM", NAG_MUNDARI);
            aliases.put("NAND", NANDINAGARI);
            aliases.put("NARB", OLD_NORTH_ARABIAN);
            aliases.put("NBAT", NABATAEAN);
            aliases.put("NEWA", NEWA);
            aliases.put("NKOO", NKO);
            aliases.put("NSHU", NUSHU);
            aliases.put("OGAM", OGHAM);
            aliases.put("OLCK", OL_CHIKI);
            aliases.put("ONAO", OL_ONAL);
            aliases.put("ORKH", OLD_TURKIC);
            aliases.put("ORYA", ORIYA);
            aliases.put("OSGE", OSAGE);
            aliases.put("OSMA", OSMANYA);
            aliases.put("OUGR", OLD_UYGHUR);
            aliases.put("PALM", PALMYRENE);
            aliases.put("PAUC", PAU_CIN_HAU);
            aliases.put("PERM", OLD_PERMIC);
            aliases.put("PHAG", PHAGS_PA);
            aliases.put("PHLI", INSCRIPTIONAL_PAHLAVI);
            aliases.put("PHLP", PSALTER_PAHLAVI);
            aliases.put("PHNX", PHOENICIAN);
            aliases.put("PLRD", MIAO);
            aliases.put("PRTI", INSCRIPTIONAL_PARTHIAN);
            aliases.put("RJNG", REJANG);
            aliases.put("ROHG", HANIFI_ROHINGYA);
            aliases.put("RUNR", RUNIC);
            aliases.put("SAMR", SAMARITAN);
            aliases.put("SARB", OLD_SOUTH_ARABIAN);
            aliases.put("SAUR", SAURASHTRA);
            aliases.put("SGNW", SIGNWRITING);
            aliases.put("SHAW", SHAVIAN);
            aliases.put("SHRD", SHARADA);
            aliases.put("SIDD", SIDDHAM);
            aliases.put("SIND", KHUDAWADI);
            aliases.put("SINH", SINHALA);
            aliases.put("SOGD", SOGDIAN);
            aliases.put("SOGO", OLD_SOGDIAN);
            aliases.put("SORA", SORA_SOMPENG);
            aliases.put("SOYO", SOYOMBO);
            aliases.put("SUND", SUNDANESE);
            aliases.put("SUNU", SUNUWAR);
            aliases.put("SYLO", SYLOTI_NAGRI);
            aliases.put("SYRC", SYRIAC);
            aliases.put("TAGB", TAGBANWA);
            aliases.put("TAKR", TAKRI);
            aliases.put("TALE", TAI_LE);
            aliases.put("TALU", NEW_TAI_LUE);
            aliases.put("TAML", TAMIL);
            aliases.put("TANG", TANGUT);
            aliases.put("TAVT", TAI_VIET);
            aliases.put("TELU", TELUGU);
            aliases.put("TFNG", TIFINAGH);
            aliases.put("TGLG", TAGALOG);
            aliases.put("THAA", THAANA);
            aliases.put("THAI", THAI);
            aliases.put("TIBT", TIBETAN);
            aliases.put("TIRH", TIRHUTA);
            aliases.put("TNSA", TANGSA);
            aliases.put("TODR", TODHRI);
            aliases.put("TOTO", TOTO);
            aliases.put("TUTG", TULU_TIGALARI);
            aliases.put("UGAR", UGARITIC);
            aliases.put("VAII", VAI);
            aliases.put("VITH", VITHKUQI);
            aliases.put("WARA", WARANG_CITI);
            aliases.put("WCHO", WANCHO);
            aliases.put("XPEO", OLD_PERSIAN);
            aliases.put("XSUX", CUNEIFORM);
            aliases.put("YEZI", YEZIDI);
            aliases.put("YIII", YI);
            aliases.put("ZANB", ZANABAZAR_SQUARE);
            aliases.put("ZINH", INHERITED);
            aliases.put("ZYYY", COMMON);
            aliases.put(DateFormat.ABBR_UTC_TZ, UNKNOWN);
        }

        public static UnicodeScript of(int codePoint) {
            if (!Character.isValidCodePoint(codePoint)) {
                throw new IllegalArgumentException(String.format("Not a valid Unicode code point: 0x%X", Integer.valueOf(codePoint)));
            }
            int type = Character.getType(codePoint);
            if (type == 0) {
                return UNKNOWN;
            }
            int index = Arrays.binarySearch(scriptStarts, codePoint);
            if (index < 0) {
                index = (-index) - 2;
            }
            return scripts[index];
        }

        public static final UnicodeScript forName(String scriptName) {
            String scriptName2 = scriptName.toUpperCase(Locale.ENGLISH);
            UnicodeScript sc2 = aliases.get(scriptName2);
            if (sc2 != null) {
                return sc2;
            }
            return valueOf(scriptName2);
        }
    }

    @Deprecated(since = "9")
    public Character(char value) {
        this.value = value;
    }

    public static final class CharacterCache {

        @Stable
        static final Character[] cache;
        static Character[] archivedCache;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !Character.class.desiredAssertionStatus();
            CDS.initializeFromArchive(CharacterCache.class);
            if (archivedCache == null) {
                Character[] c10 = new Character[128];
                for (int i10 = 0; i10 < 128; i10++) {
                    c10[i10] = new Character((char) i10);
                }
                archivedCache = c10;
            }
            cache = archivedCache;
            if (!$assertionsDisabled && cache.length != 128) {
                throw new AssertionError();
            }
        }

        private CharacterCache() {
        }
    }

    @IntrinsicCandidate
    public static Character valueOf(char c10) {
        if (c10 <= '\u007f') {
            return CharacterCache.cache[c10];
        }
        return new Character(c10);
    }

    @IntrinsicCandidate
    public char charValue() {
        return this.value;
    }

    public int hashCode() {
        return hashCode(this.value);
    }

    public static int hashCode(char value) {
        return value;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Character)) {
            return false;
        }
        Character c10 = (Character) obj;
        return this.value == c10.charValue();
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public static String toString(char c10) {
        return String.valueOf(c10);
    }

    public static String toString(int codePoint) {
        return String.valueOfCodePoint(codePoint);
    }

    public static boolean isValidCodePoint(int codePoint) {
        int plane = codePoint >>> 16;
        return plane < 17;
    }

    public static boolean isBmpCodePoint(int codePoint) {
        return (codePoint >>> 16) == 0;
    }

    public static boolean isSupplementaryCodePoint(int codePoint) {
        return codePoint >= 65536 && codePoint < 1114112;
    }

    public static boolean isHighSurrogate(char ch2) {
        return ch2 >= '\ud800' && ch2 < '\udc00';
    }

    public static boolean isLowSurrogate(char ch2) {
        return ch2 >= '\udc00' && ch2 < '\ue000';
    }

    public static boolean isSurrogate(char ch2) {
        return ch2 >= '\ud800' && ch2 < '\ue000';
    }

    public static boolean isSurrogatePair(char high, char low) {
        return isHighSurrogate(high) && isLowSurrogate(low);
    }

    public static int charCount(int codePoint) {
        return codePoint >= 65536 ? 2 : 1;
    }

    public static int toCodePoint(char high, char low) {
        return ((high << '\n') + low) - 56613888;
    }

    public static int codePointAt(CharSequence seq, int index) {
        int index2;
        char c12 = seq.charAt(index);
        if (isHighSurrogate(c12) && (index2 = index + 1) < seq.length()) {
            char c22 = seq.charAt(index2);
            if (isLowSurrogate(c22)) {
                return toCodePoint(c12, c22);
            }
        }
        return c12;
    }

    public static int codePointAt(char[] a10, int index) {
        return codePointAtImpl(a10, index, a10.length);
    }

    public static int codePointAt(char[] a10, int index, int limit) {
        if (index >= limit || index < 0 || limit > a10.length) {
            throw new IndexOutOfBoundsException();
        }
        return codePointAtImpl(a10, index, limit);
    }

    static int codePointAtImpl(char[] a10, int index, int limit) {
        int index2;
        char c12 = a10[index];
        if (isHighSurrogate(c12) && (index2 = index + 1) < limit) {
            char c22 = a10[index2];
            if (isLowSurrogate(c22)) {
                return toCodePoint(c12, c22);
            }
        }
        return c12;
    }

    public static int codePointBefore(CharSequence seq, int index) {
        int index2 = index - 1;
        char c22 = seq.charAt(index2);
        if (isLowSurrogate(c22) && index2 > 0) {
            char c12 = seq.charAt(index2 - 1);
            if (isHighSurrogate(c12)) {
                return toCodePoint(c12, c22);
            }
        }
        return c22;
    }

    public static int codePointBefore(char[] a10, int index) {
        return codePointBeforeImpl(a10, index, 0);
    }

    public static int codePointBefore(char[] a10, int index, int start) {
        if (index <= start || start < 0 || index > a10.length) {
            throw new IndexOutOfBoundsException();
        }
        return codePointBeforeImpl(a10, index, start);
    }

    static int codePointBeforeImpl(char[] a10, int index, int start) {
        int index2 = index - 1;
        char c22 = a10[index2];
        if (isLowSurrogate(c22) && index2 > start) {
            char c12 = a10[index2 - 1];
            if (isHighSurrogate(c12)) {
                return toCodePoint(c12, c22);
            }
        }
        return c22;
    }

    public static char highSurrogate(int codePoint) {
        return (char) ((codePoint >>> 10) + 55232);
    }

    public static char lowSurrogate(int codePoint) {
        return (char) ((codePoint & 1023) + 56320);
    }

    public static int toChars(int codePoint, char[] dst, int dstIndex) {
        if (isBmpCodePoint(codePoint)) {
            dst[dstIndex] = (char) codePoint;
            return 1;
        }
        if (isValidCodePoint(codePoint)) {
            toSurrogates(codePoint, dst, dstIndex);
            return 2;
        }
        throw new IllegalArgumentException(String.format("Not a valid Unicode code point: 0x%X", Integer.valueOf(codePoint)));
    }

    public static char[] toChars(int codePoint) {
        if (isBmpCodePoint(codePoint)) {
            return new char[]{(char) codePoint};
        }
        if (isValidCodePoint(codePoint)) {
            char[] result = new char[2];
            toSurrogates(codePoint, result, 0);
            return result;
        }
        throw new IllegalArgumentException(String.format("Not a valid Unicode code point: 0x%X", Integer.valueOf(codePoint)));
    }

    static void toSurrogates(int codePoint, char[] dst, int index) {
        dst[index + 1] = lowSurrogate(codePoint);
        dst[index] = highSurrogate(codePoint);
    }

    public static int codePointCount(CharSequence seq, int beginIndex, int endIndex) {
        Objects.checkFromToIndex(beginIndex, endIndex, seq.length());
        int n10 = endIndex - beginIndex;
        int i10 = beginIndex;
        while (i10 < endIndex) {
            int i11 = i10;
            i10++;
            if (isHighSurrogate(seq.charAt(i11)) && i10 < endIndex && isLowSurrogate(seq.charAt(i10))) {
                n10--;
                i10++;
            }
        }
        return n10;
    }

    public static int codePointCount(char[] a10, int offset, int count) {
        Objects.checkFromIndexSize(offset, count, a10.length);
        return codePointCountImpl(a10, offset, count);
    }

    static int codePointCountImpl(char[] a10, int offset, int count) {
        int endIndex = offset + count;
        int n10 = count;
        int i10 = offset;
        while (i10 < endIndex) {
            int i11 = i10;
            i10++;
            if (isHighSurrogate(a10[i11]) && i10 < endIndex && isLowSurrogate(a10[i10])) {
                n10--;
                i10++;
            }
        }
        return n10;
    }

    public static int offsetByCodePoints(CharSequence seq, int index, int codePointOffset) {
        int length = seq.length();
        if (index < 0 || index > length) {
            throw new IndexOutOfBoundsException();
        }
        int x10 = index;
        if (codePointOffset >= 0) {
            int i10 = 0;
            while (x10 < length && i10 < codePointOffset) {
                int i11 = x10;
                x10++;
                if (isHighSurrogate(seq.charAt(i11)) && x10 < length && isLowSurrogate(seq.charAt(x10))) {
                    x10++;
                }
                i10++;
            }
            if (i10 < codePointOffset) {
                throw new IndexOutOfBoundsException();
            }
        } else {
            int i12 = codePointOffset;
            while (x10 > 0 && i12 < 0) {
                x10--;
                if (isLowSurrogate(seq.charAt(x10)) && x10 > 0 && isHighSurrogate(seq.charAt(x10 - 1))) {
                    x10--;
                }
                i12++;
            }
            if (i12 < 0) {
                throw new IndexOutOfBoundsException();
            }
        }
        return x10;
    }

    public static int offsetByCodePoints(char[] a10, int start, int count, int index, int codePointOffset) {
        if (count > a10.length - start || start < 0 || count < 0 || index < start || index > start + count) {
            throw new IndexOutOfBoundsException();
        }
        return offsetByCodePointsImpl(a10, start, count, index, codePointOffset);
    }

    static int offsetByCodePointsImpl(char[] a10, int start, int count, int index, int codePointOffset) {
        int x10 = index;
        if (codePointOffset >= 0) {
            int limit = start + count;
            int i10 = 0;
            while (x10 < limit && i10 < codePointOffset) {
                int i11 = x10;
                x10++;
                if (isHighSurrogate(a10[i11]) && x10 < limit && isLowSurrogate(a10[x10])) {
                    x10++;
                }
                i10++;
            }
            if (i10 < codePointOffset) {
                throw new IndexOutOfBoundsException();
            }
        } else {
            int i12 = codePointOffset;
            while (x10 > start && i12 < 0) {
                x10--;
                if (isLowSurrogate(a10[x10]) && x10 > start && isHighSurrogate(a10[x10 - 1])) {
                    x10--;
                }
                i12++;
            }
            if (i12 < 0) {
                throw new IndexOutOfBoundsException();
            }
        }
        return x10;
    }

    public static boolean isLowerCase(char ch2) {
        return isLowerCase((int) ch2);
    }

    public static boolean isLowerCase(int codePoint) {
        return CharacterData.of(codePoint).isLowerCase(codePoint);
    }

    public static boolean isUpperCase(char ch2) {
        return isUpperCase((int) ch2);
    }

    public static boolean isUpperCase(int codePoint) {
        return CharacterData.of(codePoint).isUpperCase(codePoint);
    }

    public static boolean isTitleCase(char ch2) {
        return isTitleCase((int) ch2);
    }

    public static boolean isTitleCase(int codePoint) {
        return getType(codePoint) == 3;
    }

    public static boolean isDigit(char ch2) {
        return isDigit((int) ch2);
    }

    public static boolean isDigit(int codePoint) {
        return CharacterData.of(codePoint).isDigit(codePoint);
    }

    public static boolean isDefined(char ch2) {
        return isDefined((int) ch2);
    }

    public static boolean isDefined(int codePoint) {
        return getType(codePoint) != 0;
    }

    public static boolean isLetter(char ch2) {
        return isLetter((int) ch2);
    }

    public static boolean isLetter(int codePoint) {
        return ((62 >> getType(codePoint)) & 1) != 0;
    }

    public static boolean isLetterOrDigit(char ch2) {
        return isLetterOrDigit((int) ch2);
    }

    public static boolean isLetterOrDigit(int codePoint) {
        return ((574 >> getType(codePoint)) & 1) != 0;
    }

    @Deprecated(since = "1.1")
    public static boolean isJavaLetter(char ch2) {
        return isJavaIdentifierStart(ch2);
    }

    @Deprecated(since = "1.1")
    public static boolean isJavaLetterOrDigit(char ch2) {
        return isJavaIdentifierPart(ch2);
    }

    public static boolean isAlphabetic(int codePoint) {
        return ((1086 >> getType(codePoint)) & 1) != 0 || CharacterData.of(codePoint).isOtherAlphabetic(codePoint);
    }

    public static boolean isIdeographic(int codePoint) {
        return CharacterData.of(codePoint).isIdeographic(codePoint);
    }

    public static boolean isJavaIdentifierStart(char ch2) {
        return isJavaIdentifierStart((int) ch2);
    }

    public static boolean isJavaIdentifierStart(int codePoint) {
        return CharacterData.of(codePoint).isJavaIdentifierStart(codePoint);
    }

    public static boolean isJavaIdentifierPart(char ch2) {
        return isJavaIdentifierPart((int) ch2);
    }

    public static boolean isJavaIdentifierPart(int codePoint) {
        return CharacterData.of(codePoint).isJavaIdentifierPart(codePoint);
    }

    public static boolean isUnicodeIdentifierStart(char ch2) {
        return isUnicodeIdentifierStart((int) ch2);
    }

    public static boolean isUnicodeIdentifierStart(int codePoint) {
        return CharacterData.of(codePoint).isUnicodeIdentifierStart(codePoint);
    }

    public static boolean isUnicodeIdentifierPart(char ch2) {
        return isUnicodeIdentifierPart((int) ch2);
    }

    public static boolean isUnicodeIdentifierPart(int codePoint) {
        return CharacterData.of(codePoint).isUnicodeIdentifierPart(codePoint);
    }

    public static boolean isIdentifierIgnorable(char ch2) {
        return isIdentifierIgnorable((int) ch2);
    }

    public static boolean isIdentifierIgnorable(int codePoint) {
        return CharacterData.of(codePoint).isIdentifierIgnorable(codePoint);
    }

    public static boolean isEmoji(int codePoint) {
        return CharacterData.of(codePoint).isEmoji(codePoint);
    }

    public static boolean isEmojiPresentation(int codePoint) {
        return CharacterData.of(codePoint).isEmojiPresentation(codePoint);
    }

    public static boolean isEmojiModifier(int codePoint) {
        return CharacterData.of(codePoint).isEmojiModifier(codePoint);
    }

    public static boolean isEmojiModifierBase(int codePoint) {
        return CharacterData.of(codePoint).isEmojiModifierBase(codePoint);
    }

    public static boolean isEmojiComponent(int codePoint) {
        return CharacterData.of(codePoint).isEmojiComponent(codePoint);
    }

    public static boolean isExtendedPictographic(int codePoint) {
        return CharacterData.of(codePoint).isExtendedPictographic(codePoint);
    }

    public static char toLowerCase(char ch2) {
        return (char) toLowerCase((int) ch2);
    }

    public static int toLowerCase(int codePoint) {
        return CharacterData.of(codePoint).toLowerCase(codePoint);
    }

    public static char toUpperCase(char ch2) {
        return (char) toUpperCase((int) ch2);
    }

    public static int toUpperCase(int codePoint) {
        return CharacterData.of(codePoint).toUpperCase(codePoint);
    }

    public static char toTitleCase(char ch2) {
        return (char) toTitleCase((int) ch2);
    }

    public static int toTitleCase(int codePoint) {
        return CharacterData.of(codePoint).toTitleCase(codePoint);
    }

    public static int digit(char ch2, int radix) {
        return digit((int) ch2, radix);
    }

    public static int digit(int codePoint, int radix) {
        return CharacterData.of(codePoint).digit(codePoint, radix);
    }

    public static int getNumericValue(char ch2) {
        return getNumericValue((int) ch2);
    }

    public static int getNumericValue(int codePoint) {
        return CharacterData.of(codePoint).getNumericValue(codePoint);
    }

    @Deprecated(since = "1.1")
    public static boolean isSpace(char ch2) {
        return ch2 <= ' ' && (('\u3600' >> ch2) & 1) != 0;
    }

    public static boolean isSpaceChar(char ch2) {
        return isSpaceChar((int) ch2);
    }

    public static boolean isSpaceChar(int codePoint) {
        return ((28672 >> getType(codePoint)) & 1) != 0;
    }

    public static boolean isWhitespace(char ch2) {
        return isWhitespace((int) ch2);
    }

    public static boolean isWhitespace(int codePoint) {
        return CharacterData.of(codePoint).isWhitespace(codePoint);
    }

    public static boolean isISOControl(char ch2) {
        return isISOControl((int) ch2);
    }

    public static boolean isISOControl(int codePoint) {
        return codePoint <= 159 && (codePoint >= 127 || (codePoint >>> 5) == 0);
    }

    public static int getType(char ch2) {
        return getType((int) ch2);
    }

    public static int getType(int codePoint) {
        return CharacterData.of(codePoint).getType(codePoint);
    }

    public static char forDigit(int digit, int radix) {
        if (digit >= radix || digit < 0 || radix < 2 || radix > 36) {
            return (char) 0;
        }
        if (digit < 10) {
            return (char) (48 + digit);
        }
        return (char) (87 + digit);
    }

    public static byte getDirectionality(char ch2) {
        return getDirectionality((int) ch2);
    }

    public static byte getDirectionality(int codePoint) {
        return CharacterData.of(codePoint).getDirectionality(codePoint);
    }

    public static boolean isMirrored(char ch2) {
        return isMirrored((int) ch2);
    }

    public static boolean isMirrored(int codePoint) {
        return CharacterData.of(codePoint).isMirrored(codePoint);
    }

    @Override
    public int compareTo(Character anotherCharacter) {
        return compare(this.value, anotherCharacter.value);
    }

    public static int compare(char x10, char y10) {
        return x10 - y10;
    }

    public static int toUpperCaseEx(int codePoint) {
        if ($assertionsDisabled || isValidCodePoint(codePoint)) {
            return CharacterData.of(codePoint).toUpperCaseEx(codePoint);
        }
        throw new AssertionError();
    }

    public static char[] toUpperCaseCharArray(int codePoint) {
        if ($assertionsDisabled || isBmpCodePoint(codePoint)) {
            return CharacterData.of(codePoint).toUpperCaseCharArray(codePoint);
        }
        throw new AssertionError();
    }

    @IntrinsicCandidate
    public static char reverseBytes(char ch2) {
        return (char) (((ch2 & '\uff00') >> 8) | (ch2 << '\b'));
    }

    public static String getName(int codePoint) {
        if (!isValidCodePoint(codePoint)) {
            throw new IllegalArgumentException(String.format("Not a valid Unicode code point: 0x%X", Integer.valueOf(codePoint)));
        }
        String name = CharacterName.getInstance().getName(codePoint);
        if (name != null) {
            return name;
        }
        if (getType(codePoint) == 0) {
            return null;
        }
        UnicodeBlock block = UnicodeBlock.of(codePoint);
        if (block != null) {
            return block.toString().replace('_', C15883c.f126249O) + " " + Integer.toHexString(codePoint).toUpperCase(Locale.ROOT);
        }
        return Integer.toHexString(codePoint).toUpperCase(Locale.ROOT);
    }

    public static int codePointOf(String name) {
        String name2 = name.trim().toUpperCase(Locale.ROOT);
        int cp = CharacterName.getInstance().getCodePoint(name2);
        if (cp != -1) {
            return cp;
        }
        try {
            int off = name2.lastIndexOf(32);
            if (off != -1) {
                int cp2 = Integer.parseInt(name2, off + 1, name2.length(), 16);
                if (isValidCodePoint(cp2)) {
                    if (name2.equals(getName(cp2))) {
                        return cp2;
                    }
                }
            }
        } catch (Exception e10) {
        }
        throw new IllegalArgumentException("Unrecognized character name :" + name2);
    }
}
