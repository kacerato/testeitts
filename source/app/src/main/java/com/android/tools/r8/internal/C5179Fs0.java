package com.android.tools.r8.internal;

import org.eclipse.jdt.internal.core.JavaElement;
import org.objectweb.asm.Opcodes;
import w2.C15883c;

public final class C5179Fs0 extends DX {

    public final C5293Hr0 f40330c;

    public C5179Fs0(C5293Hr0 c5293Hr0) {
        super(Opcodes.ASM9, null);
        this.f40330c = c5293Hr0;
    }

    @Override
    public final Q2 a(String str, boolean z10) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40887e);
        sb2.append('@');
        c5293Hr0.a(1, str);
        c5293Hr0.f39762a.append('(');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        return new C10495ys0(super.a(str, z10), c5293Hr0.a(z10 ? ")\n" : ") // invisible\n"));
    }

    @Override
    public final void b(int i10, String str) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append("// parameter ");
        if ((i10 & 1) != 0) {
            c5293Hr0.f39762a.append("public ");
        }
        if ((i10 & 2) != 0) {
            c5293Hr0.f39762a.append("private ");
        }
        if ((i10 & 4) != 0) {
            c5293Hr0.f39762a.append("protected ");
        }
        if ((i10 & 16) != 0) {
            c5293Hr0.f39762a.append("final ");
        }
        if ((i10 & 8) != 0) {
            c5293Hr0.f39762a.append("static ");
        }
        if ((i10 & 32) != 0) {
            c5293Hr0.f39762a.append("synchronized ");
        }
        if ((i10 & 64) != 0) {
            c5293Hr0.f39762a.append("volatile ");
        }
        if ((i10 & 128) != 0) {
            c5293Hr0.f39762a.append("transient ");
        }
        if ((i10 & 1024) != 0) {
            c5293Hr0.f39762a.append("abstract ");
        }
        if ((i10 & 2048) != 0) {
            c5293Hr0.f39762a.append("strictfp ");
        }
        if ((i10 & 4096) != 0) {
            c5293Hr0.f39762a.append("synthetic ");
        }
        if ((32768 & i10) != 0) {
            c5293Hr0.f39762a.append("mandated ");
        }
        if ((i10 & 16384) != 0) {
            c5293Hr0.f39762a.append("enum ");
        }
        StringBuilder sb3 = c5293Hr0.f39762a;
        sb3.append(C15883c.f126249O);
        sb3.append(str == null ? "<no name>" : str);
        sb3.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        super.b(i10, str);
    }

    @Override
    public final Q2 c(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        return new C10495ys0(super.c(i10, c9666tu0, str, z10), this.f40330c.a(i10, c9666tu0, str, z10));
    }

    @Override
    public final void d(int i10, int i11) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append(E70.f39760c[i10]);
        sb2.append(C15883c.f126249O);
        sb2.append(i11);
        sb2.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.d(i10, i11);
        }
    }

    @Override
    public final void c(int i10, String str) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append(E70.f39760c[i10]);
        sb2.append(C15883c.f126249O);
        c5293Hr0.a(0, str);
        c5293Hr0.f39762a.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.c(i10, str);
        }
    }

    @Override
    public final void a(K4 k42) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40887e);
        sb2.append("ATTRIBUTE ");
        c5293Hr0.a(-1, k42.f41566a);
        c5293Hr0.f39762a.append(" : unknown\n");
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(k42);
        }
    }

    @Override
    public final void c(int i10, int i11) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append("MAXSTACK = ");
        sb2.append(i10);
        sb2.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb3 = c5293Hr0.f39762a;
        sb3.append(c5293Hr0.f40888f);
        sb3.append("MAXLOCALS = ");
        sb3.append(i11);
        sb3.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.c(i10, i11);
        }
    }

    @Override
    public final Q2 a() {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39763b.add(c5293Hr0.f40888f + "default=");
        return new C10495ys0(super.a(), c5293Hr0.a("\n"));
    }

    @Override
    public final void b() {
        this.f40330c.getClass();
        DX dx = this.f39547b;
        if (dx != null) {
            dx.b();
        }
    }

    @Override
    public final void b(int i10, int i11) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append(E70.f39760c[i10]);
        sb2.append(C15883c.f126249O);
        sb2.append(i10 == 188 ? E70.f39761d[i11] : Integer.toString(i11));
        sb2.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.b(i10, i11);
        }
    }

    @Override
    public final void c() {
        this.f40330c.getClass();
        DX dx = this.f39547b;
        if (dx != null) {
            dx.c();
        }
    }

    @Override
    public final void a(int i10, boolean z10) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append("// annotable parameter count: ");
        c5293Hr0.f39762a.append(i10);
        c5293Hr0.f39762a.append(z10 ? " (visible)\n" : " (invisible)\n");
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, z10);
        }
    }

    @Override
    public final Q2 a(int i10, String str, boolean z10) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append('@');
        c5293Hr0.a(1, str);
        c5293Hr0.f39762a.append('(');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb3 = c5293Hr0.f39762a;
        sb3.append(z10 ? ") // parameter " : ") // invisible, parameter ");
        sb3.append(i10);
        sb3.append('\n');
        return new C10495ys0(super.a(i10, str, z10), c5293Hr0.a(c5293Hr0.f39762a.toString()));
    }

    @Override
    public final Q2 b(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append("TRYCATCHBLOCK @");
        c5293Hr0.a(1, str);
        c5293Hr0.f39762a.append('(');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        c5293Hr0.f39762a.setLength(0);
        c5293Hr0.f39762a.append(") : ");
        c5293Hr0.a(i10);
        StringBuilder sb3 = c5293Hr0.f39762a;
        sb3.append(", ");
        sb3.append((Object) c9666tu0);
        c5293Hr0.f39762a.append(z10 ? "\n" : " // invisible\n");
        return new C10495ys0(super.b(i10, c9666tu0, str, z10), c5293Hr0.a(c5293Hr0.f39762a.toString()));
    }

    @Override
    public final void a(int i10, int i11, Object[] objArr, int i12, Object[] objArr2) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        c5293Hr0.f39762a.append(c5293Hr0.f40890h);
        c5293Hr0.f39762a.append("FRAME ");
        if (i10 == -1 || i10 == 0) {
            c5293Hr0.f39762a.append("FULL [");
            c5293Hr0.a(i11, objArr);
            c5293Hr0.f39762a.append("] [");
            c5293Hr0.a(i12, objArr2);
            c5293Hr0.f39762a.append(JavaElement.JEM_TYPE_PARAMETER);
        } else if (i10 == 1) {
            c5293Hr0.f39762a.append("APPEND [");
            c5293Hr0.a(i11, objArr);
            c5293Hr0.f39762a.append(JavaElement.JEM_TYPE_PARAMETER);
        } else if (i10 == 2) {
            StringBuilder sb2 = c5293Hr0.f39762a;
            sb2.append("CHOP ");
            sb2.append(i11);
        } else if (i10 == 3) {
            c5293Hr0.f39762a.append("SAME");
        } else if (i10 == 4) {
            c5293Hr0.f39762a.append("SAME1 ");
            c5293Hr0.a(1, objArr2);
        } else {
            throw new IllegalArgumentException();
        }
        c5293Hr0.f39762a.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, i11, objArr, i12, objArr2);
        }
    }

    @Override
    public final void b(int i10, XQ xq) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append("LINENUMBER ");
        sb2.append(i10);
        sb2.append(C15883c.f126249O);
        c5293Hr0.a(xq);
        c5293Hr0.f39762a.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.b(i10, xq);
        }
    }

    @Override
    public final void a(int i10) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append(E70.f39760c[i10]);
        sb2.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10);
        }
    }

    @Override
    public final void a(int i10, String str, String str2, String str3) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append(E70.f39760c[i10]);
        sb2.append(C15883c.f126249O);
        c5293Hr0.a(0, str);
        StringBuilder sb3 = c5293Hr0.f39762a;
        sb3.append('.');
        sb3.append(str2);
        sb3.append(" : ");
        c5293Hr0.a(1, str3);
        c5293Hr0.f39762a.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, str, str2, str3);
        }
    }

    @Override
    public final void a(int i10, String str, String str2, String str3, boolean z10) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.getClass();
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append(E70.f39760c[i10]);
        sb2.append(C15883c.f126249O);
        c5293Hr0.a(0, str);
        StringBuilder sb3 = c5293Hr0.f39762a;
        sb3.append('.');
        sb3.append(str2);
        sb3.append(C15883c.f126249O);
        c5293Hr0.a(3, str3);
        if (z10) {
            c5293Hr0.f39762a.append(" (itf)");
        }
        c5293Hr0.f39762a.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, str, str2, str3, z10);
        }
    }

    @Override
    public final void a(String str, String str2, C5829Qz c5829Qz, Object... objArr) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append("INVOKEDYNAMIC");
        sb2.append(C15883c.f126249O);
        c5293Hr0.f39762a.append(str);
        c5293Hr0.a(3, str2);
        c5293Hr0.f39762a.append(" [");
        c5293Hr0.f39762a.append('\n');
        c5293Hr0.f39762a.append(c5293Hr0.f40889g);
        c5293Hr0.a(c5829Qz, c5293Hr0.f40889g);
        StringBuilder sb3 = c5293Hr0.f39762a;
        sb3.append('\n');
        sb3.append(c5293Hr0.f40889g);
        c5293Hr0.a(c5293Hr0.f40889g, objArr);
        c5293Hr0.f39762a.append('\n');
        StringBuilder sb4 = c5293Hr0.f39762a;
        sb4.append(c5293Hr0.f40888f);
        sb4.append("]\n");
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        super.a(str, str2, c5829Qz, objArr);
    }

    @Override
    public final void a(int i10, XQ xq) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append(E70.f39760c[i10]);
        sb2.append(C15883c.f126249O);
        c5293Hr0.a(xq);
        c5293Hr0.f39762a.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, xq);
        }
    }

    @Override
    public final void a(XQ xq) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        c5293Hr0.f39762a.append(c5293Hr0.f40890h);
        c5293Hr0.a(xq);
        c5293Hr0.f39762a.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(xq);
        }
    }

    @Override
    public final void a(Object obj) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        if (obj instanceof C10127wh) {
            StringBuilder sb2 = c5293Hr0.f39762a;
            sb2.append(c5293Hr0.f40888f);
            sb2.append("LDC ");
            c5293Hr0.a((C10127wh) obj, c5293Hr0.f40888f);
        } else if (obj instanceof C5829Qz) {
            c5293Hr0.f39762a.append(c5293Hr0.f40888f);
            c5293Hr0.a((C5829Qz) obj, c5293Hr0.f40888f + "LDC ");
        } else {
            StringBuilder sb3 = c5293Hr0.f39762a;
            sb3.append(c5293Hr0.f40888f);
            sb3.append("LDC ");
            c5293Hr0.a(obj);
        }
        c5293Hr0.f39762a.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        super.a(obj);
    }

    @Override
    public final void a(int i10, int i11) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append("IINC ");
        sb2.append(i10);
        sb2.append(C15883c.f126249O);
        sb2.append(i11);
        sb2.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, i11);
        }
    }

    @Override
    public final void a(int i10, int i11, XQ xq, XQ... xqArr) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append("TABLESWITCH\n");
        for (int i12 = 0; i12 < xqArr.length; i12++) {
            StringBuilder sb3 = c5293Hr0.f39762a;
            sb3.append(c5293Hr0.f40889g);
            sb3.append(i10 + i12);
            sb3.append(": ");
            c5293Hr0.a(xqArr[i12]);
            c5293Hr0.f39762a.append('\n');
        }
        StringBuilder sb4 = c5293Hr0.f39762a;
        sb4.append(c5293Hr0.f40889g);
        sb4.append("default: ");
        c5293Hr0.a(xq);
        c5293Hr0.f39762a.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, i11, xq, xqArr);
        }
    }

    @Override
    public final void a(XQ xq, int[] iArr, XQ[] xqArr) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append("LOOKUPSWITCH\n");
        for (int i10 = 0; i10 < xqArr.length; i10++) {
            StringBuilder sb3 = c5293Hr0.f39762a;
            sb3.append(c5293Hr0.f40889g);
            sb3.append(iArr[i10]);
            sb3.append(": ");
            c5293Hr0.a(xqArr[i10]);
            c5293Hr0.f39762a.append('\n');
        }
        StringBuilder sb4 = c5293Hr0.f39762a;
        sb4.append(c5293Hr0.f40889g);
        sb4.append("default: ");
        c5293Hr0.a(xq);
        c5293Hr0.f39762a.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(xq, iArr, xqArr);
        }
    }

    @Override
    public final void a(int i10, String str) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append("MULTIANEWARRAY ");
        c5293Hr0.a(1, str);
        StringBuilder sb3 = c5293Hr0.f39762a;
        sb3.append(C15883c.f126249O);
        sb3.append(i10);
        sb3.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(i10, str);
        }
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        return new C10495ys0(super.a(i10, c9666tu0, str, z10), this.f40330c.a(i10, c9666tu0, str, z10));
    }

    @Override
    public final void a(XQ xq, XQ xq2, XQ xq3, String str) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append("TRYCATCHBLOCK ");
        c5293Hr0.a(xq);
        c5293Hr0.f39762a.append(C15883c.f126249O);
        c5293Hr0.a(xq2);
        c5293Hr0.f39762a.append(C15883c.f126249O);
        c5293Hr0.a(xq3);
        c5293Hr0.f39762a.append(C15883c.f126249O);
        c5293Hr0.a(0, str);
        c5293Hr0.f39762a.append('\n');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(xq, xq2, xq3, str);
        }
    }

    @Override
    public final void a(String str, String str2, String str3, XQ xq, XQ xq2, int i10) {
        int i11;
        boolean z10;
        char charAt;
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append("LOCALVARIABLE ");
        sb2.append(str);
        sb2.append(C15883c.f126249O);
        int i12 = 1;
        c5293Hr0.a(1, str2);
        c5293Hr0.f39762a.append(C15883c.f126249O);
        c5293Hr0.a(xq);
        c5293Hr0.f39762a.append(C15883c.f126249O);
        c5293Hr0.a(xq2);
        StringBuilder sb3 = c5293Hr0.f39762a;
        sb3.append(C15883c.f126249O);
        sb3.append(i10);
        sb3.append('\n');
        if (str3 != null) {
            c5293Hr0.f39762a.append(c5293Hr0.f40888f);
            c5293Hr0.a(2, str3);
            c5293Hr0.f39762a.append(c5293Hr0.f40888f);
            C5353Is0 c5353Is0 = new C5353Is0();
            int length = str3.length();
            if (str3.charAt(0) == '<') {
                int i13 = 2;
                while (true) {
                    int indexOf = str3.indexOf(58, i13);
                    String substring = str3.substring(i13 - i12, indexOf);
                    StringBuilder sb4 = c5353Is0.f41229b;
                    sb4.append(c5353Is0.f41232e ? ", " : "<");
                    sb4.append(substring);
                    c5353Is0.f41232e = true;
                    c5353Is0.f41233f = false;
                    int i14 = indexOf + 1;
                    char charAt2 = str3.charAt(i14);
                    if (charAt2 == 'L' || charAt2 == '[' || charAt2 == 'T') {
                        c5353Is0.f41238k = " extends ";
                        c5353Is0.f41237j *= 2;
                        i14 = AbstractC6034Ul0.a(str3, i14, c5353Is0);
                    }
                    while (true) {
                        i13 = i14 + 1;
                        charAt = str3.charAt(i14);
                        if (charAt != ':') {
                            break;
                        }
                        c5353Is0.f41238k = c5353Is0.f41233f ? ", " : " extends ";
                        c5353Is0.f41233f = true;
                        c5353Is0.f41237j *= 2;
                        i14 = AbstractC6034Ul0.a(str3, i13, c5353Is0);
                    }
                    if (charAt == '>') {
                        break;
                    } else {
                        i12 = 1;
                    }
                }
                i11 = i13;
            } else {
                i11 = 0;
            }
            if (str3.charAt(i11) == '(') {
                int i15 = i11 + 1;
                while (str3.charAt(i15) != ')') {
                    if (c5353Is0.f41232e) {
                        c5353Is0.f41229b.append('>');
                        c5353Is0.f41232e = false;
                    }
                    if (c5353Is0.f41234g) {
                        c5353Is0.f41229b.append(", ");
                    } else {
                        c5353Is0.f41229b.append('(');
                        c5353Is0.f41234g = true;
                    }
                    c5353Is0.f41237j *= 2;
                    i15 = AbstractC6034Ul0.a(str3, i15, c5353Is0);
                }
                int i16 = i15 + 1;
                if (c5353Is0.f41232e) {
                    c5353Is0.f41229b.append('>');
                    z10 = false;
                    c5353Is0.f41232e = false;
                } else {
                    z10 = false;
                }
                if (c5353Is0.f41234g) {
                    c5353Is0.f41234g = z10;
                } else {
                    c5353Is0.f41229b.append('(');
                }
                c5353Is0.f41229b.append(')');
                StringBuilder sb5 = new StringBuilder();
                c5353Is0.f41230c = sb5;
                int a10 = AbstractC6034Ul0.a(str3, i16, new C5353Is0(sb5));
                while (a10 < length) {
                    int i17 = a10 + 1;
                    StringBuilder sb6 = c5353Is0.f41231d;
                    if (sb6 == null) {
                        c5353Is0.f41231d = new StringBuilder();
                    } else {
                        sb6.append(", ");
                    }
                    a10 = AbstractC6034Ul0.a(str3, i17, new C5353Is0(c5353Is0.f41231d));
                }
            } else {
                if (c5353Is0.f41232e) {
                    c5353Is0.f41229b.append('>');
                    c5353Is0.f41232e = false;
                }
                c5353Is0.f41238k = " extends ";
                c5353Is0.f41237j *= 2;
                int a11 = AbstractC6034Ul0.a(str3, i11, c5353Is0);
                while (a11 < length) {
                    if (c5353Is0.f41235h) {
                        c5353Is0.f41238k = ", ";
                    } else {
                        c5353Is0.f41238k = c5353Is0.f41228a ? " extends " : " implements ";
                        c5353Is0.f41235h = true;
                    }
                    c5353Is0.f41237j *= 2;
                    a11 = AbstractC6034Ul0.a(str3, a11, c5353Is0);
                }
            }
            c5293Hr0.f39762a.append("// declaration: ");
            StringBuilder sb7 = c5353Is0.f41230c;
            if ((sb7 == null ? null : sb7.toString()) != null) {
                StringBuilder sb8 = c5293Hr0.f39762a;
                StringBuilder sb9 = c5353Is0.f41230c;
                sb8.append(sb9 == null ? null : sb9.toString());
                c5293Hr0.f39762a.append(C15883c.f126249O);
            }
            c5293Hr0.f39762a.append(str);
            c5293Hr0.f39762a.append(c5353Is0.f41229b.toString());
            StringBuilder sb10 = c5353Is0.f41231d;
            if ((sb10 == null ? null : sb10.toString()) != null) {
                StringBuilder sb11 = c5293Hr0.f39762a;
                sb11.append(" throws ");
                StringBuilder sb12 = c5353Is0.f41231d;
                sb11.append(sb12 != null ? sb12.toString() : null);
            }
            c5293Hr0.f39762a.append('\n');
        }
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        DX dx = this.f39547b;
        if (dx != null) {
            dx.a(str, str2, str3, xq, xq2, i10);
        }
    }

    @Override
    public final Q2 a(int i10, C9666tu0 c9666tu0, XQ[] xqArr, XQ[] xqArr2, int[] iArr, String str, boolean z10) {
        C5293Hr0 c5293Hr0 = this.f40330c;
        c5293Hr0.f39762a.setLength(0);
        StringBuilder sb2 = c5293Hr0.f39762a;
        sb2.append(c5293Hr0.f40888f);
        sb2.append("LOCALVARIABLE @");
        c5293Hr0.a(1, str);
        c5293Hr0.f39762a.append('(');
        c5293Hr0.f39763b.add(c5293Hr0.f39762a.toString());
        c5293Hr0.f39762a.setLength(0);
        c5293Hr0.f39762a.append(") : ");
        c5293Hr0.a(i10);
        StringBuilder sb3 = c5293Hr0.f39762a;
        sb3.append(", ");
        sb3.append((Object) c9666tu0);
        for (int i11 = 0; i11 < xqArr.length; i11++) {
            c5293Hr0.f39762a.append(" [ ");
            c5293Hr0.a(xqArr[i11]);
            c5293Hr0.f39762a.append(" - ");
            c5293Hr0.a(xqArr2[i11]);
            StringBuilder sb4 = c5293Hr0.f39762a;
            sb4.append(" - ");
            sb4.append(iArr[i11]);
            sb4.append(" ]");
        }
        c5293Hr0.f39762a.append(z10 ? "\n" : " // invisible\n");
        return new C10495ys0(super.a(i10, c9666tu0, xqArr, xqArr2, iArr, str, z10), c5293Hr0.a(c5293Hr0.f39762a.toString()));
    }
}
