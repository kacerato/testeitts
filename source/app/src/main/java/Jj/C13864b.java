package jj;

import ij.InterfaceC13752g;
import ij.m;
import ij.u;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.Set;
import org.bouncycastle.est.ESTException;
import org.bouncycastle.util.q;

public class C13864b implements InterfaceC13752g {

    public static final Charset f93781b = Charset.forName("UTF-8");

    public static byte[] f93782c = {13, 10};

    public final ij.i f93783a;

    public static class a extends OutputStream {

        public final OutputStream f93784b;

        public a(OutputStream outputStream) {
            this.f93784b = outputStream;
        }

        @Override
        public void write(int i10) throws IOException {
            System.out.print(String.valueOf((char) i10));
            this.f93784b.write(i10);
        }
    }

    public C13864b(ij.i iVar) {
        this.f93783a = iVar;
    }

    public static void d(OutputStream outputStream, String str) throws IOException {
        outputStream.write(str.getBytes());
        outputStream.write(f93782c);
    }

    @Override
    public m a(ij.k kVar) throws IOException {
        m b10;
        int i10 = 15;
        while (true) {
            b10 = b(kVar);
            ij.k c10 = c(b10);
            if (c10 == null || i10 - 1 <= 0) {
                break;
            }
            kVar = c10;
        }
        if (i10 != 0) {
            return b10;
        }
        throw new ESTException("Too many redirects..");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x006a A[Catch: all -> 0x0028, TryCatch #0 {all -> 0x0028, blocks: (B:3:0x0003, B:5:0x001f, B:6:0x002b, B:8:0x0039, B:11:0x0042, B:12:0x0050, B:14:0x006a, B:15:0x0075, B:17:0x008b, B:18:0x0090, B:21:0x009d, B:22:0x00b3, B:23:0x00bc, B:24:0x00ec, B:26:0x00f2, B:27:0x00ff, B:29:0x0102, B:32:0x0124, B:34:0x0138, B:40:0x0148, B:42:0x00b7, B:44:0x0047), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008b A[Catch: all -> 0x0028, TryCatch #0 {all -> 0x0028, blocks: (B:3:0x0003, B:5:0x001f, B:6:0x002b, B:8:0x0039, B:11:0x0042, B:12:0x0050, B:14:0x006a, B:15:0x0075, B:17:0x008b, B:18:0x0090, B:21:0x009d, B:22:0x00b3, B:23:0x00bc, B:24:0x00ec, B:26:0x00f2, B:27:0x00ff, B:29:0x0102, B:32:0x0124, B:34:0x0138, B:40:0x0148, B:42:0x00b7, B:44:0x0047), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009d A[Catch: all -> 0x0028, TRY_ENTER, TryCatch #0 {all -> 0x0028, blocks: (B:3:0x0003, B:5:0x001f, B:6:0x002b, B:8:0x0039, B:11:0x0042, B:12:0x0050, B:14:0x006a, B:15:0x0075, B:17:0x008b, B:18:0x0090, B:21:0x009d, B:22:0x00b3, B:23:0x00bc, B:24:0x00ec, B:26:0x00f2, B:27:0x00ff, B:29:0x0102, B:32:0x0124, B:34:0x0138, B:40:0x0148, B:42:0x00b7, B:44:0x0047), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f2 A[Catch: all -> 0x0028, TryCatch #0 {all -> 0x0028, blocks: (B:3:0x0003, B:5:0x001f, B:6:0x002b, B:8:0x0039, B:11:0x0042, B:12:0x0050, B:14:0x006a, B:15:0x0075, B:17:0x008b, B:18:0x0090, B:21:0x009d, B:22:0x00b3, B:23:0x00bc, B:24:0x00ec, B:26:0x00f2, B:27:0x00ff, B:29:0x0102, B:32:0x0124, B:34:0x0138, B:40:0x0148, B:42:0x00b7, B:44:0x0047), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0138 A[Catch: all -> 0x0028, TRY_LEAVE, TryCatch #0 {all -> 0x0028, blocks: (B:3:0x0003, B:5:0x001f, B:6:0x002b, B:8:0x0039, B:11:0x0042, B:12:0x0050, B:14:0x006a, B:15:0x0075, B:17:0x008b, B:18:0x0090, B:21:0x009d, B:22:0x00b3, B:23:0x00bc, B:24:0x00ec, B:26:0x00f2, B:27:0x00ff, B:29:0x0102, B:32:0x0124, B:34:0x0138, B:40:0x0148, B:42:0x00b7, B:44:0x0047), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0148 A[Catch: all -> 0x0028, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0028, blocks: (B:3:0x0003, B:5:0x001f, B:6:0x002b, B:8:0x0039, B:11:0x0042, B:12:0x0050, B:14:0x006a, B:15:0x0075, B:17:0x008b, B:18:0x0090, B:21:0x009d, B:22:0x00b3, B:23:0x00bc, B:24:0x00ec, B:26:0x00f2, B:27:0x00ff, B:29:0x0102, B:32:0x0124, B:34:0x0138, B:40:0x0148, B:42:0x00b7, B:44:0x0047), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b7 A[Catch: all -> 0x0028, TryCatch #0 {all -> 0x0028, blocks: (B:3:0x0003, B:5:0x001f, B:6:0x002b, B:8:0x0039, B:11:0x0042, B:12:0x0050, B:14:0x006a, B:15:0x0075, B:17:0x008b, B:18:0x0090, B:21:0x009d, B:22:0x00b3, B:23:0x00bc, B:24:0x00ec, B:26:0x00f2, B:27:0x00ff, B:29:0x0102, B:32:0x0124, B:34:0x0138, B:40:0x0148, B:42:0x00b7, B:44:0x0047), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public m b(ij.k kVar) throws IOException {
        OutputStream aVar;
        ij.k b10;
        u uVar = null;
        try {
            u a10 = this.f93783a.a(kVar.f().getHost(), kVar.f().getPort());
            if (kVar.d() != null) {
                kVar = kVar.d().a(a10, kVar);
            }
            Set<String> c10 = q.c("org.bouncycastle.debug.est");
            if (!c10.contains("output") && !c10.contains(Tj.d.f25405q)) {
                aVar = a10.getOutputStream();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(kVar.f().getPath());
                sb2.append(kVar.f().getQuery() == null ? kVar.f().getQuery() : "");
                String sb3 = sb2.toString();
                ij.l lVar = new ij.l(kVar);
                if (!kVar.b().containsKey(F2.d.f6259o)) {
                    lVar.a(F2.d.f6259o, "close");
                }
                URL f10 = kVar.f();
                lVar.c(F2.d.f6283w, f10.getPort() <= -1 ? String.format("%s:%d", f10.getHost(), Integer.valueOf(f10.getPort())) : f10.getHost());
                b10 = lVar.b();
                d(aVar, b10.e() + " " + sb3 + " HTTP/1.1");
                for (Map.Entry<String, String[]> entry : b10.b().entrySet()) {
                    String[] value = entry.getValue();
                    for (int i10 = 0; i10 != value.length; i10++) {
                        d(aVar, entry.getKey() + ": " + value[i10]);
                    }
                }
                aVar.write(f93782c);
                aVar.flush();
                b10.g(aVar);
                aVar.flush();
                if (b10.c() != null) {
                    return new m(b10, a10);
                }
                m a11 = b10.c().a(b10, a10);
                if (a10 != null && a11 == null) {
                    a10.close();
                }
                return a11;
            }
            aVar = new a(a10.getOutputStream());
            StringBuilder sb22 = new StringBuilder();
            sb22.append(kVar.f().getPath());
            sb22.append(kVar.f().getQuery() == null ? kVar.f().getQuery() : "");
            String sb32 = sb22.toString();
            ij.l lVar2 = new ij.l(kVar);
            if (!kVar.b().containsKey(F2.d.f6259o)) {
            }
            URL f102 = kVar.f();
            lVar2.c(F2.d.f6283w, f102.getPort() <= -1 ? String.format("%s:%d", f102.getHost(), Integer.valueOf(f102.getPort())) : f102.getHost());
            b10 = lVar2.b();
            d(aVar, b10.e() + " " + sb32 + " HTTP/1.1");
            while (r0.hasNext()) {
            }
            aVar.write(f93782c);
            aVar.flush();
            b10.g(aVar);
            aVar.flush();
            if (b10.c() != null) {
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                uVar.close();
            }
            throw th2;
        }
    }

    public ij.k c(m mVar) throws IOException {
        ij.k kVar;
        ij.l h10;
        if (mVar.n() < 300 || mVar.n() > 399) {
            kVar = null;
        } else {
            switch (mVar.n()) {
                case 301:
                case 302:
                case 303:
                case 306:
                case 307:
                    String g10 = mVar.g(F2.d.f6275t0);
                    if (!"".equals(g10)) {
                        ij.l lVar = new ij.l(mVar.l());
                        if (g10.startsWith("http")) {
                            h10 = lVar.h(new URL(g10));
                        } else {
                            URL f10 = mVar.l().f();
                            h10 = lVar.h(new URL(f10.getProtocol(), f10.getHost(), f10.getPort(), g10));
                        }
                        kVar = h10.b();
                        break;
                    } else {
                        throw new ESTException("Redirect status type: " + mVar.n() + " but no location header");
                    }
                case 304:
                case 305:
                default:
                    throw new ESTException("Client does not handle http status code: " + mVar.n());
            }
        }
        if (kVar != null) {
            mVar.d();
        }
        return kVar;
    }
}
