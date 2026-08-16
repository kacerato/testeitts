package com.android.tools.r8.internal;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Iterator;
import w2.C15883c;

public final class C8944pc extends QW {

    public final DX f51571y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8944pc(int i10, int i11, String str, String str2, DX dx) {
        super(i10, i11, str, str2, null);
        this.f51571y = dx;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x012d A[EDGE_INSN: B:43:0x012d->B:44:0x012d BREAK  A[LOOP:0: B:23:0x008a->B:33:0x00fe], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0139 A[LOOP:4: B:45:0x0133->B:47:0x0139, LOOP_END] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11, types: [com.android.tools.r8.internal.DX] */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.android.tools.r8.internal.r2] */
    /* JADX WARN: Type inference failed for: r3v5 */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c() {
        boolean z10;
        boolean z11;
        C9189r2 c9189r2;
        PrintWriter printWriter;
        C5293Hr0 c5293Hr0;
        int i10;
        OD od2;
        Iterator it;
        int i11 = this.f43612t;
        int i12 = this.f43611s;
        DX dx = this.f51571y;
        if (dx instanceof C9277rc) {
            C9277rc c9277rc = (C9277rc) dx;
            c9277rc.f52074d.getClass();
            c9277rc.f52074d.getClass();
            if ((c9277rc.f52073c & 65535) >= 51) {
                c9277rc.f52074d.getClass();
                z10 = true;
            } else {
                z10 = false;
            }
            z11 = true;
        } else {
            z10 = false;
            z11 = false;
        }
        ?? c8777oc = z10 ? new C8777oc(new C6867d6()) : new C9189r2(new C6867d6());
        try {
            if (z11) {
                c8777oc.a(this);
            } else {
                c8777oc.b(this);
            }
            c8777oc = this.f51571y;
            if (c8777oc != 0) {
                this.f43612t = i11;
                this.f43611s = i12;
                a((DX) c8777oc);
            }
        } catch (C9356s2 e10) {
            e = e10;
            c9189r2 = c8777oc;
            StringWriter stringWriter = new StringWriter();
            printWriter = new PrintWriter((Writer) stringWriter, true);
            c5293Hr0 = new C5293Hr0();
            C5179Fs0 c5179Fs0 = new C5179Fs0(c5293Hr0);
            printWriter.println(this.f43596d + this.f43597e);
            i10 = 0;
            while (true) {
                od2 = this.f43609q;
                if (i10 < od2.f42824b) {
                    break;
                }
                od2.j(i10).a(c5179Fs0);
                StringBuilder sb2 = new StringBuilder();
                C7342fy c7342fy = c9189r2.f51946e[i10];
                if (c7342fy == null) {
                    sb2.append('?');
                } else {
                    for (int i13 = 0; i13 < c7342fy.f48152c; i13++) {
                        sb2.append(AbstractC8443mc.e(((C6700c6) c7342fy.a(i13)).toString()));
                        sb2.append(C15883c.f126249O);
                    }
                    sb2.append(" : ");
                    for (int i14 = 0; i14 < c7342fy.f48153d; i14++) {
                        sb2.append(AbstractC8443mc.e(((C6700c6) c7342fy.f48151b[c7342fy.f48152c + i14]).toString()));
                        sb2.append(C15883c.f126249O);
                    }
                }
                while (sb2.length() < this.f43611s + this.f43612t + 1) {
                    sb2.append(C15883c.f126249O);
                }
                printWriter.print(Integer.toString(100000 + i10).substring(1));
                printWriter.print(" " + ((Object) sb2) + " : " + J6.a(c5293Hr0.f39763b, 1));
                i10++;
            }
            it = this.f43610r.iterator();
            while (it.hasNext()) {
                ((C8996pt0) it.next()).a(c5179Fs0);
                printWriter.print(" " + J6.a(c5293Hr0.f39763b, 1));
            }
            printWriter.println();
            printWriter.close();
            throw new IllegalArgumentException(e.getMessage() + " " + stringWriter.toString(), e);
        } catch (IndexOutOfBoundsException e11) {
            e = e11;
            c9189r2 = c8777oc;
            StringWriter stringWriter2 = new StringWriter();
            printWriter = new PrintWriter((Writer) stringWriter2, true);
            c5293Hr0 = new C5293Hr0();
            C5179Fs0 c5179Fs02 = new C5179Fs0(c5293Hr0);
            printWriter.println(this.f43596d + this.f43597e);
            i10 = 0;
            while (true) {
                od2 = this.f43609q;
                if (i10 < od2.f42824b) {
                }
                printWriter.print(Integer.toString(100000 + i10).substring(1));
                printWriter.print(" " + ((Object) sb2) + " : " + J6.a(c5293Hr0.f39763b, 1));
                i10++;
            }
            it = this.f43610r.iterator();
            while (it.hasNext()) {
            }
            printWriter.println();
            printWriter.close();
            throw new IllegalArgumentException(e.getMessage() + " " + stringWriter2.toString(), e);
        }
    }
}
