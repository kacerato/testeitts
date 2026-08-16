package org.eclipse.jdt.core;

import java.io.IOException;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.jdt.core.util.IClassFileReader;
import org.eclipse.jdt.core.util.ICodeAttribute;
import org.eclipse.jdt.core.util.IMethodInfo;
import org.eclipse.jdt.internal.antadapter.AntAdapterMessages;
import org.eclipse.jdt.internal.compiler.util.Util;

public final class CheckDebugAttributes extends Task {
    private String file;
    private String property;

    public void execute() throws BuildException {
        if (this.file == null) {
            throw new BuildException(AntAdapterMessages.getString("checkDebugAttributes.file.argument.cannot.be.null"));
        }
        if (this.property == null) {
            throw new BuildException(AntAdapterMessages.getString("checkDebugAttributes.property.argument.cannot.be.null"));
        }
        try {
            boolean hasDebugAttributes = false;
            if (Util.isClassFileName(this.file)) {
                IClassFileReader classFileReader = ToolFactory.createDefaultClassFileReader(this.file, 65535);
                hasDebugAttributes = checkClassFile(classFileReader);
            } else {
                ZipFile jarFile = null;
                try {
                    try {
                        jarFile = new ZipFile(this.file);
                        if (jarFile != null) {
                            jarFile.close();
                        }
                        Enumeration entries = jarFile.entries();
                        while (!hasDebugAttributes && entries.hasMoreElements()) {
                            ZipEntry entry = entries.nextElement();
                            if (Util.isClassFileName(entry.getName())) {
                                IClassFileReader classFileReader2 = ToolFactory.createDefaultClassFileReader(this.file, entry.getName(), 65535);
                                hasDebugAttributes = checkClassFile(classFileReader2);
                            }
                        }
                    } catch (ZipException e10) {
                        throw new BuildException(AntAdapterMessages.getString("checkDebugAttributes.file.argument.must.be.a.classfile.or.a.jarfile"), e10);
                    }
                } catch (Throwable th2) {
                    if (jarFile != null) {
                        jarFile.close();
                    }
                    throw th2;
                }
            }
            if (hasDebugAttributes) {
                getProject().setUserProperty(this.property, "has debug");
            }
        } catch (IOException e11) {
            throw new BuildException(String.valueOf(AntAdapterMessages.getString("checkDebugAttributes.ioexception.occured")) + this.file, e11);
        }
    }

    private boolean checkClassFile(IClassFileReader classFileReader) {
        IMethodInfo[] methodInfos = classFileReader.getMethodInfos();
        for (IMethodInfo iMethodInfo : methodInfos) {
            ICodeAttribute codeAttribute = iMethodInfo.getCodeAttribute();
            if (codeAttribute != null && codeAttribute.getLineNumberAttribute() != null) {
                return true;
            }
        }
        return false;
    }

    public void setFile(String value) {
        this.file = value;
    }

    public void setProperty(String value) {
        this.property = value;
    }
}
