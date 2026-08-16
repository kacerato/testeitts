package com.android.tools.r8.internal;

import com.android.tools.r8.internal.C9328rt;
import com.android.tools.r8.utils.C11673u;
import java.io.BufferedReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.List;
import java.util.function.Consumer;

public class C5383Jf {

    public static final boolean f41448b = true;

    public final Path f41449a;

    public C5383Jf(Path path) {
        this.f41449a = path;
    }

    public static C5383Jf a(Path path, Path path2) throws IOException {
        C11673u.a(path, path2);
        return new C5383Jf(path2);
    }

    public C9328rt b() throws IOException {
        if (!Files.exists(this.f41449a.resolve("build.properties"), new LinkOption[0])) {
            return null;
        }
        C9328rt.a aVar = new C9328rt.a();
        C9328rt.b(aVar, C6169Ww.i(this.f41449a.resolve("build.properties")));
        return aVar.a();
    }

    public Path c() {
        return this.f41449a.resolve("classpath.jar");
    }

    public Path d() {
        return this.f41449a.resolve("desugared-library.json");
    }

    public Path e() {
        return this.f41449a.resolve("library.jar");
    }

    public Path f() {
        return this.f41449a.resolve("program.jar");
    }

    public Path g() {
        return this.f41449a.resolve("proguard.config");
    }

    public List<String> h() throws IOException {
        if (!Files.exists(this.f41449a.resolve("r8-include.txt"), new LinkOption[0])) {
            return null;
        }
        List<String> h10 = C6169Ww.h(this.f41449a.resolve("r8-include.txt"));
        if (f41448b || h10.stream().noneMatch(new WJ0())) {
            return h10;
        }
        throw new AssertionError();
    }

    public boolean i() {
        return Files.exists(this.f41449a.resolve("desugared-library.json"), new LinkOption[0]);
    }

    public void a(Consumer<? super Path> consumer) {
        int i10 = 1;
        while (true) {
            Path resolve = this.f41449a.resolve("feature-" + i10 + ".jar");
            if (!Files.exists(resolve, new LinkOption[0])) {
                return;
            }
            consumer.accept(resolve);
            i10++;
        }
    }

    public Path a() {
        return this.f41449a.resolve("app-res.ap_");
    }

    public Path a(int i10) {
        return this.f41449a.resolve("feature-" + i10 + ".ap_");
    }

    public List<String> a(List<String> list) throws IOException {
        if (Files.exists(this.f41449a.resolve("r8-exclude.txt"), new LinkOption[0])) {
            list = C6169Ww.h(this.f41449a.resolve("r8-exclude.txt"));
            if (!f41448b && !list.stream().noneMatch(new WJ0())) {
                throw new AssertionError();
            }
        }
        return list;
    }

    public void a(C8541n80 c8541n80) throws IOException {
        BufferedReader newBufferedReader = Files.newBufferedReader(g());
        try {
            for (String readLine = newBufferedReader.readLine(); readLine != null; readLine = newBufferedReader.readLine()) {
                c8541n80.d(readLine);
            }
            newBufferedReader.close();
        } catch (Throwable th2) {
            if (newBufferedReader != null) {
                try {
                    newBufferedReader.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            }
            throw th2;
        }
    }
}
