package com.android.tools.r8.internal;

import android.text.style.SuggestionSpan;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;

public abstract class AbstractC9617te<T extends C4477h> {

    public static final boolean f52645d = true;

    public final C4798y f52646a;

    public final C4724u1 f52647b;

    public final C8570nJ f52648c;

    public AbstractC9617te(C4798y c4798y) {
        this.f52646a = c4798y;
        this.f52647b = c4798y.b();
        this.f52648c = c4798y.E();
    }

    public abstract String a();

    public abstract boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX);

    public InterfaceC10118we b() {
        return InterfaceC10118we.f53547a;
    }

    public final InterfaceC10118we a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        if (!a(c7215fB, abstractC6931dX)) {
            return b();
        }
        boolean z10 = f52645d;
        if (!z10) {
            a(c7215fB, !(this instanceof C8328lt0), SuggestionSpan.SUGGESTION_SPAN_PICKED_BEFORE);
        }
        InterfaceC10118we b10 = b(c7215fB, abstractC6931dX, c5035Df);
        if (!z10 && !b10.a().a()) {
            a(c7215fB, !(this instanceof C8328lt0), SuggestionSpan.SUGGESTION_SPAN_PICKED_AFTER);
        }
        return b10;
    }

    public final InterfaceC10118we a(final C7215fB c7215fB, final AbstractC6931dX abstractC6931dX, final C5035Df c5035Df, C8659ns0 c8659ns0) {
        return (InterfaceC10118we) c8659ns0.a(a(), new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return AbstractC9617te.this.a(c7215fB, abstractC6931dX, c5035Df);
            }
        });
    }

    public InterfaceC10118we b(C7215fB c7215fB) {
        throw new C5417Jv0("Should Override or use overload");
    }

    public final InterfaceC10118we a(C7215fB c7215fB) {
        return a(c7215fB, null, null);
    }

    public InterfaceC10118we b(C7215fB c7215fB, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        return b(c7215fB);
    }

    @Deprecated
    public final InterfaceC10118we a(final C7215fB c7215fB, C8659ns0 c8659ns0) {
        return (InterfaceC10118we) c8659ns0.a(a(), new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return AbstractC9617te.this.a(c7215fB);
            }
        });
    }

    public void a(C7215fB c7215fB, boolean z10, String str) {
        boolean z11;
        String str2 = "Invalid code " + str + " " + a();
        try {
            if (z10) {
                z11 = c7215fB.b(this.f52646a);
            } else {
                c7215fB.b(false);
                z11 = true;
            }
            if (!f52645d && !z11) {
                throw new AssertionError((Object) str2);
            }
        } catch (AssertionError e10) {
            throw new AssertionError(str2, e10);
        }
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        return this.f52648c.f50690i1 || h52.getHolder().I1();
    }
}
