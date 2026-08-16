package org.apache.commons.math3.geometry;

import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.Locale;
import org.apache.commons.math3.exception.MathParseException;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.util.CompositeFormat;

public abstract class VectorFormat<S extends Space> {
    public static final String DEFAULT_PREFIX = "{";
    public static final String DEFAULT_SEPARATOR = "; ";
    public static final String DEFAULT_SUFFIX = "}";
    private final NumberFormat format;
    private final String prefix;
    private final String separator;
    private final String suffix;
    private final String trimmedPrefix;
    private final String trimmedSeparator;
    private final String trimmedSuffix;

    public VectorFormat() {
        this("{", DEFAULT_SUFFIX, DEFAULT_SEPARATOR, CompositeFormat.getDefaultNumberFormat());
    }

    public static Locale[] getAvailableLocales() {
        return NumberFormat.getAvailableLocales();
    }

    public String format(Vector<S> vector) {
        return format(vector, new StringBuffer(), new FieldPosition(0)).toString();
    }

    public abstract StringBuffer format(Vector<S> vector, StringBuffer stringBuffer, FieldPosition fieldPosition);

    public NumberFormat getFormat() {
        return this.format;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public String getSeparator() {
        return this.separator;
    }

    public String getSuffix() {
        return this.suffix;
    }

    public abstract Vector<S> parse(String str) throws MathParseException;

    public abstract Vector<S> parse(String str, ParsePosition parsePosition);

    public double[] parseCoordinates(int i10, String str, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        double[] dArr = new double[i10];
        CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
        if (!CompositeFormat.parseFixedstring(str, this.trimmedPrefix, parsePosition)) {
            return null;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
            if (i11 > 0 && !CompositeFormat.parseFixedstring(str, this.trimmedSeparator, parsePosition)) {
                return null;
            }
            CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
            Number parseNumber = CompositeFormat.parseNumber(str, this.format, parsePosition);
            if (parseNumber == null) {
                parsePosition.setIndex(index);
                return null;
            }
            dArr[i11] = parseNumber.doubleValue();
        }
        CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
        if (CompositeFormat.parseFixedstring(str, this.trimmedSuffix, parsePosition)) {
            return dArr;
        }
        return null;
    }

    public VectorFormat(NumberFormat numberFormat) {
        this("{", DEFAULT_SUFFIX, DEFAULT_SEPARATOR, numberFormat);
    }

    public StringBuffer format(StringBuffer stringBuffer, FieldPosition fieldPosition, double... dArr) {
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(0);
        stringBuffer.append(this.prefix);
        for (int i10 = 0; i10 < dArr.length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(this.separator);
            }
            CompositeFormat.formatDouble(dArr[i10], this.format, stringBuffer, fieldPosition);
        }
        stringBuffer.append(this.suffix);
        return stringBuffer;
    }

    public VectorFormat(String str, String str2, String str3) {
        this(str, str2, str3, CompositeFormat.getDefaultNumberFormat());
    }

    public VectorFormat(String str, String str2, String str3, NumberFormat numberFormat) {
        this.prefix = str;
        this.suffix = str2;
        this.separator = str3;
        this.trimmedPrefix = str.trim();
        this.trimmedSuffix = str2.trim();
        this.trimmedSeparator = str3.trim();
        this.format = numberFormat;
    }
}
