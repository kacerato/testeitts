package hi;

import oh.AbstractC14506b;
import oh.AbstractC14536q;
import oh.AbstractC14545v;
import oh.C14537q0;
import oh.C14554z0;
import oh.InterfaceC14514f;
import oh.M0;
import oh.P0;

public class C13511x extends AbstractC14545v implements InterfaceC14514f {

    public static final int f90967d = 0;

    public static final int f90968e = 1;

    public static final int f90969f = 2;

    public static final int f90970g = 3;

    public static final int f90971h = 200;

    public int f90972b;

    public oh.J f90973c;

    public C13511x(int i10, String str) {
        str = str.length() > 200 ? str.substring(0, 200) : str;
        this.f90972b = i10;
        this.f90973c = i10 != 0 ? i10 != 1 ? i10 != 2 ? i10 != 3 ? new M0(str) : new P0(str) : new M0(str) : new C14537q0(str) : new C14554z0(str);
    }

    public static C13511x u(Object obj) {
        if (obj instanceof oh.J) {
            return new C13511x((oh.J) obj);
        }
        if (obj == null || (obj instanceof C13511x)) {
            return (C13511x) obj;
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static C13511x v(oh.M m10, boolean z10) {
        if (z10) {
            return u(m10.O());
        }
        throw new IllegalArgumentException("choice item must be explicitly tagged");
    }

    public String getString() {
        return this.f90973c.getString();
    }

    @Override
    public oh.B r() {
        return (oh.B) this.f90973c;
    }

    public C13511x(String str) {
        str = str.length() > 200 ? str.substring(0, 200) : str;
        this.f90972b = 2;
        this.f90973c = new M0(str);
    }

    public C13511x(oh.J j10) {
        int i10;
        this.f90973c = j10;
        if (j10 instanceof oh.Q) {
            i10 = 2;
        } else if (j10 instanceof AbstractC14506b) {
            i10 = 1;
        } else if (j10 instanceof AbstractC14536q) {
            i10 = 0;
        } else {
            if (!(j10 instanceof oh.X)) {
                throw new IllegalArgumentException("unknown STRING type in DisplayText");
            }
            i10 = 3;
        }
        this.f90972b = i10;
    }
}
