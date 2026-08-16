package n7;

import F7.j;
import id.C13696a;
import java.io.File;
import java.util.List;
import java.util.Locale;

public abstract class AbstractC14360e {
    public abstract boolean a(File file);

    public long b(File file) {
        return C13696a.j(file);
    }

    public String c(boolean isSearching, File file, String ipp) {
        long b10 = b(file);
        if (!file.isDirectory()) {
            File file2 = new File(Tc.b.O(file.getAbsolutePath()) + ".meta/");
            if (file2.exists()) {
                b10 += b(file2);
            }
        }
        String s10 = Tc.b.s(b10);
        if (!isSearching) {
            return s10;
        }
        return s10 + " - " + Tc.b.u(ipp);
    }

    public String d(File file, String ipp) {
        return file.getName();
    }

    public j e(File file, String ipp, boolean isGrid) {
        return null;
    }

    public abstract String f();

    public String g(File file, String ipp) {
        return file.getAbsolutePath();
    }

    public abstract boolean h(File file);

    public boolean i(File parent) {
        return false;
    }

    public abstract List<File> j(File parent);

    public boolean k(File file, String ipp, String searchText) {
        if (searchText == null) {
            searchText = "";
        }
        String trim = searchText.trim();
        if (trim.isEmpty()) {
            return l();
        }
        String name = file.getName();
        Locale locale = Locale.ROOT;
        return name.toLowerCase(locale).contains(trim.toLowerCase(locale));
    }

    public boolean l() {
        return false;
    }
}
