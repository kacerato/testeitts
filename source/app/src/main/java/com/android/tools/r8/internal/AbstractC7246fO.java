package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.List;
import java.util.function.Supplier;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public abstract class AbstractC7246fO extends R2 {

    public static final boolean f47953i = true;

    public final B50 f47954c;

    public String f47955d;

    public WN f47956e;

    public final QN f47957f;

    public final C7912jO f47958g;

    public List f47959h;

    public AbstractC7246fO(B50 b50) {
        super(b50);
        this.f47955d = null;
        this.f47956e = null;
        this.f47959h = null;
        this.f47954c = b50;
        this.f47957f = new QN(b50, new Supplier() {
            @Override
            public final Object get() {
                return AbstractC7246fO.this.b();
            }
        });
        this.f47958g = new C7912jO(b50);
    }

    @Override
    public final void a(String str, String str2, String str3) {
        WN wn2;
        if (!"Landroidx/annotation/keep/KeepItemKind;".equals(str2) && !"Lcom/android/tools/r8/keepanno/annotations/KeepItemKind;".equals(str2)) {
            super.a(str, str2, str3);
            throw null;
        }
        str3.getClass();
        char c10 = '\uffff';
        switch (str3.hashCode()) {
            case -1617584468:
                if (str3.equals("ONLY_FIELDS")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1090345114:
                if (str3.equals("ONLY_MEMBERS")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1083692545:
                if (str3.equals("ONLY_METHODS")) {
                    c10 = 2;
                    break;
                }
                break;
            case -581820918:
                if (str3.equals("CLASS_AND_MEMBERS")) {
                    c10 = 3;
                    break;
                }
                break;
            case -575168349:
                if (str3.equals("CLASS_AND_METHODS")) {
                    c10 = 4;
                    break;
                }
                break;
            case 199934856:
                if (str3.equals("CLASS_AND_FIELDS")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1884797701:
                if (str3.equals("ONLY_CLASS")) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                wn2 = WN.f45378e;
                break;
            case 1:
                wn2 = WN.f45376c;
                break;
            case 2:
                wn2 = WN.f45377d;
                break;
            case 3:
                wn2 = WN.f45379f;
                break;
            case 4:
                wn2 = WN.f45380g;
                break;
            case 5:
                wn2 = WN.f45381h;
                break;
            case 6:
                wn2 = WN.f45375b;
                break;
            default:
                wn2 = null;
                break;
        }
        if (wn2 != null) {
            this.f47956e = wn2;
        } else {
            super.a(str, str2, str3);
            throw null;
        }
    }

    public abstract C8914pO b();

    public final MM c() {
        List list = this.f47959h;
        if (list == null) {
            B50 b50 = this.f47954c;
            throw AbstractC10449yd.a(b50, b50, "Item reference not finalized. Missing call to visitEnd()");
        }
        if (list.size() <= 1) {
            return (MM) this.f47959h.get(0);
        }
        B50 b502 = this.f47954c;
        throw AbstractC10449yd.a(b502, b502, "Ambiguous item reference.");
    }

    public boolean d() {
        return !(this instanceof UN);
    }

    @Override
    public void a(Object obj, String str) {
        if (str.equals("memberFromBinding") && (obj instanceof String)) {
            this.f47955d = (String) obj;
        } else {
            if (this.f47957f.a(obj, str) || this.f47958g.a(obj, str)) {
                return;
            }
            super.a(obj, str);
            throw null;
        }
    }

    @Override
    public final Q2 a(String str, String str2) {
        Q2 a10 = this.f47957f.a(str, str2);
        if (a10 != null) {
            return a10;
        }
        Q2 a11 = this.f47958g.a(str, str2);
        if (a11 != null) {
            return a11;
        }
        super.a(str, str2);
        throw null;
    }

    @Override
    public Q2 a(String str) {
        Q2 a10 = this.f47958g.a(str);
        if (a10 != null) {
            return a10;
        }
        super.a(str);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x0155, code lost:
    
        if (com.android.tools.r8.internal.RO.f43888d == r6) goto L66;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a() {
        WO wo;
        if (this.f47955d != null) {
            if (!this.f47957f.a() && !this.f47958g.a()) {
                JO jo = new JO(b().a(this.f47955d));
                if (this.f47956e == null) {
                    this.f47956e = WN.f45376c;
                }
                if (!this.f47956e.a()) {
                    this.f47959h = Collections.singletonList(jo);
                    return;
                }
                UM um2 = b().a(jo).b().f41952b;
                if (!d()) {
                    C8914pO b10 = b();
                    FO fo = (FO) b().f51511a.f42862b.get(um2.f42280a);
                    if (!C8914pO.f51510c && fo == null) {
                        throw new AssertionError();
                    }
                    WM a10 = fo.a();
                    b10.f51511a.getClass();
                    PM pm2 = new PM(SuffixConstants.EXTENSION_CLASS);
                    b10.f51511a.a(pm2, a10);
                    um2 = new UM(pm2);
                }
                this.f47959h = AbstractC7552hC.a(um2, jo);
                return;
            }
            B50 b50 = this.f47954c;
            throw AbstractC10449yd.a(b50, b50, "Cannot define an item explicitly and via a member-binding reference");
        }
        C7912jO c7912jO = this.f47958g;
        C8246lO c8246lO = c7912jO.f49222d;
        if (c8246lO.f49963b != null) {
            if (c8246lO.f49964c == null) {
                c8246lO.f49964c = new VO();
            }
            c8246lO.f49964c.f45039b = c8246lO.f49963b.c();
        }
        if (c8246lO.f49965d.a()) {
            if (c8246lO.f49964c == null) {
                c8246lO.f49964c = new VO();
            }
            c8246lO.f49964c.f45038a = AbstractC10198x40.a((C8415mP) c8246lO.f49965d.getValue());
        }
        if (c8246lO.f49966e.a()) {
            C9917vP c9917vP = (C9917vP) c8246lO.f49966e.getValue();
            if (c8246lO.f49964c == null) {
                c8246lO.f49964c = new VO();
            }
            c8246lO.f49964c.f45040c = RO.a(c9917vP);
        }
        if (c8246lO.f49967f.a()) {
            if (c8246lO.f49964c == null) {
                c8246lO.f49964c = new VO();
            }
            c8246lO.f49964c.f45041d = c8246lO.f49967f.b();
        }
        if (c8246lO.f49968g.f49023a.a()) {
            if (c8246lO.f49964c == null) {
                c8246lO.f49964c = new VO();
            }
            c8246lO.f49964c.f45042e = (UO) c8246lO.f49968g.getValue();
        }
        VO vo = c8246lO.f49964c;
        OO oo = null;
        if (vo != null) {
            ZO zo = vo.f45041d;
            RO ro = vo.f45040c;
            ro.getClass();
            if (RO.f43887c != ro) {
                RO ro2 = vo.f45040c;
                ro2.getClass();
            }
            if (!vo.f45041d.b()) {
                ZO zo2 = vo.f45041d;
                zo2.getClass();
                if (!(zo2 instanceof YO)) {
                    throw new FN("Method constructor pattern must match 'void' type.");
                }
            }
            zo = YO.f45982a;
            wo = new WO(vo.f45038a, vo.f45039b, vo.f45040c, zo, vo.f45042e);
        } else {
            wo = null;
        }
        TN tn2 = c7912jO.f49223e;
        if (tn2.f44456e != null) {
            if (tn2.f44457f == null) {
                tn2.f44457f = new C10082wO();
            }
            tn2.f44457f.f53491b = tn2.f44456e.c();
        }
        if (tn2.f44453b.a()) {
            if (tn2.f44457f == null) {
                tn2.f44457f = new C10082wO();
            }
            tn2.f44457f.f53490a = AbstractC10198x40.a((C8415mP) tn2.f44453b.getValue());
        }
        if (tn2.f44454c.a()) {
            if (tn2.f44457f == null) {
                tn2.f44457f = new C10082wO();
            }
            C10082wO c10082wO = tn2.f44457f;
            C9917vP c9917vP2 = (C9917vP) tn2.f44454c.getValue();
            C9915vO c9915vO = C9915vO.f53087b;
            if (!c9917vP2.b()) {
                c9915vO = new C9915vO(c9917vP2);
            }
            c10082wO.f53492c = c9915vO;
        }
        if (tn2.f44455d.f49023a.a()) {
            if (tn2.f44457f == null) {
                tn2.f44457f = new C10082wO();
            }
            tn2.f44457f.f53493d = (AbstractC10583zO) tn2.f44455d.getValue();
        }
        C10082wO c10082wO2 = tn2.f44457f;
        C10249xO c10249xO = c10082wO2 != null ? new C10249xO(c10082wO2.f53490a, c10082wO2.f53491b, c10082wO2.f53492c, c10082wO2.f53493d) : null;
        if (c7912jO.f49220b != null || c7912jO.f49221c.a()) {
            if (wo == null && c10249xO == null) {
                IO io2 = IO.f41072e;
                GO go = c7912jO.f49220b;
                if (go != null) {
                    io2 = go.c();
                }
                C8415mP c8415mP = (C8415mP) c7912jO.f49221c.getValue();
                AbstractC10198x40 a11 = c8415mP != null ? AbstractC10198x40.a(c8415mP) : C9864v40.f53012b;
                if (a11.b() && io2.a()) {
                    oo = NO.f42575d;
                } else {
                    oo = new NO(a11, io2);
                }
            } else {
                E50 e50 = c7912jO.f49219a;
                e50.getClass();
                throw new FM(e50, "Cannot define common member access as well as field or method pattern");
            }
        } else {
            if (wo != null && c10249xO != null) {
                E50 e502 = c7912jO.f49219a;
                e502.getClass();
                throw new FM(e502, "Cannot define both a field and a method pattern");
            }
            if (wo != null) {
                oo = wo;
            } else if (c10249xO != null) {
                oo = c10249xO;
            }
        }
        if (this.f47956e == null) {
            if (oo == null) {
                this.f47956e = WN.f45375b;
            } else if (oo.h()) {
                this.f47956e = WN.f45377d;
            } else if (oo.f()) {
                this.f47956e = WN.f45378e;
            } else if (oo.g()) {
                this.f47956e = WN.f45376c;
            } else if (!f47953i) {
                throw new AssertionError();
            }
        }
        WN wn2 = this.f47956e;
        WN wn3 = WN.f45375b;
        if (wn2.equals(wn3)) {
            if (!this.f47958g.a()) {
                this.f47959h = Collections.singletonList(this.f47957f.c());
                return;
            }
            B50 b502 = this.f47954c;
            throw AbstractC10449yd.a(b502, b502, "Item pattern for members is incompatible with kind " + ((Object) this.f47956e));
        }
        boolean z10 = f47953i;
        if (!z10 && this.f47956e.equals(wn3)) {
            throw new AssertionError();
        }
        if (oo == null) {
            oo = NO.f42575d;
        }
        WN wn4 = this.f47956e;
        if ((wn4.equals(WN.f45377d) || wn4.equals(WN.f45380g)) && !oo.h()) {
            if (oo.g()) {
                C9864v40 c9864v40 = C9864v40.f53012b;
                QO qo = QO.f43567k;
                RO ro3 = RO.f43886b;
                ZO zo3 = XO.f45678b;
                SO so = SO.f44199a;
                if (!VO.f45037f && !oo.g()) {
                    throw new AssertionError();
                }
                QO c10 = ((PO) new PO().a(oo.d())).c();
                ro3.getClass();
                if (RO.f43887c == ro3 || RO.f43888d == ro3) {
                    if (zo3.b()) {
                        zo3 = YO.f45982a;
                    } else {
                        throw new FN("Method constructor pattern must match 'void' type.");
                    }
                }
                oo = new WO(c9864v40, c10, ro3, zo3, so);
            } else {
                if (!z10 && !oo.f()) {
                    throw new AssertionError();
                }
                B50 b503 = this.f47954c;
                throw AbstractC10449yd.a(b503, b503, "Item pattern for fields is incompatible with kind " + ((Object) this.f47956e));
            }
        }
        WN wn5 = this.f47956e;
        if ((wn5.equals(WN.f45378e) || wn5.equals(WN.f45381h)) && !oo.f()) {
            if (oo.g()) {
                C9864v40 c9864v402 = C9864v40.f53012b;
                C9748uO c9748uO = C9748uO.f52842h;
                C9915vO c9915vO2 = C9915vO.f53087b;
                C10416yO c10416yO = C10416yO.f54005b;
                if (!C10082wO.f53489e && !oo.g()) {
                    throw new AssertionError();
                }
                oo = new C10249xO(c9864v402, ((C9581tO) new C9581tO().a(oo.d())).c(), c9915vO2, c10416yO);
            } else {
                if (!z10 && !oo.h()) {
                    throw new AssertionError();
                }
                B50 b504 = this.f47954c;
                throw AbstractC10449yd.a(b504, b504, "Item pattern for methods is incompatible with kind " + ((Object) this.f47956e));
            }
        }
        int i10 = AbstractC7552hC.f48487c;
        C7051eC c7051eC = new C7051eC();
        UM c11 = this.f47957f.c();
        C8914pO b11 = b();
        NO no = NO.f42575d;
        if (c11 != null) {
            LO lo = new LO(c11, oo);
            b11.f51511a.getClass();
            PM pm3 = new PM("MEMBER");
            b11.f51511a.a(pm3, lo);
            c7051eC.a(new JO(pm3));
            if (this.f47956e.a()) {
                if (!d()) {
                    C8914pO b12 = b();
                    FO fo2 = (FO) b().f51511a.f42862b.get(c11.f42280a);
                    if (!C8914pO.f51510c && fo2 == null) {
                        throw new AssertionError();
                    }
                    WM a12 = fo2.a();
                    b12.f51511a.getClass();
                    PM pm4 = new PM(SuffixConstants.EXTENSION_CLASS);
                    b12.f51511a.a(pm4, a12);
                    c11 = new UM(pm4);
                }
                c7051eC.a(c11);
            }
            this.f47959h = c7051eC.a();
            return;
        }
        throw new FN("Invalid attempt to build a member pattern without a class reference");
    }
}
