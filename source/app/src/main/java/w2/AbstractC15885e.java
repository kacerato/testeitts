package w2;

import java.util.Arrays;
import java.util.BitSet;
import org.eclipse.jdt.internal.core.JavaElement;

@InterfaceC15894k
@v2.b(emulated = true)
public abstract class AbstractC15885e implements I<Character> {

    public static final int f126279b = 65536;

    public static class A extends AbstractC15885e {

        public final String f126280c;

        public final char[] f126281d;

        public final char[] f126282e;

        public A(String str, char[] cArr, char[] cArr2) {
            this.f126280c = str;
            this.f126281d = cArr;
            this.f126282e = cArr2;
            H.d(cArr.length == cArr2.length);
            int i10 = 0;
            while (i10 < cArr.length) {
                H.d(cArr[i10] <= cArr2[i10]);
                int i11 = i10 + 1;
                if (i11 < cArr.length) {
                    H.d(cArr2[i10] < cArr[i11]);
                }
                i10 = i11;
            }
        }

        @Override
        public boolean B(char c10) {
            int binarySearch = Arrays.binarySearch(this.f126281d, c10);
            if (binarySearch >= 0) {
                return true;
            }
            int i10 = (~binarySearch) - 1;
            return i10 >= 0 && c10 <= this.f126282e[i10];
        }

        @Override
        @Deprecated
        public boolean apply(Character ch2) {
            return super.apply(ch2);
        }

        @Override
        public String toString() {
            return this.f126280c;
        }
    }

    public static final class B extends A {

        public static final B f126283f = new B();

        public B() {
            super("CharMatcher.singleWidth()", "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61".toCharArray(), "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc".toCharArray());
        }
    }

    @v2.d
    public static final class C extends v {

        public static final String f126284d = "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\f\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000";

        public static final int f126285e = 1682554634;

        public static final int f126286f = Integer.numberOfLeadingZeros(31);

        public static final C f126287g = new C();

        public C() {
            super("CharMatcher.whitespace()");
        }

        @Override
        public boolean B(char c10) {
            return f126284d.charAt((f126285e * c10) >>> f126286f) == c10;
        }

        @Override
        @v2.c
        public void Q(BitSet bitSet) {
            for (int i10 = 0; i10 < 32; i10++) {
                bitSet.set(f126284d.charAt(i10));
            }
        }
    }

    public class C15886a extends x {

        public final String f126288d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15886a(AbstractC15885e abstractC15885e, AbstractC15885e abstractC15885e2, String str) {
            super(abstractC15885e2);
            this.f126288d = str;
        }

        @Override
        public String toString() {
            return this.f126288d;
        }
    }

    public static final class C15887b extends AbstractC15885e {

        public final AbstractC15885e f126289c;

        public final AbstractC15885e f126290d;

        public C15887b(AbstractC15885e abstractC15885e, AbstractC15885e abstractC15885e2) {
            this.f126289c = (AbstractC15885e) H.E(abstractC15885e);
            this.f126290d = (AbstractC15885e) H.E(abstractC15885e2);
        }

        @Override
        public boolean B(char c10) {
            return this.f126289c.B(c10) && this.f126290d.B(c10);
        }

        @Override
        @v2.c
        public void Q(BitSet bitSet) {
            BitSet bitSet2 = new BitSet();
            this.f126289c.Q(bitSet2);
            BitSet bitSet3 = new BitSet();
            this.f126290d.Q(bitSet3);
            bitSet2.and(bitSet3);
            bitSet.or(bitSet2);
        }

        @Override
        @Deprecated
        public boolean apply(Character ch2) {
            return super.apply(ch2);
        }

        @Override
        public String toString() {
            String valueOf = String.valueOf(this.f126289c);
            String valueOf2 = String.valueOf(this.f126290d);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 19 + valueOf2.length());
            sb2.append("CharMatcher.and(");
            sb2.append(valueOf);
            sb2.append(", ");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static final class C15888c extends v {

        public static final C15888c f126291d = new C15888c();

        public C15888c() {
            super("CharMatcher.any()");
        }

        @Override
        public int A(CharSequence charSequence) {
            return charSequence.length() - 1;
        }

        @Override
        public boolean B(char c10) {
            return true;
        }

        @Override
        public boolean C(CharSequence charSequence) {
            H.E(charSequence);
            return true;
        }

        @Override
        public boolean E(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override
        public AbstractC15885e F() {
            return AbstractC15885e.G();
        }

        @Override
        public AbstractC15885e I(AbstractC15885e abstractC15885e) {
            H.E(abstractC15885e);
            return this;
        }

        @Override
        public String M(CharSequence charSequence) {
            H.E(charSequence);
            return "";
        }

        @Override
        public String N(CharSequence charSequence, char c10) {
            char[] cArr = new char[charSequence.length()];
            Arrays.fill(cArr, c10);
            return new String(cArr);
        }

        @Override
        public String O(CharSequence charSequence, CharSequence charSequence2) {
            StringBuilder sb2 = new StringBuilder(charSequence.length() * charSequence2.length());
            for (int i10 = 0; i10 < charSequence.length(); i10++) {
                sb2.append(charSequence2);
            }
            return sb2.toString();
        }

        @Override
        public String U(CharSequence charSequence) {
            H.E(charSequence);
            return "";
        }

        @Override
        public AbstractC15885e b(AbstractC15885e abstractC15885e) {
            return (AbstractC15885e) H.E(abstractC15885e);
        }

        @Override
        public String h(CharSequence charSequence, char c10) {
            return charSequence.length() == 0 ? "" : String.valueOf(c10);
        }

        @Override
        public int i(CharSequence charSequence) {
            return charSequence.length();
        }

        @Override
        public int n(CharSequence charSequence) {
            return charSequence.length() == 0 ? -1 : 0;
        }

        @Override
        public int o(CharSequence charSequence, int i10) {
            int length = charSequence.length();
            H.d0(i10, length);
            if (i10 == length) {
                return -1;
            }
            return i10;
        }
    }

    public static final class d extends AbstractC15885e {

        public final char[] f126292c;

        public d(CharSequence charSequence) {
            char[] charArray = charSequence.toString().toCharArray();
            this.f126292c = charArray;
            Arrays.sort(charArray);
        }

        @Override
        public boolean B(char c10) {
            return Arrays.binarySearch(this.f126292c, c10) >= 0;
        }

        @Override
        @v2.c
        public void Q(BitSet bitSet) {
            for (char c10 : this.f126292c) {
                bitSet.set(c10);
            }
        }

        @Override
        @Deprecated
        public boolean apply(Character ch2) {
            return super.apply(ch2);
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder("CharMatcher.anyOf(\"");
            for (char c10 : this.f126292c) {
                sb2.append(AbstractC15885e.R(c10));
            }
            sb2.append("\")");
            return sb2.toString();
        }
    }

    public static final class C2082e extends v {

        public static final C2082e f126293d = new C2082e();

        public C2082e() {
            super("CharMatcher.ascii()");
        }

        @Override
        public boolean B(char c10) {
            return c10 <= '\u007f';
        }
    }

    @v2.c
    public static final class f extends v {

        public final BitSet f126294d;

        public f(BitSet bitSet, String str, C15886a c15886a) {
            this(bitSet, str);
        }

        @Override
        public boolean B(char c10) {
            return this.f126294d.get(c10);
        }

        @Override
        public void Q(BitSet bitSet) {
            bitSet.or(this.f126294d);
        }

        public f(BitSet bitSet, String str) {
            super(str);
            this.f126294d = bitSet.length() + 64 < bitSet.size() ? (BitSet) bitSet.clone() : bitSet;
        }
    }

    public static final class g extends AbstractC15885e {

        public static final AbstractC15885e f126295c = new g();

        @Override
        public boolean B(char c10) {
            if (c10 != ' ' && c10 != '\u0085' && c10 != '\u1680') {
                if (c10 == '\u2007') {
                    return false;
                }
                if (c10 != '\u205f' && c10 != '\u3000' && c10 != '\u2028' && c10 != '\u2029') {
                    switch (c10) {
                        case '\t':
                        case '\n':
                        case 11:
                        case '\f':
                        case '\r':
                            break;
                        default:
                            return c10 >= '\u2000' && c10 <= '\u200a';
                    }
                }
            }
            return true;
        }

        @Override
        @Deprecated
        public boolean apply(Character ch2) {
            return super.apply(ch2);
        }

        @Override
        public String toString() {
            return "CharMatcher.breakingWhitespace()";
        }
    }

    public static final class h extends A {

        public static final String f126296f = "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0de6\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1a80\u1a90\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\ua9d0\ua9f0\uaa50\uabf0\uff10";

        public static final h f126297g = new h();

        public h() {
            super("CharMatcher.digit()", Z(), Y());
        }

        public static char[] Y() {
            char[] cArr = new char[37];
            for (int i10 = 0; i10 < 37; i10++) {
                cArr[i10] = (char) (f126296f.charAt(i10) + '\t');
            }
            return cArr;
        }

        public static char[] Z() {
            return f126296f.toCharArray();
        }
    }

    public static abstract class i extends AbstractC15885e {
        @Override
        public AbstractC15885e F() {
            return new x(this);
        }

        @Override
        public final AbstractC15885e J() {
            return this;
        }

        @Override
        @Deprecated
        public boolean apply(Character ch2) {
            return super.apply(ch2);
        }
    }

    public static final class j extends AbstractC15885e {

        public final I<? super Character> f126298c;

        public j(I<? super Character> i10) {
            this.f126298c = (I) H.E(i10);
        }

        @Override
        public boolean B(char c10) {
            return this.f126298c.apply(Character.valueOf(c10));
        }

        @Override
        public boolean apply(Character ch2) {
            return this.f126298c.apply(H.E(ch2));
        }

        @Override
        public String toString() {
            String valueOf = String.valueOf(this.f126298c);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 26);
            sb2.append("CharMatcher.forPredicate(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static final class k extends i {

        public final char f126299c;

        public final char f126300d;

        public k(char c10, char c11) {
            H.d(c11 >= c10);
            this.f126299c = c10;
            this.f126300d = c11;
        }

        @Override
        public boolean B(char c10) {
            return this.f126299c <= c10 && c10 <= this.f126300d;
        }

        @Override
        @v2.c
        public void Q(BitSet bitSet) {
            bitSet.set(this.f126299c, this.f126300d + 1);
        }

        @Override
        public String toString() {
            String R10 = AbstractC15885e.R(this.f126299c);
            String R11 = AbstractC15885e.R(this.f126300d);
            StringBuilder sb2 = new StringBuilder(String.valueOf(R10).length() + 27 + String.valueOf(R11).length());
            sb2.append("CharMatcher.inRange('");
            sb2.append(R10);
            sb2.append("', '");
            sb2.append(R11);
            sb2.append("')");
            return sb2.toString();
        }
    }

    public static final class l extends A {

        public static final String f126301f = "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u0890\u08e2\u1680\u180e\u2000\u2028\u205f\u2066\u3000\ud800\ufeff\ufff9";

        public static final String f126302g = " \u00a0\u00ad\u0605\u061c\u06dd\u070f\u0891\u08e2\u1680\u180e\u200f\u202f\u2064\u206f\u3000\uf8ff\ufeff\ufffb";

        public static final l f126303h = new l();

        public l() {
            super("CharMatcher.invisible()", f126301f.toCharArray(), f126302g.toCharArray());
        }
    }

    public static final class m extends i {

        public final char f126304c;

        public m(char c10) {
            this.f126304c = c10;
        }

        @Override
        public boolean B(char c10) {
            return c10 == this.f126304c;
        }

        @Override
        public AbstractC15885e F() {
            return AbstractC15885e.s(this.f126304c);
        }

        @Override
        public AbstractC15885e I(AbstractC15885e abstractC15885e) {
            return abstractC15885e.B(this.f126304c) ? abstractC15885e : super.I(abstractC15885e);
        }

        @Override
        public String N(CharSequence charSequence, char c10) {
            return charSequence.toString().replace(this.f126304c, c10);
        }

        @Override
        @v2.c
        public void Q(BitSet bitSet) {
            bitSet.set(this.f126304c);
        }

        @Override
        public AbstractC15885e b(AbstractC15885e abstractC15885e) {
            return abstractC15885e.B(this.f126304c) ? this : AbstractC15885e.G();
        }

        @Override
        public String toString() {
            String R10 = AbstractC15885e.R(this.f126304c);
            StringBuilder sb2 = new StringBuilder(String.valueOf(R10).length() + 18);
            sb2.append("CharMatcher.is('");
            sb2.append(R10);
            sb2.append("')");
            return sb2.toString();
        }
    }

    public static final class n extends i {

        public final char f126305c;

        public final char f126306d;

        public n(char c10, char c11) {
            this.f126305c = c10;
            this.f126306d = c11;
        }

        @Override
        public boolean B(char c10) {
            return c10 == this.f126305c || c10 == this.f126306d;
        }

        @Override
        @v2.c
        public void Q(BitSet bitSet) {
            bitSet.set(this.f126305c);
            bitSet.set(this.f126306d);
        }

        @Override
        public String toString() {
            String R10 = AbstractC15885e.R(this.f126305c);
            String R11 = AbstractC15885e.R(this.f126306d);
            StringBuilder sb2 = new StringBuilder(String.valueOf(R10).length() + 21 + String.valueOf(R11).length());
            sb2.append("CharMatcher.anyOf(\"");
            sb2.append(R10);
            sb2.append(R11);
            sb2.append("\")");
            return sb2.toString();
        }
    }

    public static final class o extends i {

        public final char f126307c;

        public o(char c10) {
            this.f126307c = c10;
        }

        @Override
        public boolean B(char c10) {
            return c10 != this.f126307c;
        }

        @Override
        public AbstractC15885e F() {
            return AbstractC15885e.q(this.f126307c);
        }

        @Override
        public AbstractC15885e I(AbstractC15885e abstractC15885e) {
            return abstractC15885e.B(this.f126307c) ? AbstractC15885e.c() : this;
        }

        @Override
        @v2.c
        public void Q(BitSet bitSet) {
            bitSet.set(0, this.f126307c);
            bitSet.set(this.f126307c + 1, 65536);
        }

        @Override
        public AbstractC15885e b(AbstractC15885e abstractC15885e) {
            return abstractC15885e.B(this.f126307c) ? super.b(abstractC15885e) : abstractC15885e;
        }

        @Override
        public String toString() {
            String R10 = AbstractC15885e.R(this.f126307c);
            StringBuilder sb2 = new StringBuilder(String.valueOf(R10).length() + 21);
            sb2.append("CharMatcher.isNot('");
            sb2.append(R10);
            sb2.append("')");
            return sb2.toString();
        }
    }

    public static final class p extends AbstractC15885e {

        public static final p f126308c = new p();

        @Override
        public boolean B(char c10) {
            return Character.isDigit(c10);
        }

        @Override
        @Deprecated
        public boolean apply(Character ch2) {
            return super.apply(ch2);
        }

        @Override
        public String toString() {
            return "CharMatcher.javaDigit()";
        }
    }

    public static final class q extends v {

        public static final q f126309d = new q();

        public q() {
            super("CharMatcher.javaIsoControl()");
        }

        @Override
        public boolean B(char c10) {
            return c10 <= 31 || (c10 >= '\u007f' && c10 <= '\u009f');
        }
    }

    public static final class r extends AbstractC15885e {

        public static final r f126310c = new r();

        @Override
        public boolean B(char c10) {
            return Character.isLetter(c10);
        }

        @Override
        @Deprecated
        public boolean apply(Character ch2) {
            return super.apply(ch2);
        }

        @Override
        public String toString() {
            return "CharMatcher.javaLetter()";
        }
    }

    public static final class s extends AbstractC15885e {

        public static final s f126311c = new s();

        @Override
        public boolean B(char c10) {
            return Character.isLetterOrDigit(c10);
        }

        @Override
        @Deprecated
        public boolean apply(Character ch2) {
            return super.apply(ch2);
        }

        @Override
        public String toString() {
            return "CharMatcher.javaLetterOrDigit()";
        }
    }

    public static final class t extends AbstractC15885e {

        public static final t f126312c = new t();

        @Override
        public boolean B(char c10) {
            return Character.isLowerCase(c10);
        }

        @Override
        @Deprecated
        public boolean apply(Character ch2) {
            return super.apply(ch2);
        }

        @Override
        public String toString() {
            return "CharMatcher.javaLowerCase()";
        }
    }

    public static final class u extends AbstractC15885e {

        public static final u f126313c = new u();

        @Override
        public boolean B(char c10) {
            return Character.isUpperCase(c10);
        }

        @Override
        @Deprecated
        public boolean apply(Character ch2) {
            return super.apply(ch2);
        }

        @Override
        public String toString() {
            return "CharMatcher.javaUpperCase()";
        }
    }

    public static abstract class v extends i {

        public final String f126314c;

        public v(String str) {
            this.f126314c = (String) H.E(str);
        }

        @Override
        public final String toString() {
            return this.f126314c;
        }
    }

    public static class w extends AbstractC15885e {

        public final AbstractC15885e f126315c;

        public w(AbstractC15885e abstractC15885e) {
            this.f126315c = (AbstractC15885e) H.E(abstractC15885e);
        }

        @Override
        public boolean B(char c10) {
            return !this.f126315c.B(c10);
        }

        @Override
        public boolean C(CharSequence charSequence) {
            return this.f126315c.E(charSequence);
        }

        @Override
        public boolean E(CharSequence charSequence) {
            return this.f126315c.C(charSequence);
        }

        @Override
        public AbstractC15885e F() {
            return this.f126315c;
        }

        @Override
        @v2.c
        public void Q(BitSet bitSet) {
            BitSet bitSet2 = new BitSet();
            this.f126315c.Q(bitSet2);
            bitSet2.flip(0, 65536);
            bitSet.or(bitSet2);
        }

        @Override
        @Deprecated
        public boolean apply(Character ch2) {
            return super.apply(ch2);
        }

        @Override
        public int i(CharSequence charSequence) {
            return charSequence.length() - this.f126315c.i(charSequence);
        }

        @Override
        public String toString() {
            String valueOf = String.valueOf(this.f126315c);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 9);
            sb2.append(valueOf);
            sb2.append(".negate()");
            return sb2.toString();
        }
    }

    public static class x extends w {
        public x(AbstractC15885e abstractC15885e) {
            super(abstractC15885e);
        }

        @Override
        public final AbstractC15885e J() {
            return this;
        }
    }

    public static final class y extends v {

        public static final y f126316d = new y();

        public y() {
            super("CharMatcher.none()");
        }

        @Override
        public int A(CharSequence charSequence) {
            H.E(charSequence);
            return -1;
        }

        @Override
        public boolean B(char c10) {
            return false;
        }

        @Override
        public boolean C(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override
        public boolean E(CharSequence charSequence) {
            H.E(charSequence);
            return true;
        }

        @Override
        public AbstractC15885e F() {
            return AbstractC15885e.c();
        }

        @Override
        public AbstractC15885e I(AbstractC15885e abstractC15885e) {
            return (AbstractC15885e) H.E(abstractC15885e);
        }

        @Override
        public String M(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override
        public String N(CharSequence charSequence, char c10) {
            return charSequence.toString();
        }

        @Override
        public String O(CharSequence charSequence, CharSequence charSequence2) {
            H.E(charSequence2);
            return charSequence.toString();
        }

        @Override
        public String U(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override
        public String V(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override
        public String W(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override
        public AbstractC15885e b(AbstractC15885e abstractC15885e) {
            H.E(abstractC15885e);
            return this;
        }

        @Override
        public String h(CharSequence charSequence, char c10) {
            return charSequence.toString();
        }

        @Override
        public int i(CharSequence charSequence) {
            H.E(charSequence);
            return 0;
        }

        @Override
        public int n(CharSequence charSequence) {
            H.E(charSequence);
            return -1;
        }

        @Override
        public int o(CharSequence charSequence, int i10) {
            H.d0(i10, charSequence.length());
            return -1;
        }
    }

    public static final class z extends AbstractC15885e {

        public final AbstractC15885e f126317c;

        public final AbstractC15885e f126318d;

        public z(AbstractC15885e abstractC15885e, AbstractC15885e abstractC15885e2) {
            this.f126317c = (AbstractC15885e) H.E(abstractC15885e);
            this.f126318d = (AbstractC15885e) H.E(abstractC15885e2);
        }

        @Override
        public boolean B(char c10) {
            return this.f126317c.B(c10) || this.f126318d.B(c10);
        }

        @Override
        @v2.c
        public void Q(BitSet bitSet) {
            this.f126317c.Q(bitSet);
            this.f126318d.Q(bitSet);
        }

        @Override
        @Deprecated
        public boolean apply(Character ch2) {
            return super.apply(ch2);
        }

        @Override
        public String toString() {
            String valueOf = String.valueOf(this.f126317c);
            String valueOf2 = String.valueOf(this.f126318d);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 18 + valueOf2.length());
            sb2.append("CharMatcher.or(");
            sb2.append(valueOf);
            sb2.append(", ");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static AbstractC15885e G() {
        return y.f126316d;
    }

    public static AbstractC15885e H(CharSequence charSequence) {
        return d(charSequence).F();
    }

    @v2.c
    public static AbstractC15885e L(int i10, BitSet bitSet, String str) {
        if (i10 == 0) {
            return G();
        }
        if (i10 == 1) {
            return q((char) bitSet.nextSetBit(0));
        }
        if (i10 != 2) {
            return t(i10, bitSet.length()) ? L.a0(bitSet, str) : new f(bitSet, str, null);
        }
        char nextSetBit = (char) bitSet.nextSetBit(0);
        return r(nextSetBit, (char) bitSet.nextSetBit(nextSetBit + 1));
    }

    public static String R(char c10) {
        char[] cArr = new char[6];
        cArr[0] = JavaElement.JEM_ESCAPE;
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i10 = 0; i10 < 4; i10++) {
            cArr[5 - i10] = "0123456789ABCDEF".charAt(c10 & 15);
            c10 = (char) (c10 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    @Deprecated
    public static AbstractC15885e S() {
        return B.f126283f;
    }

    public static AbstractC15885e X() {
        return C.f126287g;
    }

    public static AbstractC15885e c() {
        return C15888c.f126291d;
    }

    public static AbstractC15885e d(CharSequence charSequence) {
        int length = charSequence.length();
        return length != 0 ? length != 1 ? length != 2 ? new d(charSequence) : r(charSequence.charAt(0), charSequence.charAt(1)) : q(charSequence.charAt(0)) : G();
    }

    public static AbstractC15885e f() {
        return C2082e.f126293d;
    }

    public static AbstractC15885e g() {
        return g.f126295c;
    }

    @Deprecated
    public static AbstractC15885e j() {
        return h.f126297g;
    }

    public static AbstractC15885e l(I<? super Character> i10) {
        return i10 instanceof AbstractC15885e ? (AbstractC15885e) i10 : new j(i10);
    }

    public static AbstractC15885e m(char c10, char c11) {
        return new k(c10, c11);
    }

    @Deprecated
    public static AbstractC15885e p() {
        return l.f126303h;
    }

    public static AbstractC15885e q(char c10) {
        return new m(c10);
    }

    public static n r(char c10, char c11) {
        return new n(c10, c11);
    }

    public static AbstractC15885e s(char c10) {
        return new o(c10);
    }

    @v2.c
    public static boolean t(int i10, int i11) {
        return i10 <= 1023 && i11 > i10 * 64;
    }

    @Deprecated
    public static AbstractC15885e u() {
        return p.f126308c;
    }

    public static AbstractC15885e v() {
        return q.f126309d;
    }

    @Deprecated
    public static AbstractC15885e w() {
        return r.f126310c;
    }

    @Deprecated
    public static AbstractC15885e x() {
        return s.f126311c;
    }

    @Deprecated
    public static AbstractC15885e y() {
        return t.f126312c;
    }

    @Deprecated
    public static AbstractC15885e z() {
        return u.f126313c;
    }

    public int A(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (B(charSequence.charAt(length))) {
                return length;
            }
        }
        return -1;
    }

    public abstract boolean B(char c10);

    public boolean C(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!B(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    public boolean D(CharSequence charSequence) {
        return !E(charSequence);
    }

    public boolean E(CharSequence charSequence) {
        return n(charSequence) == -1;
    }

    public AbstractC15885e F() {
        return new w(this);
    }

    public AbstractC15885e I(AbstractC15885e abstractC15885e) {
        return new z(this, abstractC15885e);
    }

    public AbstractC15885e J() {
        return G.j(this);
    }

    @v2.c
    public AbstractC15885e K() {
        BitSet bitSet = new BitSet();
        Q(bitSet);
        int cardinality = bitSet.cardinality();
        if (cardinality * 2 <= 65536) {
            return L(cardinality, bitSet, toString());
        }
        bitSet.flip(0, 65536);
        int i10 = 65536 - cardinality;
        String abstractC15885e = toString();
        return new C15886a(this, L(i10, bitSet, abstractC15885e.endsWith(".negate()") ? abstractC15885e.substring(0, abstractC15885e.length() - 9) : ".negate()".length() != 0 ? abstractC15885e.concat(".negate()") : new String(abstractC15885e)), abstractC15885e);
    }

    public String M(CharSequence charSequence) {
        String charSequence2 = charSequence.toString();
        int n10 = n(charSequence2);
        if (n10 == -1) {
            return charSequence2;
        }
        char[] charArray = charSequence2.toCharArray();
        int i10 = 1;
        while (true) {
            n10++;
            while (n10 != charArray.length) {
                if (B(charArray[n10])) {
                    break;
                }
                charArray[n10 - i10] = charArray[n10];
                n10++;
            }
            return new String(charArray, 0, n10 - i10);
            i10++;
        }
    }

    public String N(CharSequence charSequence, char c10) {
        String charSequence2 = charSequence.toString();
        int n10 = n(charSequence2);
        if (n10 == -1) {
            return charSequence2;
        }
        char[] charArray = charSequence2.toCharArray();
        charArray[n10] = c10;
        while (true) {
            n10++;
            if (n10 >= charArray.length) {
                return new String(charArray);
            }
            if (B(charArray[n10])) {
                charArray[n10] = c10;
            }
        }
    }

    public String O(CharSequence charSequence, CharSequence charSequence2) {
        int length = charSequence2.length();
        if (length == 0) {
            return M(charSequence);
        }
        int i10 = 0;
        if (length == 1) {
            return N(charSequence, charSequence2.charAt(0));
        }
        String charSequence3 = charSequence.toString();
        int n10 = n(charSequence3);
        if (n10 == -1) {
            return charSequence3;
        }
        int length2 = charSequence3.length();
        StringBuilder sb2 = new StringBuilder(((length2 * 3) / 2) + 16);
        do {
            sb2.append((CharSequence) charSequence3, i10, n10);
            sb2.append(charSequence2);
            i10 = n10 + 1;
            n10 = o(charSequence3, i10);
        } while (n10 != -1);
        sb2.append((CharSequence) charSequence3, i10, length2);
        return sb2.toString();
    }

    public String P(CharSequence charSequence) {
        return F().M(charSequence);
    }

    @v2.c
    public void Q(BitSet bitSet) {
        for (int i10 = 65535; i10 >= 0; i10--) {
            if (B((char) i10)) {
                bitSet.set(i10);
            }
        }
    }

    public String T(CharSequence charSequence, char c10) {
        int length = charSequence.length();
        int i10 = length - 1;
        int i11 = 0;
        while (i11 < length && B(charSequence.charAt(i11))) {
            i11++;
        }
        int i12 = i10;
        while (i12 > i11 && B(charSequence.charAt(i12))) {
            i12--;
        }
        if (i11 == 0 && i12 == i10) {
            return h(charSequence, c10);
        }
        int i13 = i12 + 1;
        return k(charSequence, i11, i13, c10, new StringBuilder(i13 - i11), false);
    }

    public String U(CharSequence charSequence) {
        int length = charSequence.length();
        int i10 = 0;
        while (i10 < length && B(charSequence.charAt(i10))) {
            i10++;
        }
        int i11 = length - 1;
        while (i11 > i10 && B(charSequence.charAt(i11))) {
            i11--;
        }
        return charSequence.subSequence(i10, i11 + 1).toString();
    }

    public String V(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!B(charSequence.charAt(i10))) {
                return charSequence.subSequence(i10, length).toString();
            }
        }
        return "";
    }

    public String W(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!B(charSequence.charAt(length))) {
                return charSequence.subSequence(0, length + 1).toString();
            }
        }
        return "";
    }

    public AbstractC15885e b(AbstractC15885e abstractC15885e) {
        return new C15887b(this, abstractC15885e);
    }

    @Override
    @Deprecated
    public boolean apply(Character ch2) {
        return B(ch2.charValue());
    }

    public String h(CharSequence charSequence, char c10) {
        int length = charSequence.length();
        int i10 = 0;
        while (i10 < length) {
            char charAt = charSequence.charAt(i10);
            if (B(charAt)) {
                if (charAt != c10 || (i10 != length - 1 && B(charSequence.charAt(i10 + 1)))) {
                    StringBuilder sb2 = new StringBuilder(length);
                    sb2.append(charSequence, 0, i10);
                    sb2.append(c10);
                    return k(charSequence, i10 + 1, length, c10, sb2, true);
                }
                i10++;
            }
            i10++;
        }
        return charSequence.toString();
    }

    public int i(CharSequence charSequence) {
        int i10 = 0;
        for (int i11 = 0; i11 < charSequence.length(); i11++) {
            if (B(charSequence.charAt(i11))) {
                i10++;
            }
        }
        return i10;
    }

    public final String k(CharSequence charSequence, int i10, int i11, char c10, StringBuilder sb2, boolean z10) {
        while (i10 < i11) {
            char charAt = charSequence.charAt(i10);
            if (!B(charAt)) {
                sb2.append(charAt);
                z10 = false;
            } else if (!z10) {
                sb2.append(c10);
                z10 = true;
            }
            i10++;
        }
        return sb2.toString();
    }

    public int n(CharSequence charSequence) {
        return o(charSequence, 0);
    }

    public int o(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        H.d0(i10, length);
        while (i10 < length) {
            if (B(charSequence.charAt(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public String toString() {
        return super.toString();
    }
}
