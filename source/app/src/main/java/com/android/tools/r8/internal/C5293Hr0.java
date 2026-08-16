package com.android.tools.r8.internal;

import android.text.Spanned;
import androidx.exifinterface.media.ExifInterface;
import com.bumptech.glide.load.engine.GlideException;
import ei.C13155a;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public final class C5293Hr0 extends E70 {

    public static final List f40886k = Collections.unmodifiableList(Arrays.asList(ExifInterface.GPS_DIRECTION_TRUE, Signature.SIG_INT, Signature.SIG_FLOAT, Signature.SIG_DOUBLE, Signature.SIG_LONG, "N", "U"));

    public final String f40887e = GlideException.a.f59088e;

    public final String f40888f = C13155a.f85806a;

    public final String f40889g = "      ";

    public final String f40890h = Sm.b.f23785c;

    public HashMap f40891i;

    public int f40892j;

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0017. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C5829Qz c5829Qz, String str) {
        int i10 = c5829Qz.f43768a;
        StringBuilder sb2 = this.f39762a;
        sb2.append("// handle kind 0x");
        sb2.append(Integer.toHexString(i10));
        sb2.append(" : ");
        boolean z10 = true;
        switch (i10) {
            case 1:
                this.f39762a.append("GETFIELD");
                z10 = false;
                this.f39762a.append('\n');
                this.f39762a.append(str);
                a(0, c5829Qz.f43769b);
                this.f39762a.append('.');
                this.f39762a.append(c5829Qz.f43770c);
                if (!z10) {
                    this.f39762a.append('(');
                }
                a(9, c5829Qz.f43771d);
                if (!z10) {
                    this.f39762a.append(')');
                }
                if (c5829Qz.f43772e) {
                    this.f39762a.append(" itf");
                    return;
                }
                return;
            case 2:
                this.f39762a.append("GETSTATIC");
                z10 = false;
                this.f39762a.append('\n');
                this.f39762a.append(str);
                a(0, c5829Qz.f43769b);
                this.f39762a.append('.');
                this.f39762a.append(c5829Qz.f43770c);
                if (!z10) {
                }
                a(9, c5829Qz.f43771d);
                if (!z10) {
                }
                if (c5829Qz.f43772e) {
                }
                break;
            case 3:
                this.f39762a.append("PUTFIELD");
                z10 = false;
                this.f39762a.append('\n');
                this.f39762a.append(str);
                a(0, c5829Qz.f43769b);
                this.f39762a.append('.');
                this.f39762a.append(c5829Qz.f43770c);
                if (!z10) {
                }
                a(9, c5829Qz.f43771d);
                if (!z10) {
                }
                if (c5829Qz.f43772e) {
                }
                break;
            case 4:
                this.f39762a.append("PUTSTATIC");
                z10 = false;
                this.f39762a.append('\n');
                this.f39762a.append(str);
                a(0, c5829Qz.f43769b);
                this.f39762a.append('.');
                this.f39762a.append(c5829Qz.f43770c);
                if (!z10) {
                }
                a(9, c5829Qz.f43771d);
                if (!z10) {
                }
                if (c5829Qz.f43772e) {
                }
                break;
            case 5:
                this.f39762a.append("INVOKEVIRTUAL");
                this.f39762a.append('\n');
                this.f39762a.append(str);
                a(0, c5829Qz.f43769b);
                this.f39762a.append('.');
                this.f39762a.append(c5829Qz.f43770c);
                if (!z10) {
                }
                a(9, c5829Qz.f43771d);
                if (!z10) {
                }
                if (c5829Qz.f43772e) {
                }
                break;
            case 6:
                this.f39762a.append("INVOKESTATIC");
                this.f39762a.append('\n');
                this.f39762a.append(str);
                a(0, c5829Qz.f43769b);
                this.f39762a.append('.');
                this.f39762a.append(c5829Qz.f43770c);
                if (!z10) {
                }
                a(9, c5829Qz.f43771d);
                if (!z10) {
                }
                if (c5829Qz.f43772e) {
                }
                break;
            case 7:
                this.f39762a.append("INVOKESPECIAL");
                this.f39762a.append('\n');
                this.f39762a.append(str);
                a(0, c5829Qz.f43769b);
                this.f39762a.append('.');
                this.f39762a.append(c5829Qz.f43770c);
                if (!z10) {
                }
                a(9, c5829Qz.f43771d);
                if (!z10) {
                }
                if (c5829Qz.f43772e) {
                }
                break;
            case 8:
                this.f39762a.append("NEWINVOKESPECIAL");
                this.f39762a.append('\n');
                this.f39762a.append(str);
                a(0, c5829Qz.f43769b);
                this.f39762a.append('.');
                this.f39762a.append(c5829Qz.f43770c);
                if (!z10) {
                }
                a(9, c5829Qz.f43771d);
                if (!z10) {
                }
                if (c5829Qz.f43772e) {
                }
                break;
            case 9:
                this.f39762a.append("INVOKEINTERFACE");
                this.f39762a.append('\n');
                this.f39762a.append(str);
                a(0, c5829Qz.f43769b);
                this.f39762a.append('.');
                this.f39762a.append(c5829Qz.f43770c);
                if (!z10) {
                }
                a(9, c5829Qz.f43771d);
                if (!z10) {
                }
                if (c5829Qz.f43772e) {
                }
                break;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final void b(String str) {
        this.f39762a.setLength(0);
        int i10 = this.f40892j;
        this.f40892j = i10 + 1;
        b(i10);
        if (str != null) {
            StringBuilder sb2 = this.f39762a;
            sb2.append(str);
            sb2.append('=');
        }
    }

    public final void b(int i10) {
        if (i10 > 0) {
            this.f39762a.append(", ");
        }
    }

    public final C5293Hr0 a(int i10, C9666tu0 c9666tu0, String str, boolean z10) {
        this.f39762a.setLength(0);
        StringBuilder sb2 = this.f39762a;
        sb2.append(this.f40887e);
        sb2.append('@');
        a(1, str);
        this.f39762a.append('(');
        this.f39763b.add(this.f39762a.toString());
        this.f39762a.setLength(0);
        this.f39762a.append(") : ");
        a(i10);
        StringBuilder sb3 = this.f39762a;
        sb3.append(", ");
        sb3.append((Object) c9666tu0);
        this.f39762a.append(z10 ? "\n" : " // invisible\n");
        return a(this.f39762a.toString());
    }

    public final void a(Object obj) {
        if (obj instanceof Number) {
            if (obj instanceof Double) {
                StringBuilder sb2 = this.f39762a;
                sb2.append(obj);
                sb2.append('D');
                return;
            } else if (obj instanceof Float) {
                StringBuilder sb3 = this.f39762a;
                sb3.append(obj);
                sb3.append('F');
                return;
            } else {
                if (obj instanceof Long) {
                    StringBuilder sb4 = this.f39762a;
                    sb4.append(obj);
                    sb4.append('L');
                    return;
                }
                this.f39762a.append(obj);
                return;
            }
        }
        if (obj instanceof C9663tt0) {
            StringBuilder sb5 = this.f39762a;
            sb5.append(((C9663tt0) obj).b());
            sb5.append(".class");
        } else if (obj instanceof String) {
            E70.a(this.f39762a, obj.toString());
        } else {
            this.f39762a.append(obj);
        }
    }

    public final void a(C10127wh c10127wh, String str) {
        StringBuilder sb2 = this.f39762a;
        sb2.append(c10127wh.f53557a);
        sb2.append(" : ");
        sb2.append(c10127wh.f53558b);
        sb2.append(" [\n");
        StringBuilder sb3 = this.f39762a;
        sb3.append(str);
        sb3.append(this.f40887e);
        a(c10127wh.f53559c, str + this.f40887e);
        StringBuilder sb4 = this.f39762a;
        sb4.append('\n');
        sb4.append(str);
        sb4.append(this.f40887e);
        int length = c10127wh.f53560d.length;
        Object[] objArr = new Object[length];
        for (int i10 = 0; i10 < length; i10++) {
            objArr[i10] = c10127wh.f53560d[i10];
        }
        a(str + this.f40887e, objArr);
        StringBuilder sb5 = this.f39762a;
        sb5.append('\n');
        sb5.append(str);
        sb5.append(JavaElement.JEM_TYPE_PARAMETER);
    }

    public final void a(String str, Object[] objArr) {
        this.f39762a.append("// arguments:");
        if (objArr.length == 0) {
            this.f39762a.append(" none");
            return;
        }
        for (int i10 = 0; i10 < objArr.length; i10++) {
            Object obj = objArr[i10];
            if (i10 != 0) {
                this.f39762a.append(", ");
            }
            StringBuilder sb2 = this.f39762a;
            sb2.append('\n');
            sb2.append(str);
            if (obj instanceof C9663tt0) {
                C9663tt0 c9663tt0 = (C9663tt0) obj;
                if (c9663tt0.c() == 11) {
                    a(3, c9663tt0.b());
                } else {
                    StringBuilder sb3 = this.f39762a;
                    sb3.append(c9663tt0.a());
                    sb3.append(".class");
                }
            } else if (obj instanceof C5829Qz) {
                a((C5829Qz) obj, str);
            } else if (obj instanceof C10127wh) {
                StringBuilder sb4 = this.f39762a;
                sb4.append("// constant dynamic: ");
                sb4.append('\n');
                sb4.append(str);
                a((C10127wh) obj, str);
            } else {
                a(obj);
            }
        }
    }

    public final void a(int i10, String str) {
        if (i10 != 5 && i10 != 2 && i10 != 4) {
            this.f39762a.append(str);
        } else if (str != null) {
            StringBuilder sb2 = this.f39762a;
            sb2.append("// signature ");
            sb2.append(str);
            sb2.append('\n');
        }
    }

    public final void a(XQ xq) {
        if (this.f40891i == null) {
            this.f40891i = new HashMap();
        }
        String str = (String) this.f40891i.get(xq);
        if (str == null) {
            str = T60.a(this.f40891i.size(), "L");
            this.f40891i.put(xq, str);
        }
        this.f39762a.append(str);
    }

    public final void a(int i10) {
        int i11 = i10 >>> 24;
        if (i11 == 0) {
            StringBuilder sb2 = this.f39762a;
            sb2.append("CLASS_TYPE_PARAMETER ");
            sb2.append((i10 & Spanned.SPAN_PRIORITY) >> 16);
            return;
        }
        if (i11 != 1) {
            switch (i11) {
                case 16:
                    StringBuilder sb3 = this.f39762a;
                    sb3.append("CLASS_EXTENDS ");
                    sb3.append((int) ((short) ((i10 & 16776960) >> 8)));
                    return;
                case 17:
                    StringBuilder sb4 = this.f39762a;
                    sb4.append("CLASS_TYPE_PARAMETER_BOUND ");
                    sb4.append((16711680 & i10) >> 16);
                    sb4.append(", ");
                    sb4.append((i10 & 65280) >> 8);
                    return;
                case 18:
                    StringBuilder sb5 = this.f39762a;
                    sb5.append("METHOD_TYPE_PARAMETER_BOUND ");
                    sb5.append((16711680 & i10) >> 16);
                    sb5.append(", ");
                    sb5.append((i10 & 65280) >> 8);
                    return;
                case 19:
                    this.f39762a.append("FIELD");
                    return;
                case 20:
                    this.f39762a.append("METHOD_RETURN");
                    return;
                case 21:
                    this.f39762a.append("METHOD_RECEIVER");
                    return;
                case 22:
                    StringBuilder sb6 = this.f39762a;
                    sb6.append("METHOD_FORMAL_PARAMETER ");
                    sb6.append((i10 & Spanned.SPAN_PRIORITY) >> 16);
                    return;
                case 23:
                    StringBuilder sb7 = this.f39762a;
                    sb7.append("THROWS ");
                    sb7.append((i10 & 16776960) >> 8);
                    return;
                default:
                    switch (i11) {
                        case 64:
                            this.f39762a.append("LOCAL_VARIABLE");
                            return;
                        case 65:
                            this.f39762a.append("RESOURCE_VARIABLE");
                            return;
                        case 66:
                            StringBuilder sb8 = this.f39762a;
                            sb8.append("EXCEPTION_PARAMETER ");
                            sb8.append((i10 & 16776960) >> 8);
                            return;
                        case 67:
                            this.f39762a.append("INSTANCEOF");
                            return;
                        case 68:
                            this.f39762a.append("NEW");
                            return;
                        case 69:
                            this.f39762a.append("CONSTRUCTOR_REFERENCE");
                            return;
                        case 70:
                            this.f39762a.append("METHOD_REFERENCE");
                            return;
                        case 71:
                            StringBuilder sb9 = this.f39762a;
                            sb9.append("CAST ");
                            sb9.append(i10 & 255);
                            return;
                        case 72:
                            StringBuilder sb10 = this.f39762a;
                            sb10.append("CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT ");
                            sb10.append(i10 & 255);
                            return;
                        case 73:
                            StringBuilder sb11 = this.f39762a;
                            sb11.append("METHOD_INVOCATION_TYPE_ARGUMENT ");
                            sb11.append(i10 & 255);
                            return;
                        case 74:
                            StringBuilder sb12 = this.f39762a;
                            sb12.append("CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT ");
                            sb12.append(i10 & 255);
                            return;
                        case 75:
                            StringBuilder sb13 = this.f39762a;
                            sb13.append("METHOD_REFERENCE_TYPE_ARGUMENT ");
                            sb13.append(i10 & 255);
                            return;
                        default:
                            throw new IllegalArgumentException();
                    }
            }
        }
        StringBuilder sb14 = this.f39762a;
        sb14.append("METHOD_TYPE_PARAMETER ");
        sb14.append((i10 & Spanned.SPAN_PRIORITY) >> 16);
    }

    public final void a(int i10, Object[] objArr) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                this.f39762a.append(C15883c.f126249O);
            }
            Object obj = objArr[i11];
            if (obj instanceof String) {
                String str = (String) obj;
                if (str.charAt(0) == '[') {
                    a(1, str);
                } else {
                    a(0, str);
                }
            } else if (obj instanceof Integer) {
                this.f39762a.append((String) f40886k.get(((Integer) obj).intValue()));
            } else {
                a((XQ) obj);
            }
        }
    }

    public final C5293Hr0 a(String str) {
        C5293Hr0 c5293Hr0 = new C5293Hr0();
        this.f39763b.add(c5293Hr0.f39763b);
        if (str != null) {
            this.f39763b.add(str);
        }
        return c5293Hr0;
    }
}
