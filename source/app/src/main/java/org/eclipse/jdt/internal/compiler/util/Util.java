package org.eclipse.jdt.internal.compiler.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.batch.Main;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import w2.C15883c;

public class Util implements SuffixConstants {
    public static final char C_ARRAY = '[';
    public static final char C_BOOLEAN = 'Z';
    public static final char C_BYTE = 'B';
    public static final char C_CAPTURE = '!';
    public static final char C_CHAR = 'C';
    public static final char C_COLON = ':';
    public static final char C_DOLLAR = '$';
    public static final char C_DOT = '.';
    public static final char C_DOUBLE = 'D';
    public static final char C_EXCEPTION_START = '^';
    public static final char C_EXTENDS = '+';
    public static final char C_FLOAT = 'F';
    public static final char C_GENERIC_END = '>';
    public static final char C_GENERIC_START = '<';
    public static final char C_INT = 'I';
    public static final char C_LONG = 'J';
    public static final char C_NAME_END = ';';
    public static final char C_PARAM_END = ')';
    public static final char C_PARAM_START = '(';
    public static final char C_RESOLVED = 'L';
    public static final char C_SEMICOLON = ';';
    public static final char C_SHORT = 'S';
    public static final char C_STAR = '*';
    public static final char C_SUPER = '-';
    public static final char C_TYPE_VARIABLE = 'T';
    public static final char C_UNRESOLVED = 'Q';
    public static final char C_VOID = 'V';
    private static final int DEFAULT_READING_SIZE = 8192;
    private static final int DEFAULT_WRITING_SIZE = 1024;
    public static final int JMOD_FILE = 1;
    public static final String UTF_8 = "UTF-8";
    public static final int ZIP_FILE = 0;
    public static final String LINE_SEPARATOR = System.getProperty("line.separator");
    public static final String EMPTY_STRING = new String(CharOperation.NO_CHAR);
    public static final String COMMA_SEPARATOR = new String(CharOperation.COMMA_SEPARATOR);
    public static final int[] EMPTY_INT_ARRAY = new int[0];

    public interface Displayable {
        String displayString(Object obj);
    }

    public static void appendEscapedChar(StringBuffer stringBuffer, char c10, boolean z10) {
        if (c10 == '\f') {
            stringBuffer.append("\\f");
            return;
        }
        if (c10 == '\r') {
            stringBuffer.append("\\r");
            return;
        }
        if (c10 == '\"') {
            if (z10) {
                stringBuffer.append("\\\"");
                return;
            } else {
                stringBuffer.append(c10);
                return;
            }
        }
        if (c10 == '\'') {
            if (z10) {
                stringBuffer.append(c10);
                return;
            } else {
                stringBuffer.append("\\'");
                return;
            }
        }
        if (c10 == '\\') {
            stringBuffer.append("\\\\");
            return;
        }
        switch (c10) {
            case '\b':
                stringBuffer.append("\\b");
                return;
            case '\t':
                stringBuffer.append("\\t");
                return;
            case '\n':
                stringBuffer.append("\\n");
                return;
            default:
                if (c10 >= ' ') {
                    stringBuffer.append(c10);
                    return;
                }
                if (c10 >= 16) {
                    stringBuffer.append("\\u00");
                    stringBuffer.append(Integer.toHexString(c10));
                    return;
                } else if (c10 < 0) {
                    stringBuffer.append(c10);
                    return;
                } else {
                    stringBuffer.append("\\u000");
                    stringBuffer.append(Integer.toHexString(c10));
                    return;
                }
        }
    }

    public static final int archiveFormat(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == -1 || str.lastIndexOf(File.separatorChar) > lastIndexOf) {
            return -1;
        }
        int length = str.length();
        int i10 = length - lastIndexOf;
        int i11 = i10 - 1;
        if (i11 == 4) {
            for (int i12 = i10 - 2; i12 >= 0 && Character.toLowerCase(str.charAt((length - i11) + i12)) == SuffixConstants.EXTENSION_java.charAt(i12); i12--) {
                if (i12 == 0) {
                    return -1;
                }
            }
        }
        if (i11 == 5) {
            for (int i13 = i10 - 2; i13 >= 0; i13--) {
                if (Character.toLowerCase(str.charAt((length - i11) + i13)) != "class".charAt(i13)) {
                    return 0;
                }
            }
            return -1;
        }
        if (i11 != 4) {
            return 0;
        }
        for (int i14 = i10 - 2; i14 >= 0; i14--) {
            if (Character.toLowerCase(str.charAt((length - i11) + i14)) != SuffixConstants.EXTENSION_jmod.charAt(i14)) {
                return 0;
            }
        }
        return 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String buildAllDirectoriesInto(String str, String str2) throws IOException {
        String str3;
        String str4;
        StringTokenizer stringTokenizer;
        char c10 = File.separatorChar;
        String str5 = File.separator;
        String replace = str.replace('/', c10);
        String replace2 = str2.replace('/', c10);
        int lastIndexOf = replace2.lastIndexOf(c10);
        if (lastIndexOf == -1) {
            if (replace.endsWith(str5)) {
                str3 = replace.substring(0, replace.length() - 1);
                str4 = replace + replace2;
            } else {
                str4 = replace + str5 + replace2;
                str3 = replace;
            }
        } else if (replace.endsWith(str5)) {
            str3 = replace + replace2.substring(0, lastIndexOf);
            str4 = replace + replace2;
        } else {
            str3 = replace + str5 + replace2.substring(0, lastIndexOf);
            str4 = replace + str5 + replace2;
        }
        File file = new File(str3);
        file.mkdirs();
        if (file.isDirectory()) {
            return str4;
        }
        if (replace.endsWith(str5)) {
            replace = replace.substring(0, replace.length() - 1);
        }
        File file2 = new File(replace);
        if (!file2.exists()) {
            if (!file2.mkdirs()) {
                if (!file2.exists()) {
                    throw new IOException(Messages.bind(Messages.output_notValidAll, file2.getAbsolutePath()));
                }
            }
            StringBuffer stringBuffer = new StringBuffer(replace);
            stringBuffer.append(str5);
            stringTokenizer = new StringTokenizer(replace2, str5);
            String nextToken = stringTokenizer.nextToken();
            while (stringTokenizer.hasMoreTokens()) {
                stringBuffer.append(nextToken);
                stringBuffer.append(str5);
                File file3 = new File(stringBuffer.toString());
                if (!file3.exists()) {
                    if (file3.mkdir()) {
                        continue;
                        nextToken = stringTokenizer.nextToken();
                    } else if (!file3.exists()) {
                        throw new IOException(Messages.bind(Messages.output_notValid, stringBuffer.substring(replace.length() + 1, stringBuffer.length() - 1), replace));
                    }
                }
                if (!file3.isDirectory()) {
                    throw new IOException(Messages.bind(Messages.output_isFile, file3.getAbsolutePath()));
                }
                nextToken = stringTokenizer.nextToken();
            }
            stringBuffer.append(nextToken);
            return stringBuffer.toString();
        }
        if (!file2.isDirectory()) {
            throw new IOException(Messages.bind(Messages.output_isFile, file2.getAbsolutePath()));
        }
        StringBuffer stringBuffer2 = new StringBuffer(replace);
        stringBuffer2.append(str5);
        stringTokenizer = new StringTokenizer(replace2, str5);
        String nextToken2 = stringTokenizer.nextToken();
        while (stringTokenizer.hasMoreTokens()) {
        }
        stringBuffer2.append(nextToken2);
        return stringBuffer2.toString();
    }

    public static char[] bytesToChar(byte[] bArr, String str) throws IOException {
        return getInputStreamAsCharArray(new ByteArrayInputStream(bArr), bArr.length, str);
    }

    public static List<FileSystem.Classpath> collectFilesNames() {
        return collectPlatformLibraries(null);
    }

    public static List<FileSystem.Classpath> collectPlatformLibraries(File file) {
        String property = System.getProperty("java.version");
        if (property != null && property.equalsIgnoreCase("1.1.8")) {
            throw new IllegalStateException();
        }
        if (CompilerOptions.versionToJdkLevel(property) >= ClassFileConstants.JDK9) {
            ArrayList arrayList = new ArrayList();
            if (file == null) {
                file = getJavaHome();
            }
            if (file != null) {
                arrayList.add(FileSystem.getJrtClasspath(file.getAbsolutePath(), null, null, null));
                return arrayList;
            }
        }
        String property2 = System.getProperty("sun.boot.class.path");
        if ((property2 == null || property2.length() == 0) && ((property2 = System.getProperty("vm.boot.class.path")) == null || property2.length() == 0)) {
            property2 = System.getProperty("org.apache.harmony.boot.class.path");
        }
        HashSet hashSet = new HashSet();
        if (property2 == null || property2.length() == 0) {
            if (file == null) {
                file = getJavaHome();
            }
            if (file != null) {
                File[][] librariesFiles = Main.getLibrariesFiles(System.getProperty("os.name").startsWith("Mac") ? new File[]{new File(file, "../Classes")} : new File[]{new File(file, "lib")});
                if (librariesFiles != null) {
                    for (File[] fileArr : librariesFiles) {
                        if (fileArr != null) {
                            for (File file2 : fileArr) {
                                hashSet.add(file2.getAbsolutePath());
                            }
                        }
                    }
                }
            }
        } else {
            StringTokenizer stringTokenizer = new StringTokenizer(property2, File.pathSeparator);
            while (stringTokenizer.hasMoreTokens()) {
                hashSet.add(stringTokenizer.nextToken());
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<E> it = hashSet.iterator();
        while (it.hasNext()) {
            FileSystem.Classpath classpath = FileSystem.getClasspath((String) it.next(), null, null, null, null);
            if (classpath != null) {
                arrayList2.add(classpath);
            }
        }
        return arrayList2;
    }

    public static void collectRunningVMBootclasspath(List<FileSystem.Classpath> list) {
        collectVMBootclasspath(list, null);
    }

    public static void collectVMBootclasspath(List<FileSystem.Classpath> list, File file) {
        list.addAll(collectPlatformLibraries(file));
    }

    public static int computeOuterMostVisibility(TypeDeclaration typeDeclaration, int i10) {
        while (typeDeclaration != null) {
            int i11 = typeDeclaration.modifiers & 7;
            int i12 = 2;
            if (i11 != 0) {
                if (i11 != 2) {
                    i12 = 4;
                    if (i11 == 4) {
                        if (i10 != 1) {
                        }
                    }
                }
                i10 = i12;
            } else if (i10 != 2) {
                i10 = 0;
            }
            typeDeclaration = typeDeclaration.enclosingType;
        }
        return i10;
    }

    public static boolean effectivelyEqual(Object[] objArr, Object[] objArr2) {
        if (objArr == objArr2) {
            return true;
        }
        int length = objArr == null ? 0 : objArr.length;
        if (length != (objArr2 == null ? 0 : objArr2.length)) {
            return false;
        }
        if (length == 0) {
            return true;
        }
        for (int i10 = 0; i10 < objArr.length; i10++) {
            if (objArr[i10] != objArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public static String getExceptionSummary(Throwable th2) {
        StringWriter stringWriter = new StringWriter();
        th2.printStackTrace(new PrintWriter(stringWriter));
        StringBuffer buffer = stringWriter.getBuffer();
        StringBuffer stringBuffer = new StringBuffer(50);
        stringBuffer.append(th2.toString());
        int length = buffer.length();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            char charAt = buffer.charAt(i10);
            if (charAt != '\t') {
                if (charAt == '\n' || charAt == '\r') {
                    if (i11 > 0) {
                        stringBuffer.append(C15883c.f126249O);
                        stringBuffer.append(buffer.substring(i11, i10));
                        break;
                    }
                    i12++;
                } else if (charAt != ' ' && i12 > 0) {
                    i12 = 0;
                    i11 = i10;
                }
            }
            i10++;
        }
        return stringBuffer.toString();
    }

    public static byte[] getFileByteContent(File file) throws IOException {
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
            try {
                byte[] inputStreamAsByteArray = getInputStreamAsByteArray(bufferedInputStream2, (int) file.length());
                try {
                    bufferedInputStream2.close();
                } catch (IOException unused) {
                }
                return inputStreamAsByteArray;
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = bufferedInputStream2;
                if (bufferedInputStream != null) {
                    try {
                        bufferedInputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static char[] getFileCharContent(File file, String str) throws IOException {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                char[] inputStreamAsCharArray = getInputStreamAsCharArray(fileInputStream2, (int) file.length(), str);
                try {
                    fileInputStream2.close();
                } catch (IOException unused) {
                }
                return inputStreamAsCharArray;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static FileOutputStream getFileOutputStream(boolean z10, String str, String str2) throws IOException {
        String str3;
        if (z10) {
            return new FileOutputStream(new File(buildAllDirectoriesInto(str, str2)));
        }
        char c10 = File.separatorChar;
        String str4 = File.separator;
        String replace = str.replace('/', c10);
        int lastIndexOf = str2.lastIndexOf(c10);
        if (lastIndexOf != -1) {
            int length = str2.length();
            if (replace.endsWith(str4)) {
                str3 = replace + str2.substring(lastIndexOf + 1, length);
            } else {
                str3 = replace + str4 + str2.substring(lastIndexOf + 1, length);
            }
        } else if (replace.endsWith(str4)) {
            str3 = replace + str2;
        } else {
            str3 = replace + str4 + str2;
        }
        return new FileOutputStream(new File(str3));
    }

    public static byte[] getInputStreamAsByteArray(InputStream inputStream, int i10) throws IOException {
        int read;
        int i11 = 0;
        if (i10 != -1) {
            byte[] bArr = new byte[i10];
            int i12 = 0;
            while (i11 != -1 && i12 != i10) {
                i12 += i11;
                i11 = inputStream.read(bArr, i12, i10 - i12);
            }
            return bArr;
        }
        byte[] bArr2 = new byte[0];
        int i13 = 0;
        do {
            int max = Math.max(inputStream.available(), 8192);
            int i14 = i13 + max;
            if (i14 > bArr2.length) {
                byte[] bArr3 = new byte[i14];
                System.arraycopy(bArr2, 0, bArr3, 0, i13);
                bArr2 = bArr3;
            }
            read = inputStream.read(bArr2, i13, max);
            if (read > 0) {
                i13 += read;
            }
        } while (read != -1);
        if (i13 >= bArr2.length) {
            return bArr2;
        }
        byte[] bArr4 = new byte[i13];
        System.arraycopy(bArr2, 0, bArr4, 0, i13);
        return bArr4;
    }

    public static char[] getInputStreamAsCharArray(InputStream inputStream, int i10, String str) throws IOException {
        BufferedReader bufferedReader;
        int i11;
        int i12;
        try {
            bufferedReader = str == null ? new BufferedReader(new InputStreamReader(inputStream)) : new BufferedReader(new InputStreamReader(inputStream, str));
        } catch (UnsupportedEncodingException unused) {
            bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        }
        char[] cArr = i10 == -1 ? CharOperation.NO_CHAR : new char[i10];
        int i13 = 0;
        while (true) {
            if (i13 >= i10) {
                int read = bufferedReader.read();
                if (read < 0) {
                    break;
                }
                int max = Math.max(inputStream.available(), 8192);
                int i14 = i13 + 1;
                int i15 = i14 + max;
                if (i15 > cArr.length) {
                    char[] cArr2 = new char[i15];
                    System.arraycopy(cArr, 0, cArr2, 0, i13);
                    cArr = cArr2;
                }
                cArr[i13] = (char) read;
                i11 = max;
                i13 = i14;
            } else {
                i11 = i10 - i13;
            }
            int read2 = bufferedReader.read(cArr, i13, i11);
            if (read2 < 0) {
                break;
            }
            i13 += read2;
        }
        if (i13 > 0 && "UTF-8".equals(str) && cArr[0] == '\ufeff') {
            i13--;
            i12 = 1;
        } else {
            i12 = 0;
        }
        if (i13 >= cArr.length) {
            return cArr;
        }
        char[] cArr3 = new char[i13];
        System.arraycopy(cArr, i12, cArr3, 0, i13);
        return cArr3;
    }

    public static long getJDKLevel(File file) {
        return CompilerOptions.versionToJdkLevel(System.getProperty("java.version"));
    }

    public static File getJavaHome() {
        String property = System.getProperty("java.home");
        if (property == null) {
            return null;
        }
        File file = new File(property);
        if (file.exists()) {
            return file;
        }
        return null;
    }

    public static int getLineNumber(int i10, int[] iArr, int i11, int i12) {
        if (iArr == null || i12 == -1) {
            return 1;
        }
        int i13 = i12;
        int i14 = i11;
        while (i11 <= i13) {
            i14 = ((i13 - i11) / 2) + i11;
            int i15 = iArr[i14];
            if (i10 < i15) {
                i13 = i14 - 1;
            } else {
                if (i10 <= i15) {
                    return i14 + 1;
                }
                i11 = i14 + 1;
            }
        }
        return i10 < iArr[i14] ? i14 + 1 : i14 + 2;
    }

    public static int getParameterCount(char[] cArr) {
        try {
            int indexOf = CharOperation.indexOf('(', cArr);
            if (indexOf < 0) {
                throw new IllegalArgumentException();
            }
            int i10 = indexOf + 1;
            int i11 = 0;
            while (cArr[i10] != ')') {
                int scanTypeSignature = scanTypeSignature(cArr, i10);
                if (scanTypeSignature < 0) {
                    throw new IllegalArgumentException();
                }
                i10 = scanTypeSignature + 1;
                i11++;
            }
            return i11;
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static byte[] getZipEntryByteContent(ZipEntry zipEntry, ZipFile zipFile) throws IOException {
        BufferedInputStream bufferedInputStream = null;
        try {
            InputStream inputStream = zipFile.getInputStream(zipEntry);
            if (inputStream == null) {
                throw new IOException("Invalid zip entry name : " + zipEntry.getName());
            }
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream);
            try {
                byte[] inputStreamAsByteArray = getInputStreamAsByteArray(bufferedInputStream2, (int) zipEntry.getSize());
                try {
                    bufferedInputStream2.close();
                } catch (IOException unused) {
                }
                return inputStreamAsByteArray;
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = bufferedInputStream2;
                if (bufferedInputStream != null) {
                    try {
                        bufferedInputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static int hashCode(Object[] objArr) {
        if (objArr == null) {
            return 0;
        }
        int i10 = 1;
        for (int i11 = 0; i11 < objArr.length; i11++) {
            int i12 = 31 * i10;
            Object obj = objArr[i11];
            i10 = (obj == null ? 0 : obj.hashCode()) + i12;
        }
        return i10;
    }

    public static final boolean isClassFileName(char[] cArr) {
        int length = cArr == null ? 0 : cArr.length;
        int length2 = SuffixConstants.SUFFIX_CLASS.length;
        if (length < length2) {
            return false;
        }
        int i10 = length - length2;
        for (int i11 = 0; i11 < length2; i11++) {
            char c10 = cArr[i10 + i11];
            if (c10 != SuffixConstants.SUFFIX_class[i11] && c10 != SuffixConstants.SUFFIX_CLASS[i11]) {
                return false;
            }
        }
        return true;
    }

    public static final boolean isExcluded(char[] cArr, char[][] cArr2, char[][] cArr3, boolean z10) {
        int lastIndexOf;
        int indexOf;
        if (cArr2 == null && cArr3 == null) {
            return false;
        }
        if (cArr2 != null) {
            int length = cArr2.length;
            for (int i10 = 0; i10 < length; i10++) {
                char[] cArr4 = cArr2[i10];
                if (z10 && (lastIndexOf = CharOperation.lastIndexOf('/', cArr4)) != -1 && lastIndexOf != cArr4.length - 1 && ((indexOf = CharOperation.indexOf('*', cArr4, lastIndexOf)) == -1 || indexOf >= cArr4.length - 1 || cArr4[indexOf + 1] != '*')) {
                    cArr4 = CharOperation.subarray(cArr4, 0, lastIndexOf);
                }
                if (!CharOperation.pathMatch(cArr4, cArr, true, '/')) {
                }
            }
            return true;
        }
        if (z10) {
            cArr = CharOperation.concat(cArr, new char[]{'*'}, '/');
        }
        if (cArr3 != null) {
            for (char[] cArr5 : cArr3) {
                if (CharOperation.pathMatch(cArr5, cArr, true, '/')) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final boolean isJavaFileName(char[] cArr) {
        int length = cArr == null ? 0 : cArr.length;
        int length2 = SuffixConstants.SUFFIX_JAVA.length;
        if (length < length2) {
            return false;
        }
        int i10 = length - length2;
        for (int i11 = 0; i11 < length2; i11++) {
            char c10 = cArr[i10 + i11];
            if (c10 != SuffixConstants.SUFFIX_java[i11] && c10 != SuffixConstants.SUFFIX_JAVA[i11]) {
                return false;
            }
        }
        return true;
    }

    public static final boolean isJrt(String str) {
        return str.endsWith(JRTUtil.JRT_FS_JAR);
    }

    public static final boolean isPotentialZipArchive(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == -1 || str.lastIndexOf(File.separatorChar) > lastIndexOf) {
            return false;
        }
        int length = str.length();
        int i10 = length - lastIndexOf;
        int i11 = i10 - 1;
        if (i11 == 4) {
            for (int i12 = i10 - 2; i12 >= 0 && Character.toLowerCase(str.charAt((length - i11) + i12)) == SuffixConstants.EXTENSION_java.charAt(i12); i12--) {
                if (i12 == 0) {
                    return false;
                }
            }
        }
        if (i11 != 5) {
            return true;
        }
        for (int i13 = i10 - 2; i13 >= 0; i13--) {
            if (Character.toLowerCase(str.charAt((length - i11) + i13)) != "class".charAt(i13)) {
                return true;
            }
        }
        return false;
    }

    public static void recordNestedType(ClassFile classFile, TypeBinding typeBinding) {
        Set set = classFile.visitedTypes;
        if (set == null) {
            classFile.visitedTypes = new HashSet(3);
        } else if (set.contains(typeBinding)) {
            return;
        }
        classFile.visitedTypes.add(typeBinding);
        if (!typeBinding.isParameterizedType() || (typeBinding.tagBits & 2048) == 0) {
            if (!typeBinding.isTypeVariable() || (typeBinding.tagBits & 2048) == 0) {
                if (typeBinding.isNestedType()) {
                    TypeBinding typeBinding2 = typeBinding;
                    while (typeBinding2.canBeSeenBy(classFile.referenceBinding.scope) && (typeBinding2 = typeBinding2.enclosingType()) != null) {
                    }
                    classFile.recordInnerClasses(typeBinding, typeBinding2 != null);
                    return;
                }
                return;
            }
            TypeVariableBinding typeVariableBinding = (TypeVariableBinding) typeBinding;
            TypeBinding upperBound = typeVariableBinding.upperBound();
            if (upperBound != null && (upperBound.tagBits & 2048) != 0) {
                recordNestedType(classFile, upperBound);
            }
            TypeBinding[] otherUpperBounds = typeVariableBinding.otherUpperBounds();
            if (otherUpperBounds != null) {
                for (TypeBinding typeBinding3 : otherUpperBounds) {
                    if ((typeBinding3.tagBits & 2048) != 0) {
                        recordNestedType(classFile, typeBinding3);
                    }
                }
                return;
            }
            return;
        }
        ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) typeBinding;
        ReferenceBinding genericType = parameterizedTypeBinding.genericType();
        if ((genericType.tagBits & 2048) != 0) {
            recordNestedType(classFile, genericType);
        }
        TypeBinding[] typeBindingArr = parameterizedTypeBinding.arguments;
        if (typeBindingArr != null) {
            for (TypeBinding typeBinding4 : typeBindingArr) {
                if (typeBinding4.isWildcard()) {
                    WildcardBinding wildcardBinding = (WildcardBinding) typeBinding4;
                    TypeBinding typeBinding5 = wildcardBinding.bound;
                    if (typeBinding5 != null && (typeBinding5.tagBits & 2048) != 0) {
                        recordNestedType(classFile, typeBinding5);
                    }
                    ReferenceBinding superclass = wildcardBinding.superclass();
                    if (superclass != null && (superclass.tagBits & 2048) != 0) {
                        recordNestedType(classFile, superclass);
                    }
                    ReferenceBinding[] superInterfaces = wildcardBinding.superInterfaces();
                    if (superInterfaces != null) {
                        for (ReferenceBinding referenceBinding : superInterfaces) {
                            if ((referenceBinding.tagBits & 2048) != 0) {
                                recordNestedType(classFile, referenceBinding);
                            }
                        }
                    }
                } else if ((typeBinding4.tagBits & 2048) != 0) {
                    recordNestedType(classFile, typeBinding4);
                }
            }
        }
    }

    public static void reverseQuickSort(char[][] cArr, int i10, int i11) {
        char[] cArr2 = cArr[((i11 - i10) / 2) + i10];
        int i12 = i10;
        int i13 = i11;
        while (true) {
            if (CharOperation.compareTo(cArr[i12], cArr2) <= 0) {
                while (CharOperation.compareTo(cArr2, cArr[i13]) > 0) {
                    i13--;
                }
                if (i12 <= i13) {
                    char[] cArr3 = cArr[i12];
                    cArr[i12] = cArr[i13];
                    cArr[i13] = cArr3;
                    i12++;
                    i13--;
                }
                if (i12 > i13) {
                    break;
                }
            } else {
                i12++;
            }
        }
        if (i10 < i13) {
            reverseQuickSort(cArr, i10, i13);
        }
        if (i12 < i11) {
            reverseQuickSort(cArr, i12, i11);
        }
    }

    public static int scanArrayTypeSignature(char[] cArr, int i10) {
        int length = cArr.length - 1;
        if (i10 >= length) {
            throw new IllegalArgumentException();
        }
        if (cArr[i10] != '[') {
            throw new IllegalArgumentException();
        }
        int i11 = i10 + 1;
        char c10 = cArr[i11];
        while (c10 == '[') {
            if (i11 >= length) {
                throw new IllegalArgumentException();
            }
            i11++;
            c10 = cArr[i11];
        }
        return scanTypeSignature(cArr, i11);
    }

    public static int scanBaseTypeSignature(char[] cArr, int i10) {
        if (i10 >= cArr.length) {
            throw new IllegalArgumentException();
        }
        if ("BCDFIJSVZ".indexOf(cArr[i10]) >= 0) {
            return i10;
        }
        throw new IllegalArgumentException();
    }

    public static int scanCaptureTypeSignature(char[] cArr, int i10) {
        if (i10 >= cArr.length - 1) {
            throw new IllegalArgumentException();
        }
        if (cArr[i10] == '!') {
            return scanTypeBoundSignature(cArr, i10 + 1);
        }
        throw new IllegalArgumentException();
    }

    public static int scanClassTypeSignature(char[] cArr, int i10) {
        if (i10 >= cArr.length - 2) {
            throw new IllegalArgumentException();
        }
        char c10 = cArr[i10];
        if (c10 != 'L' && c10 != 'Q') {
            return -1;
        }
        while (true) {
            i10++;
            if (i10 >= cArr.length) {
                throw new IllegalArgumentException();
            }
            char c11 = cArr[i10];
            if (c11 == ';') {
                return i10;
            }
            if (c11 == '<') {
                i10 = scanTypeArgumentSignatures(cArr, i10);
            } else if (c11 == '.' || c11 == '/') {
                i10 = scanIdentifier(cArr, i10 + 1);
            }
        }
    }

    public static int scanIdentifier(char[] cArr, int i10) {
        if (i10 >= cArr.length) {
            throw new IllegalArgumentException();
        }
        while (true) {
            char c10 = cArr[i10];
            if (c10 == '<' || c10 == '>' || c10 == ':' || c10 == ';' || c10 == '.' || c10 == '/') {
                break;
            }
            int i11 = i10 + 1;
            if (i11 == cArr.length) {
                return i10;
            }
            i10 = i11;
        }
        return i10 - 1;
    }

    public static int scanTypeArgumentSignature(char[] cArr, int i10) {
        if (i10 >= cArr.length) {
            throw new IllegalArgumentException();
        }
        char c10 = cArr[i10];
        return c10 != '*' ? (c10 == '+' || c10 == '-') ? scanTypeBoundSignature(cArr, i10) : scanTypeSignature(cArr, i10) : i10;
    }

    public static int scanTypeArgumentSignatures(char[] cArr, int i10) {
        if (i10 >= cArr.length - 1) {
            throw new IllegalArgumentException();
        }
        if (cArr[i10] != '<') {
            throw new IllegalArgumentException();
        }
        while (true) {
            int i11 = i10 + 1;
            if (i11 >= cArr.length) {
                throw new IllegalArgumentException();
            }
            if (cArr[i11] == '>') {
                return i11;
            }
            i10 = scanTypeArgumentSignature(cArr, i11);
        }
    }

    public static int scanTypeBoundSignature(char[] cArr, int i10) {
        if (i10 >= cArr.length) {
            throw new IllegalArgumentException();
        }
        char c10 = cArr[i10];
        if (c10 == '*') {
            return i10;
        }
        if (c10 != '+' && c10 != '-') {
            throw new IllegalArgumentException();
        }
        int i11 = i10 + 1;
        char c11 = cArr[i11];
        if (c11 != '*' && i11 >= cArr.length - 1) {
            throw new IllegalArgumentException();
        }
        if (c11 == '!') {
            return scanCaptureTypeSignature(cArr, i11);
        }
        if (c11 != '-') {
            if (c11 == 'L' || c11 == 'Q') {
                return scanClassTypeSignature(cArr, i11);
            }
            if (c11 == 'T') {
                return scanTypeVariableSignature(cArr, i11);
            }
            if (c11 == '[') {
                return scanArrayTypeSignature(cArr, i11);
            }
            if (c11 == '*') {
                return i11;
            }
            if (c11 != '+') {
                throw new IllegalArgumentException();
            }
        }
        return scanTypeBoundSignature(cArr, i11);
    }

    public static int scanTypeSignature(char[] cArr, int i10) {
        if (i10 >= cArr.length) {
            throw new IllegalArgumentException();
        }
        char c10 = cArr[i10];
        if (c10 == '!') {
            return scanCaptureTypeSignature(cArr, i10);
        }
        if (c10 != '-') {
            if (c10 != 'F') {
                if (c10 == 'L' || c10 == 'Q') {
                    return scanClassTypeSignature(cArr, i10);
                }
                if (c10 != 'V') {
                    if (c10 != '*' && c10 != '+') {
                        if (c10 != 'I' && c10 != 'J' && c10 != 'S') {
                            if (c10 == 'T') {
                                return scanTypeVariableSignature(cArr, i10);
                            }
                            if (c10 != 'Z') {
                                if (c10 == '[') {
                                    return scanArrayTypeSignature(cArr, i10);
                                }
                                switch (c10) {
                                    case 'B':
                                    case 'C':
                                    case 'D':
                                        break;
                                    default:
                                        throw new IllegalArgumentException();
                                }
                            }
                        }
                    }
                }
            }
            return scanBaseTypeSignature(cArr, i10);
        }
        return scanTypeBoundSignature(cArr, i10);
    }

    public static int scanTypeVariableSignature(char[] cArr, int i10) {
        if (i10 >= cArr.length - 2) {
            throw new IllegalArgumentException();
        }
        if (cArr[i10] != 'T') {
            throw new IllegalArgumentException();
        }
        int scanIdentifier = scanIdentifier(cArr, i10 + 1) + 1;
        if (cArr[scanIdentifier] == ';') {
            return scanIdentifier;
        }
        throw new IllegalArgumentException();
    }

    public static final int searchColumnNumber(int[] iArr, int i10, int i11) {
        int i12;
        if (i10 == 1) {
            return i11 + 1;
        }
        if (i10 != 2) {
            int i13 = i10 - 2;
            int length = iArr.length;
            i12 = i13 >= length ? iArr[length - 1] : iArr[i13];
        } else {
            i12 = iArr[0];
        }
        return i11 - i12;
    }

    public static Boolean toBoolean(boolean z10) {
        return z10 ? Boolean.TRUE : Boolean.FALSE;
    }

    public static String toString(Object[] objArr) {
        return toString(objArr, new Displayable() {
            @Override
            public String displayString(Object obj) {
                return obj == null ? "null" : obj.toString();
            }
        });
    }

    public static void writeToDisk(boolean z10, String str, String str2, ClassFile classFile) throws IOException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(getFileOutputStream(z10, str, str2), 1024);
        try {
            try {
                bufferedOutputStream.write(classFile.header, 0, classFile.headerOffset);
                bufferedOutputStream.write(classFile.contents, 0, classFile.contentsOffset);
                bufferedOutputStream.flush();
            } catch (IOException e10) {
                throw e10;
            }
        } finally {
            bufferedOutputStream.close();
        }
    }

    public static String toString(Object[] objArr, Displayable displayable) {
        if (objArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        for (int i10 = 0; i10 < objArr.length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(displayable.displayString(objArr[i10]));
        }
        return stringBuffer.toString();
    }

    public static final boolean isClassFileName(String str) {
        int length = str == null ? 0 : str.length();
        int length2 = SuffixConstants.SUFFIX_CLASS.length;
        if (length < length2) {
            return false;
        }
        for (int i10 = 0; i10 < length2; i10++) {
            char charAt = str.charAt((length - i10) - 1);
            int i11 = (length2 - i10) - 1;
            if (charAt != SuffixConstants.SUFFIX_class[i11] && charAt != SuffixConstants.SUFFIX_CLASS[i11]) {
                return false;
            }
        }
        return true;
    }

    public static final boolean isJavaFileName(String str) {
        int length = str == null ? 0 : str.length();
        int length2 = SuffixConstants.SUFFIX_JAVA.length;
        if (length < length2) {
            return false;
        }
        for (int i10 = 0; i10 < length2; i10++) {
            char charAt = str.charAt((length - i10) - 1);
            int i11 = (length2 - i10) - 1;
            if (charAt != SuffixConstants.SUFFIX_java[i11] && charAt != SuffixConstants.SUFFIX_JAVA[i11]) {
                return false;
            }
        }
        return true;
    }

    public static void reverseQuickSort(char[][] cArr, int i10, int i11, int[] iArr) {
        char[] cArr2 = cArr[((i11 - i10) / 2) + i10];
        int i12 = i10;
        int i13 = i11;
        while (true) {
            if (CharOperation.compareTo(cArr[i12], cArr2) <= 0) {
                while (CharOperation.compareTo(cArr2, cArr[i13]) > 0) {
                    i13--;
                }
                if (i12 <= i13) {
                    char[] cArr3 = cArr[i12];
                    cArr[i12] = cArr[i13];
                    cArr[i13] = cArr3;
                    int i14 = iArr[i12];
                    iArr[i12] = iArr[i13];
                    iArr[i13] = i14;
                    i12++;
                    i13--;
                }
                if (i12 > i13) {
                    break;
                }
            } else {
                i12++;
            }
        }
        if (i10 < i13) {
            reverseQuickSort(cArr, i10, i13, iArr);
        }
        if (i12 < i11) {
            reverseQuickSort(cArr, i12, i11, iArr);
        }
    }
}
