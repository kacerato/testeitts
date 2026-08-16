package org.eclipse.jdt.internal.compiler.batch;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.util.Util;

public class ClasspathSourceJar extends ClasspathJar {
    private String encoding;

    public ClasspathSourceJar(File file, boolean z10, AccessRuleSet accessRuleSet, String str, String str2) {
        super(file, z10, accessRuleSet, str2);
        this.encoding = str;
    }

    @Override
    public NameEnvironmentAnswer findClass(char[] cArr, String str, String str2, String str3, boolean z10) {
        InputStream inputStream;
        if (!isPackage(str, str2)) {
            return null;
        }
        ZipEntry entry = this.zipFile.getEntry(String.valueOf(str3.substring(0, str3.length() - 6)) + ".java");
        try {
            if (entry != null) {
                try {
                    inputStream = this.zipFile.getInputStream(entry);
                    try {
                        char[] inputStreamAsCharArray = Util.getInputStreamAsCharArray(inputStream, -1, this.encoding);
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        CompilationUnit compilationUnit = new CompilationUnit(inputStreamAsCharArray, String.valueOf(str3.substring(0, str3.length() - 6)) + ".java", this.encoding, this.destinationPath);
                        IModule iModule = this.module;
                        compilationUnit.module = iModule == null ? null : iModule.name();
                        return new NameEnvironmentAnswer(compilationUnit, fetchAccessRestriction(str3));
                    } catch (Throwable th2) {
                        th = th2;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    inputStream = null;
                }
            }
        } catch (IOException unused) {
        }
        return null;
    }

    @Override
    public int getMode() {
        return 1;
    }
}
