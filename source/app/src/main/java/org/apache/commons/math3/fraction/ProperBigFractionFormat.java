package org.apache.commons.math3.fraction;

import java.math.BigInteger;
import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import w2.C15883c;

public class ProperBigFractionFormat extends BigFractionFormat {
    private static final long serialVersionUID = -6337346779577272307L;
    private NumberFormat wholeFormat;

    public ProperBigFractionFormat() {
        this(AbstractFormat.getDefaultNumberFormat());
    }

    @Override
    public StringBuffer format(BigFraction bigFraction, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(0);
        BigInteger numerator = bigFraction.getNumerator();
        BigInteger denominator = bigFraction.getDenominator();
        BigInteger divide = numerator.divide(denominator);
        BigInteger remainder = numerator.remainder(denominator);
        BigInteger bigInteger = BigInteger.ZERO;
        if (!bigInteger.equals(divide)) {
            getWholeFormat().format(divide, stringBuffer, fieldPosition);
            stringBuffer.append(C15883c.f126249O);
            if (remainder.compareTo(bigInteger) < 0) {
                remainder = remainder.negate();
            }
        }
        getNumeratorFormat().format(remainder, stringBuffer, fieldPosition);
        stringBuffer.append(" / ");
        getDenominatorFormat().format(denominator, stringBuffer, fieldPosition);
        return stringBuffer;
    }

    public NumberFormat getWholeFormat() {
        return this.wholeFormat;
    }

    public void setWholeFormat(NumberFormat numberFormat) {
        if (numberFormat == null) {
            throw new NullArgumentException(LocalizedFormats.WHOLE_FORMAT, new Object[0]);
        }
        this.wholeFormat = numberFormat;
    }

    public ProperBigFractionFormat(NumberFormat numberFormat) {
        this(numberFormat, (NumberFormat) numberFormat.clone(), (NumberFormat) numberFormat.clone());
    }

    @Override
    public BigFraction parse(String str, ParsePosition parsePosition) {
        BigFraction parse = super.parse(str, parsePosition);
        if (parse != null) {
            return parse;
        }
        int index = parsePosition.getIndex();
        AbstractFormat.parseAndIgnoreWhitespace(str, parsePosition);
        BigInteger parseNextBigInteger = parseNextBigInteger(str, parsePosition);
        if (parseNextBigInteger == null) {
            parsePosition.setIndex(index);
            return null;
        }
        AbstractFormat.parseAndIgnoreWhitespace(str, parsePosition);
        BigInteger parseNextBigInteger2 = parseNextBigInteger(str, parsePosition);
        if (parseNextBigInteger2 == null) {
            parsePosition.setIndex(index);
            return null;
        }
        BigInteger bigInteger = BigInteger.ZERO;
        if (parseNextBigInteger2.compareTo(bigInteger) < 0) {
            parsePosition.setIndex(index);
            return null;
        }
        int index2 = parsePosition.getIndex();
        char parseNextCharacter = AbstractFormat.parseNextCharacter(str, parsePosition);
        if (parseNextCharacter == 0) {
            return new BigFraction(parseNextBigInteger2);
        }
        if (parseNextCharacter != '/') {
            parsePosition.setIndex(index);
            parsePosition.setErrorIndex(index2);
            return null;
        }
        AbstractFormat.parseAndIgnoreWhitespace(str, parsePosition);
        BigInteger parseNextBigInteger3 = parseNextBigInteger(str, parsePosition);
        if (parseNextBigInteger3 == null) {
            parsePosition.setIndex(index);
            return null;
        }
        if (parseNextBigInteger3.compareTo(bigInteger) < 0) {
            parsePosition.setIndex(index);
            return null;
        }
        boolean z10 = parseNextBigInteger.compareTo(bigInteger) < 0;
        if (z10) {
            parseNextBigInteger = parseNextBigInteger.negate();
        }
        BigInteger add = parseNextBigInteger.multiply(parseNextBigInteger3).add(parseNextBigInteger2);
        if (z10) {
            add = add.negate();
        }
        return new BigFraction(add, parseNextBigInteger3);
    }

    public ProperBigFractionFormat(NumberFormat numberFormat, NumberFormat numberFormat2, NumberFormat numberFormat3) {
        super(numberFormat2, numberFormat3);
        setWholeFormat(numberFormat);
    }
}
