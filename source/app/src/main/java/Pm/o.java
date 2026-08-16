package Pm;

import java.util.ArrayList;
import java.util.List;

public class o {

    public StringBuilder f21838d;

    public String f21839e;

    public String f21840f;

    public char f21841g;

    public StringBuilder f21842h;

    public b f21835a = b.START_DEFINITION;

    public final StringBuilder f21836b = new StringBuilder();

    public final List<Um.s> f21837c = new ArrayList();

    public boolean f21843i = false;

    public static class a {

        public static final int[] f21844a;

        static {
            int[] iArr = new int[b.values().length];
            f21844a = iArr;
            try {
                iArr[b.PARAGRAPH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21844a[b.START_DEFINITION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f21844a[b.LABEL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f21844a[b.DESTINATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f21844a[b.START_TITLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f21844a[b.TITLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum b {
        START_DEFINITION,
        LABEL,
        DESTINATION,
        START_TITLE,
        TITLE,
        PARAGRAPH
    }

    public final int a(CharSequence charSequence, int i10) {
        int m10 = Tm.d.m(charSequence, i10, charSequence.length());
        int a10 = Tm.c.a(charSequence, m10);
        if (a10 == -1) {
            return -1;
        }
        this.f21840f = charSequence.charAt(m10) == '<' ? charSequence.subSequence(m10 + 1, a10 - 1).toString() : charSequence.subSequence(m10, a10).toString();
        int m11 = Tm.d.m(charSequence, a10, charSequence.length());
        if (m11 >= charSequence.length()) {
            this.f21843i = true;
            this.f21836b.setLength(0);
        } else if (m11 == a10) {
            return -1;
        }
        this.f21835a = b.START_TITLE;
        return m11;
    }

    public final void b() {
        if (this.f21843i) {
            String g10 = Tm.a.g(this.f21840f);
            StringBuilder sb2 = this.f21842h;
            this.f21837c.add(new Um.s(this.f21839e, g10, sb2 != null ? Tm.a.g(sb2.toString()) : null));
            this.f21838d = null;
            this.f21843i = false;
            this.f21839e = null;
            this.f21840f = null;
            this.f21842h = null;
        }
    }

    public List<Um.s> c() {
        b();
        return this.f21837c;
    }

    public CharSequence d() {
        return this.f21836b;
    }

    public b e() {
        return this.f21835a;
    }

    public final int f(CharSequence charSequence, int i10) {
        int i11;
        int c10 = Tm.c.c(charSequence, i10);
        if (c10 == -1) {
            return -1;
        }
        this.f21838d.append(charSequence, i10, c10);
        if (c10 >= charSequence.length()) {
            this.f21838d.append('\n');
            return c10;
        }
        if (charSequence.charAt(c10) != ']' || (i11 = c10 + 1) >= charSequence.length() || charSequence.charAt(i11) != ':' || this.f21838d.length() > 999) {
            return -1;
        }
        String c11 = Tm.a.c(this.f21838d.toString());
        if (c11.isEmpty()) {
            return -1;
        }
        this.f21839e = c11;
        this.f21835a = b.DESTINATION;
        return Tm.d.m(charSequence, c10 + 2, charSequence.length());
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0044 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[LOOP:0: B:5:0x0015->B:20:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(CharSequence charSequence) {
        if (this.f21836b.length() != 0) {
            this.f21836b.append('\n');
        }
        this.f21836b.append(charSequence);
        int i10 = 0;
        while (i10 < charSequence.length()) {
            switch (a.f21844a[this.f21835a.ordinal()]) {
                case 1:
                    return;
                case 2:
                    i10 = h(charSequence, i10);
                    if (i10 != -1) {
                        this.f21835a = b.PARAGRAPH;
                        return;
                    }
                case 3:
                    i10 = f(charSequence, i10);
                    if (i10 != -1) {
                    }
                    break;
                case 4:
                    i10 = a(charSequence, i10);
                    if (i10 != -1) {
                    }
                    break;
                case 5:
                    i10 = i(charSequence, i10);
                    if (i10 != -1) {
                    }
                    break;
                case 6:
                    i10 = j(charSequence, i10);
                    if (i10 != -1) {
                    }
                    break;
                default:
                    if (i10 != -1) {
                    }
                    break;
            }
        }
    }

    public final int h(CharSequence charSequence, int i10) {
        int m10 = Tm.d.m(charSequence, i10, charSequence.length());
        if (m10 >= charSequence.length() || charSequence.charAt(m10) != '[') {
            return -1;
        }
        this.f21835a = b.LABEL;
        this.f21838d = new StringBuilder();
        int i11 = m10 + 1;
        if (i11 >= charSequence.length()) {
            this.f21838d.append('\n');
        }
        return i11;
    }

    public final int i(CharSequence charSequence, int i10) {
        int m10 = Tm.d.m(charSequence, i10, charSequence.length());
        if (m10 >= charSequence.length()) {
            this.f21835a = b.START_DEFINITION;
            return m10;
        }
        this.f21841g = (char) 0;
        char charAt = charSequence.charAt(m10);
        if (charAt == '\"' || charAt == '\'') {
            this.f21841g = charAt;
        } else if (charAt == '(') {
            this.f21841g = ')';
        }
        if (this.f21841g != 0) {
            this.f21835a = b.TITLE;
            this.f21842h = new StringBuilder();
            m10++;
            if (m10 == charSequence.length()) {
                this.f21842h.append('\n');
            }
        } else {
            b();
            this.f21835a = b.START_DEFINITION;
        }
        return m10;
    }

    public final int j(CharSequence charSequence, int i10) {
        int e10 = Tm.c.e(charSequence, i10, this.f21841g);
        if (e10 == -1) {
            return -1;
        }
        this.f21842h.append(charSequence.subSequence(i10, e10));
        if (e10 >= charSequence.length()) {
            this.f21842h.append('\n');
            return e10;
        }
        int m10 = Tm.d.m(charSequence, e10 + 1, charSequence.length());
        if (m10 != charSequence.length()) {
            return -1;
        }
        this.f21843i = true;
        b();
        this.f21836b.setLength(0);
        this.f21835a = b.START_DEFINITION;
        return m10;
    }
}
