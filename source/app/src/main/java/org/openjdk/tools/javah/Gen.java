package org.openjdk.tools.javah;

import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.lang.constant.ConstantDescs;
import java.nio.file.NoSuchFileException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Stack;
import kotlin.jvm.internal.C14021s;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.javax.annotation.processing.ProcessingEnvironment;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.element.Name;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.element.VariableElement;
import org.openjdk.javax.lang.model.util.ElementFilter;
import org.openjdk.javax.lang.model.util.Elements;
import org.openjdk.javax.lang.model.util.Types;
import org.openjdk.javax.tools.FileObject;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javah.Util;

public abstract class Gen {
    private static final boolean isWindows = System.getProperty("os.name").startsWith("Windows");
    protected Set<TypeElement> classes;
    protected Elements elems;
    protected JavaFileManager fileManager;
    protected Mangle mangler;
    protected JavaFileObject outFile;
    protected ProcessingEnvironment processingEnvironment;
    protected Types types;
    protected Util util;
    protected String lineSep = System.getProperty("line.separator");
    protected boolean force = false;

    public Gen(Util util) {
        this.util = util;
    }

    private void writeIfChanged(byte[] bArr, FileObject fileObject) throws IOException {
        String str;
        boolean z10 = true;
        if (this.force) {
            str = "[Forcefully writing file ";
        } else {
            try {
                if (Arrays.equals(readBytes(fileObject.openInputStream()), bArr)) {
                    z10 = false;
                    str = "[No need to update file ";
                } else {
                    str = "[Overwriting file ";
                }
            } catch (FileNotFoundException | NoSuchFileException unused) {
                str = "[Creating file ";
            }
        }
        Util util = this.util;
        if (util.verbose) {
            util.log(str + ((Object) fileObject) + "]");
        }
        if (z10) {
            OutputStream openOutputStream = fileObject.openOutputStream();
            openOutputStream.write(bArr);
            openOutputStream.close();
        }
    }

    public String baseFileName(CharSequence charSequence) {
        return this.mangler.mangle(charSequence, 1);
    }

    public String cppGuardBegin() {
        return "#ifdef __cplusplus" + this.lineSep + "extern \"C\" {" + this.lineSep + "#endif";
    }

    public String cppGuardEnd() {
        return "#ifdef __cplusplus" + this.lineSep + VectorFormat.DEFAULT_SUFFIX + this.lineSep + "#endif";
    }

    public String defineForStatic(TypeElement typeElement, VariableElement variableElement) throws Util.Exit {
        Object constantValue;
        String str;
        Name qualifiedName = typeElement.getQualifiedName();
        Name simpleName = variableElement.getSimpleName();
        String mangle = this.mangler.mangle(qualifiedName, 1);
        String mangle2 = this.mangler.mangle(simpleName, 2);
        if (!variableElement.getModifiers().contains(Modifier.STATIC)) {
            this.util.bug("tried.to.define.non.static");
        }
        if (variableElement.getModifiers().contains(Modifier.FINAL) && (constantValue = variableElement.getConstantValue()) != null) {
            if ((constantValue instanceof Integer) || (constantValue instanceof Byte) || (constantValue instanceof Short)) {
                str = constantValue.toString() + "L";
            } else if (constantValue instanceof Boolean) {
                str = ((Boolean) constantValue).booleanValue() ? "1L" : "0L";
            } else if (constantValue instanceof Character) {
                str = String.valueOf(((Character) constantValue).charValue() & C14021s.f95775c) + "L";
            } else if (!(constantValue instanceof Long)) {
                if (constantValue instanceof Float) {
                    float floatValue = ((Float) constantValue).floatValue();
                    if (Float.isInfinite(floatValue)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(floatValue < 0.0f ? "-" : "");
                        sb2.append("Inff");
                        str = sb2.toString();
                    } else {
                        str = constantValue.toString() + "f";
                    }
                } else if (constantValue instanceof Double) {
                    double doubleValue = ((Double) constantValue).doubleValue();
                    if (Double.isInfinite(doubleValue)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(doubleValue < 0.0d ? "-" : "");
                        sb3.append("InfD");
                        str = sb3.toString();
                    } else {
                        str = constantValue.toString();
                    }
                } else {
                    str = null;
                }
            } else if (isWindows) {
                str = constantValue.toString() + "i64";
            } else {
                str = constantValue.toString() + "LL";
            }
            if (str != null) {
                return "#undef " + mangle + ConstantDescs.DEFAULT_NAME + mangle2 + this.lineSep + "#define " + mangle + ConstantDescs.DEFAULT_NAME + mangle2 + " " + str;
            }
        }
        return null;
    }

    public List<VariableElement> getAllFields(TypeElement typeElement) {
        ArrayList arrayList = new ArrayList();
        Stack stack = new Stack();
        do {
            stack.push(typeElement);
            typeElement = (TypeElement) this.types.asElement(typeElement.getSuperclass());
        } while (typeElement != null);
        while (!stack.empty()) {
            arrayList.addAll(ElementFilter.fieldsIn(((TypeElement) stack.pop()).getEnclosedElements()));
        }
        return arrayList;
    }

    public FileObject getFileObject(CharSequence charSequence) throws IOException {
        return this.fileManager.getFileForOutput(StandardLocation.SOURCE_OUTPUT, "", baseFileName(charSequence) + getFileSuffix(), null);
    }

    public String getFileSuffix() {
        return ".h";
    }

    public abstract String getIncludes();

    public String guardBegin(String str) {
        return "/* Header for class " + str + " */" + this.lineSep + this.lineSep + "#ifndef _Included_" + str + this.lineSep + "#define _Included_" + str;
    }

    public String guardEnd(String str) {
        return "#endif";
    }

    public byte[] readBytes(InputStream inputStream) throws IOException {
        try {
            byte[] bArr = new byte[inputStream.available() + 1];
            int i10 = 0;
            while (true) {
                int read = inputStream.read(bArr, i10, bArr.length - i10);
                if (read == -1) {
                    byte[] copyOf = Arrays.copyOf(bArr, i10);
                    inputStream.close();
                    return copyOf;
                }
                i10 += read;
                if (i10 == bArr.length) {
                    bArr = Arrays.copyOf(bArr, bArr.length * 2);
                }
            }
        } catch (Throwable th2) {
            inputStream.close();
            throw th2;
        }
    }

    public void run() throws IOException, ClassNotFoundException, Util.Exit {
        if (this.outFile != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
            writeFileTop(byteArrayOutputStream);
            Iterator<TypeElement> it = this.classes.iterator();
            while (it.hasNext()) {
                write(byteArrayOutputStream, it.next());
            }
            writeIfChanged(byteArrayOutputStream.toByteArray(), this.outFile);
            return;
        }
        for (TypeElement typeElement : this.classes) {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(8192);
            writeFileTop(byteArrayOutputStream2);
            write(byteArrayOutputStream2, typeElement);
            writeIfChanged(byteArrayOutputStream2.toByteArray(), getFileObject(typeElement.getQualifiedName()));
        }
    }

    public void setClasses(Set<TypeElement> set) {
        this.classes = set;
    }

    public void setFileManager(JavaFileManager javaFileManager) {
        this.fileManager = javaFileManager;
    }

    public void setForce(boolean z10) {
        this.force = z10;
    }

    public void setOutFile(JavaFileObject javaFileObject) {
        this.outFile = javaFileObject;
    }

    public void setProcessingEnvironment(ProcessingEnvironment processingEnvironment) {
        this.processingEnvironment = processingEnvironment;
        this.elems = processingEnvironment.getElementUtils();
        Types typeUtils = processingEnvironment.getTypeUtils();
        this.types = typeUtils;
        this.mangler = new Mangle(this.elems, typeUtils);
    }

    public String signature(ExecutableElement executableElement) {
        StringBuilder sb2 = new StringBuilder("(");
        String str = "";
        for (VariableElement variableElement : executableElement.getParameters()) {
            sb2.append(str);
            sb2.append(this.types.erasure(variableElement.asType()).toString());
            str = DocLint.SEPARATOR;
        }
        sb2.append(")");
        return sb2.toString();
    }

    public PrintWriter wrapWriter(OutputStream outputStream) throws Util.Exit {
        try {
            return new PrintWriter((Writer) new OutputStreamWriter(outputStream, "ISO8859_1"), true);
        } catch (UnsupportedEncodingException unused) {
            this.util.bug("encoding.iso8859_1.not.found");
            return null;
        }
    }

    public abstract void write(OutputStream outputStream, TypeElement typeElement) throws Util.Exit;

    public void writeFileTop(OutputStream outputStream) throws Util.Exit {
        wrapWriter(outputStream).println("/* DO NOT EDIT THIS FILE - it is machine generated */" + this.lineSep + getIncludes());
    }
}
