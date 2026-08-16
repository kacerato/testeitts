package com.android.tools.r8.internal;

import com.ardor3d.util.resource.ResourceLocatorTool;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.openjdk.tools.doclint.DocLint;
import w2.C15883c;

public final class C9451se0 {

    public final InterfaceC5210Gf0 f52422a;

    public final AbstractC5963Tf0 f52423b;

    public final C6024Ug0 f52424c;

    public final C8623ng0 f52425d;

    public final C8155kr0 f52426e;

    public C9451se0(InterfaceC5210Gf0 interfaceC5210Gf0, AbstractC5963Tf0 abstractC5963Tf0, C6024Ug0 c6024Ug0, C8623ng0 c8623ng0) {
        GJ.c(interfaceC5210Gf0, "resourcesRoot");
        GJ.c(abstractC5963Tf0, ResourceLocatorTool.TYPE_MODEL);
        GJ.c(c6024Ug0, "entry");
        this.f52422a = interfaceC5210Gf0;
        this.f52423b = abstractC5963Tf0;
        this.f52424c = c6024Ug0;
        this.f52425d = c8623ng0;
        this.f52426e = new C8155kr0(new C9284re0(this));
    }

    /* JADX WARN: Code restructure failed: missing block: B:118:0x01f8, code lost:
    
        if (r5 == (-1)) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0213, code lost:
    
        r5 = r5 + 3;
        r6 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0210, code lost:
    
        r5 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x020e, code lost:
    
        if (r5 == (-1)) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0110, code lost:
    
        if (r5 == '>') goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0170, code lost:
    
        if (java.lang.Character.isWhitespace(r5) == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0184, code lost:
    
        r12 = r15;
        r6 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0182, code lost:
    
        if (java.lang.Character.isWhitespace(r5) != false) goto L59;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:46:0x00f6. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C6626bh0 c6626bh0) {
        EnumC6459ah0 enumC6459ah0;
        char c10;
        char c11;
        int indexOf;
        int i10;
        InterfaceC5210Gf0 interfaceC5210Gf0 = this.f52422a;
        String a10 = c6626bh0.a();
        GJ.b(a10, "file.path");
        int i11 = 0;
        int a11 = AbstractC5349Iq0.a(a10, "res/", 0, 6);
        if (a11 != -1) {
            a10 = a10.substring(a11 + 4, a10.length());
            GJ.b(a10, "substring(...)");
        }
        byte[] a12 = interfaceC5210Gf0.a(a10);
        C8155kr0 c8155kr0 = new C8155kr0(new C6950de0(a12));
        String a13 = c6626bh0.a();
        GJ.b(a13, "file.path");
        String b10 = AbstractC5349Iq0.b(a13, '.');
        int length = b10.length();
        int i12 = 0;
        while (true) {
            if (i12 >= length) {
                break;
            }
            char charAt = b10.charAt(i12);
            if (charAt < 'A' || charAt > 'Z') {
                i12++;
            } else {
                char[] charArray = b10.toCharArray();
                while (i12 < length) {
                    char c12 = charArray[i12];
                    if (c12 >= 'A' && c12 <= 'Z') {
                        charArray[i12] = (char) (c12 ^ C15883c.f126249O);
                    }
                    i12++;
                }
                b10 = String.valueOf(charArray);
            }
        }
        GJ.b(b10, "toLowerCase(file.path.substringAfterLast('.'))");
        int i13 = c6626bh0.f46830c;
        if (i13 == 0) {
            enumC6459ah0 = EnumC6459ah0.f46580c;
        } else if (i13 == 1) {
            enumC6459ah0 = EnumC6459ah0.f46581d;
        } else if (i13 != 2) {
            enumC6459ah0 = i13 != 3 ? null : EnumC6459ah0.f46583f;
        } else {
            enumC6459ah0 = EnumC6459ah0.f46582e;
        }
        if (enumC6459ah0 == null) {
            enumC6459ah0 = EnumC6459ah0.f46584g;
        }
        if (enumC6459ah0 == EnumC6459ah0.f46583f) {
            C9800uj0 c9800uj0 = (C9800uj0) C9800uj0.f52927g.parseFrom(a12);
            GJ.b(c9800uj0, "parseFrom(bytes)");
            a(c9800uj0);
            return;
        }
        if (AbstractC6619bf.a("html", "htm").contains(b10)) {
            C4957Bx0 c4957Bx0 = (C4957Bx0) this.f52426e.a();
            String str = (String) c8155kr0.a();
            c4957Bx0.getClass();
            int length2 = str.length();
            int i14 = 0;
            int i15 = 0;
            int i16 = -1;
            String str2 = null;
            String str3 = null;
            int i17 = 1;
            int i18 = 0;
            while (i11 < length2) {
                if (i11 == i16 && (i11 = i11 + 1) == length2) {
                    return;
                }
                i16 = i11;
                char charAt2 = str.charAt(i16);
                switch (i17) {
                    case 1:
                        c10 = 3;
                        if (charAt2 == '<') {
                            i11 = i16 + 1;
                            i17 = 2;
                        }
                        i11 = i16 + 1;
                    case 2:
                        if (charAt2 != '!') {
                            c11 = 3;
                            if (charAt2 == '/') {
                                i11 = i16 + 1;
                                i17 = 12;
                            } else if (charAt2 == '?') {
                                int indexOf2 = str.indexOf(62, i16 + 2);
                                i11 = indexOf2 == -1 ? length2 : indexOf2 + 1;
                                i17 = 1;
                            } else {
                                i14 = i16;
                                i11 = i14;
                                i17 = 5;
                            }
                        } else if (str.startsWith("!--", i16)) {
                            indexOf = str.indexOf("-->", i16 + 3);
                            break;
                        } else if (str.startsWith("![CDATA[", i16)) {
                            indexOf = str.indexOf("]]>", i16 + 8);
                            break;
                        } else {
                            c11 = 3;
                            i14 = i16;
                            i11 = i14;
                            i17 = 5;
                        }
                    case 3:
                        if (charAt2 == '>') {
                            c4957Bx0.a(i16, str, str2);
                            i17 = 1;
                            c10 = 3;
                            i11 = i16 + 1;
                        } else if (charAt2 == '=') {
                            str3 = str.substring(i15, i16);
                            i17 = 8;
                            c10 = 3;
                            i11 = i16 + 1;
                        } else {
                            if (Character.isWhitespace(charAt2)) {
                                i17 = 7;
                                str3 = str.substring(i15, i16);
                            }
                            c10 = 3;
                            i11 = i16 + 1;
                        }
                    case 4:
                        if (!Character.isWhitespace(charAt2)) {
                            i14 = i16;
                            i17 = 5;
                        }
                        c10 = 3;
                        i11 = i16 + 1;
                    case 5:
                        if (Character.isWhitespace(charAt2)) {
                            str2 = str.substring(i14, i16).trim();
                            i17 = 6;
                            c10 = 3;
                            i11 = i16 + 1;
                        } else if (charAt2 == '>') {
                            String trim = str.substring(i14, i16).trim();
                            c4957Bx0.a(i16, str, trim);
                            str2 = trim;
                            i17 = 1;
                            c10 = 3;
                            i11 = i16 + 1;
                        } else {
                            if (charAt2 == '/') {
                                String trim2 = str.substring(i14, i16).trim();
                                c4957Bx0.a(i16, str, trim2);
                                i17 = 13;
                                str2 = trim2;
                            }
                            c10 = 3;
                            i11 = i16 + 1;
                        }
                    case 6:
                        if (charAt2 == '>') {
                            c4957Bx0.a(i16, str, str2);
                            i17 = 1;
                            c10 = 3;
                            i11 = i16 + 1;
                        } else {
                            if (charAt2 != '/') {
                                break;
                            }
                            c10 = 3;
                            i11 = i16 + 1;
                        }
                    case 7:
                        if (charAt2 != '=') {
                            if (charAt2 != '>') {
                                break;
                            } else {
                                c4957Bx0.a(i16, str, str2);
                                i17 = 1;
                                c10 = 3;
                                i11 = i16 + 1;
                            }
                        }
                        i17 = 8;
                        c10 = 3;
                        i11 = i16 + 1;
                    case 8:
                        if (charAt2 == '\'') {
                            i10 = i16 + 1;
                            i17 = 10;
                        } else if (charAt2 == '\"') {
                            i10 = i16 + 1;
                            i17 = 11;
                        } else {
                            if (!Character.isWhitespace(charAt2)) {
                                i10 = i16 + 1;
                                i17 = 9;
                            }
                            c10 = 3;
                            i11 = i16 + 1;
                        }
                        i18 = i10;
                        c10 = 3;
                        i11 = i16 + 1;
                    case 9:
                        if (charAt2 == '>') {
                            c4957Bx0.a(str3, str.substring(i18, i16));
                            c4957Bx0.a(i16, str, str2);
                            i17 = 1;
                            c10 = 3;
                            i11 = i16 + 1;
                        } else {
                            if (Character.isWhitespace(charAt2)) {
                                c4957Bx0.a(str3, str.substring(i18, i16));
                                i17 = 6;
                            }
                            c10 = 3;
                            i11 = i16 + 1;
                        }
                    case 10:
                        if (charAt2 == '\'') {
                            c4957Bx0.a(str3, str.substring(i18, i16));
                            i17 = 6;
                        }
                        c10 = 3;
                        i11 = i16 + 1;
                    case 11:
                        if (charAt2 == '\"') {
                            c4957Bx0.a(str3, str.substring(i18, i16));
                            i17 = 6;
                        }
                        c10 = 3;
                        i11 = i16 + 1;
                    case 12:
                        break;
                    case 13:
                        if (charAt2 == '>') {
                            i11 = i16 + 1;
                            i17 = 1;
                        }
                        i11 = i16;
                    default:
                        if (!C4957Bx0.f39047b) {
                            throw new AssertionError(i17);
                        }
                        i11 = i16;
                }
            }
            return;
        }
        if (b10.equals("css")) {
            ((C4957Bx0) this.f52426e.a()).a((String) c8155kr0.a());
        } else if (b10.equals("js")) {
            ((C4957Bx0) this.f52426e.a()).b((String) c8155kr0.a());
        } else {
            if (AbstractC7970jl0.f49340a.contains(b10)) {
                return;
            }
            a((String) c8155kr0.a(), false);
        }
    }

    public final void a(C9800uj0 c9800uj0) {
        String a10;
        if (this.f52425d.f51022c == EnumC8289lg0.XML) {
            String b10 = c9800uj0.b();
            GJ.b(b10, "node.text");
            a(b10, true);
        }
        C8799oj0 a11 = c9800uj0.a();
        GJ.b(a11, "node.element");
        if (GJ.a((Object) a11.getName(), (Object) "rawPathResId")) {
            List list = a11.f51333f;
            GJ.b(list, "element.childList");
            ArrayList arrayList = new ArrayList(AbstractC6785cf.a(list));
            Iterator<E> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((C9800uj0) it.next()).b());
            }
            Iterator<E> it2 = this.f52423b.f44525b.a(EnumC8289lg0.RAW, AbstractC5349Iq0.a(AbstractC6303Ze.a(arrayList, "", null, null, null, 62)).toString()).iterator();
            while (it2.hasNext()) {
                this.f52425d.a((C8623ng0) it2.next());
            }
        }
        List<C8298lj0> list2 = c9800uj0.a().f51332e;
        GJ.b(list2, "node.element.attributeList");
        for (C8298lj0 c8298lj0 : list2) {
            GJ.b(c8298lj0, "it");
            if (GJ.a((Object) c8298lj0.getName(), (Object) "constraint_referenced_ids") && (a10 = c8298lj0.a()) != null) {
                List b11 = AbstractC5349Iq0.b(6, a10, new String[]{DocLint.SEPARATOR});
                ArrayList arrayList2 = new ArrayList(AbstractC6785cf.a(b11));
                Iterator<E> it3 = b11.iterator();
                while (it3.hasNext()) {
                    arrayList2.add(AbstractC5349Iq0.a((String) it3.next()).toString());
                }
                int size = arrayList2.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList2.get(i10);
                    i10++;
                    Iterator<E> it4 = this.f52423b.f44525b.a(EnumC8289lg0.ID, (String) obj).iterator();
                    while (it4.hasNext()) {
                        AbstractC8957pg0.a((C8623ng0) it4.next());
                    }
                }
            }
            if (c8298lj0.b()) {
                C7626hh0 c7626hh0 = c8298lj0.f50082g;
                if (c7626hh0 == null) {
                    c7626hh0 = C7626hh0.f48676e;
                }
                GJ.b(c7626hh0, "attribute.compiledItem");
                a(c7626hh0);
            }
            if (this.f52425d.f51022c == EnumC8289lg0.XML) {
                String a12 = c8298lj0.a();
                GJ.b(a12, "attribute.value");
                a(a12, true);
            }
        }
        List<C9800uj0> list3 = c9800uj0.a().f51333f;
        GJ.b(list3, "node.element.childList");
        for (C9800uj0 c9800uj02 : list3) {
            GJ.b(c9800uj02, "it");
            a(c9800uj02);
        }
    }

    public final void a(String str, boolean z10) {
        C10676zx c10676zx = new C10676zx(new C4898Ax(new C6839cx(new C5874Rs0(new C6839cx(new C5874Rs0(new C9139ql0(new C6783ce0(str, null)), C8283le0.f50020b), true, C8450me0.f50367b), C8617ne0.f51010b), true, C8784oe0.f51305b), new C8951pe0(this), C9806ul0.f52943h));
        while (c10676zx.hasNext()) {
            C8623ng0 c8623ng0 = (C8623ng0) c10676zx.next();
            if (z10) {
                AbstractC8957pg0.a(c8623ng0);
            } else {
                this.f52425d.a(c8623ng0);
            }
        }
    }

    public final void a(C7626hh0 c7626hh0) {
        try {
            int i10 = c7626hh0.f48678b;
            if (i10 == 1) {
                C6311Zh0 b10 = c7626hh0.b();
                GJ.b(b10, "item.ref");
                a(b10);
            } else if (i10 == 5) {
                String a10 = c7626hh0.a().a();
                GJ.b(a10, "item.file.path");
                if (AbstractC5349Iq0.b(a10, "res/")) {
                    C6626bh0 a11 = c7626hh0.a();
                    GJ.b(a11, "item.file");
                    a(a11);
                }
            }
        } catch (IOException unused) {
            this.f52423b.f44524a.a(new C7116ee0(c7626hh0));
        }
    }

    public final void a(C6311Zh0 c6311Zh0) {
        List list;
        int i10 = c6311Zh0.f46323c;
        if (i10 != 0) {
            list = Collections.singletonList((C8623ng0) this.f52423b.f44525b.f49014d.get(Integer.valueOf(i10)));
            GJ.b(list, "singletonList(...)");
        } else {
            String name = c6311Zh0.getName();
            GJ.b(name, "reference.name");
            if (name.length() > 0) {
                C7789ig0 c7789ig0 = this.f52423b.f44525b;
                String str = "@" + c6311Zh0.getName();
                c7789ig0.getClass();
                GJ.c(str, "possibleUrlReference");
                C8456mg0 a10 = C8456mg0.a(str);
                if (a10 != null && !"android".equals(a10.f50378d)) {
                    EnumC8289lg0 enumC8289lg0 = a10.f50376b;
                    String str2 = a10.f50377c;
                    GJ.b(str2, "url.name");
                    list = c7789ig0.a(enumC8289lg0, str2);
                } else {
                    list = C6049Ut.f44892b;
                }
            } else {
                list = C6049Ut.f44892b;
            }
        }
        C6673bx c6673bx = new C6673bx(new C6839cx(AbstractC8972pl0.a((InterfaceC8638nl0) new C7619hf(list)), true, C7283fe0.f48034b));
        while (c6673bx.hasNext()) {
            this.f52425d.a((C8623ng0) c6673bx.next());
        }
    }
}
