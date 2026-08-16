package com.android.tools.r8.internal;

public final class C7610hc extends Q2 {

    public final boolean f48622b;

    public boolean f48623c;

    public C7610hc(Q2 q22) {
        super(q22);
        this.f48622b = true;
    }

    @Override
    public final void a(Object obj, String str) {
        if (!this.f48623c) {
            if (this.f48622b && str == null) {
                throw new IllegalArgumentException("Annotation value name must not be null");
            }
            if (!(obj instanceof Byte) && !(obj instanceof Boolean) && !(obj instanceof Character) && !(obj instanceof Short) && !(obj instanceof Integer) && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Double) && !(obj instanceof String) && !(obj instanceof C9663tt0) && !(obj instanceof byte[]) && !(obj instanceof boolean[]) && !(obj instanceof char[]) && !(obj instanceof short[]) && !(obj instanceof int[]) && !(obj instanceof long[]) && !(obj instanceof float[]) && !(obj instanceof double[])) {
                throw new IllegalArgumentException("Invalid annotation value");
            }
            if ((obj instanceof C9663tt0) && ((C9663tt0) obj).c() == 11) {
                throw new IllegalArgumentException("Invalid annotation value");
            }
            Q2 q22 = this.f43440a;
            if (q22 != null) {
                q22.a(obj, str);
                return;
            }
            return;
        }
        throw new IllegalStateException("Cannot call a visit method after visitEnd has been called");
    }

    public C7610hc(Q2 q22, int i10) {
        super(q22);
        this.f48622b = false;
    }

    @Override
    public final Q2 a(String str, String str2) {
        if (!this.f48623c) {
            if (this.f48622b && str == null) {
                throw new IllegalArgumentException("Annotation value name must not be null");
            }
            C9444sc.d(49, str2);
            return new C7610hc(super.a(str, str2));
        }
        throw new IllegalStateException("Cannot call a visit method after visitEnd has been called");
    }

    @Override
    public final Q2 a(String str) {
        if (!this.f48623c) {
            if (this.f48622b && str == null) {
                throw new IllegalArgumentException("Annotation value name must not be null");
            }
            return new C7610hc(super.a(str), 0);
        }
        throw new IllegalStateException("Cannot call a visit method after visitEnd has been called");
    }

    @Override
    public final void a() {
        if (!this.f48623c) {
            this.f48623c = true;
            Q2 q22 = this.f43440a;
            if (q22 != null) {
                q22.a();
                return;
            }
            return;
        }
        throw new IllegalStateException("Cannot call a visit method after visitEnd has been called");
    }

    @Override
    public final void a(String str, String str2, String str3) {
        if (!this.f48623c) {
            if (this.f48622b && str == null) {
                throw new IllegalArgumentException("Annotation value name must not be null");
            }
            C9444sc.d(49, str2);
            if (str3 != null) {
                Q2 q22 = this.f43440a;
                if (q22 != null) {
                    q22.a(str, str2, str3);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("Invalid enum value");
        }
        throw new IllegalStateException("Cannot call a visit method after visitEnd has been called");
    }
}
