package com.android.tools.r8.internal;

public final class VA {

    public final W5 f44991a;

    public FH f44992b = new FH();

    public FH f44993c = new FH();

    public final FH f44994d = new FH();

    public FH f44995e = new FH();

    public final C6382aB f44996f;

    public VA(C6382aB c6382aB) {
        this.f44996f = c6382aB;
        this.f44991a = new W5(c6382aB.f46441C);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("block ");
        sb2.append(this.f44991a.r());
        sb2.append(" predecessors: ");
        FH fh2 = this.f44992b;
        fh2.getClass();
        EH eh2 = new EH(fh2);
        String str = "";
        String str2 = "";
        while (eh2.hasNext()) {
            int r10 = eh2.r();
            sb2.append(str2);
            sb2.append(r10);
            str2 = ", ";
        }
        FH fh3 = this.f44994d;
        fh3.getClass();
        EH eh3 = new EH(fh3);
        while (eh3.hasNext()) {
            int r11 = eh3.r();
            sb2.append(str2);
            sb2.append('*');
            sb2.append(r11);
            str2 = ", ";
        }
        sb2.append(" successors: ");
        FH fh4 = this.f44993c;
        fh4.getClass();
        EH eh4 = new EH(fh4);
        while (eh4.hasNext()) {
            int r12 = eh4.r();
            sb2.append(str);
            sb2.append(r12);
            str = ", ";
        }
        FH fh5 = this.f44995e;
        fh5.getClass();
        EH eh5 = new EH(fh5);
        while (eh5.hasNext()) {
            int r13 = eh5.r();
            sb2.append(str);
            sb2.append('*');
            sb2.append(r13);
            str = ", ";
        }
        return sb2.toString();
    }
}
