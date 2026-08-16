package android.text.style;

import android.os.Parcel;
import android.os.PersistableBundle;
import android.text.ParcelableSpan;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TtsSpan.class
 */
public class TtsSpan implements ParcelableSpan {
    public static final String ANIMACY_ANIMATE = "android.animate";
    public static final String ANIMACY_INANIMATE = "android.inanimate";
    public static final String ARG_ANIMACY = "android.arg.animacy";
    public static final String ARG_CASE = "android.arg.case";
    public static final String ARG_COUNTRY_CODE = "android.arg.country_code";
    public static final String ARG_CURRENCY = "android.arg.money";
    public static final String ARG_DAY = "android.arg.day";
    public static final String ARG_DENOMINATOR = "android.arg.denominator";
    public static final String ARG_DIGITS = "android.arg.digits";
    public static final String ARG_DOMAIN = "android.arg.domain";
    public static final String ARG_EXTENSION = "android.arg.extension";
    public static final String ARG_FRACTIONAL_PART = "android.arg.fractional_part";
    public static final String ARG_FRAGMENT_ID = "android.arg.fragment_id";
    public static final String ARG_GENDER = "android.arg.gender";
    public static final String ARG_HOURS = "android.arg.hours";
    public static final String ARG_INTEGER_PART = "android.arg.integer_part";
    public static final String ARG_MINUTES = "android.arg.minutes";
    public static final String ARG_MONTH = "android.arg.month";
    public static final String ARG_MULTIPLICITY = "android.arg.multiplicity";
    public static final String ARG_NUMBER = "android.arg.number";
    public static final String ARG_NUMBER_PARTS = "android.arg.number_parts";
    public static final String ARG_NUMERATOR = "android.arg.numerator";
    public static final String ARG_PASSWORD = "android.arg.password";
    public static final String ARG_PATH = "android.arg.path";
    public static final String ARG_PORT = "android.arg.port";
    public static final String ARG_PROTOCOL = "android.arg.protocol";
    public static final String ARG_QUANTITY = "android.arg.quantity";
    public static final String ARG_QUERY_STRING = "android.arg.query_string";
    public static final String ARG_TEXT = "android.arg.text";
    public static final String ARG_UNIT = "android.arg.unit";
    public static final String ARG_USERNAME = "android.arg.username";
    public static final String ARG_VERBATIM = "android.arg.verbatim";
    public static final String ARG_WEEKDAY = "android.arg.weekday";
    public static final String ARG_YEAR = "android.arg.year";
    public static final String CASE_ABLATIVE = "android.ablative";
    public static final String CASE_ACCUSATIVE = "android.accusative";
    public static final String CASE_DATIVE = "android.dative";
    public static final String CASE_GENITIVE = "android.genitive";
    public static final String CASE_INSTRUMENTAL = "android.instrumental";
    public static final String CASE_LOCATIVE = "android.locative";
    public static final String CASE_NOMINATIVE = "android.nominative";
    public static final String CASE_VOCATIVE = "android.vocative";
    public static final String GENDER_FEMALE = "android.female";
    public static final String GENDER_MALE = "android.male";
    public static final String GENDER_NEUTRAL = "android.neutral";
    public static final int MONTH_APRIL = 3;
    public static final int MONTH_AUGUST = 7;
    public static final int MONTH_DECEMBER = 11;
    public static final int MONTH_FEBRUARY = 1;
    public static final int MONTH_JANUARY = 0;
    public static final int MONTH_JULY = 6;
    public static final int MONTH_JUNE = 5;
    public static final int MONTH_MARCH = 2;
    public static final int MONTH_MAY = 4;
    public static final int MONTH_NOVEMBER = 10;
    public static final int MONTH_OCTOBER = 9;
    public static final int MONTH_SEPTEMBER = 8;
    public static final String MULTIPLICITY_DUAL = "android.dual";
    public static final String MULTIPLICITY_PLURAL = "android.plural";
    public static final String MULTIPLICITY_SINGLE = "android.single";
    public static final String TYPE_CARDINAL = "android.type.cardinal";
    public static final String TYPE_DATE = "android.type.date";
    public static final String TYPE_DECIMAL = "android.type.decimal";
    public static final String TYPE_DIGITS = "android.type.digits";
    public static final String TYPE_ELECTRONIC = "android.type.electronic";
    public static final String TYPE_FRACTION = "android.type.fraction";
    public static final String TYPE_MEASURE = "android.type.measure";
    public static final String TYPE_MONEY = "android.type.money";
    public static final String TYPE_ORDINAL = "android.type.ordinal";
    public static final String TYPE_TELEPHONE = "android.type.telephone";
    public static final String TYPE_TEXT = "android.type.text";
    public static final String TYPE_TIME = "android.type.time";
    public static final String TYPE_VERBATIM = "android.type.verbatim";
    public static final int WEEKDAY_FRIDAY = 6;
    public static final int WEEKDAY_MONDAY = 2;
    public static final int WEEKDAY_SATURDAY = 7;
    public static final int WEEKDAY_SUNDAY = 1;
    public static final int WEEKDAY_THURSDAY = 5;
    public static final int WEEKDAY_TUESDAY = 3;
    public static final int WEEKDAY_WEDNESDAY = 4;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TtsSpan$Builder.class
 */
    public static class Builder<C extends Builder<?>> {
        public Builder(String type) {
            throw new RuntimeException("Stub!");
        }

        public TtsSpan build() {
            throw new RuntimeException("Stub!");
        }

        public C setStringArgument(String arg, String value) {
            throw new RuntimeException("Stub!");
        }

        public C setIntArgument(String arg, int value) {
            throw new RuntimeException("Stub!");
        }

        public C setLongArgument(String arg, long value) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TtsSpan$SemioticClassBuilder.class
 */
    public static class SemioticClassBuilder<C extends SemioticClassBuilder<?>> extends Builder<C> {
        public SemioticClassBuilder(String type) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public C setGender(String gender) {
            throw new RuntimeException("Stub!");
        }

        public C setAnimacy(String animacy) {
            throw new RuntimeException("Stub!");
        }

        public C setMultiplicity(String multiplicity) {
            throw new RuntimeException("Stub!");
        }

        public C setCase(String grammaticalCase) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TtsSpan$TextBuilder.class
 */
    public static class TextBuilder extends SemioticClassBuilder<TextBuilder> {
        public TextBuilder() {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public TextBuilder(String text) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public TextBuilder setText(String text) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TtsSpan$CardinalBuilder.class
 */
    public static class CardinalBuilder extends SemioticClassBuilder<CardinalBuilder> {
        public CardinalBuilder() {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public CardinalBuilder(long number) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public CardinalBuilder(String number) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public CardinalBuilder setNumber(long number) {
            throw new RuntimeException("Stub!");
        }

        public CardinalBuilder setNumber(String number) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TtsSpan$OrdinalBuilder.class
 */
    public static class OrdinalBuilder extends SemioticClassBuilder<OrdinalBuilder> {
        public OrdinalBuilder() {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public OrdinalBuilder(long number) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public OrdinalBuilder(String number) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public OrdinalBuilder setNumber(long number) {
            throw new RuntimeException("Stub!");
        }

        public OrdinalBuilder setNumber(String number) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TtsSpan$DecimalBuilder.class
 */
    public static class DecimalBuilder extends SemioticClassBuilder<DecimalBuilder> {
        public DecimalBuilder() {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public DecimalBuilder(double number, int minimumFractionDigits, int maximumFractionDigits) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public DecimalBuilder(String integerPart, String fractionalPart) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public DecimalBuilder setArgumentsFromDouble(double number, int minimumFractionDigits, int maximumFractionDigits) {
            throw new RuntimeException("Stub!");
        }

        public DecimalBuilder setIntegerPart(long integerPart) {
            throw new RuntimeException("Stub!");
        }

        public DecimalBuilder setIntegerPart(String integerPart) {
            throw new RuntimeException("Stub!");
        }

        public DecimalBuilder setFractionalPart(String fractionalPart) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TtsSpan$FractionBuilder.class
 */
    public static class FractionBuilder extends SemioticClassBuilder<FractionBuilder> {
        public FractionBuilder() {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public FractionBuilder(long integerPart, long numerator, long denominator) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public FractionBuilder setIntegerPart(long integerPart) {
            throw new RuntimeException("Stub!");
        }

        public FractionBuilder setIntegerPart(String integerPart) {
            throw new RuntimeException("Stub!");
        }

        public FractionBuilder setNumerator(long numerator) {
            throw new RuntimeException("Stub!");
        }

        public FractionBuilder setNumerator(String numerator) {
            throw new RuntimeException("Stub!");
        }

        public FractionBuilder setDenominator(long denominator) {
            throw new RuntimeException("Stub!");
        }

        public FractionBuilder setDenominator(String denominator) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TtsSpan$MeasureBuilder.class
 */
    public static class MeasureBuilder extends SemioticClassBuilder<MeasureBuilder> {
        public MeasureBuilder() {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public MeasureBuilder setNumber(long number) {
            throw new RuntimeException("Stub!");
        }

        public MeasureBuilder setNumber(String number) {
            throw new RuntimeException("Stub!");
        }

        public MeasureBuilder setIntegerPart(long integerPart) {
            throw new RuntimeException("Stub!");
        }

        public MeasureBuilder setIntegerPart(String integerPart) {
            throw new RuntimeException("Stub!");
        }

        public MeasureBuilder setFractionalPart(String fractionalPart) {
            throw new RuntimeException("Stub!");
        }

        public MeasureBuilder setNumerator(long numerator) {
            throw new RuntimeException("Stub!");
        }

        public MeasureBuilder setNumerator(String numerator) {
            throw new RuntimeException("Stub!");
        }

        public MeasureBuilder setDenominator(long denominator) {
            throw new RuntimeException("Stub!");
        }

        public MeasureBuilder setDenominator(String denominator) {
            throw new RuntimeException("Stub!");
        }

        public MeasureBuilder setUnit(String unit) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TtsSpan$TimeBuilder.class
 */
    public static class TimeBuilder extends SemioticClassBuilder<TimeBuilder> {
        public TimeBuilder() {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public TimeBuilder(int hours, int minutes) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public TimeBuilder setHours(int hours) {
            throw new RuntimeException("Stub!");
        }

        public TimeBuilder setMinutes(int minutes) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TtsSpan$DateBuilder.class
 */
    public static class DateBuilder extends SemioticClassBuilder<DateBuilder> {
        public DateBuilder() {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public DateBuilder(Integer weekday, Integer day, Integer month, Integer year) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public DateBuilder setWeekday(int weekday) {
            throw new RuntimeException("Stub!");
        }

        public DateBuilder setDay(int day) {
            throw new RuntimeException("Stub!");
        }

        public DateBuilder setMonth(int month) {
            throw new RuntimeException("Stub!");
        }

        public DateBuilder setYear(int year) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TtsSpan$MoneyBuilder.class
 */
    public static class MoneyBuilder extends SemioticClassBuilder<MoneyBuilder> {
        public MoneyBuilder() {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public MoneyBuilder setIntegerPart(long integerPart) {
            throw new RuntimeException("Stub!");
        }

        public MoneyBuilder setIntegerPart(String integerPart) {
            throw new RuntimeException("Stub!");
        }

        public MoneyBuilder setFractionalPart(String fractionalPart) {
            throw new RuntimeException("Stub!");
        }

        public MoneyBuilder setCurrency(String currency) {
            throw new RuntimeException("Stub!");
        }

        public MoneyBuilder setQuantity(String quantity) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TtsSpan$TelephoneBuilder.class
 */
    public static class TelephoneBuilder extends SemioticClassBuilder<TelephoneBuilder> {
        public TelephoneBuilder() {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public TelephoneBuilder(String numberParts) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public TelephoneBuilder setCountryCode(String countryCode) {
            throw new RuntimeException("Stub!");
        }

        public TelephoneBuilder setNumberParts(String numberParts) {
            throw new RuntimeException("Stub!");
        }

        public TelephoneBuilder setExtension(String extension) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TtsSpan$ElectronicBuilder.class
 */
    public static class ElectronicBuilder extends SemioticClassBuilder<ElectronicBuilder> {
        public ElectronicBuilder() {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public ElectronicBuilder setEmailArguments(String username, String domain) {
            throw new RuntimeException("Stub!");
        }

        public ElectronicBuilder setProtocol(String protocol) {
            throw new RuntimeException("Stub!");
        }

        public ElectronicBuilder setUsername(String username) {
            throw new RuntimeException("Stub!");
        }

        public ElectronicBuilder setPassword(String password) {
            throw new RuntimeException("Stub!");
        }

        public ElectronicBuilder setDomain(String domain) {
            throw new RuntimeException("Stub!");
        }

        public ElectronicBuilder setPort(int port) {
            throw new RuntimeException("Stub!");
        }

        public ElectronicBuilder setPath(String path) {
            throw new RuntimeException("Stub!");
        }

        public ElectronicBuilder setQueryString(String queryString) {
            throw new RuntimeException("Stub!");
        }

        public ElectronicBuilder setFragmentId(String fragmentId) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TtsSpan$DigitsBuilder.class
 */
    public static class DigitsBuilder extends SemioticClassBuilder<DigitsBuilder> {
        public DigitsBuilder() {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public DigitsBuilder(String digits) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public DigitsBuilder setDigits(String digits) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TtsSpan$VerbatimBuilder.class
 */
    public static class VerbatimBuilder extends SemioticClassBuilder<VerbatimBuilder> {
        public VerbatimBuilder() {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public VerbatimBuilder(String verbatim) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }

        public VerbatimBuilder setVerbatim(String verbatim) {
            throw new RuntimeException("Stub!");
        }
    }

    public TtsSpan(String type, PersistableBundle args) {
        throw new RuntimeException("Stub!");
    }

    public TtsSpan(Parcel src) {
        throw new RuntimeException("Stub!");
    }

    public String getType() {
        throw new RuntimeException("Stub!");
    }

    public PersistableBundle getArgs() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getSpanTypeId() {
        throw new RuntimeException("Stub!");
    }
}
