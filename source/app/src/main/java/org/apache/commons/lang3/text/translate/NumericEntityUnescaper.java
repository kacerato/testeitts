package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.EnumSet;

@Deprecated
public class NumericEntityUnescaper extends CharSequenceTranslator {
    private final EnumSet<OPTION> options;

    public enum OPTION {
        semiColonRequired,
        semiColonOptional,
        errorIfNoSemiColon
    }

    public NumericEntityUnescaper(OPTION... optionArr) {
        if (optionArr.length > 0) {
            this.options = EnumSet.copyOf(Arrays.asList(optionArr));
        } else {
            this.options = EnumSet.copyOf(Arrays.asList(OPTION.semiColonRequired));
        }
    }

    public boolean isSet(OPTION option) {
        EnumSet<OPTION> enumSet = this.options;
        return enumSet != null && enumSet.contains(option);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0071, code lost:
    
        if (r8.charAt(r2) != ';') goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0073, code lost:
    
        r0 = 1;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int translate(CharSequence charSequence, int i10, Writer writer) throws IOException {
        int i11;
        int length = charSequence.length();
        if (charSequence.charAt(i10) == '&' && i10 < length - 2 && charSequence.charAt(i10 + 1) == '#') {
            int i12 = i10 + 2;
            char charAt = charSequence.charAt(i12);
            if (charAt == 'x' || charAt == 'X') {
                i12 = i10 + 3;
                if (i12 == length) {
                    return 0;
                }
                i11 = 1;
            } else {
                i11 = 0;
            }
            int i13 = i12;
            while (i13 < length && ((charSequence.charAt(i13) >= '0' && charSequence.charAt(i13) <= '9') || ((charSequence.charAt(i13) >= 'a' && charSequence.charAt(i13) <= 'f') || (charSequence.charAt(i13) >= 'A' && charSequence.charAt(i13) <= 'F')))) {
                i13++;
            }
            int i14 = 0;
            if (i14 == 0) {
                if (isSet(OPTION.semiColonRequired)) {
                    return 0;
                }
                if (isSet(OPTION.errorIfNoSemiColon)) {
                    throw new IllegalArgumentException("Semi-colon required at end of numeric entity");
                }
            }
            try {
                int parseInt = i11 != 0 ? Integer.parseInt(charSequence.subSequence(i12, i13).toString(), 16) : Integer.parseInt(charSequence.subSequence(i12, i13).toString(), 10);
                if (parseInt > 65535) {
                    char[] chars = Character.toChars(parseInt);
                    writer.write(chars[0]);
                    writer.write(chars[1]);
                } else {
                    writer.write(parseInt);
                }
                return ((i13 + 2) - i12) + i11 + i14;
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }
}
