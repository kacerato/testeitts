package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4708t4;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import org.objectweb.asm.Opcodes;

public final class OK extends QW {

    public final BitSet f42853A;

    public final BitSet f42854y;

    public final HashMap f42855z;

    public OK(C4708t4 c4708t4, int i10, String str, String str2, String[] strArr) {
        super(Opcodes.ASM9, i10, str, str2, strArr);
        this.f42854y = new BitSet();
        this.f42855z = new HashMap();
        this.f42853A = new BitSet();
        this.f39547b = c4708t4;
    }

    @Override
    public final void a(int i10, XQ xq) {
        super.a(i10, xq);
        YQ yq = ((C9241rL) this.f43609q.f42826d).f52025g;
        if (i10 != 168 || this.f42855z.containsKey(yq)) {
            return;
        }
        this.f42855z.put(yq, new BitSet());
    }

    public final void b(int i10, BitSet bitSet, BitSet bitSet2) {
        boolean z10;
        a(i10, bitSet, bitSet2);
        do {
            z10 = false;
            for (C8996pt0 c8996pt0 : this.f43610r) {
                int b10 = this.f43609q.b(c8996pt0.f51652c);
                if (!bitSet.get(b10)) {
                    int b11 = this.f43609q.b(c8996pt0.f51650a);
                    int b12 = this.f43609q.b(c8996pt0.f51651b);
                    int nextSetBit = bitSet.nextSetBit(b11);
                    if (nextSetBit >= b11 && nextSetBit < b12) {
                        a(b10, bitSet, bitSet2);
                        z10 = true;
                    }
                }
            }
        } while (z10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0116, code lost:
    
        r8 = r18.f43610r.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0120, code lost:
    
        if (r8.hasNext() == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0122, code lost:
    
        r9 = (com.android.tools.r8.internal.C8996pt0) r8.next();
        r10 = (com.android.tools.r8.internal.YQ) r7.f42560d.get(r9.f51650a);
        r11 = (com.android.tools.r8.internal.YQ) r7.f42560d.get(r9.f51651b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x013c, code lost:
    
        if (r10 == r11) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x013e, code lost:
    
        r12 = r9.f51652c;
        r12 = (com.android.tools.r8.internal.YQ) r7.a(r7.f42562f.f43609q.b(r12)).f42560d.get(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0154, code lost:
    
        if (r10 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0156, code lost:
    
        if (r11 == null) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0158, code lost:
    
        if (r12 == null) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x015a, code lost:
    
        r4.add(new com.android.tools.r8.internal.C8996pt0(r10, r11, r12, r9.f51653d));
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x016c, code lost:
    
        throw new java.lang.AssertionError((java.lang.Object) "Internal error!");
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x016d, code lost:
    
        r8 = r18.f43613u.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0177, code lost:
    
        if (r8.hasNext() == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0179, code lost:
    
        r9 = (com.android.tools.r8.internal.ST) r8.next();
        r15 = (com.android.tools.r8.internal.YQ) r7.f42560d.get(r9.f44215d);
        r10 = (com.android.tools.r8.internal.YQ) r7.f42560d.get(r9.f44216e);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0194, code lost:
    
        if (r15 == r10) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0196, code lost:
    
        r6.add(new com.android.tools.r8.internal.ST(r9.f44212a, r9.f44213b, r9.f44214c, r15, r10, r9.f44217f));
        r3 = 0;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c() {
        if (!this.f42855z.isEmpty()) {
            BitSet bitSet = new BitSet();
            int i10 = 0;
            b(0, this.f42854y, bitSet);
            for (Map.Entry entry : this.f42855z.entrySet()) {
                b(this.f43609q.b((YQ) entry.getKey()), (BitSet) entry.getValue(), bitSet);
            }
            LinkedList linkedList = new LinkedList();
            linkedList.add(new NK(this, null, this.f42854y));
            OD od2 = new OD();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            while (!linkedList.isEmpty()) {
                NK nk2 = (NK) linkedList.removeFirst();
                int i11 = i10;
                YQ yq = null;
                while (true) {
                    OD od3 = this.f43609q;
                    if (i11 >= od3.f42824b) {
                        break;
                    }
                    H j10 = od3.j(i11);
                    if (j10.a() == 8) {
                        YQ yq2 = (YQ) nk2.f42560d.get((YQ) j10);
                        if (yq2 != yq) {
                            od2.a(yq2);
                            yq = yq2;
                        }
                    } else if (nk2.a(i11) != nk2) {
                        continue;
                    } else {
                        int i12 = j10.f40639a;
                        if (i12 == 169) {
                            YQ yq3 = null;
                            for (NK nk3 = nk2; nk3 != null; nk3 = nk3.f42558b) {
                                if (nk3.f42559c.get(i11)) {
                                    yq3 = nk3.f42561e;
                                }
                            }
                            if (yq3 == null) {
                                throw new IllegalArgumentException(HC.a(i11, "Instruction #", " is a RET not owned by any subroutine"));
                            }
                            od2.a(new C9241rL(167, yq3));
                        } else if (i12 == 168) {
                            YQ yq4 = ((C9241rL) j10).f52025g;
                            NK nk4 = new NK(this, nk2, (BitSet) this.f42855z.get(yq4));
                            YQ yq5 = (YQ) nk4.a(this.f43609q.b(yq4)).f42560d.get(yq4);
                            od2.a(new PD(1));
                            od2.a(new C9241rL(167, yq5));
                            od2.a(nk4.f42561e);
                            linkedList.add(nk4);
                        } else {
                            od2.a(j10.a(nk2));
                        }
                    }
                    i11++;
                }
            }
            this.f43609q = od2;
            this.f43610r = arrayList;
            this.f43613u = arrayList2;
        }
        DX dx = this.f39547b;
        if (dx != null) {
            a(dx);
        }
    }

    public final void a(int i10, BitSet bitSet, BitSet bitSet2) {
        while (i10 < this.f43609q.f42824b && !bitSet.get(i10)) {
            bitSet.set(i10);
            if (bitSet2.get(i10)) {
                this.f42853A.set(i10);
            }
            bitSet2.set(i10);
            H j10 = this.f43609q.j(i10);
            if (j10.a() == 7 && j10.f40639a != 168) {
                a(this.f43609q.b(((C9241rL) j10).f52025g), bitSet, bitSet2);
            } else {
                int i11 = 0;
                if (j10.a() == 11) {
                    C10158wr0 c10158wr0 = (C10158wr0) j10;
                    a(this.f43609q.b(c10158wr0.f53628i), bitSet, bitSet2);
                    ArrayList arrayList = c10158wr0.f53629j;
                    int size = arrayList.size();
                    while (i11 < size) {
                        Object obj = arrayList.get(i11);
                        i11++;
                        a(this.f43609q.b((YQ) obj), bitSet, bitSet2);
                    }
                } else if (j10.a() == 12) {
                    C9927vU c9927vU = (C9927vU) j10;
                    a(this.f43609q.b(c9927vU.f53128g), bitSet, bitSet2);
                    ArrayList arrayList2 = c9927vU.f53130i;
                    int size2 = arrayList2.size();
                    while (i11 < size2) {
                        Object obj2 = arrayList2.get(i11);
                        i11++;
                        a(this.f43609q.b((YQ) obj2), bitSet, bitSet2);
                    }
                }
            }
            int i12 = this.f43609q.j(i10).f40639a;
            if (i12 == 167 || i12 == 191) {
                return;
            }
            switch (i12) {
                case 169:
                case 170:
                case 171:
                case 172:
                case 173:
                case 174:
                case 175:
                case 176:
                case 177:
                    return;
                default:
                    i10++;
            }
        }
    }
}
