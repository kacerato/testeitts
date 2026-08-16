package com.android.tools.r8.internal;

public class C9346rz implements InterfaceC8011jz {

    public final Class f52234a;

    public final C5685Ol f52235b;

    public final boolean f52236c;

    public final boolean f52237d;

    public final C9180qz f52238e;

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0041, code lost:
    
        if (r11.f43025k == null) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C9346rz(C5685Ol c5685Ol, String str, Class cls, Class cls2, String str2) {
        boolean z10;
        boolean z11;
        C5917Sl c5917Sl = c5685Ol.f43025k;
        if (c5917Sl != null) {
            C5685Ol[] c5685OlArr = c5917Sl.f44308h;
            if (c5685OlArr.length != 1 || !c5685OlArr[0].f43021g) {
                z10 = true;
                this.f52236c = z10;
                if (c5685Ol.f43019e.e() != 2 && !c5685Ol.f43021g) {
                    if (c5685Ol.f43019e.e() == 2) {
                        EnumC4988Ck a10 = EnumC4988Ck.a(c5685Ol.f43017c.f39996e);
                        if ((a10 == null ? EnumC4988Ck.f39333c : a10) == EnumC4988Ck.f39333c) {
                        }
                    }
                    if (!z10 || c5685Ol.f43022h.f42689b != EnumC5569Ml.f42387k) {
                        z11 = false;
                        this.f52237d = z11;
                        C9180qz c9180qz = new C9180qz(str, cls, cls2, str2, z10, z11);
                        this.f52235b = c5685Ol;
                        this.f52234a = c9180qz.f51920a.getReturnType();
                        this.f52238e = c9180qz;
                    }
                }
                z11 = true;
                this.f52237d = z11;
                C9180qz c9180qz2 = new C9180qz(str, cls, cls2, str2, z10, z11);
                this.f52235b = c5685Ol;
                this.f52234a = c9180qz2.f51920a.getReturnType();
                this.f52238e = c9180qz2;
            }
        }
        z10 = false;
        this.f52236c = z10;
        if (c5685Ol.f43019e.e() != 2) {
            if (c5685Ol.f43019e.e() == 2) {
            }
            if (!z10) {
            }
            z11 = false;
            this.f52237d = z11;
            C9180qz c9180qz22 = new C9180qz(str, cls, cls2, str2, z10, z11);
            this.f52235b = c5685Ol;
            this.f52234a = c9180qz22.f51920a.getReturnType();
            this.f52238e = c9180qz22;
        }
        z11 = true;
        this.f52237d = z11;
        C9180qz c9180qz222 = new C9180qz(str, cls, cls2, str2, z10, z11);
        this.f52235b = c5685Ol;
        this.f52234a = c9180qz222.f51920a.getReturnType();
        this.f52238e = c9180qz222;
    }

    @Override
    public Object a(AbstractC10181wz abstractC10181wz) {
        return d(abstractC10181wz);
    }

    @Override
    public final Object b(AbstractC7345fz abstractC7345fz, int i10) {
        throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
    }

    @Override
    public Object c(AbstractC7345fz abstractC7345fz) {
        return AbstractC10181wz.access$1100(this.f52238e.f51921b, abstractC7345fz, new Object[0]);
    }

    @Override
    public Object d(AbstractC10181wz abstractC10181wz) {
        return AbstractC10181wz.access$1100(this.f52238e.f51920a, abstractC10181wz, new Object[0]);
    }

    @Override
    public InterfaceC7095eW e(AbstractC7345fz abstractC7345fz) {
        throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
    }

    @Override
    public void a(AbstractC7345fz abstractC7345fz, Object obj) {
        AbstractC10181wz.access$1100(this.f52238e.f51922c, abstractC7345fz, new Object[]{obj});
    }

    @Override
    public final void b(AbstractC7345fz abstractC7345fz, Object obj) {
        throw new UnsupportedOperationException("addRepeatedField() called on a singular field.");
    }

    @Override
    public final boolean b(AbstractC10181wz abstractC10181wz) {
        if (!this.f52237d) {
            if (this.f52236c) {
                return ((QI) AbstractC10181wz.access$1100(this.f52238e.f51926g, abstractC10181wz, new Object[0])).getNumber() == this.f52235b.f43017c.f39995d;
            }
            return !d(abstractC10181wz).equals(this.f52235b.e());
        }
        return ((Boolean) AbstractC10181wz.access$1100(this.f52238e.f51923d, abstractC10181wz, new Object[0])).booleanValue();
    }

    @Override
    public final int c(AbstractC10181wz abstractC10181wz) {
        throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
    }

    @Override
    public final void d(AbstractC7345fz abstractC7345fz) {
        AbstractC10181wz.access$1100(this.f52238e.f51925f, abstractC7345fz, new Object[0]);
    }

    @Override
    public final Object a(int i10, AbstractC10181wz abstractC10181wz) {
        throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
    }

    @Override
    public final void a(AbstractC7345fz abstractC7345fz, int i10, Object obj) {
        throw new UnsupportedOperationException("setRepeatedField() called on a singular field.");
    }

    @Override
    public final boolean a(AbstractC7345fz abstractC7345fz) {
        if (!this.f52237d) {
            if (this.f52236c) {
                return ((QI) AbstractC10181wz.access$1100(this.f52238e.f51927h, abstractC7345fz, new Object[0])).getNumber() == this.f52235b.f43017c.f39995d;
            }
            return !c(abstractC7345fz).equals(this.f52235b.e());
        }
        return ((Boolean) AbstractC10181wz.access$1100(this.f52238e.f51924e, abstractC7345fz, new Object[0])).booleanValue();
    }

    @Override
    public final int b(AbstractC7345fz abstractC7345fz) {
        throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
    }

    @Override
    public InterfaceC7095eW a() {
        throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
    }

    @Override
    public final InterfaceC7095eW a(AbstractC7345fz abstractC7345fz, int i10) {
        throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
    }
}
