package kotlin.io;

import ag.P;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import pf.H;
import pf.I;

@t0({"SMAP\nFilePathComponents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilePathComponents.kt\nkotlin/io/FilesKt__FilePathComponentsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1586#2:150\n1661#2,3:151\n*S KotlinDebug\n*F\n+ 1 FilePathComponents.kt\nkotlin/io/FilesKt__FilePathComponentsKt\n*L\n134#1:150\n134#1:151,3\n*E\n"})
public class k {
    @NotNull
    public static final File a(@NotNull File file) {
        M.p(file, "<this>");
        return new File(c(file));
    }

    public static final int b(String str) {
        int K32;
        char c10 = File.separatorChar;
        int K33 = P.K3(str, c10, 0, false, 4, null);
        if (K33 == 0) {
            if (str.length() <= 1 || str.charAt(1) != c10 || (K32 = P.K3(str, c10, 2, false, 4, null)) < 0) {
                return 1;
            }
            int K34 = P.K3(str, c10, K32 + 1, false, 4, null);
            return K34 >= 0 ? K34 + 1 : str.length();
        }
        if (K33 > 0 && str.charAt(K33 - 1) == ':') {
            return K33 + 1;
        }
        if (K33 == -1 && P.u3(str, ':', false, 2, null)) {
            return str.length();
        }
        return 0;
    }

    @NotNull
    public static final String c(@NotNull File file) {
        M.p(file, "<this>");
        String path = file.getPath();
        M.o(path, "getPath(...)");
        String path2 = file.getPath();
        M.o(path2, "getPath(...)");
        String substring = path.substring(0, b(path2));
        M.o(substring, "substring(...)");
        return substring;
    }

    public static final boolean d(@NotNull File file) {
        M.p(file, "<this>");
        String path = file.getPath();
        M.o(path, "getPath(...)");
        return b(path) > 0;
    }

    @NotNull
    public static final File e(@NotNull File file, int i10, int i11) {
        M.p(file, "<this>");
        return f(file).j(i10, i11);
    }

    @NotNull
    public static final g f(@NotNull File file) {
        List list;
        M.p(file, "<this>");
        String path = file.getPath();
        M.m(path);
        int b10 = b(path);
        String substring = path.substring(0, b10);
        M.o(substring, "substring(...)");
        String substring2 = path.substring(b10);
        M.o(substring2, "substring(...)");
        if (substring2.length() == 0) {
            list = H.J();
        } else {
            List q52 = P.q5(substring2, new char[]{File.separatorChar}, false, 0, 6, null);
            ArrayList arrayList = new ArrayList(I.d0(q52, 10));
            Iterator<E> it = q52.iterator();
            while (it.hasNext()) {
                arrayList.add(new File((String) it.next()));
            }
            list = arrayList;
        }
        return new g(new File(substring), list);
    }
}
