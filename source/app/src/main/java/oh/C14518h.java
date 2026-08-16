package oh;

public class C14518h {

    public static final InterfaceC14516g[] f98885d = new InterfaceC14516g[0];

    public static final int f98886e = 10;

    public InterfaceC14516g[] f98887a;

    public int f98888b;

    public boolean f98889c;

    public C14518h() {
        this(10);
    }

    public static InterfaceC14516g[] d(InterfaceC14516g[] interfaceC14516gArr) {
        return interfaceC14516gArr.length < 1 ? f98885d : (InterfaceC14516g[]) interfaceC14516gArr.clone();
    }

    public void a(InterfaceC14516g interfaceC14516g) {
        if (interfaceC14516g == null) {
            throw new NullPointerException("'element' cannot be null");
        }
        int length = this.f98887a.length;
        int i10 = this.f98888b + 1;
        if (this.f98889c | (i10 > length)) {
            h(i10);
        }
        this.f98887a[this.f98888b] = interfaceC14516g;
        this.f98888b = i10;
    }

    public void b(C14518h c14518h) {
        if (c14518h == null) {
            throw new NullPointerException("'other' cannot be null");
        }
        f(c14518h.f98887a, "'other' elements cannot be null");
    }

    public void c(InterfaceC14516g[] interfaceC14516gArr) {
        if (interfaceC14516gArr == null) {
            throw new NullPointerException("'others' cannot be null");
        }
        f(interfaceC14516gArr, "'others' elements cannot be null");
    }

    public InterfaceC14516g[] e() {
        int i10 = this.f98888b;
        if (i10 == 0) {
            return f98885d;
        }
        InterfaceC14516g[] interfaceC14516gArr = new InterfaceC14516g[i10];
        System.arraycopy(this.f98887a, 0, interfaceC14516gArr, 0, i10);
        return interfaceC14516gArr;
    }

    public final void f(InterfaceC14516g[] interfaceC14516gArr, String str) {
        int length = interfaceC14516gArr.length;
        if (length < 1) {
            return;
        }
        int length2 = this.f98887a.length;
        int i10 = this.f98888b + length;
        int i11 = 0;
        if ((i10 > length2) | this.f98889c) {
            h(i10);
        }
        do {
            InterfaceC14516g interfaceC14516g = interfaceC14516gArr[i11];
            if (interfaceC14516g == null) {
                throw new NullPointerException(str);
            }
            this.f98887a[this.f98888b + i11] = interfaceC14516g;
            i11++;
        } while (i11 < length);
        this.f98888b = i10;
    }

    public InterfaceC14516g g(int i10) {
        if (i10 < this.f98888b) {
            return this.f98887a[i10];
        }
        throw new ArrayIndexOutOfBoundsException(i10 + " >= " + this.f98888b);
    }

    public final void h(int i10) {
        InterfaceC14516g[] interfaceC14516gArr = new InterfaceC14516g[Math.max(this.f98887a.length, i10 + (i10 >> 1))];
        System.arraycopy(this.f98887a, 0, interfaceC14516gArr, 0, this.f98888b);
        this.f98887a = interfaceC14516gArr;
        this.f98889c = false;
    }

    public int i() {
        return this.f98888b;
    }

    public InterfaceC14516g[] j() {
        int i10 = this.f98888b;
        if (i10 == 0) {
            return f98885d;
        }
        InterfaceC14516g[] interfaceC14516gArr = this.f98887a;
        if (interfaceC14516gArr.length == i10) {
            this.f98889c = true;
            return interfaceC14516gArr;
        }
        InterfaceC14516g[] interfaceC14516gArr2 = new InterfaceC14516g[i10];
        System.arraycopy(interfaceC14516gArr, 0, interfaceC14516gArr2, 0, i10);
        return interfaceC14516gArr2;
    }

    public C14518h(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("'initialCapacity' must not be negative");
        }
        this.f98887a = i10 == 0 ? f98885d : new InterfaceC14516g[i10];
        this.f98888b = 0;
        this.f98889c = false;
    }
}
