package y3;

import com.google.gson.Gson;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;
import java.io.File;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public class h extends v {

    public static final Gson f129962k = new Gson();

    public class a implements u {

        public class C2212a implements K3.a {

            public final AtomicReference f129963a;

            public final CountDownLatch f129964b;

            public C2212a(final AtomicReference val$result, final CountDownLatch val$latch) {
                this.f129963a = val$result;
                this.f129964b = val$latch;
            }

            @Override
            public void a() {
                this.f129963a.set("ERROR: rename failed");
                this.f129964b.countDown();
            }

            @Override
            public void onSuccess() {
                this.f129963a.set("OK");
                this.f129964b.countDown();
            }
        }

        @Override
        public String a(String text) {
            try {
                b bVar = (b) h.f129962k.fromJson(text, b.class);
                if (bVar == null) {
                    return "ERROR: invalid request";
                }
                String str = bVar.f129966a;
                if (str != null && !str.trim().isEmpty()) {
                    String str2 = bVar.f129967b;
                    if (str2 != null && !str2.trim().isEmpty()) {
                        File k10 = D3.a.k(bVar.f129966a);
                        File k11 = D3.a.k(bVar.f129967b);
                        if (!k10.exists()) {
                            return "ERROR: source does not exist";
                        }
                        if (k10.getCanonicalPath().equals(k11.getCanonicalPath())) {
                            return "ERROR: source and destination are the same";
                        }
                        if (k11.exists()) {
                            return "ERROR: destination already exists";
                        }
                        CountDownLatch countDownLatch = new CountDownLatch(1);
                        AtomicReference atomicReference = new AtomicReference();
                        K3.e.b(k10, k11, new C2212a(atomicReference, countDownLatch));
                        try {
                            return !countDownLatch.await(120L, TimeUnit.SECONDS) ? "ERROR: rename timeout" : atomicReference.get() == null ? "ERROR: rename failed" : (String) atomicReference.get();
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            return "ERROR: rename interrupted";
                        }
                    }
                    return "ERROR: dst cannot be empty";
                }
                return "ERROR: src cannot be empty";
            } catch (Exception e10) {
                return "ERROR: " + e10.getMessage();
            }
        }
    }

    public static final class b {

        public String f129966a;

        public String f129967b;
    }

    public h() {
        super("io.rn", "Renames or moves a project file or folder.", new a());
        b("src", "Project-relative source file or folder path.", true);
        b("dst", "Project-relative destination file or folder path.", true);
        A(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LUA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LEVEL_EDITION);
    }
}
