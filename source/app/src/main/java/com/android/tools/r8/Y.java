package com.android.tools.r8;

import com.android.tools.r8.internal.AbstractC7552hC;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class Y implements ParseFlagInfo {

    public static final boolean f35568d = true;

    public final String f35569a;

    public final List f35570b;

    public final List f35571c;

    public Y(String str, List list, List list2) {
        boolean z10 = f35568d;
        if (!z10 && str == null) {
            throw new AssertionError();
        }
        if (!z10 && list == null) {
            throw new AssertionError();
        }
        if (!z10 && list2 == null) {
            throw new AssertionError();
        }
        this.f35569a = str;
        this.f35570b = list;
        this.f35571c = list2;
    }

    public static Y a(boolean z10) {
        return a("--debug", Collections.EMPTY_LIST, Arrays.asList("Compile with debugging information" + (z10 ? " (default)" : "") + "."));
    }

    public static Y b(boolean z10) {
        return a("--release", Collections.EMPTY_LIST, Arrays.asList("Compile without debugging information" + (z10 ? " (default)" : "") + "."));
    }

    public static Y c() {
        return a("--help", Collections.EMPTY_LIST, Arrays.asList("Print this message."));
    }

    public static Y d() {
        return a("--map-diagnostics[:<type>]", AbstractC7552hC.a("<from-level>", "<to-level>"), Arrays.asList("Map diagnostics of <type> (default any) reported as", "<from-level> to <to-level> where <from-level> and", "<to-level> are one of 'info', 'warning', or 'error'", "and the optional <type> is either the simple or", "fully qualified Java type name of a diagnostic.", "If <type> is unspecified, all diagnostics at ", "<from-level> will be mapped.", "Note that fatal compiler errors cannot be mapped."));
    }

    public static Y e() {
        return a("--min-api", Collections.singletonList("<number>"), Arrays.asList("Minimum Android API level compatibility (default: " + com.android.tools.r8.internal.C2.b().d() + ")."));
    }

    @Override
    public final String getFlagFormat() {
        return this.f35569a;
    }

    @Override
    public final List getFlagFormatAlternatives() {
        return this.f35570b;
    }

    @Override
    public final List getFlagHelp() {
        return this.f35571c;
    }

    public static Y a(String str) {
        return a("--version", Collections.EMPTY_LIST, Arrays.asList("Print the version of " + str + "."));
    }

    public static Y b() {
        return a("--dex", Collections.EMPTY_LIST, Arrays.asList("Compile program to DEX file format (default)."));
    }

    public static AbstractC7552hC a() {
        return AbstractC7552hC.a(new Y("--force-enable-assertions[:[<class name>|<package name>...]]", Collections.singletonList("--force-ea[:[<class name>|<package name>...]]"), Arrays.asList("Forcefully enable javac generated assertion code.")), new Y("--force-disable-assertions[:[<class name>|<package name>...]]", Collections.singletonList("--force-da[:[<class name>|<package name>...]]"), Arrays.asList("Forcefully disable javac generated assertion code.", "This is the default handling of javac assertion code", "when generating DEX file format.")), new Y("--force-passthrough-assertions[:[<class name>|<package name>...]]", Collections.singletonList("--force-pa[:[<class name>|<package name>...]]"), Arrays.asList("Don't change javac generated assertion code. This", "is the default handling of javac assertion code when", "generating class file format.")), new Y("--force-assertions-handler:<handler method>[:[<class name>|<package name>...]]", Collections.singletonList("--force-ah:<handler method>[:[<class name>|<package name>...]]"), Arrays.asList("Change javac and kotlinc generated assertion code", "to invoke the method <handler method> with each", "assertion error instead of throwing it.", "The <handler method> is specified as a class name", "followed by a dot and the method name.", "The handler method must take a single argument of", "type java.lang.Throwable and have return type void.")));
    }

    public static Y a(String str, List list, List list2) {
        StringBuilder sb2 = new StringBuilder(str);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            sb2.append(" ");
            sb2.append(str2);
        }
        return new Y(sb2.toString(), Collections.EMPTY_LIST, list2);
    }
}
