package org.apache.commons.math3.linear;

import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Locale;
import org.apache.commons.math3.exception.MathParseException;
import org.apache.commons.math3.util.CompositeFormat;

public class RealVectorFormat {
    private static final String DEFAULT_PREFIX = "{";
    private static final String DEFAULT_SEPARATOR = "; ";
    private static final String DEFAULT_SUFFIX = "}";
    private final NumberFormat format;
    private final String prefix;
    private final String separator;
    private final String suffix;
    private final String trimmedPrefix;
    private final String trimmedSeparator;
    private final String trimmedSuffix;

    public RealVectorFormat() {
        this("{", "}", "; ", CompositeFormat.getDefaultNumberFormat());
    }

    public static Locale[] getAvailableLocales() {
        return NumberFormat.getAvailableLocales();
    }

    public static RealVectorFormat getInstance() {
        return getInstance(Locale.getDefault());
    }

    public String format(RealVector realVector) {
        return format(realVector, new StringBuffer(), new FieldPosition(0)).toString();
    }

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

    public ArrayRealVector parse(String str) {
        ParsePosition parsePosition = new ParsePosition(0);
        ArrayRealVector parse = parse(str, parsePosition);
        if (parsePosition.getIndex() != 0) {
            return parse;
        }
        throw new MathParseException(str, parsePosition.getErrorIndex(), ArrayRealVector.class);
    }

    public RealVectorFormat(NumberFormat numberFormat) {
        this("{", "}", "; ", numberFormat);
    }

    public static RealVectorFormat getInstance(Locale locale) {
        return new RealVectorFormat(CompositeFormat.getDefaultNumberFormat(locale));
    }

    public StringBuffer format(RealVector realVector, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(0);
        stringBuffer.append(this.prefix);
        for (int i10 = 0; i10 < realVector.getDimension(); i10++) {
            if (i10 > 0) {
                stringBuffer.append(this.separator);
            }
            CompositeFormat.formatDouble(realVector.getEntry(i10), this.format, stringBuffer, fieldPosition);
        }
        stringBuffer.append(this.suffix);
        return stringBuffer;
    }

    public RealVectorFormat(String str, String str2, String str3) {
        this(str, str2, str3, CompositeFormat.getDefaultNumberFormat());
    }

    public RealVectorFormat(String str, String str2, String str3, NumberFormat numberFormat) {
        this.prefix = str;
        this.suffix = str2;
        this.separator = str3;
        this.trimmedPrefix = str.trim();
        this.trimmedSuffix = str2.trim();
        this.trimmedSeparator = str3.trim();
        this.format = numberFormat;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArrayRealVector parse(String str, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
        if (!CompositeFormat.parseFixedstring(str, this.trimmedPrefix, parsePosition)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        boolean z10 = true;
        while (z10) {
            if (!arrayList.isEmpty()) {
                CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
                if (!CompositeFormat.parseFixedstring(str, this.trimmedSeparator, parsePosition)) {
                    z10 = false;
                }
            }
            if (z10) {
                CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
                Number parseNumber = CompositeFormat.parseNumber(str, this.format, parsePosition);
                if (parseNumber != null) {
                    arrayList.add(parseNumber);
                } else {
                    parsePosition.setIndex(index);
                    return null;
                }
            }
        }
        CompositeFormat.parseAndIgnoreWhitespace(str, parsePosition);
        if (!CompositeFormat.parseFixedstring(str, this.trimmedSuffix, parsePosition)) {
            return null;
        }
        int size = arrayList.size();
        double[] dArr = new double[size];
        for (int i10 = 0; i10 < size; i10++) {
            dArr[i10] = ((Number) arrayList.get(i10)).doubleValue();
        }
        return new ArrayRealVector(dArr, false);
    }
}
