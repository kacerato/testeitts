package gm;

import em.C13168c;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Writer;
import org.bouncycastle.util.w;

public class f extends BufferedWriter {

    public static final int f90126d = 64;

    public final int f90127b;

    public char[] f90128c;

    public f(Writer writer) {
        super(writer);
        this.f90128c = new char[64];
        String f10 = w.f();
        this.f90127b = f10 != null ? f10.length() : 2;
    }

    public int a(C13401b c13401b) {
        int length = ((c13401b.d().length() + 10 + this.f90127b) * 2) + 10;
        if (!c13401b.c().isEmpty()) {
            for (C13400a c13400a : c13401b.c()) {
                length += c13400a.b().length() + 2 + c13400a.c().length() + this.f90127b;
            }
            length += this.f90127b;
        }
        int length2 = ((c13401b.b().length + 2) / 3) * 4;
        return length + length2 + (((length2 + 63) / 64) * this.f90127b);
    }

    public final void b(byte[] bArr) throws IOException {
        char[] cArr;
        int i10;
        byte[] g10 = C13168c.g(bArr);
        int i11 = 0;
        while (i11 < g10.length) {
            int i12 = 0;
            while (true) {
                cArr = this.f90128c;
                if (i12 != cArr.length && (i10 = i11 + i12) < g10.length) {
                    cArr[i12] = (char) g10[i10];
                    i12++;
                }
            }
            write(cArr, 0, i12);
            newLine();
            i11 += this.f90128c.length;
        }
    }

    public void c(InterfaceC13402c interfaceC13402c) throws IOException {
        C13401b a10 = interfaceC13402c.a();
        e(a10.d());
        if (!a10.c().isEmpty()) {
            for (C13400a c13400a : a10.c()) {
                write(c13400a.b());
                write(": ");
                write(c13400a.c());
                newLine();
            }
            newLine();
        }
        b(a10.b());
        d(a10.d());
    }

    public final void d(String str) throws IOException {
        write(e.f90125c + str + "-----");
        newLine();
    }

    public final void e(String str) throws IOException {
        write(e.f90124b + str + "-----");
        newLine();
    }
}
