package org.eclipse.jdt.core.util;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.lookup.SignatureWrapper;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.util.KeyToSignature;
import w2.C15883c;

public final class ExternalAnnotationUtil {
    private static int[] $SWITCH_TABLE$org$eclipse$jdt$core$util$ExternalAnnotationUtil$MergeStrategy = null;
    static final boolean $assertionsDisabled = false;
    public static final char NONNULL = '1';
    public static final char NO_ANNOTATION = '@';
    public static final char NULLABLE = '0';
    private static final int POSITION_FULL_SIGNATURE = -2;
    private static final int POSITION_RETURN_TYPE = -1;

    public enum MergeStrategy {
        REPLACE_SIGNATURE,
        OVERWRITE_ANNOTATIONS,
        ADD_ANNOTATIONS;

        public static MergeStrategy[] valuesCustom() {
            MergeStrategy[] valuesCustom = values();
            int length = valuesCustom.length;
            MergeStrategy[] mergeStrategyArr = new MergeStrategy[length];
            System.arraycopy(valuesCustom, 0, mergeStrategyArr, 0, length);
            return mergeStrategyArr;
        }
    }

    public static int[] $SWITCH_TABLE$org$eclipse$jdt$core$util$ExternalAnnotationUtil$MergeStrategy() {
        int[] iArr = $SWITCH_TABLE$org$eclipse$jdt$core$util$ExternalAnnotationUtil$MergeStrategy;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[MergeStrategy.valuesCustom().length];
        try {
            iArr2[MergeStrategy.ADD_ANNOTATIONS.ordinal()] = 3;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[MergeStrategy.OVERWRITE_ANNOTATIONS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[MergeStrategy.REPLACE_SIGNATURE.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        $SWITCH_TABLE$org$eclipse$jdt$core$util$ExternalAnnotationUtil$MergeStrategy = iArr2;
        return iArr2;
    }

    public static void annotateMember(String str, IFile iFile, String str2, String str3, String str4, MergeStrategy mergeStrategy, IProgressMonitor iProgressMonitor) throws CoreException, IOException {
        annotateMember(str, iFile, str2, str3, str4, -2, mergeStrategy, iProgressMonitor);
    }

    public static void annotateMethodParameterType(String str, IFile iFile, String str2, String str3, String str4, int i10, MergeStrategy mergeStrategy, IProgressMonitor iProgressMonitor) throws CoreException, IOException, IllegalArgumentException {
        annotateMember(str, iFile, str2, str3, str4, i10, mergeStrategy, iProgressMonitor);
    }

    public static void annotateMethodReturnType(String str, IFile iFile, String str2, String str3, String str4, MergeStrategy mergeStrategy, IProgressMonitor iProgressMonitor) throws CoreException, IOException, IllegalArgumentException {
        annotateMember(str, iFile, str2, str3, str4, -1, mergeStrategy, iProgressMonitor);
    }

    public static String[] annotateParameterType(String str, String str2, int i10, MergeStrategy mergeStrategy) {
        String[] strArr = new String[4];
        SignatureWrapper signatureWrapper = new SignatureWrapper(str.toCharArray(), true, true);
        signatureWrapper.start = CharOperation.indexOf('(', signatureWrapper.signature) + 1;
        for (int i11 = 0; i11 < i10; i11++) {
            signatureWrapper.start = signatureWrapper.skipAngleContents(signatureWrapper.computeEnd()) + 1;
        }
        int i12 = signatureWrapper.start;
        int skipAngleContents = signatureWrapper.skipAngleContents(signatureWrapper.computeEnd());
        strArr[0] = str.substring(0, i12);
        StringBuffer stringBuffer = new StringBuffer();
        int i13 = skipAngleContents + 1;
        String substring = str.substring(i12, i13);
        strArr[1] = substring;
        updateType(stringBuffer, substring.toCharArray(), str2.toCharArray(), mergeStrategy);
        strArr[2] = stringBuffer.toString();
        strArr[3] = str.substring(i13, str.length());
        return strArr;
    }

    public static String[] annotateReturnType(String str, String str2, MergeStrategy mergeStrategy) {
        int indexOf = str.indexOf(41) + 1;
        StringBuffer stringBuffer = new StringBuffer();
        String substring = str.substring(indexOf);
        updateType(stringBuffer, substring.toCharArray(), str2.toCharArray(), mergeStrategy);
        return new String[]{str.substring(0, indexOf), substring, stringBuffer.toString(), ""};
    }

    public static String[] annotateType(String str, String str2, MergeStrategy mergeStrategy) {
        StringBuffer stringBuffer = new StringBuffer();
        updateType(stringBuffer, str.toCharArray(), str2.toCharArray(), mergeStrategy);
        return new String[]{"", str, stringBuffer.toString(), ""};
    }

    private static void createNewFile(IFile iFile, String str, IProgressMonitor iProgressMonitor) throws CoreException {
        ensureExists(iFile.getParent(), iProgressMonitor);
        try {
            iFile.create(new ByteArrayInputStream(str.getBytes("UTF-8")), false, iProgressMonitor);
        } catch (UnsupportedEncodingException e10) {
            throw new CoreException(new Status(4, JavaCore.PLUGIN_ID, e10.getMessage(), e10));
        }
    }

    private static void ensureExists(IContainer iContainer, IProgressMonitor iProgressMonitor) throws CoreException {
        if (iContainer.exists()) {
            return;
        }
        if (!(iContainer instanceof IFolder)) {
            throw new CoreException(new Status(4, JavaCore.PLUGIN_ID, "not a folder: " + ((Object) iContainer)));
        }
        IContainer parent = iContainer.getParent();
        if (parent instanceof IFolder) {
            ensureExists(parent, iProgressMonitor);
        }
        ((IFolder) iContainer).create(false, true, iProgressMonitor);
    }

    public static String extractGenericSignature(IMethodBinding iMethodBinding) {
        KeyToSignature keyToSignature = new KeyToSignature(iMethodBinding.getKey(), 0, true);
        keyToSignature.parse();
        return keyToSignature.toString();
    }

    public static String extractGenericTypeSignature(ITypeBinding iTypeBinding) {
        KeyToSignature keyToSignature = new KeyToSignature(iTypeBinding.getKey(), 0, true);
        keyToSignature.parse();
        return keyToSignature.toString();
    }

    public static String getAnnotatedSignature(String str, IFile iFile, String str2, String str3) {
        Throwable th2;
        String readLine;
        if (iFile.exists()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(iFile.getContents()));
                try {
                    ExternalAnnotationProvider.assertClassHeader(bufferedReader.readLine(), str);
                    do {
                        readLine = bufferedReader.readLine();
                        if (str2.equals(readLine)) {
                            readLine = bufferedReader.readLine();
                            if (str3.equals(ExternalAnnotationProvider.extractSignature(readLine))) {
                                String extractSignature = ExternalAnnotationProvider.extractSignature(bufferedReader.readLine());
                                bufferedReader.close();
                                return extractSignature;
                            }
                        }
                    } while (readLine != null);
                    bufferedReader.close();
                } catch (Throwable th3) {
                    try {
                        bufferedReader.close();
                        throw th3;
                    } catch (Throwable th4) {
                        th2 = th3;
                        th = th4;
                        if (th2 == null) {
                            throw th;
                        }
                        if (th2 != th) {
                            try {
                                th2.addSuppressed(th);
                            } catch (IOException | CoreException unused) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                th2 = null;
            }
        }
        return null;
    }

    public static IFile getAnnotationFile(IJavaProject iJavaProject, ITypeBinding iTypeBinding, IProgressMonitor iProgressMonitor) throws CoreException {
        IType findType = iJavaProject.findType(iTypeBinding.getErasure().getQualifiedName());
        if (!findType.exists()) {
            return null;
        }
        String replace = findType.getFullyQualifiedName('$').replace('.', '/');
        IPath externalAnnotationPath = ClasspathEntry.getExternalAnnotationPath(((IPackageFragmentRoot) findType.getAncestor(3)).getResolvedClasspathEntry(), iJavaProject.getProject(), false);
        if (externalAnnotationPath == null) {
            return null;
        }
        IWorkspaceRoot root = iJavaProject.getProject().getWorkspace().getRoot();
        if (externalAnnotationPath.segmentCount() <= 1 || !root.getFile(externalAnnotationPath).exists()) {
            return root.getFile(externalAnnotationPath.append(replace).addFileExtension(ExternalAnnotationProvider.ANNOTATION_FILE_EXTENSION));
        }
        return null;
    }

    private static String insertAt(String str, int i10, char c10, MergeStrategy mergeStrategy) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append((CharSequence) str, 0, i10);
        stringBuffer.append(c10);
        char charAt = str.charAt(i10);
        if (charAt == '0' || charAt == '1') {
            if (mergeStrategy == MergeStrategy.ADD_ANNOTATIONS) {
                return str;
            }
            i10++;
        }
        stringBuffer.append((CharSequence) str, i10, str.length());
        return stringBuffer.toString();
    }

    public static String insertParameterAnnotation(String str, int i10, char c10, MergeStrategy mergeStrategy) {
        SignatureWrapper signatureWrapper = new SignatureWrapper(str.toCharArray());
        signatureWrapper.start = 1;
        for (int i11 = 0; i11 < i10; i11++) {
            signatureWrapper.start = signatureWrapper.computeEnd() + 1;
        }
        int i12 = signatureWrapper.start;
        char charAt = str.charAt(i12);
        if (charAt == 'L' || charAt == 'T' || charAt == '[') {
            return insertAt(str, i12 + 1, c10, mergeStrategy);
        }
        throw new IllegalArgumentException("Paramter type is not a reference type");
    }

    public static String insertReturnAnnotation(String str, char c10, MergeStrategy mergeStrategy) {
        int indexOf = str.indexOf(41);
        if (indexOf == -1 || indexOf > str.length() - 4) {
            throw new IllegalArgumentException("Malformed method signature");
        }
        char charAt = str.charAt(indexOf + 1);
        if (charAt == 'L' || charAt == 'T' || charAt == '[') {
            return insertAt(str, indexOf + 2, c10, mergeStrategy);
        }
        throw new IllegalArgumentException("Return type is not a reference type");
    }

    private static boolean match(StringBuffer stringBuffer, SignatureWrapper signatureWrapper, SignatureWrapper signatureWrapper2, char c10, boolean z10) {
        boolean z11 = signatureWrapper.signature[signatureWrapper.start] == c10;
        if (z11 != (signatureWrapper2.signature[signatureWrapper2.start] == c10)) {
            throw new IllegalArgumentException("Mismatching type structures " + signatureWrapper.signature + " vs " + signatureWrapper2.signature);
        }
        if (z11) {
            stringBuffer.append(c10);
            signatureWrapper.start++;
            signatureWrapper2.start++;
            return true;
        }
        if (!z10) {
            return false;
        }
        throw new IllegalArgumentException("Expected char " + c10 + " not found in " + new String(signatureWrapper.signature));
    }

    private static void mergeAnnotation(StringBuffer stringBuffer, SignatureWrapper signatureWrapper, SignatureWrapper signatureWrapper2, MergeStrategy mergeStrategy) {
        char c10 = !signatureWrapper.atEnd() ? signatureWrapper.signature[signatureWrapper.start] : (char) 0;
        char c11 = signatureWrapper2.atEnd() ? (char) 0 : signatureWrapper2.signature[signatureWrapper2.start];
        int i10 = $SWITCH_TABLE$org$eclipse$jdt$core$util$ExternalAnnotationUtil$MergeStrategy()[mergeStrategy.ordinal()];
        if (i10 != 2) {
            if (i10 != 3) {
                throw new IllegalArgumentException("Unexpected merge strategy");
            }
            if (c10 == '0' || c10 == '1') {
                signatureWrapper.start++;
                stringBuffer.append(c10);
                if (c11 == '0' || c11 == '1') {
                    signatureWrapper2.start++;
                    return;
                }
                return;
            }
        }
        if (c11 == '0' || c11 == '1') {
            signatureWrapper2.start++;
            stringBuffer.append(c11);
            if (c10 == '0' || c10 == '1') {
                signatureWrapper.start++;
                return;
            }
            return;
        }
        if (c11 != '@') {
            if (c10 == '0' || c10 == '1') {
                signatureWrapper.start++;
                stringBuffer.append(c10);
                return;
            }
            return;
        }
        signatureWrapper2.start++;
        if (c10 == '0' || c10 == '1') {
            signatureWrapper.start++;
        }
    }

    private static String updateSignature(String str, String str2, int i10, MergeStrategy mergeStrategy) {
        StringBuffer stringBuffer = new StringBuffer();
        String str3 = null;
        if (i10 != -2) {
            if (i10 != -1) {
                SignatureWrapper signatureWrapper = new SignatureWrapper(str.toCharArray(), true, true);
                signatureWrapper.start = CharOperation.indexOf('(', signatureWrapper.signature) + 1;
                for (int i11 = 0; i11 < i10; i11++) {
                    signatureWrapper.start = signatureWrapper.skipAngleContents(signatureWrapper.computeEnd()) + 1;
                }
                int i12 = signatureWrapper.start;
                int skipAngleContents = signatureWrapper.skipAngleContents(signatureWrapper.computeEnd());
                stringBuffer.append((CharSequence) str, 0, i12);
                int i13 = skipAngleContents + 1;
                String substring = str.substring(i12, i13);
                str3 = str.substring(i13, str.length());
                str = substring;
            } else {
                int indexOf = str.indexOf(41) + 1;
                stringBuffer.append((CharSequence) str, 0, indexOf);
                str = str.substring(indexOf);
            }
        }
        updateType(stringBuffer, str.toCharArray(), str2.toCharArray(), mergeStrategy);
        if (str3 != null) {
            stringBuffer.append(str3);
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x006f, code lost:
    
        if (match(r6, r0, r3, '<', false) != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
    
        r4 = r0.start;
        r5 = r3.start;
        r0.computeEnd();
        r3.computeEnd();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0087, code lost:
    
        if (updateType(r6, r0.getFrom(r4), r3.getFrom(r5), r9) == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0089, code lost:
    
        mergeAnnotation(r6, r0, r3, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0092, code lost:
    
        if (match(r6, r0, r3, '>', false) == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0094, code lost:
    
        match(r6, r0, r3, ';', true);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean updateType(StringBuffer stringBuffer, char[] cArr, char[] cArr2, MergeStrategy mergeStrategy) {
        if (mergeStrategy == MergeStrategy.REPLACE_SIGNATURE) {
            stringBuffer.append(cArr2);
            return false;
        }
        try {
            SignatureWrapper signatureWrapper = new SignatureWrapper(cArr, true, true);
            SignatureWrapper signatureWrapper2 = new SignatureWrapper(cArr2, true, true);
            if (!match(stringBuffer, signatureWrapper, signatureWrapper2, 'L', false) && !match(stringBuffer, signatureWrapper, signatureWrapper2, 'T', false)) {
                if (!match(stringBuffer, signatureWrapper, signatureWrapper2, '[', false)) {
                    if (!match(stringBuffer, signatureWrapper, signatureWrapper2, '*', false) && !match(stringBuffer, signatureWrapper, signatureWrapper2, '+', false) && !match(stringBuffer, signatureWrapper, signatureWrapper2, '-', false)) {
                        stringBuffer.append(cArr);
                    }
                    return true;
                }
                mergeAnnotation(stringBuffer, signatureWrapper, signatureWrapper2, mergeStrategy);
                updateType(stringBuffer, signatureWrapper.tail(), signatureWrapper2.tail(), mergeStrategy);
                return false;
            }
            mergeAnnotation(stringBuffer, signatureWrapper, signatureWrapper2, mergeStrategy);
            stringBuffer.append(signatureWrapper.nextName());
            signatureWrapper2.nextName();
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw new IllegalArgumentException("Structural mismatch between " + cArr + " and " + cArr2, e10);
        }
    }

    private static void writeFile(IFile iFile, StringBuffer stringBuffer, String str, String str2, BufferedReader bufferedReader, IProgressMonitor iProgressMonitor) throws CoreException, IOException {
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append(str);
        stringBuffer.append('\n');
        if (str2 != null) {
            stringBuffer.append(str2);
            stringBuffer.append('\n');
        }
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                iFile.setContents(new ByteArrayInputStream(stringBuffer.toString().getBytes("UTF-8")), 2, iProgressMonitor);
                return;
            } else {
                stringBuffer.append(readLine);
                stringBuffer.append('\n');
            }
        }
    }

    private static void annotateMember(String str, IFile iFile, String str2, String str3, String str4, int i10, MergeStrategy mergeStrategy, IProgressMonitor iProgressMonitor) throws CoreException, IOException, IllegalArgumentException {
        String readLine;
        String str5;
        int i11;
        if (!iFile.exists()) {
            String updateSignature = updateSignature(str3, str4, i10, MergeStrategy.REPLACE_SIGNATURE);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(ExternalAnnotationProvider.CLASS_PREFIX);
            stringBuffer.append(str);
            stringBuffer.append('\n');
            stringBuffer.append(str2);
            stringBuffer.append('\n');
            stringBuffer.append(C15883c.f126249O);
            stringBuffer.append(str3);
            stringBuffer.append('\n');
            stringBuffer.append(C15883c.f126249O);
            stringBuffer.append(updateSignature);
            stringBuffer.append('\n');
            createNewFile(iFile, stringBuffer.toString(), iProgressMonitor);
            return;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(iFile.getContents()));
        StringBuffer stringBuffer2 = new StringBuffer();
        try {
            stringBuffer2.append(bufferedReader.readLine());
            stringBuffer2.append('\n');
            while (true) {
                readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                if (readLine.isEmpty()) {
                    stringBuffer2.append('\n');
                } else if (!Character.isJavaIdentifierStart(readLine.charAt(0)) && readLine.charAt(0) != '<') {
                    stringBuffer2.append(readLine);
                    stringBuffer2.append('\n');
                } else {
                    int compareTo = readLine.compareTo(str2);
                    if (compareTo > 0) {
                        break;
                    }
                    if (compareTo < 0) {
                        stringBuffer2.append(readLine);
                        stringBuffer2.append('\n');
                    } else if (compareTo == 0) {
                        StringBuffer stringBuffer3 = new StringBuffer(readLine);
                        stringBuffer3.append('\n');
                        readLine = bufferedReader.readLine();
                        stringBuffer3.append(readLine);
                        if (readLine == null) {
                            break;
                        }
                        int compareTo2 = readLine.trim().compareTo(str3);
                        if (compareTo2 > 0) {
                            readLine = stringBuffer3.toString();
                            break;
                        }
                        stringBuffer2.append(stringBuffer3);
                        stringBuffer2.append('\n');
                        if (compareTo2 >= 0 && compareTo2 == 0) {
                            String readLine2 = bufferedReader.readLine();
                            if (readLine2 != null && !readLine2.isEmpty() && readLine2.startsWith(" ")) {
                                str5 = null;
                                readLine = readLine2;
                                if (readLine.startsWith(" ") && (i11 = $SWITCH_TABLE$org$eclipse$jdt$core$util$ExternalAnnotationUtil$MergeStrategy()[mergeStrategy.ordinal()]) != 1) {
                                    if (i11 == 2 && i11 != 3) {
                                        JavaCore.getJavaCore().getLog().log(new Status(4, JavaCore.PLUGIN_ID, "Unexpected value for enum MergeStrategy"));
                                    } else {
                                        str4 = updateSignature(readLine.trim(), str4, i10, mergeStrategy);
                                    }
                                }
                                writeFile(iFile, stringBuffer2, str4, str5, bufferedReader, iProgressMonitor);
                                bufferedReader.close();
                                return;
                            }
                            str5 = readLine2;
                            if (readLine.startsWith(" ")) {
                                if (i11 == 2) {
                                }
                                str4 = updateSignature(readLine.trim(), str4, i10, mergeStrategy);
                            }
                            writeFile(iFile, stringBuffer2, str4, str5, bufferedReader, iProgressMonitor);
                            bufferedReader.close();
                            return;
                        }
                    } else {
                        continue;
                    }
                }
            }
            stringBuffer2.append(str2);
            stringBuffer2.append('\n');
            stringBuffer2.append(C15883c.f126249O);
            stringBuffer2.append(str3);
            stringBuffer2.append('\n');
            writeFile(iFile, stringBuffer2, updateSignature(str3, str4, i10, mergeStrategy), readLine, bufferedReader, iProgressMonitor);
            bufferedReader.close();
        } catch (Throwable th2) {
            bufferedReader.close();
            throw th2;
        }
    }
}
