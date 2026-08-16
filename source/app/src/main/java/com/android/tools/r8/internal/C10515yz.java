package com.android.tools.r8.internal;

import com.android.tools.r8.internal.InterfaceC10348xz;
import java.lang.reflect.GenericSignatureFormatError;
import java.nio.CharBuffer;
import w2.C15883c;

public class C10515yz<T> {

    public static final boolean f54246g = true;

    public final InterfaceC10348xz f54247a;

    public char f54248b;

    public String f54249c;

    public boolean f54250d;

    public char[] f54251e;

    public int f54252f;

    public C10515yz(InterfaceC10348xz<T> interfaceC10348xz) {
        this.f54247a = interfaceC10348xz;
    }

    public void a(String str) {
        char c10;
        try {
            this.f54247a.b();
            this.f54251e = str.toCharArray();
            this.f54250d = false;
            this.f54252f = 0;
            this.f54248b = (char) 0;
            this.f54249c = null;
            c();
            char c11 = this.f54248b;
            if (c11 == '<') {
                this.f54247a.a(c11);
                c();
                d();
                while (true) {
                    c10 = this.f54248b;
                    if (c10 == '>' || c10 <= 0) {
                        break;
                    } else {
                        d();
                    }
                }
                this.f54247a.a(c10);
                a('>');
            }
            a(InterfaceC10348xz.a.f53905b);
            while (this.f54248b > 0) {
                a(InterfaceC10348xz.a.f53905b);
            }
            this.f54247a.a();
        } catch (GenericSignatureFormatError e10) {
            throw e10;
        } catch (Throwable th2) {
            GenericSignatureFormatError genericSignatureFormatError = new GenericSignatureFormatError("Unknown error parsing class signature: " + th2.getMessage());
            genericSignatureFormatError.addSuppressed(th2);
            throw genericSignatureFormatError;
        }
    }

    public void b(String str) {
        try {
            this.f54247a.b();
            this.f54251e = str.toCharArray();
            this.f54250d = false;
            this.f54252f = 0;
            this.f54248b = (char) 0;
            this.f54249c = null;
            c();
            b(InterfaceC10348xz.a.f53907d);
            this.f54247a.a();
        } catch (GenericSignatureFormatError e10) {
            throw e10;
        } catch (Throwable th2) {
            GenericSignatureFormatError genericSignatureFormatError = new GenericSignatureFormatError("Unknown error parsing field signature: " + th2.getMessage());
            genericSignatureFormatError.addSuppressed(th2);
            throw genericSignatureFormatError;
        }
    }

    public void c(String str) {
        try {
            this.f54247a.b();
            this.f54251e = str.toCharArray();
            this.f54250d = false;
            this.f54252f = 0;
            this.f54248b = (char) 0;
            this.f54249c = null;
            c();
            a();
            this.f54247a.a();
        } catch (GenericSignatureFormatError e10) {
            throw e10;
        } catch (Throwable th2) {
            GenericSignatureFormatError genericSignatureFormatError = new GenericSignatureFormatError("Unknown error parsing method signature: " + th2.getMessage());
            genericSignatureFormatError.addSuppressed(th2);
            throw genericSignatureFormatError;
        }
    }

    public final void d() {
        b();
        if (!f54246g && this.f54249c == null) {
            throw new AssertionError();
        }
        this.f54247a.a(this.f54249c);
        this.f54247a.a(this.f54248b);
        a(':');
        char c10 = this.f54248b;
        if (c10 == 'L' || c10 == '[' || c10 == 'T') {
            b(InterfaceC10348xz.a.f53907d);
        }
        while (true) {
            char c11 = this.f54248b;
            if (c11 != ':') {
                return;
            }
            this.f54247a.a(c11);
            c();
            b(InterfaceC10348xz.a.f53907d);
        }
    }

    public final void b(InterfaceC10348xz.a aVar) {
        char c10 = this.f54248b;
        if (c10 == 'L') {
            a(aVar);
            return;
        }
        if (c10 == 'T') {
            this.f54247a.a(c10);
            a('T');
            b();
            if (!f54246g && this.f54249c == null) {
                throw new AssertionError();
            }
            this.f54247a.a(this.f54249c);
            this.f54247a.a(this.f54248b);
            a(';');
            return;
        }
        if (c10 == '[') {
            this.f54247a.a(c10);
            c();
            char c11 = this.f54248b;
            if (c11 != 'F' && c11 != 'S' && c11 != 'Z' && c11 != 'I' && c11 != 'J') {
                switch (c11) {
                    case 'B':
                    case 'C':
                    case 'D':
                        break;
                    default:
                        b(aVar);
                        return;
                }
            }
            this.f54247a.a(c11);
            c();
            return;
        }
        a(this.f54252f, "Expected L, [ or T");
        throw null;
    }

    public final void c() {
        if (!this.f54250d) {
            if (!f54246g && this.f54251e == null) {
                throw new AssertionError();
            }
            int i10 = this.f54252f;
            char[] cArr = this.f54251e;
            if (i10 < cArr.length) {
                this.f54248b = cArr[i10];
                this.f54252f = i10 + 1;
                return;
            } else {
                this.f54248b = (char) 0;
                this.f54250d = true;
                return;
            }
        }
        a(this.f54252f, "Unexpected end of signature");
        throw null;
    }

    public final void a() {
        char c10;
        char c11;
        char c12 = this.f54248b;
        if (c12 == '<') {
            this.f54247a.a(c12);
            c();
            d();
            while (true) {
                c11 = this.f54248b;
                if (c11 == '>' || c11 <= 0) {
                    break;
                } else {
                    d();
                }
            }
            this.f54247a.a(c11);
            a('>');
        }
        this.f54247a.a(this.f54248b);
        a('(');
        while (true) {
            c10 = this.f54248b;
            if (c10 != ')' && c10 > 0) {
                InterfaceC10348xz.a aVar = InterfaceC10348xz.a.f53907d;
                if (c10 != 'F' && c10 != 'S' && c10 != 'Z' && c10 != 'I' && c10 != 'J') {
                    switch (c10) {
                        case 'B':
                        case 'C':
                        case 'D':
                            break;
                        default:
                            b(aVar);
                            continue;
                    }
                }
                this.f54247a.a(c10);
                c();
            }
        }
        this.f54247a.a(c10);
        a(')');
        char c13 = this.f54248b;
        if (c13 != 'V') {
            InterfaceC10348xz.a aVar2 = InterfaceC10348xz.a.f53907d;
            if (c13 != 'F' && c13 != 'S' && c13 != 'Z' && c13 != 'I' && c13 != 'J') {
                switch (c13) {
                    case 'B':
                    case 'C':
                    case 'D':
                        break;
                    default:
                        b(aVar2);
                        break;
                }
            }
            this.f54247a.a(c13);
            c();
        } else {
            this.f54247a.a(c13);
            c();
        }
        if (this.f54248b != '^') {
            return;
        }
        do {
            this.f54247a.a(this.f54248b);
            c();
            char c14 = this.f54248b;
            if (c14 == 'T') {
                this.f54247a.a(c14);
                a('T');
                b();
                if (!f54246g && this.f54249c == null) {
                    throw new AssertionError();
                }
                this.f54247a.a(this.f54249c);
                this.f54247a.a(this.f54248b);
                a(';');
            } else {
                a(InterfaceC10348xz.a.f53907d);
            }
        } while (this.f54248b == '^');
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:33:0x004c. Please report as an issue. */
    public final void b() {
        int i10;
        if (!this.f54250d && this.f54252f < this.f54251e.length) {
            StringBuilder sb2 = new StringBuilder(32);
            char c10 = this.f54248b;
            if (c10 != '.' && c10 != '/') {
                switch (c10) {
                    case ':':
                    case ';':
                    case '<':
                        break;
                    default:
                        sb2.append(c10);
                        char[] cArr = this.f54251e;
                        if (!f54246g && cArr == null) {
                            throw new AssertionError();
                        }
                        do {
                            char c11 = cArr[this.f54252f];
                            if ((c11 < 'a' || c11 > 'z') && (c11 < 'A' || c11 > 'Z')) {
                                if (c11 != '.' && c11 != '/') {
                                    switch (c11) {
                                    }
                                }
                                this.f54249c = sb2.toString();
                                c();
                                return;
                            }
                            sb2.append(c11);
                            i10 = this.f54252f + 1;
                            this.f54252f = i10;
                        } while (i10 != cArr.length);
                        this.f54249c = sb2.toString();
                        this.f54248b = (char) 0;
                        this.f54250d = true;
                        return;
                }
            }
            this.f54248b = (char) 0;
            this.f54250d = true;
            a(this.f54252f, "Unexpected");
            throw null;
        }
        a(this.f54252f, "Unexpected end of signature");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(InterfaceC10348xz.a aVar) {
        char c10;
        char c11;
        this.f54247a.a(this.f54248b);
        a('L');
        StringBuilder sb2 = new StringBuilder();
        b();
        if (!f54246g && this.f54249c == null) {
            throw new AssertionError();
        }
        while (this.f54248b == '/') {
            sb2.append(this.f54249c);
            sb2.append(this.f54248b);
            c();
            b();
            if (!f54246g && this.f54249c == null) {
                throw new AssertionError();
            }
        }
        sb2.append(this.f54249c);
        Object a10 = this.f54247a.a(sb2.toString(), aVar);
        char c12 = this.f54248b;
        if (c12 == '<') {
            this.f54247a.a(c12);
            c();
            char c13 = this.f54248b;
            if (c13 == '*') {
                this.f54247a.a(c13);
                c();
            } else if (c13 == '+') {
                this.f54247a.a(c13);
                c();
                b(InterfaceC10348xz.a.f53906c);
            } else if (c13 == '-') {
                this.f54247a.a(c13);
                c();
                b(InterfaceC10348xz.a.f53906c);
            } else {
                b(InterfaceC10348xz.a.f53906c);
            }
            while (true) {
                c11 = this.f54248b;
                if (c11 == '>' || c11 <= 0) {
                    break;
                }
                if (c11 == '*') {
                    this.f54247a.a(c11);
                    c();
                } else if (c11 == '+') {
                    this.f54247a.a(c11);
                    c();
                    b(InterfaceC10348xz.a.f53906c);
                } else if (c11 == '-') {
                    this.f54247a.a(c11);
                    c();
                    b(InterfaceC10348xz.a.f53906c);
                } else {
                    b(InterfaceC10348xz.a.f53906c);
                }
            }
            this.f54247a.a(c11);
            a('>');
        }
        while (true) {
            char c14 = this.f54248b;
            if (c14 == '.') {
                this.f54247a.a(c14);
                c();
                b();
                if (!f54246g && this.f54249c == null) {
                    throw new AssertionError();
                }
                a10 = this.f54247a.a((InterfaceC10348xz) a10, this.f54249c);
                char c15 = this.f54248b;
                if (c15 == '<') {
                    this.f54247a.a(c15);
                    c();
                    char c16 = this.f54248b;
                    if (c16 == '*') {
                        this.f54247a.a(c16);
                        c();
                    } else if (c16 == '+') {
                        this.f54247a.a(c16);
                        c();
                        b(InterfaceC10348xz.a.f53906c);
                    } else if (c16 == '-') {
                        this.f54247a.a(c16);
                        c();
                        b(InterfaceC10348xz.a.f53906c);
                    } else {
                        b(InterfaceC10348xz.a.f53906c);
                    }
                    while (true) {
                        c10 = this.f54248b;
                        if (c10 == '>' || c10 <= 0) {
                            break;
                        }
                        if (c10 == '*') {
                            this.f54247a.a(c10);
                            c();
                        } else if (c10 == '+') {
                            this.f54247a.a(c10);
                            c();
                            b(InterfaceC10348xz.a.f53906c);
                        } else if (c10 == '-') {
                            this.f54247a.a(c10);
                            c();
                            b(InterfaceC10348xz.a.f53906c);
                        } else {
                            b(InterfaceC10348xz.a.f53906c);
                        }
                    }
                    this.f54247a.a(c10);
                    a('>');
                }
            } else {
                this.f54247a.a(c14);
                a(';');
                return;
            }
        }
    }

    public final void a(char c10) {
        if (!this.f54250d) {
            if (this.f54248b == c10) {
                c();
                return;
            }
            a(this.f54252f - 1, "Expected " + c10);
            throw null;
        }
        a(this.f54252f, "Unexpected end of signature");
        throw null;
    }

    public final void a(int i10, String str) {
        String str2 = CharBuffer.allocate(i10).toString().replace((char) 0, C15883c.f126249O) + "^";
        throw new GenericSignatureFormatError(str + " at position " + (i10 + 1) + "\n" + String.valueOf(this.f54251e) + "\n" + str2);
    }
}
