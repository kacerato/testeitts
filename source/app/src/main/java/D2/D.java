package D2;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
import v2.InterfaceC15800a;
import w2.H;

@v2.c
@p
@InterfaceC15800a
public final class D implements FilenameFilter {

    public final Pattern f4731a;

    public D(String str) {
        this(Pattern.compile(str));
    }

    @Override
    public boolean accept(File file, String str) {
        return this.f4731a.matcher(str).matches();
    }

    public D(Pattern pattern) {
        this.f4731a = (Pattern) H.E(pattern);
    }
}
