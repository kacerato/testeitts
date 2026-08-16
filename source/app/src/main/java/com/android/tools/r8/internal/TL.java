package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class TL extends AbstractC5827Qy implements InterfaceC8262lW {

    public int f44436c;

    public Object f44437d = "";

    public InterfaceC10422yR f44438e;

    public List f44439f;

    public InterfaceC10422yR f44440g;

    public InterfaceC10422yR f44441h;

    public List f44442i;

    public List f44443j;

    public TL() {
        C5185Fv0 c5185Fv0 = C10088wR.f53502c;
        this.f44438e = c5185Fv0;
        List list = Collections.EMPTY_LIST;
        this.f44439f = list;
        this.f44440g = c5185Fv0;
        this.f44441h = c5185Fv0;
        this.f44442i = list;
        this.f44443j = list;
    }

    @Override
    public final TL a(UL ul2) {
        if (ul2 == UL.f44725p) {
            return this;
        }
        if ((ul2.f44728c & 1) == 1) {
            this.f44436c |= 1;
            this.f44437d = ul2.f44729d;
        }
        if (!ul2.f44730e.isEmpty()) {
            if (this.f44438e.isEmpty()) {
                this.f44438e = ul2.f44730e;
                this.f44436c &= -3;
            } else {
                if ((this.f44436c & 2) != 2) {
                    this.f44438e = new C10088wR(this.f44438e);
                    this.f44436c |= 2;
                }
                this.f44438e.addAll(ul2.f44730e);
            }
        }
        if (!ul2.f44731f.isEmpty()) {
            if (this.f44439f.isEmpty()) {
                this.f44439f = ul2.f44731f;
                this.f44436c &= -5;
            } else {
                if ((this.f44436c & 4) != 4) {
                    this.f44439f = new ArrayList(this.f44439f);
                    this.f44436c |= 4;
                }
                this.f44439f.addAll(ul2.f44731f);
            }
        }
        if (!ul2.f44733h.isEmpty()) {
            if (this.f44440g.isEmpty()) {
                this.f44440g = ul2.f44733h;
                this.f44436c &= -9;
            } else {
                if ((this.f44436c & 8) != 8) {
                    this.f44440g = new C10088wR(this.f44440g);
                    this.f44436c |= 8;
                }
                this.f44440g.addAll(ul2.f44733h);
            }
        }
        if (!ul2.f44734i.isEmpty()) {
            if (this.f44441h.isEmpty()) {
                this.f44441h = ul2.f44734i;
                this.f44436c &= -17;
            } else {
                if ((this.f44436c & 16) != 16) {
                    this.f44441h = new C10088wR(this.f44441h);
                    this.f44436c |= 16;
                }
                this.f44441h.addAll(ul2.f44734i);
            }
        }
        if (!ul2.f44735j.isEmpty()) {
            if (this.f44442i.isEmpty()) {
                this.f44442i = ul2.f44735j;
                this.f44436c &= -33;
            } else {
                if ((this.f44436c & 32) != 32) {
                    this.f44442i = new ArrayList(this.f44442i);
                    this.f44436c |= 32;
                }
                this.f44442i.addAll(ul2.f44735j);
            }
        }
        if (!ul2.f44737l.isEmpty()) {
            if (this.f44443j.isEmpty()) {
                this.f44443j = ul2.f44737l;
                this.f44436c &= -65;
            } else {
                if ((this.f44436c & 64) != 64) {
                    this.f44443j = new ArrayList(this.f44443j);
                    this.f44436c |= 64;
                }
                this.f44443j.addAll(ul2.f44737l);
            }
        }
        this.f43766b = this.f43766b.a(ul2.f44727b);
        return this;
    }

    public final UL c() {
        UL ul2 = new UL(this);
        int i10 = this.f44436c;
        int i11 = (i10 & 1) != 1 ? 0 : 1;
        ul2.f44729d = this.f44437d;
        if ((i10 & 2) == 2) {
            this.f44438e = this.f44438e.e();
            this.f44436c &= -3;
        }
        ul2.f44730e = this.f44438e;
        if ((this.f44436c & 4) == 4) {
            this.f44439f = Collections.unmodifiableList(this.f44439f);
            this.f44436c &= -5;
        }
        ul2.f44731f = this.f44439f;
        if ((this.f44436c & 8) == 8) {
            this.f44440g = this.f44440g.e();
            this.f44436c &= -9;
        }
        ul2.f44733h = this.f44440g;
        if ((this.f44436c & 16) == 16) {
            this.f44441h = this.f44441h.e();
            this.f44436c &= -17;
        }
        ul2.f44734i = this.f44441h;
        if ((this.f44436c & 32) == 32) {
            this.f44442i = Collections.unmodifiableList(this.f44442i);
            this.f44436c &= -33;
        }
        ul2.f44735j = this.f44442i;
        if ((this.f44436c & 64) == 64) {
            this.f44443j = Collections.unmodifiableList(this.f44443j);
            this.f44436c &= -65;
        }
        ul2.f44737l = this.f44443j;
        ul2.f44728c = i11;
        return ul2;
    }

    public final Object clone() {
        return new TL().a(c());
    }

    @Override
    public final O0 a() {
        UL c10 = c();
        if (c10.isInitialized()) {
            return c10;
        }
        throw new C6834cv0();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x001b  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC5827Qy a(C4858Ae c4858Ae, C10503yv c10503yv) {
        UL ul2 = null;
        try {
            try {
                UL.f44726q.getClass();
                a(new UL(c4858Ae));
                return this;
            } catch (LJ e10) {
                UL ul3 = (UL) e10.f41938b;
                try {
                    throw e10;
                } catch (Throwable th2) {
                    th = th2;
                    ul2 = ul3;
                    if (ul2 != null) {
                        a(ul2);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (ul2 != null) {
            }
            throw th;
        }
    }
}
