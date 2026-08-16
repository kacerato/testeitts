package Fg;

import Bg.r;
import Bg.s;
import Dg.a;
import com.google.android.material.timepicker.ChipTextInputComboView;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.DosFileAttributeView;
import java.nio.file.attribute.DosFileAttributes;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.PosixFileAttributeView;
import java.nio.file.attribute.PosixFilePermission;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import net.lingala.zip4j.exception.ZipException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import yd.C16181m;

public class c {

    public static final byte[] f6797a = {0, 0, Opcodes.OPC_if_icmple, Opcodes.OPC_lor};

    public static final byte[] f6798b = {0, 0, -19, Opcodes.OPC_lstore_2};

    public class a implements FilenameFilter {

        public final String f6799a;

        public a(String str) {
            this.f6799a = str;
        }

        @Override
        public boolean accept(File file, String str) {
            return str.startsWith(this.f6799a + ".");
        }
    }

    public static boolean A(String str) {
        return str.endsWith("/") || str.endsWith(C16181m.f130232i);
    }

    public static String B(File file) {
        try {
            return Files.readSymbolicLink(file.toPath()).toString();
        } catch (Error | Exception unused) {
            return "";
        }
    }

    public static byte C(boolean z10, byte b10, int i10) {
        return z10 ? Fg.a.b(b10, i10) : b10;
    }

    public static void D(Path path, byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        if (z()) {
            c(path, bArr);
        } else if (v() || y()) {
            b(path, bArr);
        }
    }

    public static void E(Path path, long j10) {
        if (j10 > 0 && Files.exists(path, new LinkOption[0])) {
            try {
                Files.setLastModifiedTime(path, FileTime.fromMillis(h.f(j10)));
            } catch (Exception unused) {
            }
        }
    }

    public static void F(File file, long j10) {
        file.setLastModified(h.f(j10));
    }

    public static void a(byte b10, int i10, Set<PosixFilePermission> set, PosixFilePermission posixFilePermission) {
        if (Fg.a.a(b10, i10)) {
            set.add(posixFilePermission);
        }
    }

    public static void b(Path path, byte[] bArr) {
        if (bArr[2] == 0 && bArr[3] == 0) {
            return;
        }
        try {
            HashSet hashSet = new HashSet();
            a(bArr[3], 0, hashSet, PosixFilePermission.OWNER_READ);
            a(bArr[2], 7, hashSet, PosixFilePermission.OWNER_WRITE);
            a(bArr[2], 6, hashSet, PosixFilePermission.OWNER_EXECUTE);
            a(bArr[2], 5, hashSet, PosixFilePermission.GROUP_READ);
            a(bArr[2], 4, hashSet, PosixFilePermission.GROUP_WRITE);
            a(bArr[2], 3, hashSet, PosixFilePermission.GROUP_EXECUTE);
            a(bArr[2], 2, hashSet, PosixFilePermission.OTHERS_READ);
            a(bArr[2], 1, hashSet, PosixFilePermission.OTHERS_WRITE);
            a(bArr[2], 0, hashSet, PosixFilePermission.OTHERS_EXECUTE);
            Files.setPosixFilePermissions(path, hashSet);
        } catch (IOException unused) {
        }
    }

    public static void c(Path path, byte[] bArr) {
        DosFileAttributeView dosFileAttributeView;
        if (bArr[0] == 0 || (dosFileAttributeView = (DosFileAttributeView) Files.getFileAttributeView(path, DosFileAttributeView.class, LinkOption.NOFOLLOW_LINKS)) == null) {
            return;
        }
        try {
            dosFileAttributeView.setReadOnly(Fg.a.a(bArr[0], 0));
            dosFileAttributeView.setHidden(Fg.a.a(bArr[0], 1));
            dosFileAttributeView.setSystem(Fg.a.a(bArr[0], 2));
            dosFileAttributeView.setArchive(Fg.a.a(bArr[0], 5));
        } catch (IOException unused) {
        }
    }

    public static void d(File file) throws ZipException {
        if (file.exists()) {
            return;
        }
        throw new ZipException("File does not exist: " + ((Object) file));
    }

    public static void e(List<File> list, s.a aVar) throws ZipException {
        for (File file : list) {
            if (!x(file)) {
                d(file);
            } else if (aVar.equals(s.a.INCLUDE_LINK_AND_LINKED_FILE) || aVar.equals(s.a.INCLUDE_LINKED_FILE_ONLY)) {
                f(file);
            }
        }
    }

    public static void f(File file) throws ZipException {
        if (file.exists()) {
            return;
        }
        throw new ZipException("Symlink target '" + B(file) + "' does not exist for link '" + ((Object) file) + "'");
    }

    public static void g(RandomAccessFile randomAccessFile, OutputStream outputStream, long j10, long j11, Dg.a aVar, int i10) throws ZipException {
        long j12 = 0;
        if (j10 < 0 || j11 < 0 || j10 > j11) {
            throw new ZipException("invalid offsets");
        }
        if (j10 == j11) {
            return;
        }
        try {
            randomAccessFile.seek(j10);
            long j13 = j11 - j10;
            byte[] bArr = j13 < ((long) i10) ? new byte[(int) j13] : new byte[i10];
            while (true) {
                int read = randomAccessFile.read(bArr);
                if (read == -1) {
                    return;
                }
                outputStream.write(bArr, 0, read);
                long j14 = read;
                aVar.x(j14);
                if (aVar.l()) {
                    aVar.u(a.EnumC0097a.CANCELLED);
                    return;
                }
                j12 += j14;
                if (j12 == j13) {
                    return;
                }
                if (bArr.length + j12 > j13) {
                    bArr = new byte[(int) (j13 - j12)];
                }
            }
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    public static File[] h(File file) {
        File[] listFiles = file.getParentFile().listFiles(new a(m(file.getName())));
        if (listFiles == null) {
            return new File[0];
        }
        Arrays.sort(listFiles);
        return listFiles;
    }

    public static byte[] i(boolean z10) {
        byte[] bArr = new byte[4];
        if (y() || v()) {
            if (z10) {
                System.arraycopy(f6798b, 0, bArr, 0, 4);
            } else {
                System.arraycopy(f6797a, 0, bArr, 0, 4);
            }
        } else if (z() && z10) {
            bArr[0] = Fg.a.b(bArr[0], 4);
        }
        return bArr;
    }

    public static String j(int i10) {
        return i10 < 9 ? ChipTextInputComboView.b.f65192c : i10 < 99 ? "0" : "";
    }

    public static byte[] k(File file) {
        if (file != null) {
            try {
                if (Files.isSymbolicLink(file.toPath()) || file.exists()) {
                    Path path = file.toPath();
                    if (z()) {
                        return t(path);
                    }
                    if (!v() && !y()) {
                        return new byte[4];
                    }
                    return q(path);
                }
            } catch (NoSuchMethodError unused) {
                return new byte[4];
            }
        }
        return new byte[4];
    }

    public static String l(File file) {
        String name = file.getName();
        return !name.contains(".") ? "" : name.substring(name.lastIndexOf(".") + 1);
    }

    public static String m(String str) {
        int lastIndexOf = str.lastIndexOf(".");
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    public static List<File> n(File file, s sVar) throws ZipException {
        if (file == null) {
            throw new ZipException("input path is null, cannot read files in the directory");
        }
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file.listFiles();
        if (file.isDirectory() && file.canRead() && listFiles != null) {
            for (File file2 : listFiles) {
                if ((sVar.i() == null || !sVar.i().a(file2)) && (!file2.isHidden() || sVar.r())) {
                    arrayList.add(file2);
                    s.a n10 = sVar.n();
                    boolean x10 = x(file2);
                    if ((x10 && !s.a.INCLUDE_LINK_ONLY.equals(n10)) || (!x10 && file2.isDirectory())) {
                        arrayList.addAll(n(file2, sVar));
                    }
                }
            }
        }
        return arrayList;
    }

    public static String o(File file, String str) throws IOException {
        return h.j(str) ? str : x(file) ? file.toPath().toRealPath(LinkOption.NOFOLLOW_LINKS).getFileName().toString() : file.getName();
    }

    public static String p(int i10) {
        return "." + j(i10) + (i10 + 1);
    }

    public static byte[] q(Path path) {
        byte[] bArr = new byte[4];
        try {
            Set<PosixFilePermission> permissions = ((PosixFileAttributeView) Files.getFileAttributeView(path, PosixFileAttributeView.class, LinkOption.NOFOLLOW_LINKS)).readAttributes().permissions();
            boolean isSymbolicLink = Files.isSymbolicLink(path);
            if (isSymbolicLink) {
                byte b10 = Fg.a.b(bArr[3], 7);
                bArr[3] = b10;
                bArr[3] = Fg.a.c(b10, 6);
            } else {
                bArr[3] = C(Files.isRegularFile(path, new LinkOption[0]), bArr[3], 7);
                bArr[3] = C(Files.isDirectory(path, new LinkOption[0]), bArr[3], 6);
            }
            bArr[3] = C(isSymbolicLink, bArr[3], 5);
            bArr[3] = C(permissions.contains(PosixFilePermission.OWNER_READ), bArr[3], 0);
            bArr[2] = C(permissions.contains(PosixFilePermission.OWNER_WRITE), bArr[2], 7);
            bArr[2] = C(permissions.contains(PosixFilePermission.OWNER_EXECUTE), bArr[2], 6);
            bArr[2] = C(permissions.contains(PosixFilePermission.GROUP_READ), bArr[2], 5);
            bArr[2] = C(permissions.contains(PosixFilePermission.GROUP_WRITE), bArr[2], 4);
            bArr[2] = C(permissions.contains(PosixFilePermission.GROUP_EXECUTE), bArr[2], 3);
            bArr[2] = C(permissions.contains(PosixFilePermission.OTHERS_READ), bArr[2], 2);
            bArr[2] = C(permissions.contains(PosixFilePermission.OTHERS_WRITE), bArr[2], 1);
            bArr[2] = C(permissions.contains(PosixFilePermission.OTHERS_EXECUTE), bArr[2], 0);
        } catch (IOException unused) {
        }
        return bArr;
    }

    public static String r(File file, s sVar) throws ZipException {
        String o10;
        String substring;
        try {
            String canonicalPath = file.getCanonicalPath();
            if (h.j(sVar.e())) {
                String canonicalPath2 = new File(sVar.e()).getCanonicalPath();
                String str = d.f6818s;
                if (!canonicalPath2.endsWith(str)) {
                    canonicalPath2 = canonicalPath2 + str;
                }
                if (x(file)) {
                    substring = new File(file.getParentFile().getCanonicalFile().getPath() + File.separator + file.getCanonicalFile().getName()).getPath().substring(canonicalPath2.length());
                } else if (file.getCanonicalFile().getPath().startsWith(canonicalPath2)) {
                    substring = canonicalPath.substring(canonicalPath2.length());
                } else {
                    substring = file.getCanonicalFile().getParentFile().getName() + str + file.getCanonicalFile().getName();
                }
                if (substring.startsWith(System.getProperty("file.separator"))) {
                    substring = substring.substring(1);
                }
                File file2 = new File(canonicalPath);
                if (file2.isDirectory()) {
                    o10 = substring.replaceAll("\\\\", "/") + "/";
                } else {
                    o10 = substring.substring(0, substring.lastIndexOf(file2.getName())).replaceAll("\\\\", "/") + o(file2, sVar.k());
                }
            } else {
                File file3 = new File(canonicalPath);
                o10 = o(file3, sVar.k());
                if (file3.isDirectory()) {
                    o10 = o10 + "/";
                }
            }
            String m10 = sVar.m();
            if (h.j(m10)) {
                if (!m10.endsWith(C16181m.f130232i) && !m10.endsWith("/")) {
                    m10 = m10 + d.f6818s;
                }
                m10 = m10.replaceAll("\\\\", "/");
                o10 = m10 + o10;
            }
            if (h.j(o10)) {
                return o10;
            }
            String str2 = "fileName to add to zip is empty or null. fileName: '" + o10 + "' DefaultFolderPath: '" + sVar.e() + "' FileNameInZip: " + sVar.k();
            if (x(file)) {
                str2 = str2 + "isSymlink: true ";
            }
            if (h.j(m10)) {
                str2 = "rootFolderNameInZip: '" + m10 + "' ";
            }
            throw new ZipException(str2);
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    public static List<File> s(r rVar) throws ZipException {
        if (rVar == null) {
            throw new ZipException("cannot get split zip files: zipmodel is null");
        }
        if (rVar.e() == null) {
            return null;
        }
        if (!rVar.k().exists()) {
            throw new ZipException("zip file does not exist");
        }
        ArrayList arrayList = new ArrayList();
        File k10 = rVar.k();
        if (!rVar.m()) {
            arrayList.add(k10);
            return arrayList;
        }
        int d10 = rVar.e().d();
        if (d10 == 0) {
            arrayList.add(k10);
            return arrayList;
        }
        int i10 = 0;
        while (i10 <= d10) {
            if (i10 == d10) {
                arrayList.add(rVar.k());
            } else {
                String str = i10 >= 9 ? ".z" : ".z0";
                arrayList.add(new File((k10.getName().contains(".") ? k10.getPath().substring(0, k10.getPath().lastIndexOf(".")) : k10.getPath()) + str + (i10 + 1)));
            }
            i10++;
        }
        return arrayList;
    }

    public static byte[] t(Path path) {
        DosFileAttributeView dosFileAttributeView;
        byte[] bArr = new byte[4];
        try {
            dosFileAttributeView = (DosFileAttributeView) Files.getFileAttributeView(path, DosFileAttributeView.class, LinkOption.NOFOLLOW_LINKS);
        } catch (IOException unused) {
        }
        if (dosFileAttributeView == null) {
            return bArr;
        }
        DosFileAttributes readAttributes = dosFileAttributeView.readAttributes();
        bArr[0] = C(readAttributes.isArchive(), C(readAttributes.isDirectory(), C(readAttributes.isSystem(), C(readAttributes.isHidden(), C(readAttributes.isReadOnly(), (byte) 0, 0), 1), 2), 4), 5);
        return bArr;
    }

    public static String u(String str) throws ZipException {
        if (!h.j(str)) {
            throw new ZipException("zip file name is empty or null, cannot determine zip file name");
        }
        if (str.contains(System.getProperty("file.separator"))) {
            str = str.substring(str.lastIndexOf(System.getProperty("file.separator")) + 1);
        }
        return str.endsWith(".zip") ? str.substring(0, str.lastIndexOf(".")) : str;
    }

    public static boolean v() {
        return System.getProperty("os.name").toLowerCase().contains("mac");
    }

    public static boolean w(File file) {
        return file.getName().endsWith(d.f6824y);
    }

    public static boolean x(File file) {
        try {
            return Files.isSymbolicLink(file.toPath());
        } catch (Error | Exception unused) {
            return false;
        }
    }

    public static boolean y() {
        return System.getProperty("os.name").toLowerCase().contains("nux");
    }

    public static boolean z() {
        return System.getProperty("os.name").toLowerCase().contains("win");
    }
}
