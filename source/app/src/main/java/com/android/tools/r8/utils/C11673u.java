package com.android.tools.r8.utils;

import com.android.tools.r8.ByteDataView;
import com.android.tools.r8.DataDirectoryResource;
import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.internal.AbstractC10358y2;
import com.android.tools.r8.internal.AbstractC6706c8;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C8950pe;
import com.android.tools.r8.internal.U6;
import com.android.tools.r8.utils.C11673u;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.FileVisitOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Spliterators;
import java.util.function.BiFunction;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class C11673u {

    public static final boolean f58640a = true;

    public interface a {
        void a(ZipEntry zipEntry, InputStream inputStream) throws IOException;
    }

    public static class b {

        public final Path f58641a;

        public final ZipOutputStream f58642b;

        public b(Path path) {
            this.f58641a = path;
            this.f58642b = new ZipOutputStream(new BufferedOutputStream(Files.newOutputStream(path, new OpenOption[0])));
        }

        public static b a(Path path) throws IOException {
            return new b(path);
        }

        public ZipOutputStream b() {
            return this.f58642b;
        }

        public b a(String str, Path path) throws IOException {
            this.f58642b.putNextEntry(new ZipEntry(str));
            Files.copy(path, this.f58642b);
            this.f58642b.closeEntry();
            return this;
        }

        public b a(Path path, Collection<Path> collection) throws IOException {
            for (Path path2 : collection) {
                this.f58642b.putNextEntry(new ZipEntry((String) StreamSupport.stream(Spliterators.spliteratorUnknownSize(path.relativize(path2).iterator(), 16), false).map(new S()).collect(Collectors.joining("/"))));
                Files.copy(path2, this.f58642b);
                this.f58642b.closeEntry();
            }
            return this;
        }

        public b a(Path path, Path... pathArr) throws IOException {
            return a(path, Arrays.asList(pathArr));
        }

        public b a(String str, byte[] bArr) throws IOException {
            this.f58642b.putNextEntry(new ZipEntry(str));
            this.f58642b.write(bArr);
            this.f58642b.closeEntry();
            return this;
        }

        public b a(String str, String str2) throws IOException {
            this.f58642b.putNextEntry(new ZipEntry(str));
            this.f58642b.write(str2.getBytes(StandardCharsets.UTF_8));
            this.f58642b.closeEntry();
            return this;
        }

        public Path a() throws IOException {
            this.f58642b.close();
            return this.f58641a;
        }
    }

    public static boolean a(ZipEntry zipEntry) {
        return true;
    }

    public static boolean b(ZipEntry zipEntry) {
        return true;
    }

    public static void a(List list, Set set, Set set2, C8950pe c8950pe, ZipOutputStream zipOutputStream) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            a(zipOutputStream, ((DataDirectoryResource) it.next()).getName(), new byte[0], 8);
        }
        Iterator it2 = set2.iterator();
        while (it2.hasNext()) {
            DataEntryResource dataEntryResource = (DataEntryResource) it2.next();
            String name = dataEntryResource.getName();
            byte[] a10 = AbstractC6706c8.a((InputStream) c8950pe.a(dataEntryResource.getByteStream()));
            boolean z10 = AbstractC10358y2.f53922b;
            a(zipOutputStream, name, a10, "resources/new_api_database.ser".equals(name) ? 0 : 8);
        }
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            ProgramResource programResource = (ProgramResource) it3.next();
            if (!f58640a && programResource.getClassDescriptors().size() != 1) {
                throw new AssertionError();
            }
            a(zipOutputStream, C4932Bl.i(programResource.getClassDescriptors().iterator().next()), AbstractC6706c8.a((InputStream) c8950pe.a(programResource.getByteStream())), 8);
        }
    }

    public static byte[] b(Path path, String str) throws IOException {
        ZipFile zipFile = new ZipFile(path.toFile(), StandardCharsets.UTF_8);
        try {
            byte[] a10 = AbstractC6706c8.a(zipFile.getInputStream(zipFile.getEntry(str)));
            zipFile.close();
            return a10;
        } catch (Throwable th2) {
            try {
                zipFile.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static void b(Path path, Path path2) throws IOException {
        List list = (List) Files.walk(path2, new FileVisitOption[0]).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C11673u.a((Path) obj);
            }
        }).sorted().collect(Collectors.toList());
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(Files.newOutputStream(path, new OpenOption[0])));
        try {
            a(zipOutputStream, path2, list);
            zipOutputStream.close();
        } catch (Throwable th2) {
            try {
                zipOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static List<Path> b(Path path, Path path2, Predicate<ZipEntry> predicate) throws IOException {
        return a(path, path2, predicate, Function.identity());
    }

    public static void a(String str, a aVar) throws IOException {
        a(Paths.get(str, new String[0]), aVar);
    }

    public static void a(Path path, final a aVar) throws IOException {
        InterfaceC11675w interfaceC11675w = new InterfaceC11675w() {
            @Override
            public final void a(ZipFile zipFile, ZipEntry zipEntry, InputStream inputStream) {
                C11673u.a.this.a(zipEntry, inputStream);
            }
        };
        ZipFile zipFile = new ZipFile(path.toFile(), StandardCharsets.UTF_8);
        try {
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                ZipEntry nextElement = entries.nextElement();
                InputStream inputStream = zipFile.getInputStream(nextElement);
                try {
                    interfaceC11675w.a(zipFile, nextElement, inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } finally {
                }
            }
            zipFile.close();
        } catch (Throwable th2) {
            try {
                zipFile.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static void a(Path path, InterfaceC11674v interfaceC11674v) {
        ZipFile zipFile = new ZipFile(path.toFile(), StandardCharsets.UTF_8);
        try {
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                interfaceC11674v.a(zipFile, entries.nextElement());
            }
            zipFile.close();
        } catch (Throwable th2) {
            try {
                zipFile.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static void a(Path path, Consumer<ZipEntry> consumer) throws IOException {
        ZipFile zipFile = new ZipFile(path.toFile(), StandardCharsets.UTF_8);
        try {
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                consumer.accept(entries.nextElement());
            }
            zipFile.close();
        } catch (Throwable th2) {
            try {
                zipFile.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static boolean a(Path path, final String str) throws IOException {
        final U6 u62 = new U6();
        a(path, new a() {
            @Override
            public final void a(ZipEntry zipEntry, InputStream inputStream) {
                U6.this.a(new BooleanSupplier() {
                    @Override
                    public final boolean getAsBoolean() {
                        boolean equals;
                        equals = ZipEntry.this.getName().equals(r2);
                        return equals;
                    }
                });
            }
        });
        return u62.a();
    }

    public static Path a(Path path, Path path2, final BiFunction<ZipEntry, byte[], byte[]> biFunction) throws IOException {
        final b a10 = b.a(path2);
        a(path, new a() {
            @Override
            public final void a(ZipEntry zipEntry, InputStream inputStream) {
                C11673u.b.this.a(zipEntry.getName(), (byte[]) biFunction.apply(zipEntry, AbstractC6706c8.a(inputStream)));
            }
        });
        return a10.a();
    }

    public static Path a(Path path, Path path2, final Predicate<ZipEntry> predicate) throws IOException {
        final b a10 = b.a(path2);
        a(path, new a() {
            @Override
            public final void a(ZipEntry zipEntry, InputStream inputStream) {
                C11673u.a(Predicate.this, a10, zipEntry, inputStream);
            }
        });
        return a10.a();
    }

    public static void a(Predicate predicate, b bVar, ZipEntry zipEntry, InputStream inputStream) {
        if (predicate.test(zipEntry)) {
            bVar.a(zipEntry.getName(), AbstractC6706c8.a(inputStream));
        }
    }

    public static boolean a(Path path) {
        return !Files.isDirectory(path, new LinkOption[0]);
    }

    public static void a(ZipOutputStream zipOutputStream, Path path, List list) {
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            Path path2 = (Path) it.next();
            zipOutputStream.putNextEntry(new ZipEntry((String) StreamSupport.stream(Spliterators.spliteratorUnknownSize(path.relativize(path2).iterator(), 16), false).map(new S()).collect(Collectors.joining("/"))));
            Files.copy(path2, zipOutputStream);
            zipOutputStream.closeEntry();
        }
    }

    public static List<Path> a(Path path, Path path2) throws IOException {
        return a(path, path2, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C11673u.a((ZipEntry) obj);
            }
        }, Function.identity());
    }

    public static List<File> a(String str, File file) throws IOException {
        return a(Paths.get(str, new String[0]), file.toPath(), new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C11673u.b((ZipEntry) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((Path) obj).toFile();
            }
        });
    }

    public static ArrayList a(Path path, final Path path2, final Predicate predicate, final Function function) {
        final ArrayList arrayList = new ArrayList();
        a(path, new a() {
            @Override
            public final void a(ZipEntry zipEntry, InputStream inputStream) {
                C11673u.a(Predicate.this, path2, arrayList, function, zipEntry, inputStream);
            }
        });
        return arrayList;
    }

    public static void a(Predicate predicate, Path path, List list, Function function, ZipEntry zipEntry, InputStream inputStream) {
        String name = zipEntry.getName();
        if (zipEntry.isDirectory() || !predicate.test(zipEntry)) {
            return;
        }
        if (!name.contains(ClasspathEntry.DOT_DOT)) {
            Path resolve = path.resolve(name);
            resolve.toFile().getParentFile().mkdirs();
            FileOutputStream fileOutputStream = new FileOutputStream(resolve.toFile());
            try {
                int i10 = AbstractC6706c8.f46984a;
                inputStream.getClass();
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        fileOutputStream.close();
                        list.add(function.apply(resolve));
                        return;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } else {
            throw new C5325If("Invalid entry name \"" + name + JavadocConstants.ANCHOR_PREFIX_END);
        }
    }

    public static void a(ZipOutputStream zipOutputStream, String str, byte[] bArr, int i10) throws IOException {
        ByteDataView of2 = ByteDataView.of(bArr);
        byte[] buffer = of2.getBuffer();
        int offset = of2.getOffset();
        int length = of2.getLength();
        CRC32 crc32 = new CRC32();
        crc32.update(buffer, offset, length);
        ZipEntry zipEntry = new ZipEntry(str);
        zipEntry.setMethod(i10);
        zipEntry.setSize(length);
        zipEntry.setCrc(crc32.getValue());
        zipEntry.setTime(0L);
        zipOutputStream.putNextEntry(zipEntry);
        zipOutputStream.write(buffer, offset, length);
        zipOutputStream.closeEntry();
    }

    public static boolean a(String str) {
        if (str.endsWith("module-info.class") || str.startsWith("META-INF") || str.startsWith("/META-INF")) {
            return false;
        }
        return str.endsWith(".class");
    }

    public static String a(Class<?> cls) {
        return C4932Bl.a(cls) + ".class";
    }
}
