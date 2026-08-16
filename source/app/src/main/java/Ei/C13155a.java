package ei;

import com.bumptech.glide.load.engine.GlideException;
import em.h;
import java.math.BigInteger;
import oh.AbstractC14506b;
import oh.AbstractC14508c;
import oh.AbstractC14524k;
import oh.AbstractC14534p;
import oh.AbstractC14536q;
import oh.AbstractC14541t;
import oh.AbstractC14543u;
import oh.AbstractC14551y;
import oh.B;
import oh.C;
import oh.C14509c0;
import oh.C14512e;
import oh.C14517g0;
import oh.C14522j;
import oh.C14523j0;
import oh.C14527l0;
import oh.C14530n;
import oh.C14538r0;
import oh.C14539s;
import oh.C14547w;
import oh.C14549x;
import oh.D;
import oh.E;
import oh.G;
import oh.G0;
import oh.I0;
import oh.InterfaceC14516g;
import oh.K;
import oh.K0;
import oh.M;
import oh.P;
import oh.Q;
import oh.Q0;
import oh.V;
import oh.W;
import oh.X;
import org.bouncycastle.util.w;

public class C13155a {

    public static final String f85806a = "    ";

    public static final int f85807b = 32;

    public static void a(String str, boolean z10, B b10, StringBuffer stringBuffer) {
        StringBuilder sb2;
        String sb3;
        B L10;
        String string;
        BigInteger H10;
        StringBuilder sb4;
        String str2;
        String e10;
        String J10;
        StringBuilder sb5;
        int length;
        String f10 = w.f();
        if (!(b10 instanceof AbstractC14541t)) {
            int i10 = 0;
            if (b10 instanceof E) {
                stringBuffer.append(str);
                stringBuffer.append(b10 instanceof C14517g0 ? "BER Sequence" : b10 instanceof G0 ? "DER Sequence" : "Sequence");
                stringBuffer.append(f10);
                E e11 = (E) b10;
                String str3 = str + f85806a;
                int size = e11.size();
                while (i10 < size) {
                    a(str3, z10, e11.I(i10).r(), stringBuffer);
                    i10++;
                }
                return;
            }
            if (b10 instanceof G) {
                stringBuffer.append(str);
                stringBuffer.append(b10 instanceof C14523j0 ? "BER Set" : b10 instanceof I0 ? "DER Set" : "Set");
                stringBuffer.append(f10);
                G g10 = (G) b10;
                String str4 = str + f85806a;
                int size2 = g10.size();
                while (i10 < size2) {
                    a(str4, z10, g10.H(i10).r(), stringBuffer);
                    i10++;
                }
                return;
            }
            if (b10 instanceof M) {
                stringBuffer.append(str);
                stringBuffer.append(b10 instanceof C14527l0 ? "BER Tagged " : b10 instanceof K0 ? "DER Tagged " : "Tagged ");
                M m10 = (M) b10;
                stringBuffer.append(V.y(m10));
                if (!m10.X()) {
                    stringBuffer.append(" IMPLICIT ");
                }
                stringBuffer.append(f10);
                sb3 = str + f85806a;
                L10 = m10.L().r();
            } else {
                if (!(b10 instanceof AbstractC14551y)) {
                    if (b10 instanceof C14549x) {
                        sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append("ObjectIdentifier(");
                        J10 = ((C14549x) b10).J();
                    } else {
                        if (!(b10 instanceof D)) {
                            if (b10 instanceof C14512e) {
                                sb2 = new StringBuilder();
                                sb2.append(str);
                                sb2.append("Boolean(");
                                sb2.append(((C14512e) b10).J());
                            } else {
                                if (b10 instanceof C14539s) {
                                    sb2 = new StringBuilder();
                                    sb2.append(str);
                                    sb2.append("Integer(");
                                    H10 = ((C14539s) b10).I();
                                } else {
                                    if (!(b10 instanceof AbstractC14508c)) {
                                        if (b10 instanceof AbstractC14536q) {
                                            sb2 = new StringBuilder();
                                            sb2.append(str);
                                            sb2.append("IA5String(");
                                            string = ((AbstractC14536q) b10).getString();
                                        } else if (b10 instanceof Q) {
                                            sb2 = new StringBuilder();
                                            sb2.append(str);
                                            sb2.append("UTF8String(");
                                            string = ((Q) b10).getString();
                                        } else if (b10 instanceof AbstractC14543u) {
                                            sb2 = new StringBuilder();
                                            sb2.append(str);
                                            sb2.append("NumericString(");
                                            string = ((AbstractC14543u) b10).getString();
                                        } else if (b10 instanceof C) {
                                            sb2 = new StringBuilder();
                                            sb2.append(str);
                                            sb2.append("PrintableString(");
                                            string = ((C) b10).getString();
                                        } else if (b10 instanceof X) {
                                            sb2 = new StringBuilder();
                                            sb2.append(str);
                                            sb2.append("VisibleString(");
                                            string = ((X) b10).getString();
                                        } else if (b10 instanceof AbstractC14506b) {
                                            sb2 = new StringBuilder();
                                            sb2.append(str);
                                            sb2.append("BMPString(");
                                            string = ((AbstractC14506b) b10).getString();
                                        } else if (b10 instanceof K) {
                                            sb2 = new StringBuilder();
                                            sb2.append(str);
                                            sb2.append("T61String(");
                                            string = ((K) b10).getString();
                                        } else if (b10 instanceof AbstractC14534p) {
                                            sb2 = new StringBuilder();
                                            sb2.append(str);
                                            sb2.append("GraphicString(");
                                            string = ((AbstractC14534p) b10).getString();
                                        } else if (b10 instanceof W) {
                                            sb2 = new StringBuilder();
                                            sb2.append(str);
                                            sb2.append("VideotexString(");
                                            string = ((W) b10).getString();
                                        } else if (b10 instanceof P) {
                                            sb2 = new StringBuilder();
                                            sb2.append(str);
                                            sb2.append("UTCTime(");
                                            string = ((P) b10).L();
                                        } else if (b10 instanceof C14530n) {
                                            sb2 = new StringBuilder();
                                            sb2.append(str);
                                            sb2.append("GeneralizedTime(");
                                            string = ((C14530n) b10).L();
                                        } else if (b10 instanceof C14522j) {
                                            sb2 = new StringBuilder();
                                            sb2.append(str);
                                            sb2.append("DER Enumerated(");
                                            H10 = ((C14522j) b10).H();
                                        } else if (b10 instanceof C14547w) {
                                            sb2 = new StringBuilder();
                                            sb2.append(str);
                                            sb2.append("ObjectDescriptor(");
                                            string = ((C14547w) b10).F().getString();
                                        } else {
                                            if (!(b10 instanceof AbstractC14524k)) {
                                                sb2 = new StringBuilder();
                                                sb2.append(str);
                                                sb2.append(b10.toString());
                                                sb2.append(f10);
                                                e10 = sb2.toString();
                                                stringBuffer.append(e10);
                                                return;
                                            }
                                            AbstractC14524k abstractC14524k = (AbstractC14524k) b10;
                                            stringBuffer.append(str + "External " + f10);
                                            StringBuilder sb6 = new StringBuilder();
                                            sb6.append(str);
                                            sb6.append(f85806a);
                                            sb3 = sb6.toString();
                                            if (abstractC14524k.I() != null) {
                                                stringBuffer.append(sb3 + "Direct Reference: " + abstractC14524k.I().J() + f10);
                                            }
                                            if (abstractC14524k.N() != null) {
                                                stringBuffer.append(sb3 + "Indirect Reference: " + abstractC14524k.N().toString() + f10);
                                            }
                                            if (abstractC14524k.H() != null) {
                                                a(sb3, z10, abstractC14524k.H(), stringBuffer);
                                            }
                                            stringBuffer.append(sb3 + "Encoding: " + abstractC14524k.J() + f10);
                                            L10 = abstractC14524k.L();
                                        }
                                        sb2.append(string);
                                        sb2.append(") ");
                                        sb2.append(f10);
                                        e10 = sb2.toString();
                                        stringBuffer.append(e10);
                                        return;
                                    }
                                    AbstractC14508c abstractC14508c = (AbstractC14508c) b10;
                                    byte[] F10 = abstractC14508c.F();
                                    int n10 = abstractC14508c.n();
                                    if (abstractC14508c instanceof C14538r0) {
                                        sb4 = new StringBuilder();
                                        sb4.append(str);
                                        str2 = "DER Bit String[";
                                    } else if (abstractC14508c instanceof Q0) {
                                        sb4 = new StringBuilder();
                                        sb4.append(str);
                                        str2 = "DL Bit String[";
                                    } else {
                                        sb4 = new StringBuilder();
                                        sb4.append(str);
                                        str2 = "BER Bit String[";
                                    }
                                    sb4.append(str2);
                                    sb4.append(F10.length);
                                    sb4.append(", ");
                                    sb4.append(n10);
                                    sb4.append("] ");
                                    stringBuffer.append(sb4.toString());
                                    if (z10) {
                                        e10 = e(str, F10);
                                        stringBuffer.append(e10);
                                        return;
                                    }
                                }
                                sb2.append((Object) H10);
                            }
                            sb2.append(")");
                            sb2.append(f10);
                            e10 = sb2.toString();
                            stringBuffer.append(e10);
                            return;
                        }
                        sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append("RelativeOID(");
                        J10 = ((D) b10).J();
                    }
                    sb2.append(J10);
                    sb2.append(")");
                    sb2.append(f10);
                    e10 = sb2.toString();
                    stringBuffer.append(e10);
                    return;
                }
                AbstractC14551y abstractC14551y = (AbstractC14551y) b10;
                if (b10 instanceof C14509c0) {
                    sb5 = new StringBuilder();
                    sb5.append(str);
                    sb5.append("BER Constructed Octet String[");
                    length = abstractC14551y.H().length;
                } else {
                    sb5 = new StringBuilder();
                    sb5.append(str);
                    sb5.append("DER Octet String[");
                    length = abstractC14551y.H().length;
                }
                sb5.append(length);
                sb5.append("] ");
                stringBuffer.append(sb5.toString());
                if (z10) {
                    e10 = e(str, abstractC14551y.H());
                    stringBuffer.append(e10);
                    return;
                }
            }
            a(sb3, z10, L10, stringBuffer);
            return;
        }
        stringBuffer.append(str);
        stringBuffer.append("NULL");
        stringBuffer.append(f10);
    }

    public static String b(byte[] bArr, int i10, int i11) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i12 = i10; i12 != i10 + i11; i12++) {
            byte b10 = bArr[i12];
            if (b10 >= 32 && b10 <= 126) {
                stringBuffer.append((char) b10);
            }
        }
        return stringBuffer.toString();
    }

    public static String c(Object obj) {
        return d(obj, false);
    }

    public static String d(Object obj, boolean z10) {
        B r10;
        if (obj instanceof B) {
            r10 = (B) obj;
        } else {
            if (!(obj instanceof InterfaceC14516g)) {
                return "unknown object type " + obj.toString();
            }
            r10 = ((InterfaceC14516g) obj).r();
        }
        StringBuffer stringBuffer = new StringBuffer();
        a("", z10, r10, stringBuffer);
        return stringBuffer.toString();
    }

    public static String e(String str, byte[] bArr) {
        String b10;
        String f10 = w.f();
        StringBuffer stringBuffer = new StringBuffer();
        String str2 = str + f85806a;
        stringBuffer.append(f10);
        for (int i10 = 0; i10 < bArr.length; i10 += 32) {
            int length = bArr.length - i10;
            stringBuffer.append(str2);
            if (length > 32) {
                stringBuffer.append(w.c(h.i(bArr, i10, 32)));
                stringBuffer.append(f85806a);
                b10 = b(bArr, i10, 32);
            } else {
                stringBuffer.append(w.c(h.i(bArr, i10, bArr.length - i10)));
                for (int length2 = bArr.length - i10; length2 != 32; length2++) {
                    stringBuffer.append(GlideException.a.f59088e);
                }
                stringBuffer.append(f85806a);
                b10 = b(bArr, i10, bArr.length - i10);
            }
            stringBuffer.append(b10);
            stringBuffer.append(f10);
        }
        return stringBuffer.toString();
    }
}
