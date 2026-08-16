package wg;

public class C16002e {

    public byte[] f127467a;

    public int f127468b;

    public String f127469c;

    public String f127470d;

    public byte[] f127471e;

    public C16002e() {
        this.f127469c = null;
        this.f127470d = "UTF-8";
        this.f127467a = null;
        this.f127468b = 1000;
        this.f127471e = null;
    }

    public byte[] a() {
        return this.f127471e;
    }

    public String b() {
        return this.f127469c;
    }

    public String c() {
        return this.f127470d;
    }

    public int d() {
        return this.f127468b;
    }

    public byte[] e() {
        return this.f127467a;
    }

    public void f(byte[] bArr) {
        this.f127471e = bArr;
    }

    public void g(String str) {
        this.f127469c = str;
    }

    public void h(String str) {
        this.f127470d = str;
    }

    public void i(int i10) {
        this.f127468b = i10;
    }

    public void j(byte[] bArr) {
        this.f127467a = bArr;
    }

    public C16002e(String str, String str2, byte[] bArr, int i10) {
        this(str, str2, bArr, i10, null);
    }

    public C16002e(String str, String str2, byte[] bArr, int i10, byte[] bArr2) {
        this.f127469c = str;
        this.f127470d = str2;
        this.f127467a = bArr;
        this.f127468b = i10;
        this.f127471e = bArr2;
    }
}
