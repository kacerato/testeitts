package com.android.tools.r8.ir.desugar.desugaredlibrary.lint;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.ir.desugar.desugaredlibrary.lint.m;

public final class C10691g extends AbstractC10692h {

    public final l f54647g;

    public boolean f54648h;

    public boolean f54649i;

    public boolean f54650j;

    public boolean f54651k;

    public C10691g(M2 m22, l lVar) {
        super(m22);
        this.f54648h = false;
        this.f54649i = false;
        this.f54650j = false;
        this.f54651k = false;
        this.f54647g = lVar;
    }

    public final String a(m.c cVar) {
        if (cVar == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        if (cVar.f54682e) {
            sb2.append("<sup>1</sup>");
            this.f54648h = true;
        }
        if (cVar.f54683f) {
            sb2.append("<sup>2</sup>");
            this.f54649i = true;
        }
        if (cVar.f54675a) {
            sb2.append("<sup>3</sup>");
            this.f54650j = true;
        }
        if (cVar.f54684g) {
            sb2.append("<sup>4</sup>");
            this.f54651k = true;
        }
        return sb2.toString();
    }

    /* JADX WARN: Type inference failed for: r3v31, types: [java.util.AbstractCollection, java.util.List] */
    public final String toString() {
        String sb2;
        C10690f c10690f = new C10690f();
        c10690f.g("tr");
        if (this.f54657e.length() > 0) {
            c10690f.e(this.f54657e);
        }
        c10690f.c(a(this.f54656d));
        c10690f.g("td").g("ul style=\"list-style-position:inside; list-style-type: none !important; margin-left:0px;padding-left:0px !important;\"");
        if (!this.f54653a.isEmpty()) {
            for (C4460g1 c4460g1 : this.f54653a.o()) {
                String a10 = AbstractC10692h.a(c4460g1.f37202g);
                M2 m22 = c4460g1.getReference().f37449i;
                String j02 = m22.P0() ? m22.j0() : a(m22.j0());
                L2 l22 = c4460g1.getReference().f38298g;
                m.a aVar = (m.a) this.f54653a.get(c4460g1);
                if (aVar == null) {
                    sb2 = "";
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    if (aVar.f54675a) {
                        sb3.append("<sup>3</sup>");
                        this.f54650j = true;
                    }
                    sb2 = sb3.toString();
                }
                c10690f.a(a10 + " " + j02 + " " + ((Object) l22) + sb2);
            }
        }
        if (!this.f54654b.isEmpty()) {
            for (C4516j1 c4516j1 : this.f54654b.o()) {
                c10690f.b(AbstractC10692h.a(c4516j1.f37314g) + " " + a(this.f54656d) + a(c4516j1) + a((m.c) this.f54654b.get(c4516j1)));
            }
        }
        if (!this.f54655c.isEmpty()) {
            for (C4516j1 c4516j12 : this.f54655c.o()) {
                String a11 = AbstractC10692h.a(c4516j12.f37314g);
                M2 m23 = c4516j12.getReference().f36127i.f36440e;
                String j03 = m23.P0() ? m23.j0() : a(m23.j0());
                L2 l23 = c4516j12.getReference().f38298g;
                c10690f.b(a11 + " " + j03 + " " + ((Object) l23) + a(c4516j12) + a((m.c) this.f54655c.get(c4516j12)));
            }
        }
        c10690f.f("ul").f("td");
        StringBuilder sb4 = new StringBuilder();
        if (this.f54647g.f54667b) {
            sb4.append("Fully implemented class.<br>&nbsp;");
        }
        if (this.f54647g.f54666a) {
            sb4.append("Additional methods on existing class.<br>&nbsp;");
        }
        if (this.f54648h) {
            sb4.append("<sup>1</sup> Supported only on devices which API level is 21 or higher.<br>&nbsp;");
        }
        if (this.f54649i) {
            sb4.append("<sup>2</sup> Not present in Android ");
            sb4.append((Object) AbstractC10685a.f54638g);
            sb4.append(" (May not resolve at compilation).<br>&nbsp;");
        }
        if (this.f54650j) {
            sb4.append("<sup>3</sup> Not supported at all minSDK levels.<br>&nbsp;");
        }
        if (this.f54651k) {
            sb4.append("<sup>4</sup> Also supported with covariant return type.<br>&nbsp;");
        }
        if (!this.f54647g.f54668c.isEmpty()) {
            sb4.append("Some fields (");
            sb4.append(this.f54647g.f54668c.size());
            sb4.append(") present in Android ");
            sb4.append((Object) AbstractC10685a.f54638g);
            sb4.append(" are not supported.<br>&nbsp;");
        }
        if (!this.f54647g.f54669d.isEmpty()) {
            sb4.append("Some methods (");
            sb4.append(this.f54647g.f54669d.size());
            sb4.append(") present in Android ");
            sb4.append((Object) AbstractC10685a.f54638g);
            sb4.append(" are not supported.");
        }
        c10690f.d(sb4.toString());
        c10690f.f("tr");
        return c10690f.f54659b.toString();
    }
}
