package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Spliterators;
import java.util.stream.StreamSupport;

public class C5721Pc {

    public static final C5605Nc f43276e = new C5605Nc();

    public static final boolean f43277f = true;

    public final C4798y f43278a;

    public final C7215fB f43279b;

    public C6993dt f43280c;

    public int f43281d;

    public C5721Pc() {
        this.f43280c = null;
        this.f43281d = -1;
        this.f43278a = null;
        this.f43279b = null;
    }

    public boolean a(com.android.tools.r8.graph.M2 m22, C7405gK c7405gK) {
        int i10;
        AbstractC10561zE next;
        com.android.tools.r8.graph.H5 j10 = this.f43279b.j();
        W5 b10 = c7405gK.b();
        Y5 it = b10.l().iterator();
        while (it.hasNext() && (next = it.next()) != c7405gK) {
            if (next.a(m22, j10, this.f43278a, 2, 1)) {
                return true;
            }
        }
        if (this.f43280c == null) {
            this.f43280c = new C6993dt(this.f43279b, 2);
        }
        for (W5 w52 : this.f43280c.a(b10)) {
            if (w52.z() && w52.h() != null) {
                if (this.f43281d < 0) {
                    int y10 = this.f43279b.y();
                    this.f43281d = y10;
                    this.f43279b.a(b10, y10);
                }
                N8 j11 = w52.j();
                j11.getClass();
                int i11 = 0;
                while (i11 < j11.size()) {
                    Object obj = j11.f42511c.get(i11);
                    i11++;
                    if (((W5) obj).a(this.f43281d)) {
                        i10 = 2;
                        break;
                    }
                }
            }
            i10 = 1;
            AE H10 = w52.H();
            while (true) {
                if (H10.hasNext()) {
                    AbstractC10561zE next2 = H10.next();
                    if (next2.a(m22, j10, this.f43278a, 2, i10)) {
                        return true;
                    }
                    if (w52.z() && next2.o()) {
                        if (!f43277f && !StreamSupport.stream(Spliterators.spliteratorUnknownSize(H10, 0), false).noneMatch(new C6920dR0())) {
                            throw new AssertionError();
                        }
                    }
                }
            }
        }
        return false;
    }

    public C5721Pc(C4798y c4798y, C7215fB c7215fB) {
        this.f43280c = null;
        this.f43281d = -1;
        this.f43278a = c4798y;
        this.f43279b = c7215fB;
    }
}
