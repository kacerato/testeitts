package zg;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

public class m extends h {

    public RandomAccessFile f131341b;

    public File f131342c;

    public int f131343d;

    public boolean f131344e;

    public int f131345f;

    public byte[] f131346g = new byte[1];

    public m(File file, boolean z10, int i10) throws FileNotFoundException {
        this.f131345f = 0;
        this.f131341b = new RandomAccessFile(file, Cg.f.READ.a());
        this.f131342c = file;
        this.f131344e = z10;
        this.f131343d = i10;
        if (z10) {
            this.f131345f = i10;
        }
    }

    @Override
    public void a(Bg.j jVar) throws IOException {
        if (this.f131344e && this.f131345f != jVar.O()) {
            c(jVar.O());
            this.f131345f = jVar.O();
        }
        this.f131341b.seek(jVar.T());
    }

    public File b(int i10) throws IOException {
        if (i10 == this.f131343d) {
            return this.f131342c;
        }
        String canonicalPath = this.f131342c.getCanonicalPath();
        return new File(canonicalPath.substring(0, canonicalPath.lastIndexOf(".")) + (i10 >= 9 ? ".z" : ".z0") + (i10 + 1));
    }

    public void c(int i10) throws IOException {
        File b10 = b(i10);
        if (b10.exists()) {
            this.f131341b.close();
            this.f131341b = new RandomAccessFile(b10, Cg.f.READ.a());
        } else {
            throw new FileNotFoundException("zip split file does not exist: " + ((Object) b10));
        }
    }

    @Override
    public void close() throws IOException {
        RandomAccessFile randomAccessFile = this.f131341b;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
    }

    @Override
    public int read() throws IOException {
        if (read(this.f131346g) == -1) {
            return -1;
        }
        return this.f131346g[0];
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int read = this.f131341b.read(bArr, i10, i11);
        if ((read == i11 && read != -1) || !this.f131344e) {
            return read;
        }
        c(this.f131345f + 1);
        this.f131345f++;
        if (read < 0) {
            read = 0;
        }
        int read2 = this.f131341b.read(bArr, read, i11 - read);
        return read2 > 0 ? read + read2 : read;
    }
}
