package oh;

import java.io.IOException;
import java.io.OutputStream;

public abstract class AbstractC14507b0 extends AbstractC14532o {

    public boolean f98853b;

    public boolean f98854c;

    public int f98855d;

    public AbstractC14507b0(OutputStream outputStream) {
        super(outputStream);
        this.f98853b = false;
    }

    @Override
    public OutputStream a() {
        return this.f98960a;
    }

    public void b() throws IOException {
        this.f98960a.write(0);
        this.f98960a.write(0);
        if (this.f98853b && this.f98854c) {
            this.f98960a.write(0);
            this.f98960a.write(0);
        }
    }

    public void c(int i10) throws IOException {
        if (this.f98853b) {
            int i11 = this.f98855d;
            int i12 = i11 | 128;
            if (this.f98854c) {
                d(i11 | 160);
            } else {
                if ((i10 & 32) == 0) {
                    d(i12);
                    return;
                }
                i10 = i11 | 160;
            }
        }
        d(i10);
    }

    public final void d(int i10) throws IOException {
        this.f98960a.write(i10);
        this.f98960a.write(128);
    }

    public AbstractC14507b0(OutputStream outputStream, int i10, boolean z10) {
        super(outputStream);
        this.f98853b = true;
        this.f98854c = z10;
        this.f98855d = i10;
    }
}
