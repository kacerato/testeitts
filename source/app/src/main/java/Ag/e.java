package Ag;

import java.io.IOException;
import java.util.zip.Deflater;

public class e extends c {

    public byte[] f549c;

    public Deflater f550d;

    public e(b<?> bVar, Cg.c cVar, int i10) {
        super(bVar);
        this.f550d = new Deflater(cVar.a(), true);
        this.f549c = new byte[i10];
    }

    @Override
    public void c() throws IOException {
        if (!this.f550d.finished()) {
            this.f550d.finish();
            while (!this.f550d.finished()) {
                e();
            }
        }
        this.f550d.end();
        super.c();
    }

    public final void e() throws IOException {
        Deflater deflater = this.f550d;
        byte[] bArr = this.f549c;
        int deflate = deflater.deflate(bArr, 0, bArr.length);
        if (deflate > 0) {
            super.write(this.f549c, 0, deflate);
        }
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f550d.setInput(bArr, i10, i11);
        while (!this.f550d.needsInput()) {
            e();
        }
    }
}
