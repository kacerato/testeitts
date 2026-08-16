package Dg;

public class a {

    public b f5165a;

    public long f5166b;

    public long f5167c;

    public int f5168d;

    public c f5169e;

    public String f5170f;

    public EnumC0097a f5171g;

    public Exception f5172h;

    public boolean f5173i;

    public boolean f5174j;

    public enum EnumC0097a {
        SUCCESS,
        WORK_IN_PROGRESS,
        ERROR,
        CANCELLED
    }

    public enum b {
        READY,
        BUSY
    }

    public enum c {
        NONE,
        ADD_ENTRY,
        REMOVE_ENTRY,
        CALCULATE_CRC,
        EXTRACT_ENTRY,
        MERGE_ZIP_FILES,
        SET_COMMENT,
        RENAME_FILE
    }

    public a() {
        n();
    }

    public void a() {
        this.f5171g = EnumC0097a.SUCCESS;
        this.f5168d = 100;
        n();
    }

    public void b(Exception exc) {
        this.f5171g = EnumC0097a.ERROR;
        this.f5172h = exc;
        n();
    }

    public void c() {
        n();
        this.f5170f = null;
        this.f5166b = 0L;
        this.f5167c = 0L;
        this.f5168d = 0;
    }

    public c d() {
        return this.f5169e;
    }

    public Exception e() {
        return this.f5172h;
    }

    public String f() {
        return this.f5170f;
    }

    public int g() {
        return this.f5168d;
    }

    public EnumC0097a h() {
        return this.f5171g;
    }

    public b i() {
        return this.f5165a;
    }

    public long j() {
        return this.f5166b;
    }

    public long k() {
        return this.f5167c;
    }

    public boolean l() {
        return this.f5173i;
    }

    public boolean m() {
        return this.f5174j;
    }

    public final void n() {
        this.f5169e = c.NONE;
        this.f5165a = b.READY;
    }

    public void o(boolean z10) {
        this.f5173i = z10;
    }

    public void p(c cVar) {
        this.f5169e = cVar;
    }

    public void q(Exception exc) {
        this.f5172h = exc;
    }

    public void r(String str) {
        this.f5170f = str;
    }

    public void s(boolean z10) {
        this.f5174j = z10;
    }

    public void t(int i10) {
        this.f5168d = i10;
    }

    public void u(EnumC0097a enumC0097a) {
        this.f5171g = enumC0097a;
    }

    public void v(b bVar) {
        this.f5165a = bVar;
    }

    public void w(long j10) {
        this.f5166b = j10;
    }

    public void x(long j10) {
        long j11 = this.f5167c + j10;
        this.f5167c = j11;
        long j12 = this.f5166b;
        if (j12 > 0) {
            int i10 = (int) ((j11 * 100) / j12);
            this.f5168d = i10;
            if (i10 > 100) {
                this.f5168d = 100;
            }
        }
        while (this.f5174j) {
            try {
                Thread.sleep(150L);
            } catch (InterruptedException unused) {
            }
        }
    }
}
