package hi;

import java.util.Vector;

public class C13483G {

    public Vector f90652a = new Vector();

    public C13483G a(C13481E c13481e) {
        this.f90652a.addElement(c13481e);
        return this;
    }

    public C13483G b(C13482F c13482f) {
        C13481E[] y10 = c13482f.y();
        for (int i10 = 0; i10 != y10.length; i10++) {
            this.f90652a.addElement(y10[i10]);
        }
        return this;
    }

    public C13482F c() {
        int size = this.f90652a.size();
        C13481E[] c13481eArr = new C13481E[size];
        for (int i10 = 0; i10 != size; i10++) {
            c13481eArr[i10] = (C13481E) this.f90652a.elementAt(i10);
        }
        return new C13482F(c13481eArr);
    }
}
