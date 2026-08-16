package tk;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import vk.C15859d;

public class C15466c extends FilterOutputStream {

    public static byte[] f117710d;

    public int f117711b;

    public final boolean f117712c;

    static {
        f117710d = r0;
        byte[] bArr = {13, 10};
    }

    public C15466c(C15859d c15859d, C15468e c15468e, OutputStream outputStream) {
        super(outputStream);
        this.f117711b = -1;
        this.f117712c = c15468e.h() != null ? (c15468e.h() == null || c15468e.h().equals("binary")) ? false : true : c15859d.a().equals("7bit");
    }

    public void c() throws IOException {
        this.out.write(f117710d);
    }

    @Override
    public void write(int i10) throws IOException {
        if (this.f117712c) {
            if (i10 == 13) {
                this.out.write(f117710d);
            } else if (i10 == 10) {
                if (this.f117711b != 13) {
                    this.out.write(f117710d);
                }
            }
            this.f117711b = i10;
        }
        this.out.write(i10);
        this.f117711b = i10;
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        for (int i12 = i10; i12 != i10 + i11; i12++) {
            write(bArr[i12]);
        }
    }
}
