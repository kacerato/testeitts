package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class C5106El {

    public final Set f40007a;

    public final HashMap f40009c = new HashMap();

    public final boolean f40008b = true;

    public C5106El(C5743Pl[] c5743PlArr) {
        this.f40007a = Collections.newSetFromMap(new IdentityHashMap(c5743PlArr.length));
        for (C5743Pl c5743Pl : c5743PlArr) {
            this.f40007a.add(c5743Pl);
            a(c5743Pl);
        }
        for (C5743Pl c5743Pl2 : this.f40007a) {
            try {
                a(c5743Pl2, c5743Pl2.f43357b.a());
            } catch (C5164Fl e10) {
                throw new AssertionError(e10);
            }
        }
    }

    public final void a(C5743Pl c5743Pl) {
        for (C5743Pl c5743Pl2 : Collections.unmodifiableList(Arrays.asList(c5743Pl.f43362g))) {
            if (this.f40007a.add(c5743Pl2)) {
                a(c5743Pl2);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x002a, code lost:
    
        if ((r0 instanceof com.android.tools.r8.internal.C5975Tl) != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC5801Ql a(int i10, String str) {
        AbstractC5801Ql abstractC5801Ql = (AbstractC5801Ql) this.f40009c.get(str);
        if (abstractC5801Ql != null) {
            if (i10 == 3 || (i10 == 1 && ((abstractC5801Ql instanceof C4990Cl) || (abstractC5801Ql instanceof C5280Hl)))) {
                return abstractC5801Ql;
            }
            if (i10 == 2) {
                if (!(abstractC5801Ql instanceof C4990Cl)) {
                    if (!(abstractC5801Ql instanceof C5280Hl)) {
                        if (!(abstractC5801Ql instanceof C5048Dl)) {
                        }
                    }
                }
                return abstractC5801Ql;
            }
        }
        Iterator it = this.f40007a.iterator();
        while (it.hasNext()) {
            AbstractC5801Ql abstractC5801Ql2 = (AbstractC5801Ql) ((C5743Pl) it.next()).f43363h.f40009c.get(str);
            if (abstractC5801Ql2 != null) {
                if (i10 == 3 || (i10 == 1 && ((abstractC5801Ql2 instanceof C4990Cl) || (abstractC5801Ql2 instanceof C5280Hl)))) {
                    return abstractC5801Ql2;
                }
                if (i10 == 2) {
                    if (!(abstractC5801Ql2 instanceof C4990Cl) && !(abstractC5801Ql2 instanceof C5280Hl) && !(abstractC5801Ql2 instanceof C5048Dl) && !(abstractC5801Ql2 instanceof C5975Tl)) {
                    }
                    return abstractC5801Ql2;
                }
                continue;
            }
        }
        return null;
    }

    public final AbstractC5801Ql a(AbstractC5801Ql abstractC5801Ql, String str) {
        AbstractC5801Ql a10;
        String str2;
        if (str.startsWith(".")) {
            str2 = str.substring(1);
            a10 = a(1, str2);
        } else {
            int indexOf = str.indexOf(46);
            String substring = indexOf == -1 ? str : str.substring(0, indexOf);
            StringBuilder sb2 = new StringBuilder(abstractC5801Ql.b());
            while (true) {
                int lastIndexOf = sb2.lastIndexOf(".");
                if (lastIndexOf == -1) {
                    a10 = a(1, str);
                    str2 = str;
                    break;
                }
                int i10 = lastIndexOf + 1;
                sb2.setLength(i10);
                sb2.append(substring);
                AbstractC5801Ql a11 = a(2, sb2.toString());
                if (a11 != null) {
                    if (indexOf != -1) {
                        sb2.setLength(i10);
                        sb2.append(str);
                        a10 = a(1, sb2.toString());
                    } else {
                        a10 = a11;
                    }
                    str2 = sb2.toString();
                } else {
                    sb2.setLength(lastIndexOf);
                }
            }
        }
        if (a10 != null) {
            return a10;
        }
        if (this.f40008b) {
            AbstractC6033Ul.f44855a.warning("The descriptor for message type \"" + str + "\" can not be found and a placeholder is created for it");
            C4990Cl c4990Cl = new C4990Cl(str2);
            this.f40007a.add(c4990Cl.f39341d);
            return c4990Cl;
        }
        throw new C5164Fl(abstractC5801Ql, AbstractC4917Be0.a(JavadocConstants.ANCHOR_PREFIX_END, str, "\" is not defined."));
    }

    public final void a(C5743Pl c5743Pl, String str) {
        String substring;
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == -1) {
            substring = str;
        } else {
            a(c5743Pl, str.substring(0, lastIndexOf));
            substring = str.substring(lastIndexOf + 1);
        }
        AbstractC5801Ql abstractC5801Ql = (AbstractC5801Ql) this.f40009c.put(str, new C5048Dl(substring, str, c5743Pl));
        if (abstractC5801Ql != null) {
            this.f40009c.put(str, abstractC5801Ql);
            if (abstractC5801Ql instanceof C5048Dl) {
                return;
            }
            throw new C5164Fl(c5743Pl, JavadocConstants.ANCHOR_PREFIX_END + substring + "\" is already defined (as something other than a package) in file \"" + abstractC5801Ql.a().f43357b.getName() + "\".");
        }
    }

    public final void a(AbstractC5801Ql abstractC5801Ql) {
        String c10 = abstractC5801Ql.c();
        if (c10.length() != 0) {
            for (int i10 = 0; i10 < c10.length(); i10++) {
                char charAt = c10.charAt(i10);
                if (('a' > charAt || charAt > 'z') && (('A' > charAt || charAt > 'Z') && charAt != '_' && ('0' > charAt || charAt > '9' || i10 <= 0))) {
                    throw new C5164Fl(abstractC5801Ql, AbstractC4917Be0.a(JavadocConstants.ANCHOR_PREFIX_END, c10, "\" is not a valid identifier."));
                }
            }
            String b10 = abstractC5801Ql.b();
            AbstractC5801Ql abstractC5801Ql2 = (AbstractC5801Ql) this.f40009c.put(b10, abstractC5801Ql);
            if (abstractC5801Ql2 != null) {
                this.f40009c.put(b10, abstractC5801Ql2);
                if (abstractC5801Ql.a() == abstractC5801Ql2.a()) {
                    int lastIndexOf = b10.lastIndexOf(46);
                    if (lastIndexOf == -1) {
                        throw new C5164Fl(abstractC5801Ql, AbstractC4917Be0.a(JavadocConstants.ANCHOR_PREFIX_END, b10, "\" is already defined."));
                    }
                    throw new C5164Fl(abstractC5801Ql, JavadocConstants.ANCHOR_PREFIX_END + b10.substring(lastIndexOf + 1) + "\" is already defined in \"" + b10.substring(0, lastIndexOf) + "\".");
                }
                throw new C5164Fl(abstractC5801Ql, JavadocConstants.ANCHOR_PREFIX_END + b10 + "\" is already defined in file \"" + abstractC5801Ql2.a().f43357b.getName() + "\".");
            }
            return;
        }
        throw new C5164Fl(abstractC5801Ql, "Missing name.");
    }
}
