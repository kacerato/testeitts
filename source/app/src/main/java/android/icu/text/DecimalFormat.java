package android.icu.text;

import android.icu.math.MathContext;
import android.icu.util.Currency;
import android.icu.util.CurrencyAmount;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.AttributedCharacterIterator;
import java.text.FieldPosition;
import java.text.ParsePosition;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/DecimalFormat.class
 */
public class DecimalFormat extends NumberFormat {
    public static final int PAD_AFTER_PREFIX = 1;
    public static final int PAD_AFTER_SUFFIX = 3;
    public static final int PAD_BEFORE_PREFIX = 0;
    public static final int PAD_BEFORE_SUFFIX = 2;

    public DecimalFormat() {
        throw new RuntimeException("Stub!");
    }

    public DecimalFormat(String pattern) {
        throw new RuntimeException("Stub!");
    }

    public DecimalFormat(String pattern, DecimalFormatSymbols symbols) {
        throw new RuntimeException("Stub!");
    }

    public DecimalFormat(String pattern, DecimalFormatSymbols symbols, CurrencyPluralInfo infoInput, int style) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public StringBuffer format(double number, StringBuffer result, FieldPosition fieldPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public StringBuffer format(long number, StringBuffer result, FieldPosition fieldPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public StringBuffer format(BigInteger number, StringBuffer result, FieldPosition fieldPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public StringBuffer format(BigDecimal number, StringBuffer result, FieldPosition fieldPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public StringBuffer format(android.icu.math.BigDecimal number, StringBuffer result, FieldPosition fieldPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Number parse(String text, ParsePosition parsePosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CurrencyAmount parseCurrency(CharSequence text, ParsePosition pos) {
        throw new RuntimeException("Stub!");
    }

    public DecimalFormatSymbols getDecimalFormatSymbols() {
        throw new RuntimeException("Stub!");
    }

    public void setDecimalFormatSymbols(DecimalFormatSymbols newSymbols) {
        throw new RuntimeException("Stub!");
    }

    public String getPositivePrefix() {
        throw new RuntimeException("Stub!");
    }

    public void setPositivePrefix(String newValue) {
        throw new RuntimeException("Stub!");
    }

    public String getNegativePrefix() {
        throw new RuntimeException("Stub!");
    }

    public void setNegativePrefix(String newValue) {
        throw new RuntimeException("Stub!");
    }

    public String getPositiveSuffix() {
        throw new RuntimeException("Stub!");
    }

    public void setPositiveSuffix(String newValue) {
        throw new RuntimeException("Stub!");
    }

    public String getNegativeSuffix() {
        throw new RuntimeException("Stub!");
    }

    public void setNegativeSuffix(String newValue) {
        throw new RuntimeException("Stub!");
    }

    public int getMultiplier() {
        throw new RuntimeException("Stub!");
    }

    public void setMultiplier(int newValue) {
        throw new RuntimeException("Stub!");
    }

    public BigDecimal getRoundingIncrement() {
        throw new RuntimeException("Stub!");
    }

    public void setRoundingIncrement(BigDecimal newValue) {
        throw new RuntimeException("Stub!");
    }

    public void setRoundingIncrement(android.icu.math.BigDecimal newValue) {
        throw new RuntimeException("Stub!");
    }

    public void setRoundingIncrement(double newValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getRoundingMode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setRoundingMode(int roundingMode) {
        throw new RuntimeException("Stub!");
    }

    public int getFormatWidth() {
        throw new RuntimeException("Stub!");
    }

    public void setFormatWidth(int width) {
        throw new RuntimeException("Stub!");
    }

    public char getPadCharacter() {
        throw new RuntimeException("Stub!");
    }

    public void setPadCharacter(char padChar) {
        throw new RuntimeException("Stub!");
    }

    public int getPadPosition() {
        throw new RuntimeException("Stub!");
    }

    public void setPadPosition(int padPos) {
        throw new RuntimeException("Stub!");
    }

    public boolean isScientificNotation() {
        throw new RuntimeException("Stub!");
    }

    public void setScientificNotation(boolean useScientific) {
        throw new RuntimeException("Stub!");
    }

    public byte getMinimumExponentDigits() {
        throw new RuntimeException("Stub!");
    }

    public void setMinimumExponentDigits(byte minExpDig) {
        throw new RuntimeException("Stub!");
    }

    public boolean isExponentSignAlwaysShown() {
        throw new RuntimeException("Stub!");
    }

    public void setExponentSignAlwaysShown(boolean expSignAlways) {
        throw new RuntimeException("Stub!");
    }

    public int getGroupingSize() {
        throw new RuntimeException("Stub!");
    }

    public void setGroupingSize(int newValue) {
        throw new RuntimeException("Stub!");
    }

    public int getSecondaryGroupingSize() {
        throw new RuntimeException("Stub!");
    }

    public void setSecondaryGroupingSize(int newValue) {
        throw new RuntimeException("Stub!");
    }

    public MathContext getMathContextICU() {
        throw new RuntimeException("Stub!");
    }

    public java.math.MathContext getMathContext() {
        throw new RuntimeException("Stub!");
    }

    public void setMathContextICU(MathContext newValue) {
        throw new RuntimeException("Stub!");
    }

    public void setMathContext(java.math.MathContext newValue) {
        throw new RuntimeException("Stub!");
    }

    public boolean isDecimalSeparatorAlwaysShown() {
        throw new RuntimeException("Stub!");
    }

    public void setDecimalPatternMatchRequired(boolean value) {
        throw new RuntimeException("Stub!");
    }

    public boolean isDecimalPatternMatchRequired() {
        throw new RuntimeException("Stub!");
    }

    public void setDecimalSeparatorAlwaysShown(boolean newValue) {
        throw new RuntimeException("Stub!");
    }

    public CurrencyPluralInfo getCurrencyPluralInfo() {
        throw new RuntimeException("Stub!");
    }

    public void setCurrencyPluralInfo(CurrencyPluralInfo newInfo) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object clone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toPattern() {
        throw new RuntimeException("Stub!");
    }

    public String toLocalizedPattern() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AttributedCharacterIterator formatToCharacterIterator(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public void applyPattern(String pattern) {
        throw new RuntimeException("Stub!");
    }

    public void applyLocalizedPattern(String pattern) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setMaximumIntegerDigits(int newValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setMinimumIntegerDigits(int newValue) {
        throw new RuntimeException("Stub!");
    }

    public int getMinimumSignificantDigits() {
        throw new RuntimeException("Stub!");
    }

    public int getMaximumSignificantDigits() {
        throw new RuntimeException("Stub!");
    }

    public void setMinimumSignificantDigits(int min) {
        throw new RuntimeException("Stub!");
    }

    public void setMaximumSignificantDigits(int max) {
        throw new RuntimeException("Stub!");
    }

    public boolean areSignificantDigitsUsed() {
        throw new RuntimeException("Stub!");
    }

    public void setSignificantDigitsUsed(boolean useSignificantDigits) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setCurrency(Currency theCurrency) {
        throw new RuntimeException("Stub!");
    }

    public void setCurrencyUsage(Currency.CurrencyUsage newUsage) {
        throw new RuntimeException("Stub!");
    }

    public Currency.CurrencyUsage getCurrencyUsage() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setMaximumFractionDigits(int newValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setMinimumFractionDigits(int newValue) {
        throw new RuntimeException("Stub!");
    }

    public void setParseBigDecimal(boolean value) {
        throw new RuntimeException("Stub!");
    }

    public boolean isParseBigDecimal() {
        throw new RuntimeException("Stub!");
    }

    public void setParseMaxDigits(int newValue) {
        throw new RuntimeException("Stub!");
    }

    public int getParseMaxDigits() {
        throw new RuntimeException("Stub!");
    }
}
