package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import java.util.stream.Stream;

public final class N60 {

    public static final Pattern f42500e = Pattern.compile("%(\\d+\\$)?([-+#, 0(<]*)?(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])");

    public final InterfaceC5976Tl0 f42501a;

    public final C7789ig0 f42502b;

    public final HashSet f42503c;

    public final boolean f42504d;

    public N60(InterfaceC5976Tl0 interfaceC5976Tl0, C7789ig0 c7789ig0, HashSet hashSet, boolean z10) {
        this.f42501a = interfaceC5976Tl0;
        this.f42502b = c7789ig0;
        this.f42503c = hashSet;
        this.f42504d = z10;
    }

    public final void a() {
        List unmodifiableList = Collections.unmodifiableList(this.f42502b.f49012b);
        GJ.b(unmodifiableList, "unmodifiableList(_resources)");
        Stream map = unmodifiableList.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String str;
                str = ((C8623ng0) obj).f51023d;
                return str;
            }
        });
        int i10 = QC.f43505c;
        final Set set = (Set) map.collect(AbstractC5438Ke.f41723a);
        final int orElse = set.stream().mapToInt(new C8746oN0()).min().orElse(Integer.MAX_VALUE);
        this.f42503c.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return N60.a(orElse, (String) obj);
            }
        }).flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return N60.this.a(set, (String) obj);
            }
        }).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC8957pg0.a((C8623ng0) obj);
            }
        });
    }

    public final Stream c(Set set, String str) {
        List a10 = this.f42502b.a(str);
        if (!a10.isEmpty()) {
            return a10.stream();
        }
        int max = Math.max(str.lastIndexOf(47), 0);
        int indexOf = str.indexOf(46, max);
        if (indexOf == -1) {
            indexOf = str.length();
        }
        final String substring = str.substring(max, indexOf);
        if (set.contains(substring)) {
            return this.f42502b.f49013c.values().stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean containsKey;
                    containsKey = ((InterfaceC10259xT) obj).containsKey(String.this);
                    return containsKey;
                }
            }).flatMap(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Stream stream;
                    stream = ((InterfaceC10259xT) obj).get(String.this).stream();
                    return stream;
                }
            });
        }
        return Stream.empty();
    }

    public final Stream b(String str) {
        try {
            final Pattern compile = Pattern.compile(a(str));
            List unmodifiableList = Collections.unmodifiableList(this.f42502b.f49012b);
            GJ.b(unmodifiableList, "unmodifiableList(_resources)");
            return unmodifiableList.stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean matches;
                    matches = Pattern.this.matcher(((C8623ng0) obj).f51023d).matches();
                    return matches;
                }
            });
        } catch (PatternSyntaxException unused) {
            return Stream.empty();
        }
    }

    public final Stream b(Set set, String str) {
        int indexOf = str.indexOf(47);
        final String a10 = AbstractC4987Cj0.a(str.substring(indexOf + 1));
        if (a10.isEmpty() || !set.contains(a10)) {
            return Stream.empty();
        }
        if (indexOf > 0) {
            EnumC8289lg0 enumC8289lg0 = (EnumC8289lg0) EnumC8289lg0.f50040I.get(str.substring(str.indexOf(58) + 1, indexOf));
            if (enumC8289lg0 != null) {
                return this.f42502b.a(enumC8289lg0, a10).stream();
            }
            return Stream.empty();
        }
        return this.f42502b.f49013c.values().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean containsKey;
                containsKey = ((InterfaceC10259xT) obj).containsKey(String.this);
                return containsKey;
            }
        }).flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                Stream stream;
                stream = ((InterfaceC10259xT) obj).get(String.this).stream();
                return stream;
            }
        });
    }

    public static boolean a(int i10, String str) {
        return str.length() >= i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x012c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Stream a(Set set, final String str) {
        Stream empty;
        Stream empty2;
        Stream empty3;
        Stream stream;
        Stream empty4;
        byte b10;
        Long valueOf;
        byte b11;
        int length = str.length();
        boolean z10 = true;
        boolean z11 = false;
        boolean z12 = false;
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            z11 |= charAt == '/';
            z12 |= charAt == '%';
            z10 = (!z10 || charAt == ':' || charAt == '%' || charAt == '/') ? false : true;
        }
        if (this.f42504d) {
            empty = c(set, str);
        } else {
            empty = Stream.empty();
        }
        Stream c10 = z10 ? c(str) : Stream.empty();
        if (z12 && !z11) {
            empty2 = b(str);
        } else {
            empty2 = Stream.empty();
        }
        if (z11) {
            empty3 = b(set, str);
        } else {
            empty3 = Stream.empty();
        }
        String substring = str.substring(str.lastIndexOf(47) + 1);
        if (!substring.isEmpty() && Character.isDigit(substring.charAt(0))) {
            if (!substring.isEmpty()) {
                int i11 = substring.charAt(0) == '-' ? 1 : 0;
                if (i11 != substring.length()) {
                    int i12 = i11 + 1;
                    char charAt2 = substring.charAt(i11);
                    char c11 = '\u0080';
                    if (charAt2 < '\u0080') {
                        b10 = AbstractC9760uU.f52862a[charAt2];
                    } else {
                        byte[] bArr = AbstractC9760uU.f52862a;
                        b10 = -1;
                    }
                    if (b10 >= 0) {
                        byte b12 = 10;
                        if (b10 < 10) {
                            long j10 = -b10;
                            stream = c10;
                            long j11 = 10;
                            long j12 = Long.MIN_VALUE / j11;
                            int i13 = i12;
                            while (true) {
                                if (i13 < substring.length()) {
                                    int i14 = i13 + 1;
                                    char charAt3 = substring.charAt(i13);
                                    if (charAt3 < c11) {
                                        b11 = AbstractC9760uU.f52862a[charAt3];
                                    } else {
                                        byte[] bArr2 = AbstractC9760uU.f52862a;
                                        b11 = -1;
                                    }
                                    if (b11 < 0 || b11 >= b12 || j10 < j12) {
                                        break;
                                    }
                                    long j13 = j10 * j11;
                                    long j14 = b11;
                                    if (j13 < j14 - Long.MIN_VALUE) {
                                        break;
                                    }
                                    j10 = j13 - j14;
                                    i13 = i14;
                                    c11 = '\u0080';
                                    b12 = 10;
                                } else if (i11 != 0) {
                                    valueOf = Long.valueOf(j10);
                                } else if (j10 != Long.MIN_VALUE) {
                                    valueOf = Long.valueOf(-j10);
                                }
                            }
                            valueOf = null;
                            Integer valueOf2 = (valueOf == null && valueOf.longValue() == ((long) valueOf.intValue())) ? Integer.valueOf(valueOf.intValue()) : null;
                            C8623ng0 c8623ng0 = valueOf2 == null ? (C8623ng0) this.f42502b.f49014d.get(valueOf2) : null;
                            empty4 = c8623ng0 == null ? Stream.of(c8623ng0) : Stream.empty();
                        }
                    }
                }
            }
            stream = c10;
            valueOf = null;
            if (valueOf == null) {
            }
            if (valueOf2 == null) {
            }
            if (c8623ng0 == null) {
            }
        } else {
            stream = c10;
            empty4 = Stream.empty();
        }
        return AbstractC6483ap0.a(empty, stream, empty2, empty3, empty4).peek(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N60.this.a(str, (C8623ng0) obj);
            }
        });
    }

    public final Stream c(final String str) {
        List unmodifiableList = Collections.unmodifiableList(this.f42502b.f49012b);
        GJ.b(unmodifiableList, "unmodifiableList(_resources)");
        return unmodifiableList.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean startsWith;
                startsWith = ((C8623ng0) obj).f51023d.startsWith(AbstractC4987Cj0.a(String.this));
                return startsWith;
            }
        });
    }

    public static String a(C8623ng0 c8623ng0, String str) {
        return "Marking " + ((Object) c8623ng0) + " used because it matches string pool constant " + str;
    }

    public final void a(final String str, final C8623ng0 c8623ng0) {
        this.f42501a.a(new Supplier() {
            @Override
            public final Object get() {
                return N60.a(C8623ng0.this, str);
            }
        });
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:42:0x0084. Please report as an issue. */
    public static String a(String str) {
        String str2;
        boolean z10;
        StringBuilder sb2 = new StringBuilder();
        Matcher matcher = f42500e.matcher(str);
        int length = str.length();
        boolean z11 = false;
        int i10 = 0;
        boolean z12 = false;
        while (matcher.find(i10)) {
            int start = matcher.start();
            int end = matcher.end();
            if (start == 0 && end == length) {
                return "-nomatch-";
            }
            if (start > i10) {
                sb2.append(Pattern.quote(str.substring(i10, start)));
                while (true) {
                    if (i10 >= start) {
                        z10 = false;
                    } else if (Character.isLetter(str.charAt(i10))) {
                        z10 = true;
                    } else {
                        i10++;
                    }
                }
                z12 |= z10;
            }
            String group = matcher.group(6);
            if (matcher.group(5) == null && group != null && group.length() == 1) {
                char charAt = group.charAt(0);
                if (charAt == '%') {
                    str2 = ve.j.f121589a;
                } else if (charAt == 'E') {
                    str2 = "-?\\p{Digit}+[,.]\\p{Digit}+E\\+?\\p{Digit}+";
                } else if (charAt != 'X' && charAt != 'x') {
                    if (charAt != 'G') {
                        if (charAt != 'H') {
                            if (charAt != 'n') {
                                if (charAt != 'o') {
                                    switch (charAt) {
                                        case 'A':
                                            str2 = "0X[\\p{XDigit},.+P]+";
                                            break;
                                        case 'B':
                                            str2 = "(TRUE|FALSE)";
                                            break;
                                        default:
                                            switch (charAt) {
                                                case 'a':
                                                    str2 = "0x[\\p{XDigit},.+p]+";
                                                    break;
                                                case 'b':
                                                    str2 = "(true|false)";
                                                    break;
                                                case 'c':
                                                    break;
                                                case 'd':
                                                    break;
                                                case 'e':
                                                    str2 = "-?\\p{Digit}+[,.]\\p{Digit}+e\\+?\\p{Digit}+";
                                                    break;
                                                case 'f':
                                                    str2 = "-?[\\p{XDigit},.]+";
                                                    break;
                                                case 'g':
                                                    break;
                                                case 'h':
                                                    break;
                                                default:
                                                    str2 = ".*";
                                                    break;
                                            }
                                        case 'C':
                                            str2 = ".";
                                            break;
                                    }
                                }
                                str2 = "\\p{Digit}+";
                            } else {
                                str2 = "\n";
                            }
                        }
                        str2 = "(null|\\p{XDigit}+)";
                    }
                    str2 = "-?[\\p{XDigit},.+eE]+";
                } else {
                    str2 = "\\p{XDigit}+";
                }
                if (!".*".equals(str2) && matcher.group(3) != null) {
                    if ("0".equals(matcher.group(2))) {
                        str2 = "0*" + str2;
                    } else {
                        str2 = " " + str2;
                    }
                }
                int length2 = sb2.length();
                if (!".*".equals(str2) || length2 < 2 || sb2.charAt(length2 - 1) != '*' || sb2.charAt(length2 - 2) != '.') {
                    sb2.append(str2);
                }
            }
            i10 = end;
        }
        if (i10 < length) {
            sb2.append(Pattern.quote(str.substring(i10, length)));
            while (true) {
                if (i10 < length) {
                    if (Character.isLetter(str.charAt(i10))) {
                        z11 = true;
                    } else {
                        i10++;
                    }
                }
            }
            z12 |= z11;
        }
        return !z12 ? "-nomatch-" : sb2.toString();
    }
}
