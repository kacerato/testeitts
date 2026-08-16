package com.android.tools.r8.dex;

import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.CH;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.NoSuchElementException;

public abstract class e0 {

    public static final boolean f35834h = true;

    public final String f35835a;

    public final StringBuilder f35836b = new StringBuilder();

    public boolean f35837c = false;

    public int f35838d = 0;

    public int f35839e = 0;

    public final CH f35840f;

    public final f0 f35841g;

    public e0(f0 f0Var, String str) {
        this.f35841g = f0Var;
        this.f35835a = str;
        this.f35840f = a() ? new CH(16) : null;
    }

    public abstract boolean a();

    public abstract boolean a(char c10);

    public final boolean a(int i10) {
        return i10 == this.f35835a.length();
    }

    public abstract boolean a(int i10, int i11);

    public abstract char b();

    public abstract boolean b(int i10, int i11);

    public final boolean c(int i10, int i11) {
        String substring = this.f35835a.substring(i10, i11);
        if (b() != '.') {
            substring = substring.replace(b(), '.');
        }
        L2 l22 = (L2) this.f35841g.f35844b.f38017c.get(new L2(C4932Bl.I(substring)));
        M2 m22 = l22 != null ? (M2) this.f35841g.f35844b.f38025d.get(l22) : null;
        if (m22 == null) {
            return false;
        }
        f0 f0Var = this.f35841g;
        AbstractC10992r0 abstractC10992r0 = f0Var.f35846d;
        AbstractC5308Hz abstractC5308Hz = f0Var.f35845c;
        abstractC5308Hz.getClass();
        L2 c10 = abstractC10992r0.c(abstractC5308Hz.c(AbstractC5308Hz.g(), m22));
        if (l22.equals(c10)) {
            return false;
        }
        String b10 = C4932Bl.b(c10.j0());
        int i12 = this.f35838d;
        if (i12 < i10) {
            this.f35836b.append((CharSequence) this.f35835a, i12, i10);
        }
        if (b() != '.') {
            b10 = b10.replace('.', b());
        }
        this.f35836b.append(b10);
        this.f35838d = i11;
        this.f35837c = true;
        return true;
    }

    public final boolean c() {
        while (true) {
            if (!a(this.f35839e) && !Character.isJavaIdentifierPart(this.f35835a.charAt(this.f35839e))) {
                this.f35839e++;
            } else {
                if (!a(this.f35839e)) {
                    boolean z10 = f35834h;
                    if (!z10 && a() && !this.f35840f.isEmpty()) {
                        throw new AssertionError();
                    }
                    if (!z10 && !Character.isJavaIdentifierPart(this.f35835a.charAt(this.f35839e))) {
                        throw new AssertionError();
                    }
                    int i10 = this.f35839e;
                    this.f35839e = i10 + 1;
                    while (!a(this.f35839e)) {
                        char charAt = this.f35835a.charAt(this.f35839e);
                        if (Character.isJavaIdentifierPart(charAt)) {
                            if (a() && a(charAt) && b(i10, this.f35839e)) {
                                this.f35840f.add(this.f35839e);
                            }
                            this.f35839e++;
                        } else {
                            if (charAt != b() || a(this.f35839e + 1) || !Character.isJavaIdentifierPart(this.f35835a.charAt(this.f35839e + 1))) {
                                break;
                            }
                            if (a() && a(charAt) && b(i10, this.f35839e)) {
                                this.f35840f.add(this.f35839e);
                            }
                            this.f35839e += 2;
                        }
                    }
                    if (a() && a(this.f35839e) && b(i10, this.f35839e)) {
                        this.f35840f.add(this.f35839e);
                    }
                    boolean z11 = b(i10, this.f35839e) && c(i10, this.f35839e);
                    if (!z11 && a()) {
                        while (!this.f35840f.isEmpty() && !z11) {
                            CH ch2 = this.f35840f;
                            if (!ch2.isEmpty()) {
                                int i11 = ch2.i(ch2.size() - 1);
                                if (!f35834h && !b(i10, i11)) {
                                    throw new AssertionError();
                                }
                                z11 = a(i10, i11);
                            } else {
                                throw new NoSuchElementException();
                            }
                        }
                    }
                    if (a()) {
                        while (!this.f35840f.isEmpty()) {
                            CH ch3 = this.f35840f;
                            if (!ch3.isEmpty()) {
                                ch3.i(ch3.size() - 1);
                            } else {
                                throw new NoSuchElementException();
                            }
                        }
                    }
                }
                if (a(this.f35839e)) {
                    if (this.f35837c) {
                        int i12 = this.f35838d;
                        int length = this.f35835a.length();
                        if (i12 < length) {
                            this.f35836b.append((CharSequence) this.f35835a, i12, length);
                        }
                    } else {
                        boolean z12 = f35834h;
                        if (!z12 && this.f35838d != 0) {
                            throw new AssertionError();
                        }
                        if (!z12 && !this.f35836b.toString().isEmpty()) {
                            throw new AssertionError();
                        }
                    }
                    return this.f35837c;
                }
            }
        }
    }
}
