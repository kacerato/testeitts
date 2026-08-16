package s3;

import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.C12530i2;
import java.util.Deque;
import w2.y;

@v2.b
public final class C15231c {

    public static final y f109186a = y.p("");

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
    
        if (r1 != ',') goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0050, code lost:
    
        if (r2 >= r0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0052, code lost:
    
        r2 = r2 + a(r8, r9, r2, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005b, code lost:
    
        if (r9.charAt(r2) == '?') goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0061, code lost:
    
        if (r9.charAt(r2) != ',') goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0063, code lost:
    
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(Deque<CharSequence> deque, CharSequence charSequence, int i10, AbstractC12529i1.b<String, EnumC15230b> bVar) {
        int length = charSequence.length();
        char c10 = 0;
        int i11 = i10;
        while (i11 < length && (c10 = charSequence.charAt(i11)) != '&' && c10 != '?' && c10 != '!' && c10 != ':' && c10 != ',') {
            i11++;
        }
        deque.push(c(charSequence.subSequence(i10, i11)));
        if (c10 == '!' || c10 == '?' || c10 == ':' || c10 == ',') {
            String k10 = f109186a.k(deque);
            if (k10.length() > 0) {
                bVar.i(k10, EnumC15230b.b(c10));
            }
        }
        int i12 = i11 + 1;
        if (c10 != '?') {
        }
        deque.pop();
        return i12 - i10;
    }

    public static AbstractC12529i1<String, EnumC15230b> b(CharSequence charSequence) {
        AbstractC12529i1.b i10 = AbstractC12529i1.i();
        int length = charSequence.length();
        int i11 = 0;
        while (i11 < length) {
            i11 += a(C12530i2.d(), charSequence, i11, i10);
        }
        return i10.d();
    }

    public static CharSequence c(CharSequence charSequence) {
        return new StringBuilder(charSequence).reverse();
    }
}
