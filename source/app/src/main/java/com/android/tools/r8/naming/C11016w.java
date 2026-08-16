package com.android.tools.r8.naming;

import com.android.tools.r8.DiagnosticsLevel;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.position.TextPosition;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.BufferedReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.HashSet;

public final class C11016w implements AutoCloseable {

    public static final boolean f56089c = true;

    public final BufferedReader f56090a;

    public final Path f56091b;

    public C11016w(Path path) {
        this.f56091b = path;
        this.f56090a = Files.newBufferedReader(path);
    }

    public final String a(C5094Ef0 c5094Ef0) {
        if (!f56089c && this.f56090a == null) {
            throw new AssertionError();
        }
        StringBuilder sb2 = new StringBuilder();
        int i10 = 1;
        while (true) {
            int read = this.f56090a.read();
            if (read != -1) {
                char c10 = (char) read;
                if ((sb2.length() != 0 && Character.isJavaIdentifierPart(c10)) || (sb2.length() == 0 && Character.isJavaIdentifierStart(c10))) {
                    sb2.append(c10);
                } else {
                    boolean z10 = c10 == '#';
                    boolean z11 = c10 == '\n' || c10 == '\r';
                    if (z10 || z11) {
                        if (z10) {
                            this.f56090a.readLine();
                        }
                        i10++;
                    }
                    if (z11 && sb2.length() != 0) {
                        return sb2.toString();
                    }
                    sb2 = new StringBuilder();
                    if (z11) {
                        continue;
                    } else {
                        StringDiagnostic stringDiagnostic = new StringDiagnostic("Invalid character in dictionary '" + c10 + "'", new PathOrigin(this.f56091b), new TextPosition(0L, i10, -1));
                        synchronized (c5094Ef0) {
                            c5094Ef0.a(DiagnosticsLevel.INFO, stringDiagnostic);
                        }
                        this.f56090a.readLine();
                        i10++;
                    }
                }
            } else {
                return sb2.toString();
            }
        }
    }

    @Override
    public final void close() {
        BufferedReader bufferedReader = this.f56090a;
        if (bufferedReader != null) {
            bufferedReader.close();
        }
    }

    public static AbstractC7552hC a(C5094Ef0 c5094Ef0, Path path) {
        C11016w c11016w;
        if (path != null) {
            HashSet hashSet = new HashSet();
            Object[] objArr = new Object[4];
            int i10 = 0;
            try {
                c11016w = new C11016w(path);
            } catch (IOException e10) {
                c5094Ef0.error(new ExceptionDiagnostic(e10, new PathOrigin(path)));
            }
            try {
                String a10 = c11016w.a(c5094Ef0);
                while (!a10.isEmpty()) {
                    if (!hashSet.add(a10)) {
                        c5094Ef0.error(new StringDiagnostic("Duplicate entry for '" + a10 + "' in dictionary", new PathOrigin(path)));
                    }
                    int i11 = i10 + 1;
                    if (objArr.length < i11) {
                        objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i11));
                    }
                    try {
                        objArr[i10] = a10;
                        a10 = c11016w.a(c5094Ef0);
                        i10 = i11;
                    } catch (Throwable th2) {
                        th = th2;
                        i10 = i11;
                        try {
                            BufferedReader bufferedReader = c11016w.f56090a;
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th;
                    }
                }
                BufferedReader bufferedReader2 = c11016w.f56090a;
                if (bufferedReader2 != null) {
                    bufferedReader2.close();
                }
                return AbstractC7552hC.b(i10, objArr);
            } catch (Throwable th4) {
                th = th4;
            }
        } else {
            int i12 = AbstractC7552hC.f48487c;
            return C6190Xe0.f45779e;
        }
    }
}
