package com.android.tools.r8.naming;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.internal.AbstractC8713oA;
import com.android.tools.r8.internal.AbstractC8880pA;
import java.nio.charset.StandardCharsets;

public class C11022x0 implements StringConsumer {

    public static class a {

        public static final boolean f56101c = true;

        public final boolean f56102a;

        public final String f56103b;

        public a(String str, boolean z10) {
            this.f56102a = z10;
            this.f56103b = str;
        }

        public boolean a() {
            return !this.f56102a && this.f56103b == null;
        }
    }

    public static a a(String str) {
        int i10 = -1;
        while (true) {
            int i11 = i10 + 1;
            int indexOf = str.indexOf(10, i11);
            if (indexOf < 0) {
                return new a("Failure to find map hash", false);
            }
            String trim = str.substring(i11, indexOf).trim();
            if (!trim.isEmpty()) {
                if (trim.charAt(0) != '#') {
                    return new a("Failure to find map hash in header", false);
                }
                String trim2 = trim.substring(1).trim();
                if (trim2.startsWith("pg_map_hash")) {
                    int indexOf2 = trim2.indexOf("SHA-256 ", 11);
                    if (indexOf2 < 0) {
                        return new a("Unknown map hash function: '" + trim2 + "'", true);
                    }
                    String trim3 = trim2.substring(indexOf2 + 7).trim();
                    int i12 = AbstractC8880pA.f51464a;
                    com.android.tools.r8.internal.F f10 = (com.android.tools.r8.internal.F) AbstractC8713oA.f51183a.a();
                    f10.a(str.substring(indexOf + 1), StandardCharsets.UTF_8);
                    String abstractC7379gA = f10.a().toString();
                    if (trim3.equals(abstractC7379gA)) {
                        return new a(null, false);
                    }
                    return new a("Mismatching map hash: '" + trim3 + "' != '" + abstractC7379gA + "'", true);
                }
            }
            i10 = indexOf;
        }
    }

    @Override
    public final void accept(String str, DiagnosticsHandler diagnosticsHandler) {
        throw null;
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        throw null;
    }
}
