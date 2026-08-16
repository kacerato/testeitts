package M5;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class f extends L5.b {

    public final List<File> f14544i = new SteppedArrayList();

    public class a implements Runnable {

        public class RunnableC0411a implements Runnable {

            public final File f14546b;

            public final AtomicInteger f14547c;

            public final int f14548d;

            public RunnableC0411a(final File val$file, final AtomicInteger val$completed, final int val$total) {
                this.f14546b = val$file;
                this.f14547c = val$completed;
                this.f14548d = val$total;
            }

            @Override
            public void run() {
                try {
                    try {
                        com.itsmagic.engine.Engines.Sound.Imported.d.c(this.f14546b);
                        int incrementAndGet = this.f14547c.incrementAndGet();
                        f fVar = f.this;
                        int i10 = this.f14548d;
                        fVar.m(i10 <= 0 ? 1.0f : incrementAndGet / i10);
                        f.this.n(incrementAndGet + "/" + this.f14548d);
                        if (incrementAndGet < this.f14548d) {
                            return;
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        int incrementAndGet2 = this.f14547c.incrementAndGet();
                        f fVar2 = f.this;
                        int i11 = this.f14548d;
                        fVar2.m(i11 <= 0 ? 1.0f : incrementAndGet2 / i11);
                        f.this.n(incrementAndGet2 + "/" + this.f14548d);
                        if (incrementAndGet2 < this.f14548d) {
                            return;
                        }
                    }
                    f.this.m(1.0f);
                    f.this.b();
                } catch (Throwable th2) {
                    int incrementAndGet3 = this.f14547c.incrementAndGet();
                    f fVar3 = f.this;
                    int i12 = this.f14548d;
                    fVar3.m(i12 <= 0 ? 1.0f : incrementAndGet3 / i12);
                    f.this.n(incrementAndGet3 + "/" + this.f14548d);
                    if (incrementAndGet3 >= this.f14548d) {
                        f.this.m(1.0f);
                        f.this.b();
                    }
                    throw th2;
                }
            }
        }

        public a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void run() {
            f.this.s();
            if (f.this.f14544i.isEmpty()) {
                f.this.b();
                return;
            }
            SteppedArrayList steppedArrayList = new SteppedArrayList(f.this.f14544i);
            f.this.f14544i.clear();
            int size = steppedArrayList.size();
            AtomicInteger atomicInteger = new AtomicInteger(0);
            f.this.n("0/" + size);
            for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
                O9.b.d(new RunnableC0411a((File) steppedArrayList.get(i10), atomicInteger, size));
            }
        }
    }

    @Override
    public void k() {
        super.k();
        o("Importing audio");
        n("Checking audio files");
        O9.b.d(new a());
    }

    public final void s() {
        this.f14544i.clear();
        for (String str : ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv".split("\\|")) {
            List<File> a10 = c().a(str);
            for (int i10 = 0; i10 < a10.size(); i10++) {
                File file = a10.get(i10);
                if (com.itsmagic.engine.Engines.Sound.Imported.d.i(file)) {
                    this.f14544i.add(file);
                }
            }
        }
    }
}
