package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C7051eC;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.position.TextPosition;
import com.android.tools.r8.position.TextRange;
import com.bumptech.glide.load.engine.GlideException;
import eg.C13099L;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import org.apache.commons.math3.geometry.VectorFormat;
import w2.C15883c;

public abstract class AbstractC11198f3 {

    public static final boolean f57276n = true;

    public final Origin f57277a;

    public final Position f57278b;

    public final String f57279c;

    public final List f57280d;

    public final S2 f57281e;

    public final S2 f57282f;

    public final boolean f57283g;

    public final EnumC11299l3 f57284h;

    public final AbstractC11147c3 f57285i;

    public final List f57286j;

    public final AbstractC11250i4 f57287k;

    public final boolean f57288l;

    public final List f57289m;

    public AbstractC11198f3(Origin origin, Position position, String str, List list, S2 s22, S2 s23, boolean z10, EnumC11299l3 enumC11299l3, AbstractC11147c3 abstractC11147c3, List list2, AbstractC11250i4 abstractC11250i4, boolean z11, List list3) {
        boolean z12 = f57276n;
        if (!z12 && enumC11299l3 == null) {
            throw new AssertionError();
        }
        if (!z12 && origin == null) {
            throw new AssertionError();
        }
        if (!z12 && position == null) {
            throw new AssertionError();
        }
        if (!z12 && str == null && origin == Origin.unknown()) {
            throw new AssertionError();
        }
        this.f57277a = origin;
        this.f57278b = position;
        this.f57279c = str;
        this.f57280d = list;
        this.f57281e = s22;
        this.f57282f = s23;
        this.f57283g = z10;
        this.f57284h = enumC11299l3;
        this.f57285i = abstractC11147c3;
        this.f57286j = list2;
        this.f57287k = abstractC11250i4;
        this.f57288l = z11;
        this.f57289m = list3;
    }

    public S2 a() {
        return this.f57281e;
    }

    public List<AbstractC11250i4> b() {
        return this.f57280d;
    }

    public AbstractC11147c3 c() {
        return this.f57285i;
    }

    public EnumC11299l3 d() {
        return this.f57284h;
    }

    public AbstractC11250i4 e() {
        return this.f57287k;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AbstractC11198f3)) {
            return false;
        }
        AbstractC11198f3 abstractC11198f3 = (AbstractC11198f3) obj;
        if (this.f57283g == abstractC11198f3.f57283g && this.f57288l == abstractC11198f3.f57288l && Objects.equals(this.f57280d, abstractC11198f3.f57280d) && this.f57281e.equals(abstractC11198f3.f57281e) && this.f57282f.equals(abstractC11198f3.f57282f) && this.f57284h == abstractC11198f3.f57284h && this.f57285i.equals(abstractC11198f3.f57285i) && Objects.equals(this.f57286j, abstractC11198f3.f57286j) && Objects.equals(this.f57287k, abstractC11198f3.f57287k)) {
            return this.f57289m.equals(abstractC11198f3.f57289m);
        }
        return false;
    }

    public boolean f() {
        return this.f57288l;
    }

    public List<R3> g() {
        return this.f57289m;
    }

    public S2 h() {
        return this.f57282f;
    }

    public int hashCode() {
        int hashCode = ((((((this.f57280d.hashCode() * 3) + this.f57281e.f56965a) * 3) + this.f57282f.f56965a) * 3) + (this.f57283g ? 1 : 0)) * 3;
        EnumC11299l3 enumC11299l3 = this.f57284h;
        int hashCode2 = (this.f57286j.hashCode() + ((this.f57285i.hashCode() + ((hashCode + (enumC11299l3 != null ? enumC11299l3.hashCode() : 0)) * 3)) * 3)) * 3;
        AbstractC11250i4 abstractC11250i4 = this.f57287k;
        return this.f57289m.hashCode() + ((((hashCode2 + (abstractC11250i4 != null ? abstractC11250i4.hashCode() : 0)) * 3) + (this.f57288l ? 1 : 0)) * 3);
    }

    public Origin i() {
        return this.f57277a;
    }

    public String j() {
        return this.f57279c;
    }

    public final boolean k() {
        return this.f57287k != null;
    }

    public String toString() {
        return a(new StringBuilder()).toString();
    }

    public static abstract class a<C extends AbstractC11198f3, B extends a<C, B>> {

        public static final boolean f57290o = true;

        public Origin f57291a;

        public Position f57292b;

        public TextPosition f57293c;

        public String f57294d;

        public final C7051eC f57295e;

        public final S2 f57296f;

        public S2 f57297g;

        public boolean f57298h;

        public EnumC11299l3 f57299i;

        public AbstractC11147c3 f57300j;

        public final C7051eC f57301k;

        public AbstractC11250i4 f57302l;

        public boolean f57303m;

        public List f57304n;

        public a() {
            Origin unknown = Origin.unknown();
            Position position = Position.UNKNOWN;
            int i10 = AbstractC7552hC.f48487c;
            this.f57295e = new C7051eC();
            this.f57296f = new S2();
            this.f57297g = new S2();
            this.f57298h = false;
            this.f57301k = new C7051eC();
            this.f57303m = false;
            this.f57304n = new LinkedList();
            this.f57291a = unknown;
            this.f57292b = position;
        }

        public B a(String str) {
            this.f57294d = str;
            return (B) c();
        }

        public abstract AbstractC11198f3 a();

        public final Position b() {
            Position position = this.f57292b;
            if (position == null) {
                return Position.UNKNOWN;
            }
            TextPosition textPosition = this.f57293c;
            return (textPosition == null || !(position instanceof TextPosition)) ? position : new TextRange((TextPosition) position, textPosition);
        }

        public abstract a c();

        public B a(List<R3> list) {
            this.f57304n = list;
            return (B) c();
        }

        public B a(AbstractC11147c3 abstractC11147c3) {
            this.f57300j = abstractC11147c3;
            return (B) c();
        }

        public B a(EnumC11299l3 enumC11299l3) {
            this.f57299i = enumC11299l3;
            return (B) c();
        }
    }

    public StringBuilder a(final StringBuilder sb2) {
        List list = this.f57280d;
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            sb2.append('@');
            sb2.append(it.next());
            while (it.hasNext()) {
                sb2.append(C13099L.f85621a);
                sb2.append(it.next());
            }
            sb2.append(C15883c.f126249O);
        }
        boolean a10 = C10656zq0.a(sb2, (String) null, this.f57281e);
        boolean a11 = C10656zq0.a(sb2, "!", this.f57282f.toString().replace(" ", " !"));
        if (a10 || a11) {
            sb2.append(C15883c.f126249O);
        }
        if (this.f57283g) {
            sb2.append('!');
        }
        sb2.append((Object) this.f57284h);
        sb2.append(C15883c.f126249O);
        this.f57285i.a(sb2);
        if (k()) {
            sb2.append(C15883c.f126249O);
            sb2.append(this.f57288l ? "extends" : "implements");
            sb2.append(C15883c.f126249O);
            List list2 = this.f57286j;
            if (!list2.isEmpty()) {
                Iterator it2 = list2.iterator();
                sb2.append('@');
                sb2.append(it2.next());
                while (it2.hasNext()) {
                    sb2.append(C13099L.f85621a);
                    sb2.append(it2.next());
                }
                sb2.append(C15883c.f126249O);
            }
            sb2.append((Object) this.f57287k);
        }
        if (!this.f57289m.isEmpty()) {
            sb2.append(" {");
            sb2.append(System.lineSeparator());
            this.f57289m.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    AbstractC11198f3.a(StringBuilder.this, (R3) obj);
                }
            });
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
        }
        return sb2;
    }

    public static void a(StringBuilder sb2, R3 r32) {
        sb2.append(GlideException.a.f59088e);
        sb2.append((Object) r32);
        sb2.append(";");
        sb2.append(System.lineSeparator());
    }
}
