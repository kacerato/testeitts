package com.android.tools.r8.internal;

public abstract class DX {

    public final int f39546a;

    public DX f39547b;

    public DX(int i10, DX dx) {
        if (i10 != 589824 && i10 != 524288 && i10 != 458752 && i10 != 393216 && i10 != 327680 && i10 != 262144 && i10 != 17432576) {
            throw new IllegalArgumentException(T60.a(i10, "Unsupported api "));
        }
        if (i10 == 17432576) {
            AbstractC5040Dh.a(this);
        }
        this.f39546a = i10;
        this.f39547b = dx;
    }

    public Q2 a() {
        DX dx = this.f39547b;
        if (dx != null) {
            return dx.a();
        }
        return null;
    }

    public void b(int i10, String str) {
        if (this.f39546a >= 327680) {
            DX dx = this.f39547b;
            if (dx != null) {
                dx.b(i10, str);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("This feature requires ASM5");
    }

    public Q2 c(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        if (this.f39546a >= 327680) {
            DX dx = this.f39547b;
            if (dx != null) {
                return dx.c(i10, c9666tu0, str, z10);
            }
            return null;
        }
        throw new UnsupportedOperationException("This feature requires ASM5");
    }

    public void d(int i10, int i11) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.d(i10, i11);
        }
    }

    public Q2 a(String str, boolean z10) {
        DX dx = this.f39547b;
        if (dx != null) {
            return dx.a(str, z10);
        }
        return null;
    }

    public void a(int i10, boolean z10) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, z10);
        }
    }

    public void b() {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.b();
        }
    }

    public void c(int i10, String str) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.c(i10, str);
        }
    }

    public Q2 a(int i10, String str, boolean z10) {
        DX dx = this.f39547b;
        if (dx != null) {
            return dx.a(i10, str, z10);
        }
        return null;
    }

    public void b(int i10, int i11) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.b(i10, i11);
        }
    }

    public void c(int i10, int i11) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.c(i10, i11);
        }
    }

    public void a(K4 k42) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(k42);
        }
    }

    public Q2 b(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        if (this.f39546a >= 327680) {
            DX dx = this.f39547b;
            if (dx != null) {
                return dx.b(i10, c9666tu0, str, z10);
            }
            return null;
        }
        throw new UnsupportedOperationException("This feature requires ASM5");
    }

    public void c() {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.c();
        }
    }

    public void a(int i10, int i11, Object[] objArr, int i12, Object[] objArr2) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, i11, objArr, i12, objArr2);
        }
    }

    public void a(int i10) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10);
        }
    }

    public void b(int i10, XQ xq) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.b(i10, xq);
        }
    }

    public void a(int i10, String str, String str2, String str3) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, str, str2, str3);
        }
    }

    public void a(int i10, String str, String str2, String str3, boolean z10) {
        int i11 = this.f39546a;
        if (i11 < 327680 && (i10 & 256) == 0) {
            if (z10 == (i10 == 185)) {
                a((i11 < 327680 ? 256 : 0) | i10, str, str2, str3, i10 == 185);
                return;
            }
            throw new UnsupportedOperationException("INVOKESPECIAL/STATIC on interfaces requires ASM5");
        }
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10 & (-257), str, str2, str3, z10);
        }
    }

    public void a(String str, String str2, C5829Qz c5829Qz, Object... objArr) {
        if (this.f39546a >= 327680) {
            DX dx = this.f39547b;
            if (dx != null) {
                dx.a(str, str2, c5829Qz, objArr);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("This feature requires ASM5");
    }

    public void a(int i10, XQ xq) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, xq);
        }
    }

    public void a(XQ xq) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(xq);
        }
    }

    public void a(Object obj) {
        if (this.f39546a < 327680 && ((obj instanceof C5829Qz) || ((obj instanceof C9663tt0) && ((C9663tt0) obj).c() == 11))) {
            throw new UnsupportedOperationException("This feature requires ASM5");
        }
        if (this.f39546a < 458752 && (obj instanceof C10127wh)) {
            throw new UnsupportedOperationException("This feature requires ASM7");
        }
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(obj);
        }
    }

    public void a(int i10, int i11) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, i11);
        }
    }

    public void a(int i10, int i11, XQ xq, XQ... xqArr) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, i11, xq, xqArr);
        }
    }

    public void a(XQ xq, int[] iArr, XQ[] xqArr) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(xq, iArr, xqArr);
        }
    }

    public void a(int i10, String str) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, str);
        }
    }

    public Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        if (this.f39546a >= 327680) {
            DX dx = this.f39547b;
            if (dx != null) {
                return dx.a(i10, c9666tu0, str, z10);
            }
            return null;
        }
        throw new UnsupportedOperationException("This feature requires ASM5");
    }

    public void a(XQ xq, XQ xq2, XQ xq3, String str) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(xq, xq2, xq3, str);
        }
    }

    public void a(String str, String str2, String str3, XQ xq, XQ xq2, int i10) {
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(str, str2, str3, xq, xq2, i10);
        }
    }

    public Q2 a(int i10, C9666tu0 c9666tu0, XQ[] xqArr, XQ[] xqArr2, int[] iArr, String str, boolean z10) {
        if (this.f39546a >= 327680) {
            DX dx = this.f39547b;
            if (dx != null) {
                return dx.a(i10, c9666tu0, xqArr, xqArr2, iArr, str, z10);
            }
            return null;
        }
        throw new UnsupportedOperationException("This feature requires ASM5");
    }
}
