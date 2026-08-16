package org.eclipse.jdt.internal.core.util;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import fd.C13208a;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.lang.constant.ConstantDescs;
import java.net.URI;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.apache.commons.lang3.StringUtils;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.resources.ResourceAttributes;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.ArrayType;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.QualifiedType;
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.WildcardType;
import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IClassFileReader;
import org.eclipse.jdt.core.util.ICodeAttribute;
import org.eclipse.jdt.core.util.IFieldInfo;
import org.eclipse.jdt.core.util.IMethodInfo;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.IntersectionCastTypeReference;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UnionTypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.ClassSignature;
import org.eclipse.jdt.internal.compiler.env.EnumConstantSignature;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.eclipse.jdt.internal.core.Member;
import org.eclipse.jdt.internal.core.MemberValuePair;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.TextEdit;
import w2.C15883c;

public class Util {
    private static final char ARGUMENTS_DELIMITER = '#';
    private static final String EMPTY_ARGUMENT = "   ";
    private static char[][] JAVA_LIKE_EXTENSIONS = null;
    private static final String TASK_PRIORITIES_PROBLEM = "TASK_PRIORITIES_PB";
    private static final char[] BOOLEAN = TypedValues.Custom.S_BOOLEAN.toCharArray();
    private static final char[] BYTE = "byte".toCharArray();
    private static final char[] CHAR = "char".toCharArray();
    private static final char[] DOUBLE = "double".toCharArray();
    private static final char[] FLOAT = TypedValues.Custom.S_FLOAT.toCharArray();
    private static final char[] INT = "int".toCharArray();
    private static final char[] LONG = "long".toCharArray();
    private static final char[] SHORT = "short".toCharArray();
    private static final char[] VOID = "void".toCharArray();
    private static final char[] INIT = ConstantDescs.INIT_NAME.toCharArray();
    private static List fgRepeatedMessages = new ArrayList(5);

    public interface BindingsToNodesMap {
        ASTNode get(Binding binding);
    }

    public interface Comparable {
        int compareTo(Comparable comparable);
    }

    public interface Comparer {
        int compare(Object obj, Object obj2);
    }

    private Util() {
    }

    private static void appendArrayTypeSignature(char[] cArr, int i10, StringBuffer stringBuffer, boolean z10) {
        int length = cArr.length - 1;
        if (i10 >= length) {
            throw raiseIllegalSignatureException(cArr, i10);
        }
        char c10 = cArr[i10];
        if (c10 != '[') {
            throw raiseUnexpectedCharacterException(cArr, i10, c10);
        }
        int i11 = i10 + 1;
        char c11 = cArr[i11];
        while (c11 == '[') {
            if (i11 >= length) {
                throw raiseIllegalSignatureException(cArr, i10);
            }
            i11++;
            c11 = cArr[i11];
        }
        appendTypeSignature(cArr, i11, stringBuffer, z10);
        int i12 = i11 - i10;
        for (int i13 = 0; i13 < i12; i13++) {
            stringBuffer.append('[');
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
    }

    private static int appendArrayTypeSignatureForAnchor(char[] cArr, int i10, StringBuffer stringBuffer, boolean z10) {
        int length = cArr.length - 1;
        if (i10 >= length) {
            throw raiseIllegalSignatureException(cArr, i10);
        }
        char c10 = cArr[i10];
        if (c10 != '[') {
            throw raiseUnexpectedCharacterException(cArr, i10, c10);
        }
        int i11 = i10 + 1;
        char c11 = cArr[i11];
        while (c11 == '[') {
            if (i11 >= length) {
                throw raiseIllegalSignatureException(cArr, i10);
            }
            i11++;
            c11 = cArr[i11];
        }
        int appendTypeSignatureForAnchor = appendTypeSignatureForAnchor(cArr, i11, stringBuffer, false);
        int i12 = i11 - i10;
        for (int i13 = 1; i13 < i12; i13++) {
            stringBuffer.append('[');
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        if (z10) {
            stringBuffer.append('.');
            stringBuffer.append('.');
            stringBuffer.append('.');
        } else {
            stringBuffer.append('[');
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        return appendTypeSignatureForAnchor;
    }

    private static int appendCaptureTypeSignatureForAnchor(char[] cArr, int i10, StringBuffer stringBuffer) {
        if (i10 >= cArr.length - 1) {
            throw raiseIllegalSignatureException(cArr, i10);
        }
        char c10 = cArr[i10];
        if (c10 == '!') {
            return appendTypeArgumentSignatureForAnchor(cArr, i10 + 1, stringBuffer);
        }
        throw raiseUnexpectedCharacterException(cArr, i10, c10);
    }

    private static void appendClassTypeSignature(char[] cArr, int i10, StringBuffer stringBuffer, boolean z10) {
        if (cArr[i10] != 'L') {
            return;
        }
        int i11 = i10 + 1;
        int length = stringBuffer.length();
        while (true) {
            char c10 = cArr[i11];
            if (c10 == '$') {
                stringBuffer.append('.');
            } else {
                if (c10 == ';') {
                    return;
                }
                if (c10 != '.' && c10 != '/') {
                    stringBuffer.append(c10);
                } else if (z10) {
                    stringBuffer.setLength(length);
                } else {
                    stringBuffer.append('.');
                }
            }
            i11++;
        }
    }

    private static int appendClassTypeSignatureForAnchor(char[] cArr, int i10, StringBuffer stringBuffer) {
        if (i10 >= cArr.length - 2) {
            throw raiseIllegalSignatureException(cArr, i10);
        }
        char c10 = cArr[i10];
        if (c10 != 'L' && c10 != 'Q') {
            throw raiseUnexpectedCharacterException(cArr, i10, c10);
        }
        int i11 = i10 + 1;
        while (i11 < cArr.length) {
            char c11 = cArr[i11];
            if (c11 == '$') {
                stringBuffer.append('.');
            } else if (c11 == '.') {
                stringBuffer.append('.');
            } else if (c11 == '/') {
                stringBuffer.append('/');
            } else {
                if (c11 == ';') {
                    return i11;
                }
                if (c11 != '<') {
                    stringBuffer.append(c11);
                } else {
                    i11 = scanGenericEnd(cArr, i11 + 1);
                }
            }
            i11++;
        }
        throw raiseIllegalSignatureException(cArr, i10);
    }

    private static int appendTypeArgumentSignatureForAnchor(char[] cArr, int i10, StringBuffer stringBuffer) {
        if (i10 >= cArr.length) {
            throw raiseIllegalSignatureException(cArr, i10);
        }
        char c10 = cArr[i10];
        if (c10 == '*') {
            return i10;
        }
        if (c10 != '+' && c10 != '-') {
            return appendTypeSignatureForAnchor(cArr, i10, stringBuffer, false);
        }
        return appendTypeSignatureForAnchor(cArr, i10 + 1, stringBuffer, false);
    }

    public static void appendTypeSignature(char[] cArr, int i10, StringBuffer stringBuffer, boolean z10) {
        char c10 = cArr[i10];
        if (c10 == 'F') {
            stringBuffer.append(FLOAT);
            return;
        }
        if (c10 == 'L') {
            appendClassTypeSignature(cArr, i10, stringBuffer, z10);
            return;
        }
        if (c10 == 'V') {
            stringBuffer.append(VOID);
            return;
        }
        if (c10 == 'I') {
            stringBuffer.append(INT);
            return;
        }
        if (c10 == 'J') {
            stringBuffer.append(LONG);
            return;
        }
        if (c10 == 'S') {
            stringBuffer.append(SHORT);
            return;
        }
        if (c10 == 'T') {
            stringBuffer.append(cArr, i10 + 1, (org.eclipse.jdt.internal.compiler.util.Util.scanTypeVariableSignature(cArr, i10) - i10) - 1);
            return;
        }
        if (c10 == 'Z') {
            stringBuffer.append(BOOLEAN);
            return;
        }
        if (c10 == '[') {
            appendArrayTypeSignature(cArr, i10, stringBuffer, z10);
            return;
        }
        switch (c10) {
            case 'B':
                stringBuffer.append(BYTE);
                return;
            case 'C':
                stringBuffer.append(CHAR);
                return;
            case 'D':
                stringBuffer.append(DOUBLE);
                return;
            default:
                return;
        }
    }

    private static int appendTypeSignatureForAnchor(char[] cArr, int i10, StringBuffer stringBuffer, boolean z10) {
        if (i10 >= cArr.length) {
            throw raiseIllegalSignatureException(cArr, i10);
        }
        char c10 = cArr[i10];
        if (z10) {
            if (c10 == '[') {
                return appendArrayTypeSignatureForAnchor(cArr, i10, stringBuffer, true);
            }
            throw raiseUnexpectedCharacterException(cArr, i10, c10);
        }
        if (c10 == '!') {
            return appendCaptureTypeSignatureForAnchor(cArr, i10, stringBuffer);
        }
        if (c10 != '-') {
            if (c10 == 'F') {
                stringBuffer.append(FLOAT);
                return i10;
            }
            if (c10 == 'L') {
                return appendClassTypeSignatureForAnchor(cArr, i10, stringBuffer);
            }
            if (c10 == 'V') {
                stringBuffer.append(VOID);
                return i10;
            }
            if (c10 != '*' && c10 != '+') {
                if (c10 == 'I') {
                    stringBuffer.append(INT);
                    return i10;
                }
                if (c10 == 'J') {
                    stringBuffer.append(LONG);
                    return i10;
                }
                if (c10 == 'S') {
                    stringBuffer.append(SHORT);
                    return i10;
                }
                if (c10 == 'T') {
                    int scanTypeVariableSignature = org.eclipse.jdt.internal.compiler.util.Util.scanTypeVariableSignature(cArr, i10);
                    stringBuffer.append(cArr, i10 + 1, (scanTypeVariableSignature - i10) - 1);
                    return scanTypeVariableSignature;
                }
                if (c10 == 'Z') {
                    stringBuffer.append(BOOLEAN);
                    return i10;
                }
                if (c10 == '[') {
                    return appendArrayTypeSignatureForAnchor(cArr, i10, stringBuffer, false);
                }
                switch (c10) {
                    case 'B':
                        stringBuffer.append(BYTE);
                        return i10;
                    case 'C':
                        stringBuffer.append(CHAR);
                        return i10;
                    case 'D':
                        stringBuffer.append(DOUBLE);
                        return i10;
                    default:
                        throw raiseIllegalSignatureException(cArr, i10);
                }
            }
        }
        return appendTypeArgumentSignatureForAnchor(cArr, i10, stringBuffer);
    }

    public static final String[] arrayConcat(String[] strArr, String str) {
        if (str == null) {
            return strArr;
        }
        if (strArr == null) {
            return new String[]{str};
        }
        int length = strArr.length;
        if (strArr.length == 0) {
            return new String[]{str};
        }
        String[] strArr2 = new String[length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, length);
        strArr2[length] = str;
        return strArr2;
    }

    private static int checkTypeSignature(String str, int i10, int i11, boolean z10) {
        if (i10 >= i11) {
            return -1;
        }
        int i12 = i10 + 1;
        char charAt = str.charAt(i10);
        int i13 = 0;
        while (charAt == '[') {
            i13++;
            if (i12 >= i11) {
                return -1;
            }
            int i14 = i12 + 1;
            char charAt2 = str.charAt(i12);
            i12 = i14;
            charAt = charAt2;
        }
        if (charAt == 'F') {
            return i12;
        }
        if (charAt == 'L') {
            int indexOf = str.indexOf(59, i12);
            if (indexOf <= i12 || indexOf >= i11) {
                return -1;
            }
            return indexOf + 1;
        }
        if (charAt == 'S') {
            return i12;
        }
        if (charAt == 'V') {
            if (z10 && i13 == 0) {
                return i12;
            }
            return -1;
        }
        if (charAt == 'Z' || charAt == 'I' || charAt == 'J') {
            return i12;
        }
        switch (charAt) {
            case 'B':
            case 'C':
            case 'D':
                return i12;
            default:
                return -1;
        }
    }

    public static int combineHashCodes(int i10, int i11) {
        return (i10 * 17) + i11;
    }

    public static int compare(byte[] bArr, byte[] bArr2) {
        if (bArr == bArr2) {
            return 0;
        }
        if (bArr == null) {
            return -1;
        }
        if (bArr2 == null) {
            return 1;
        }
        int min = Math.min(bArr.length, bArr2.length);
        for (int i10 = 0; i10 < min; i10++) {
            int i11 = bArr[i10] - bArr2[i10];
            if (i11 != 0) {
                return i11;
            }
        }
        if (bArr.length > min) {
            return 1;
        }
        return bArr2.length > min ? -1 : 0;
    }

    public static char[] concatCompoundNameToCharArray(String[] strArr) {
        if (strArr == null) {
            return null;
        }
        int length = strArr.length;
        if (length == 0) {
            return new char[0];
        }
        int i10 = 0;
        for (String str : strArr) {
            i10 += str.length();
        }
        char[] cArr = new char[(i10 + length) - 1];
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            String str2 = strArr[i12];
            if (i12 > 0) {
                cArr[i11] = '.';
                i11++;
            }
            int length2 = str2.length();
            str2.getChars(0, length2, cArr, i11);
            i11 += length2;
        }
        return cArr;
    }

    public static final String concatWith(String[] strArr, char c10) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            stringBuffer.append(strArr[i10]);
            if (i10 < length - 1) {
                stringBuffer.append(c10);
            }
        }
        return stringBuffer.toString();
    }

    public static String concatenateName(String str, String str2, char c10) {
        StringBuffer stringBuffer = new StringBuffer();
        if (str != null && str.length() > 0) {
            stringBuffer.append(str);
        }
        if (str2 != null && str2.length() > 0) {
            if (stringBuffer.length() > 0) {
                stringBuffer.append(c10);
            }
            stringBuffer.append(str2);
        }
        return stringBuffer.toString();
    }

    public static String convertTypeSignature(char[] cArr, int i10, int i11) {
        return new String(cArr, i10, i11).replace('/', '.');
    }

    private static String[] decodeArgumentString(int i10, String str) {
        if (i10 == 0) {
            if (str.length() != 0) {
                return null;
            }
            return CharOperation.NO_STRINGS;
        }
        String[] strArr = new String[i10];
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            char charAt = str.charAt(i11);
            if (charAt != '#') {
                stringBuffer.append(charAt);
            } else {
                int i13 = i11 + 1;
                if (i13 == length) {
                    return null;
                }
                if (str.charAt(i13) == '#') {
                    stringBuffer.append('#');
                    i11 = i13;
                } else {
                    String valueOf = String.valueOf(stringBuffer);
                    if ("   ".equals(valueOf)) {
                        valueOf = org.eclipse.jdt.internal.compiler.util.Util.EMPTY_STRING;
                    }
                    int i14 = i12 + 1;
                    strArr[i12] = valueOf;
                    if (i14 > i10) {
                        return null;
                    }
                    stringBuffer.delete(0, stringBuffer.length());
                    i12 = i14;
                }
            }
            i11++;
        }
        String valueOf2 = String.valueOf(stringBuffer);
        if ("   ".equals(valueOf2)) {
            valueOf2 = org.eclipse.jdt.internal.compiler.util.Util.EMPTY_STRING;
        }
        int i15 = i12 + 1;
        strArr[i12] = valueOf2;
        if (i15 > i10) {
            return null;
        }
        stringBuffer.delete(0, stringBuffer.length());
        return strArr;
    }

    public static String defaultJavaExtension() {
        return ".java";
    }

    public static final String editedString(String str, TextEdit textEdit) {
        if (textEdit == null) {
            return str;
        }
        SimpleDocument simpleDocument = new SimpleDocument(str);
        try {
            textEdit.apply(simpleDocument, 0);
            return simpleDocument.get();
        } catch (BadLocationException e10) {
            e10.printStackTrace();
            return str;
        } catch (MalformedTreeException e11) {
            e11.printStackTrace();
            return str;
        }
    }

    private static void encodeArgument(String str, StringBuffer stringBuffer) {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (charAt != '#') {
                stringBuffer.append(charAt);
            } else {
                stringBuffer.append('#');
                stringBuffer.append('#');
            }
        }
    }

    public static final boolean endsWithIgnoreCase(String str, String str2) {
        int length = str == null ? 0 : str.length();
        int length2 = str2 == null ? 0 : str2.length();
        if (length2 > length) {
            return false;
        }
        for (int i10 = 1; i10 <= length2; i10++) {
            if (ScannerHelper.toLowerCase(str2.charAt(length2 - i10)) != ScannerHelper.toLowerCase(str.charAt(length - i10))) {
                return false;
            }
        }
        return true;
    }

    public static boolean equalArrays(Object[] objArr, Object[] objArr2, int i10) {
        if (objArr == objArr2) {
            return true;
        }
        if (objArr.length < i10 || objArr2.length < i10) {
            return false;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            Object obj = objArr[i11];
            if (obj == null) {
                if (objArr2[i11] != null) {
                    return false;
                }
            } else if (!obj.equals(objArr2[i11])) {
                return false;
            }
        }
        return true;
    }

    public static boolean equalArraysOrNull(int[] iArr, int[] iArr2) {
        int length;
        if (iArr == iArr2) {
            return true;
        }
        if (iArr == null || iArr2 == null || (length = iArr.length) != iArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (iArr[i10] != iArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public static boolean equalArraysOrNullSortFirst(Comparable[] comparableArr, Comparable[] comparableArr2) {
        int length;
        if (comparableArr == comparableArr2) {
            return true;
        }
        if (comparableArr == null || comparableArr2 == null || (length = comparableArr.length) != comparableArr2.length) {
            return false;
        }
        if (length >= 2) {
            comparableArr = sortCopy(comparableArr);
            comparableArr2 = sortCopy(comparableArr2);
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!comparableArr[i10].equals(comparableArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    public static boolean equalOrNull(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    public static boolean equalsIgnoreJavaLikeExtension(String str, String str2) {
        int length = str.length();
        int length2 = str2.length();
        if (length < length2) {
            return false;
        }
        for (int i10 = 0; i10 < length2; i10++) {
            if (str.charAt(i10) != str2.charAt(i10)) {
                return false;
            }
        }
        for (char[] cArr : getJavaLikeExtensions()) {
            int i11 = length2 + 1;
            if (cArr.length + i11 == length && str.charAt(length2) == '.') {
                for (int i12 = i11; i12 < length; i12++) {
                    if (str.charAt(i12) != cArr[i12 - i11]) {
                        break;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static String extractLastName(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf + 1);
    }

    public static String[] extractParameterTypes(char[] cArr) {
        int i10;
        int parameterCount = getParameterCount(cArr);
        String[] strArr = new String[parameterCount];
        if (parameterCount == 0) {
            return strArr;
        }
        int indexOf = CharOperation.indexOf('(', cArr) + 1;
        int length = cArr.length;
        int i11 = indexOf;
        int i12 = 0;
        while (indexOf != length) {
            char c10 = cArr[indexOf];
            if (c10 == ')') {
                break;
            }
            if (c10 == '[') {
                indexOf++;
            } else {
                if (c10 == 'L') {
                    indexOf = CharOperation.indexOf(';', cArr, indexOf + 1) + 1;
                    Assert.isTrue(indexOf != 0);
                    i10 = i12 + 1;
                    strArr[i12] = convertTypeSignature(cArr, i11, indexOf - i11);
                } else {
                    indexOf++;
                    i10 = i12 + 1;
                    strArr[i12] = convertTypeSignature(cArr, i11, indexOf - i11);
                }
                i11 = indexOf;
                i12 = i10;
            }
        }
        return strArr;
    }

    public static String extractReturnType(String str) {
        int lastIndexOf = str.lastIndexOf(41);
        Assert.isTrue(lastIndexOf != -1);
        return str.substring(lastIndexOf + 1);
    }

    private static IFile findFirstClassFile(IFolder iFolder) {
        try {
            for (IFile iFile : iFolder.members()) {
                if (iFile.getType() == 2) {
                    return findFirstClassFile((IFolder) iFile);
                }
                if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(iFile.getName())) {
                    return iFile;
                }
            }
            return null;
        } catch (CoreException unused) {
            return null;
        }
    }

    public static String findLineSeparator(char[] cArr) {
        int length = cArr.length;
        if (length <= 0) {
            return null;
        }
        int i10 = 0;
        char c10 = cArr[0];
        while (i10 < length) {
            char c11 = i10 < length + (-1) ? cArr[i10 + 1] : C15883c.f126249O;
            if (c10 == '\n') {
                return "\n";
            }
            if (c10 == '\r') {
                return c11 == '\n' ? C13208a.f86201f : StringUtils.CR;
            }
            i10++;
            c10 = c11;
        }
        return null;
    }

    public static IMethod findMethod(IType iType, char[] cArr, String[] strArr, boolean z10) throws JavaModelException {
        String[] strArr2;
        int i10;
        IType declaringType = iType.getDeclaringType();
        if (declaringType == null || !z10 || Flags.isStatic(iType.getFlags())) {
            strArr2 = new String[strArr.length];
            i10 = 0;
        } else {
            i10 = 1;
            strArr2 = new String[strArr.length + 1];
            strArr2[0] = Signature.createTypeSignature(declaringType.getFullyQualifiedName(), true);
        }
        int length = strArr2.length;
        for (int i11 = i10; i11 < length; i11++) {
            strArr2[i11] = strArr[i11 - i10];
        }
        IMethod method = iType.getMethod(new String(cArr), strArr2);
        IMethod[] findMethods = iType.findMethods(method);
        return (findMethods == null || findMethods.length <= 0) ? method : findMethods[0];
    }

    public static void fixTaskTags(Map map) {
        Object obj = map.get("org.eclipse.jdt.core.compiler.taskTags");
        char[][] splitAndTrimOn = obj instanceof String ? CharOperation.splitAndTrimOn(IIndexConstants.PARAMETER_SEPARATOR, ((String) obj).toCharArray()) : null;
        Object obj2 = map.get("org.eclipse.jdt.core.compiler.taskPriorities");
        char[][] splitAndTrimOn2 = obj2 instanceof String ? CharOperation.splitAndTrimOn(IIndexConstants.PARAMETER_SEPARATOR, ((String) obj2).toCharArray()) : null;
        if (splitAndTrimOn2 == null) {
            if (splitAndTrimOn != null) {
                logRepeatedMessage(TASK_PRIORITIES_PROBLEM, 4, "Inconsistent values for taskTags (not null) and task priorities (null)");
                map.remove("org.eclipse.jdt.core.compiler.taskTags");
                return;
            }
            return;
        }
        if (splitAndTrimOn == null) {
            logRepeatedMessage(TASK_PRIORITIES_PROBLEM, 4, "Inconsistent values for taskTags (null) and task priorities (not null)");
            map.remove("org.eclipse.jdt.core.compiler.taskPriorities");
            return;
        }
        int length = splitAndTrimOn.length;
        int length2 = splitAndTrimOn2.length;
        if (length != length2) {
            logRepeatedMessage(TASK_PRIORITIES_PROBLEM, 4, "Inconsistent values for taskTags and task priorities : length is different");
            if (length > length2) {
                char[][] cArr = new char[length2];
                System.arraycopy(splitAndTrimOn, 0, cArr, 0, length2);
                map.put("org.eclipse.jdt.core.compiler.taskTags", new String(CharOperation.concatWith(cArr, IIndexConstants.PARAMETER_SEPARATOR)));
            } else {
                char[][] cArr2 = new char[length];
                System.arraycopy(splitAndTrimOn2, 0, cArr2, 0, length);
                map.put("org.eclipse.jdt.core.compiler.taskPriorities", new String(CharOperation.concatWith(cArr2, IIndexConstants.PARAMETER_SEPARATOR)));
            }
        }
    }

    public static final char[][][] getAllTypeArguments(char[][] cArr) {
        if (cArr == null) {
            return null;
        }
        int length = cArr.length;
        char[][][] cArr2 = new char[length][];
        for (int i10 = 0; i10 < length; i10++) {
            cArr2[i10] = Signature.getTypeArguments(cArr[i10]);
        }
        return cArr2;
    }

    public static IAnnotation getAnnotation(JavaElement javaElement, IBinaryAnnotation iBinaryAnnotation, String str) {
        return new org.eclipse.jdt.internal.core.Annotation(javaElement, new String(Signature.toCharArray(CharOperation.replaceOnCopy(iBinaryAnnotation.getTypeName(), '/', '.'))), str);
    }

    public static Object getAnnotationMemberValue(JavaElement javaElement, MemberValuePair memberValuePair, Object obj) {
        if (obj instanceof Constant) {
            return getAnnotationMemberValue(memberValuePair, (Constant) obj);
        }
        if (obj instanceof IBinaryAnnotation) {
            memberValuePair.valueKind = 10;
            return getAnnotation(javaElement, (IBinaryAnnotation) obj, memberValuePair.getMemberName());
        }
        if (obj instanceof ClassSignature) {
            memberValuePair.valueKind = 11;
            return new String(Signature.toCharArray(CharOperation.replaceOnCopy(((ClassSignature) obj).getTypeName(), '/', '.')));
        }
        if (obj instanceof EnumConstantSignature) {
            memberValuePair.valueKind = 12;
            EnumConstantSignature enumConstantSignature = (EnumConstantSignature) obj;
            return new String(CharOperation.concat(Signature.toCharArray(CharOperation.replaceOnCopy(enumConstantSignature.getTypeName(), '/', '.')), enumConstantSignature.getEnumConstantName(), '.'));
        }
        if (obj instanceof Object[]) {
            memberValuePair.valueKind = -1;
            Object[] objArr = (Object[]) obj;
            int length = objArr.length;
            Object[] objArr2 = new Object[length];
            for (int i10 = 0; i10 < length; i10++) {
                int i11 = memberValuePair.valueKind;
                Object annotationMemberValue = getAnnotationMemberValue(javaElement, memberValuePair, objArr[i10]);
                if (i11 != -1 && memberValuePair.valueKind != i11) {
                    memberValuePair.valueKind = 14;
                }
                if (annotationMemberValue instanceof org.eclipse.jdt.internal.core.Annotation) {
                    org.eclipse.jdt.internal.core.Annotation annotation = (org.eclipse.jdt.internal.core.Annotation) annotationMemberValue;
                    for (int i12 = 0; i12 < i10; i12++) {
                        if (annotation.equals(objArr2[i12])) {
                            annotation.occurrenceCount++;
                        }
                    }
                }
                objArr2[i10] = annotationMemberValue;
            }
            if (memberValuePair.valueKind == -1) {
                memberValuePair.valueKind = 14;
            }
            return objArr2;
        }
        memberValuePair.valueKind = 14;
        return null;
    }

    public static IClassFileAttribute getAttribute(IClassFileReader iClassFileReader, char[] cArr) {
        IClassFileAttribute[] attributes = iClassFileReader.getAttributes();
        int length = attributes.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (CharOperation.equals(attributes[i10].getAttributeName(), cArr)) {
                return attributes[i10];
            }
        }
        return null;
    }

    private static IClassFile getClassFile(char[] cArr) {
        IPackageFragment packageFragment;
        int indexOf = CharOperation.indexOf('|', cArr);
        int lastIndexOf = CharOperation.lastIndexOf('/', cArr);
        if (lastIndexOf == -1) {
            lastIndexOf = CharOperation.lastIndexOf(File.separatorChar, cArr);
        }
        if (indexOf != -1 && lastIndexOf < indexOf) {
            lastIndexOf = indexOf;
        }
        if (lastIndexOf == -1 || (packageFragment = getPackageFragment(cArr, lastIndexOf, indexOf)) == null) {
            return null;
        }
        int i10 = lastIndexOf + 1;
        return packageFragment.getClassFile(new String(cArr, i10, cArr.length - i10));
    }

    private static ICompilationUnit getCompilationUnit(char[] cArr, WorkingCopyOwner workingCopyOwner) {
        ICompilationUnit findWorkingCopy;
        char[] replaceOnCopy = CharOperation.replaceOnCopy(cArr, File.separatorChar, '/');
        int lastIndexOf = CharOperation.lastIndexOf('/', replaceOnCopy);
        if (lastIndexOf == -1) {
            return null;
        }
        IPackageFragment packageFragment = getPackageFragment(replaceOnCopy, lastIndexOf, -1);
        if (packageFragment != null) {
            int i10 = lastIndexOf + 1;
            ICompilationUnit compilationUnit = packageFragment.getCompilationUnit(new String(replaceOnCopy, i10, replaceOnCopy.length - i10));
            return (workingCopyOwner == null || (findWorkingCopy = compilationUnit.findWorkingCopy(workingCopyOwner)) == null) ? compilationUnit : findWorkingCopy;
        }
        IFile file = ResourcesPlugin.getWorkspace().getRoot().getFile(new Path(String.valueOf(cArr)));
        if (file.exists()) {
            return JavaCore.createCompilationUnitFrom(file);
        }
        return null;
    }

    public static String getDeclaringTypeSignature(String str) {
        KeyToSignature keyToSignature = new KeyToSignature(str, 2);
        keyToSignature.parse();
        return keyToSignature.signature.toString();
    }

    private static void getFullyQualifiedName(Type type, StringBuffer stringBuffer) {
        int nodeType = type.getNodeType();
        if (nodeType == 5) {
            ArrayType arrayType = (ArrayType) type;
            getFullyQualifiedName(arrayType.getElementType(), stringBuffer);
            int dimensions = arrayType.getDimensions();
            for (int i10 = 0; i10 < dimensions; i10++) {
                stringBuffer.append('[');
                stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
            }
            return;
        }
        if (nodeType == 39) {
            stringBuffer.append(((PrimitiveType) type).getPrimitiveTypeCode().toString());
            return;
        }
        if (nodeType == 43) {
            stringBuffer.append(((SimpleType) type).getName().getFullyQualifiedName());
            return;
        }
        switch (nodeType) {
            case 74:
                ParameterizedType parameterizedType = (ParameterizedType) type;
                getFullyQualifiedName(parameterizedType.getType(), stringBuffer);
                stringBuffer.append('<');
                Iterator it = parameterizedType.typeArguments().iterator();
                boolean z10 = true;
                while (it.hasNext()) {
                    if (z10) {
                        z10 = false;
                    } else {
                        stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                    }
                    getFullyQualifiedName((Type) it.next(), stringBuffer);
                }
                stringBuffer.append('>');
                return;
            case 75:
                stringBuffer.append(((QualifiedType) type).getName().getFullyQualifiedName());
                return;
            case 76:
                stringBuffer.append('?');
                WildcardType wildcardType = (WildcardType) type;
                Type bound = wildcardType.getBound();
                if (bound == null) {
                    return;
                }
                if (wildcardType.isUpperBound()) {
                    stringBuffer.append(" extends ");
                } else {
                    stringBuffer.append(" super ");
                }
                getFullyQualifiedName(bound, stringBuffer);
                return;
            default:
                return;
        }
    }

    public static char[][] getJavaLikeExtensions() {
        if (JAVA_LIKE_EXTENSIONS == null) {
            IContentType contentType = Platform.getContentTypeManager().getContentType(JavaCore.JAVA_SOURCE_CONTENT_TYPE);
            HashSet hashSet = new HashSet();
            IContentType[] allContentTypes = Platform.getContentTypeManager().getAllContentTypes();
            int length = allContentTypes.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (allContentTypes[i10].isKindOf(contentType)) {
                    for (String str : allContentTypes[i10].getFileSpecs(8)) {
                        hashSet.add(str);
                    }
                }
            }
            char[][] cArr = new char[hashSet.size()];
            cArr[0] = SuffixConstants.EXTENSION_java.toCharArray();
            Iterator it = hashSet.iterator();
            int i11 = 1;
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (!SuffixConstants.EXTENSION_java.equals(str2)) {
                    cArr[i11] = str2.toCharArray();
                    i11++;
                }
            }
            JAVA_LIKE_EXTENSIONS = cArr;
        }
        return JAVA_LIKE_EXTENSIONS;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0075, code lost:
    
        r1 = org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader.read(r5, r2);
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x009f A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x009a A[Catch: CoreException | IOException | ClassFormatException -> 0x009f, CoreException | IOException | ClassFormatException -> 0x009f, CoreException | IOException | ClassFormatException -> 0x009f, TRY_LEAVE, TryCatch #0 {CoreException | IOException | ClassFormatException -> 0x009f, blocks: (B:2:0x0000, B:4:0x0005, B:6:0x000d, B:8:0x009a, B:8:0x009a, B:8:0x009a, B:19:0x0044, B:19:0x0044, B:19:0x0044, B:32:0x007f, B:32:0x007f, B:32:0x007f, B:40:0x0088, B:40:0x0088, B:40:0x0088, B:41:0x008f, B:41:0x008f, B:41:0x008f, B:37:0x0091, B:37:0x0091, B:37:0x0091), top: B:1:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long getJdkLevel(Object obj) {
        ZipFile zipFile;
        org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader classFileReader;
        try {
            ZipFile zipFile2 = null;
            r1 = null;
            org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader classFileReader2 = null;
            org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader classFileReader3 = null;
            ZipFile zipFile3 = null;
            if (obj instanceof IFolder) {
                IFile findFirstClassFile = findFirstClassFile((IFolder) obj);
                if (findFirstClassFile != null) {
                    classFileReader2 = newClassFileReader(findFirstClassFile);
                }
            } else {
                try {
                    IPath fullPath = obj instanceof IResource ? ((IResource) obj).getFullPath() : (!(obj instanceof File) || ((File) obj).isDirectory()) ? null : new Path(((File) obj).getPath());
                    if (fullPath == null) {
                        classFileReader = null;
                    } else {
                        if (JavaModelManager.isJrt(fullPath)) {
                            JavaModelManager.getJavaModelManager().closeZipFile(null);
                            return ClassFileConstants.JDK9;
                        }
                        zipFile = JavaModelManager.getJavaModelManager().getZipFile(fullPath);
                        try {
                            Enumeration<? extends ZipEntry> entries = zipFile.entries();
                            while (true) {
                                if (!entries.hasMoreElements()) {
                                    break;
                                }
                                String name = entries.nextElement().getName();
                                if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(name)) {
                                    break;
                                }
                            }
                            org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader classFileReader4 = classFileReader3;
                            zipFile3 = zipFile;
                            classFileReader = classFileReader4;
                        } catch (CoreException unused) {
                            JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
                            if (classFileReader2 == null) {
                            }
                        } catch (Throwable th2) {
                            zipFile2 = zipFile;
                            th = th2;
                            JavaModelManager.getJavaModelManager().closeZipFile(zipFile2);
                            throw th;
                        }
                    }
                    JavaModelManager.getJavaModelManager().closeZipFile(zipFile3);
                    classFileReader2 = classFileReader;
                } catch (CoreException unused2) {
                    zipFile = null;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            if (classFileReader2 == null) {
                return classFileReader2.getVersion();
            }
            return 0L;
        } catch (CoreException | IOException | ClassFormatException unused3) {
            return 0L;
        }
    }

    public static String getLineSeparator(String str, IJavaProject iJavaProject) {
        String string;
        String findLineSeparator;
        if (str != null && str.length() != 0 && (findLineSeparator = findLineSeparator(str.toCharArray())) != null) {
            return findLineSeparator;
        }
        if (Platform.isRunning()) {
            if (iJavaProject != null && (string = Platform.getPreferencesService().getString("org.eclipse.core.runtime", "line.separator", (String) null, new IScopeContext[]{new ProjectScope(iJavaProject.getProject())})) != null) {
                return string;
            }
            String string2 = Platform.getPreferencesService().getString("org.eclipse.core.runtime", "line.separator", (String) null, new IScopeContext[]{InstanceScope.INSTANCE});
            if (string2 != null) {
                return string2;
            }
        }
        return org.eclipse.jdt.internal.compiler.util.Util.LINE_SEPARATOR;
    }

    public static String getNameWithoutJavaLikeExtension(String str) {
        int indexOfJavaLikeExtension = indexOfJavaLikeExtension(str);
        return indexOfJavaLikeExtension == -1 ? str : str.substring(0, indexOfJavaLikeExtension);
    }

    public static Object getNegativeAnnotationMemberValue(MemberValuePair memberValuePair, Constant constant) {
        if (constant == null) {
            memberValuePair.valueKind = 14;
            return null;
        }
        switch (constant.typeID()) {
            case 7:
                memberValuePair.valueKind = 7;
                return Long.valueOf(constant.longValue() * (-1));
            case 8:
                memberValuePair.valueKind = 6;
                return new Double(constant.doubleValue() * (-1.0d));
            case 9:
                memberValuePair.valueKind = 5;
                return new Float(constant.floatValue() * (-1.0f));
            case 10:
                memberValuePair.valueKind = 1;
                return Integer.valueOf(constant.intValue() * (-1));
            default:
                memberValuePair.valueKind = 14;
                return null;
        }
    }

    public static IPackageFragment getPackageFragment(char[] cArr, int i10, int i11) {
        if (i11 != -1) {
            PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) JavaCore.create(new String(cArr, 0, i11));
            return i10 == i11 ? packageFragmentRoot.getPackageFragment(CharOperation.NO_STRINGS) : packageFragmentRoot.getPackageFragment(CharOperation.toStrings(CharOperation.splitOn('/', CharOperation.subarray(cArr, i11 + 1, i10))));
        }
        Path path = new Path(new String(cArr, 0, i10));
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        IProject project = path.segmentCount() == 1 ? root.getProject(path.lastSegment()) : root.getFolder(path);
        IJavaElement create = JavaCore.create((IResource) project);
        if (create == null) {
            return null;
        }
        int elementType = create.getElementType();
        if (elementType == 2) {
            PackageFragmentRoot packageFragmentRoot2 = (PackageFragmentRoot) ((IJavaProject) create).getPackageFragmentRoot((IResource) project);
            if (packageFragmentRoot2 == null) {
                return null;
            }
            return packageFragmentRoot2.getPackageFragment(CharOperation.NO_STRINGS);
        }
        if (elementType == 3) {
            return ((PackageFragmentRoot) create).getPackageFragment(CharOperation.NO_STRINGS);
        }
        if (elementType != 4) {
            return null;
        }
        return (IPackageFragment) create;
    }

    public static int getParameterCount(char[] cArr) {
        int indexOf = CharOperation.indexOf('(', cArr) + 1;
        Assert.isTrue(indexOf != 0);
        int length = cArr.length;
        int i10 = 0;
        while (indexOf != length) {
            char c10 = cArr[indexOf];
            if (c10 == ')') {
                break;
            }
            if (c10 != '[') {
                if (c10 == 'L') {
                    i10++;
                    indexOf = CharOperation.indexOf(';', cArr, indexOf + 1) + 1;
                    Assert.isTrue(indexOf != 0);
                } else {
                    i10++;
                }
            }
            indexOf++;
        }
        return i10;
    }

    public static String getProblemArgumentsForMarker(String[] strArr) {
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append(strArr.length);
        stringBuffer.append(':');
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (i10 != 0) {
                stringBuffer.append('#');
            }
            if (strArr[i10].length() == 0) {
                stringBuffer.append("   ");
            } else {
                encodeArgument(strArr[i10], stringBuffer);
            }
        }
        return stringBuffer.toString();
    }

    public static String[] getProblemArgumentsFromMarker(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(58)) == -1) {
            return null;
        }
        try {
            return decodeArgumentString(Integer.parseInt(str.substring(0, indexOf)), str.substring(indexOf + 1, str.length()));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static byte[] getResourceContentsAsByteArray(IFile iFile) throws JavaModelException {
        try {
            InputStream contents = iFile.getContents(true);
            try {
                try {
                    byte[] inputStreamAsByteArray = org.eclipse.jdt.internal.compiler.util.Util.getInputStreamAsByteArray(contents, -1);
                    try {
                        contents.close();
                    } catch (IOException unused) {
                    }
                    return inputStreamAsByteArray;
                } catch (IOException e10) {
                    throw new JavaModelException(e10, IJavaModelStatusConstants.IO_EXCEPTION);
                }
            } catch (Throwable th2) {
                try {
                    contents.close();
                } catch (IOException unused2) {
                }
                throw th2;
            }
        } catch (CoreException e11) {
            throw new JavaModelException(e11);
        }
    }

    public static char[] getResourceContentsAsCharArray(IFile iFile) throws JavaModelException {
        String str;
        try {
            str = iFile.getCharset();
        } catch (CoreException unused) {
            str = null;
        }
        return getResourceContentsAsCharArray(iFile, str);
    }

    public static String getSignature(Type type) {
        StringBuffer stringBuffer = new StringBuffer();
        getFullyQualifiedName(type, stringBuffer);
        return Signature.createTypeSignature(stringBuffer.toString(), false);
    }

    public static String getSourceAttachmentProperty(IPath iPath) throws JavaModelException {
        Map<IPath, String> map = JavaModelManager.getJavaModelManager().rootPathToAttachments;
        String str = map.get(iPath);
        if (str != null) {
            if (str.equals("")) {
                return null;
            }
            return str;
        }
        try {
            String persistentProperty = ResourcesPlugin.getWorkspace().getRoot().getPersistentProperty(getSourceAttachmentPropertyName(iPath));
            if (persistentProperty == null) {
                map.put(iPath, "");
                return null;
            }
            map.put(iPath, persistentProperty);
            return persistentProperty;
        } catch (CoreException e10) {
            throw new JavaModelException(e10);
        }
    }

    private static QualifiedName getSourceAttachmentPropertyName(IPath iPath) {
        return new QualifiedName(JavaCore.PLUGIN_ID, "sourceattachment: " + iPath.toOSString());
    }

    public static String[] getTrimmedSimpleNames(String str) {
        String[] simpleNames = Signature.getSimpleNames(str);
        int length = simpleNames.length;
        for (int i10 = 0; i10 < length; i10++) {
            simpleNames[i10] = simpleNames[i10].trim();
        }
        return simpleNames;
    }

    public static JavaElement getUnresolvedJavaElement(FieldBinding fieldBinding, WorkingCopyOwner workingCopyOwner, BindingsToNodesMap bindingsToNodesMap) {
        IJavaElement unresolvedJavaElement;
        ReferenceBinding referenceBinding = fieldBinding.declaringClass;
        if (referenceBinding == null || (unresolvedJavaElement = getUnresolvedJavaElement(referenceBinding, workingCopyOwner, bindingsToNodesMap)) == null || unresolvedJavaElement.getElementType() != 7) {
            return null;
        }
        return (JavaElement) ((IType) unresolvedJavaElement).getField(String.valueOf(fieldBinding.name));
    }

    public static int indexOfEnclosingPath(IPath iPath, IPath[] iPathArr, int i10) {
        int segmentCount;
        int i11 = -1;
        int i12 = -1;
        for (int i13 = 0; i13 < i10; i13++) {
            if (!iPathArr[i13].equals(iPath) && iPathArr[i13].isPrefixOf(iPath) && (segmentCount = iPathArr[i13].segmentCount()) > i12) {
                i11 = i13;
                i12 = segmentCount;
            }
        }
        return i11;
    }

    public static int indexOfJavaLikeExtension(String str) {
        int length = str.length();
        for (char[] cArr : getJavaLikeExtensions()) {
            int length2 = cArr.length;
            int i10 = length - length2;
            int i11 = i10 - 1;
            if (i11 >= 0 && str.charAt(i11) == '.') {
                for (int i12 = 0; i12 < length2; i12++) {
                    if (str.charAt(i10 + i12) != cArr[i12]) {
                        break;
                    }
                }
                return i11;
            }
        }
        return -1;
    }

    public static int indexOfMatchingPath(IPath iPath, IPath[] iPathArr, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (iPathArr[i11].equals(iPath)) {
                return i11;
            }
        }
        return -1;
    }

    public static int indexOfNestedPath(IPath iPath, IPath[] iPathArr, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (!iPath.equals(iPathArr[i11]) && iPath.isPrefixOf(iPathArr[i11])) {
                return i11;
            }
        }
        return -1;
    }

    public static boolean isAttributeSupported(int i10) {
        return (i10 & EFS.getLocalFileSystem().attributes()) != 0;
    }

    public static final boolean isExcluded(IJavaElement iJavaElement) {
        int elementType = iJavaElement.getElementType();
        if (elementType != 1 && elementType != 2 && elementType != 3) {
            if (elementType != 4) {
                if (elementType != 5) {
                    IJavaElement ancestor = iJavaElement.getAncestor(5);
                    return ancestor != null && isExcluded(ancestor);
                }
                PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) iJavaElement.getAncestor(3);
                IResource resource = iJavaElement.getResource();
                if (resource == null) {
                    return false;
                }
                if (isExcluded(resource, packageFragmentRoot.fullInclusionPatternChars(), packageFragmentRoot.fullExclusionPatternChars())) {
                    return true;
                }
                return isExcluded(iJavaElement.getParent());
            }
            PackageFragmentRoot packageFragmentRoot2 = (PackageFragmentRoot) iJavaElement.getAncestor(3);
            IResource resource2 = ((PackageFragment) iJavaElement).resource();
            if (resource2 != null && isExcluded(resource2, packageFragmentRoot2.fullInclusionPatternChars(), packageFragmentRoot2.fullExclusionPatternChars())) {
                return true;
            }
        }
        return false;
    }

    public static final boolean isJavaLikeFileName(String str) {
        return (str == null || indexOfJavaLikeExtension(str) == -1) ? false : true;
    }

    public static boolean isReadOnly(IResource iResource) {
        ResourceAttributes resourceAttributes;
        if (!isReadOnlySupported() || (resourceAttributes = iResource.getResourceAttributes()) == null) {
            return false;
        }
        return resourceAttributes.isReadOnly();
    }

    public static boolean isReadOnlySupported() {
        return isAttributeSupported(2);
    }

    public static boolean isValidClassFileName(String str, String str2, String str3) {
        return JavaConventions.validateClassFileName(str, str2, str3).getSeverity() != 4;
    }

    public static boolean isValidCompilationUnitName(String str, String str2, String str3) {
        return JavaConventions.validateCompilationUnitName(str, str2, str3).getSeverity() != 4;
    }

    public static boolean isValidFolderNameForPackage(String str, String str2, String str3) {
        return JavaConventions.validateIdentifier(str, str2, str3).getSeverity() != 4;
    }

    public static boolean isValidMethodSignature(String str) {
        int length = str.length();
        if (length == 0 || str.charAt(0) != '(' || 1 >= length) {
            return false;
        }
        int i10 = 1;
        while (str.charAt(i10) != ')') {
            i10 = checkTypeSignature(str, i10, length, false);
            if (i10 == -1 || i10 >= length) {
                return false;
            }
        }
        return checkTypeSignature(str, i10 + 1, length, true) == length;
    }

    public static boolean isValidTypeSignature(String str, boolean z10) {
        int length = str.length();
        return checkTypeSignature(str, 0, length, z10) == length;
    }

    public static String localTypeName(String str, int i10, int i11) {
        if (i10 > 0 && str.charAt(i10 - 1) == '$') {
            return str;
        }
        do {
            i10++;
            if (i10 >= i11) {
                break;
            }
        } while (Character.isDigit(str.charAt(i10)));
        return str.substring(i10, i11);
    }

    public static void log(Throwable th2, String str) {
        log((IStatus) new Status(4, JavaCore.PLUGIN_ID, 4, str, th2));
    }

    public static void logRepeatedMessage(String str, Exception exc) {
        if (str != null) {
            if (fgRepeatedMessages.contains(str)) {
                return;
            }
            fgRepeatedMessages.add(str);
            log(exc);
            return;
        }
        throw new IllegalArgumentException("key cannot be null");
    }

    public static org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader newClassFileReader(IResource iResource) throws CoreException, ClassFormatException, IOException {
        InputStream inputStream = null;
        try {
            inputStream = ((IFile) iResource).getContents(true);
            return org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader.read(inputStream, iResource.getFullPath().toString());
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    public static char[] normalizeCRs(char[] cArr, char[] cArr2) {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer();
        int length = cArr.length;
        if (length == 0) {
            return cArr;
        }
        String lineSeparator = getLineSeparator(cArr, cArr2);
        char c10 = cArr[0];
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            char c11 = i10 < length + (-1) ? cArr[i10 + 1] : ' ';
            if (c10 != '\n') {
                if (c10 == '\r') {
                    int i12 = i10 - i11;
                    if (i12 >= 0) {
                        char[] cArr3 = new char[i12];
                        System.arraycopy(cArr, i11, cArr3, 0, i12);
                        charArrayBuffer.append(cArr3);
                        charArrayBuffer.append(lineSeparator);
                        if (c11 == '\n') {
                            i11 = i10 + 2;
                            c10 = ' ';
                            i10++;
                        }
                    }
                }
                c10 = c11;
                i10++;
            } else {
                int i13 = i10 - i11;
                char[] cArr4 = new char[i13];
                System.arraycopy(cArr, i11, cArr4, 0, i13);
                charArrayBuffer.append(cArr4);
                charArrayBuffer.append(lineSeparator);
            }
            i11 = i10 + 1;
            c10 = c11;
            i10++;
        }
        if (i11 <= 0) {
            return cArr;
        }
        int i14 = length - i11;
        if (i14 > 0) {
            char[] cArr5 = new char[i14];
            System.arraycopy(cArr, i11, cArr5, 0, i14);
            charArrayBuffer.append(cArr5);
        }
        return charArrayBuffer.getContents();
    }

    public static String packageName(IPath iPath, String str, String str2) {
        StringBuffer stringBuffer = new StringBuffer("");
        int segmentCount = iPath.segmentCount();
        for (int i10 = 0; i10 < segmentCount; i10++) {
            String segment = iPath.segment(i10);
            if (!isValidFolderNameForPackage(segment, str, str2)) {
                return null;
            }
            stringBuffer.append(segment);
            if (i10 < iPath.segmentCount() - 1) {
                stringBuffer.append(".");
            }
        }
        return stringBuffer.toString();
    }

    public static int prefixLength(char[] cArr, char[] cArr2) {
        int min = Math.min(cArr.length, cArr2.length);
        int i10 = 0;
        for (int i11 = 0; i11 < min && cArr[i11] == cArr2[i11]; i11++) {
            i10++;
        }
        return i10;
    }

    private static void quickSort(char[][] cArr, int i10, int i11) {
        char[] cArr2 = cArr[((i11 - i10) / 2) + i10];
        int i12 = i10;
        int i13 = i11;
        while (true) {
            if (compare(cArr[i12], cArr2) >= 0) {
                while (compare(cArr2, cArr[i13]) < 0) {
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
            quickSort(cArr, i10, i13);
        }
        if (i12 < i11) {
            quickSort(cArr, i12, i11);
        }
    }

    private static IllegalArgumentException raiseIllegalSignatureException(char[] cArr, int i10) {
        throw new IllegalArgumentException(JavadocConstants.ANCHOR_PREFIX_END + new String(cArr) + "\" starting at " + i10);
    }

    private static IllegalArgumentException raiseUnexpectedCharacterException(char[] cArr, int i10, char c10) {
        throw new IllegalArgumentException("Unexpected '" + c10 + "' in \"" + new String(cArr) + "\" starting at " + i10);
    }

    public static String relativePath(IPath iPath, int i10) {
        int i11;
        boolean hasTrailingSeparator = iPath.hasTrailingSeparator();
        String[] segments = iPath.segments();
        int length = segments.length;
        int i12 = 0;
        if (length > i10) {
            int i13 = 0;
            for (int i14 = i10; i14 < length; i14++) {
                i13 += segments[i14].length();
            }
            i11 = i13 + ((length - i10) - 1);
        } else {
            i11 = 0;
        }
        if (hasTrailingSeparator) {
            i11++;
        }
        char[] cArr = new char[i11];
        int length2 = segments.length - 1;
        if (length2 >= i10) {
            int i15 = 0;
            while (i10 < length2) {
                int length3 = segments[i10].length();
                segments[i10].getChars(0, length3, cArr, i15);
                int i16 = i15 + length3;
                cArr[i16] = '/';
                i10++;
                i15 = i16 + 1;
            }
            int length4 = segments[length2].length();
            segments[length2].getChars(0, length4, cArr, i15);
            i12 = i15 + length4;
        }
        if (hasTrailingSeparator) {
            cArr[i12] = '/';
        }
        return new String(cArr);
    }

    public static void resetJavaLikeExtensions() {
        JAVA_LIKE_EXTENSIONS = null;
    }

    private static int scanGenericEnd(char[] cArr, int i10) {
        if (cArr[i10] == '>') {
            return i10;
        }
        int length = cArr.length;
        int i11 = 1;
        int i12 = i10 + 1;
        while (i12 <= length) {
            char c10 = cArr[i12];
            if (c10 == '<') {
                i11++;
            } else if (c10 == '>' && i11 - 1 == 0) {
                return i12;
            }
            i12++;
        }
        return i12;
    }

    public static int scanTypeSignature(char[] cArr, int i10) {
        return org.eclipse.jdt.internal.compiler.util.Util.scanTypeSignature(cArr, i10);
    }

    public static void setReadOnly(IResource iResource, boolean z10) {
        ResourceAttributes resourceAttributes;
        if (!isReadOnlySupported() || (resourceAttributes = iResource.getResourceAttributes()) == null) {
            return;
        }
        resourceAttributes.setReadOnly(z10);
        try {
            iResource.setResourceAttributes(resourceAttributes);
        } catch (CoreException unused) {
        }
    }

    public static void setSourceAttachmentProperty(IPath iPath, String str) {
        if (str == null) {
            JavaModelManager.getJavaModelManager().rootPathToAttachments.put(iPath, "");
        } else {
            JavaModelManager.getJavaModelManager().rootPathToAttachments.put(iPath, str);
        }
        try {
            ResourcesPlugin.getWorkspace().getRoot().setPersistentProperty(getSourceAttachmentPropertyName(iPath), str);
        } catch (CoreException e10) {
            e10.printStackTrace();
        }
    }

    public static void sort(char[][] cArr) {
        if (cArr.length > 1) {
            quickSort(cArr, 0, cArr.length - 1);
        }
    }

    public static Comparable[] sortCopy(Comparable[] comparableArr) {
        int length = comparableArr.length;
        Comparable[] comparableArr2 = new Comparable[length];
        System.arraycopy(comparableArr, 0, comparableArr2, 0, length);
        sort(comparableArr2);
        return comparableArr2;
    }

    public static final String[] splitOn(char c10, String str, int i10, int i11) {
        if ((str == null ? 0 : str.length()) == 0 || i10 > i11) {
            return CharOperation.NO_STRINGS;
        }
        int i12 = 1;
        for (int i13 = i10; i13 < i11; i13++) {
            if (str.charAt(i13) == c10) {
                i12++;
            }
        }
        String[] strArr = new String[i12];
        int i14 = 0;
        int i15 = i10;
        while (i10 < i11) {
            if (str.charAt(i10) == c10) {
                strArr[i14] = str.substring(i15, i10);
                i15 = i10 + 1;
                i14++;
            }
            i10++;
        }
        strArr[i14] = str.substring(i15, i11);
        return strArr;
    }

    public static final char[][] splitTypeLevelsSignature(String str) {
        char[] removeCapture = Signature.removeCapture(str.toCharArray());
        CharOperation.replace(removeCapture, '$', '.');
        char[][] cArr = new char[10];
        int length = removeCapture.length;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            char c10 = removeCapture[i12];
            if (c10 != '.') {
                if (c10 == '/') {
                    removeCapture[i12] = '.';
                } else if (c10 == '<') {
                    i11++;
                } else if (c10 == '>' && i11 - 1 == 0 && i10 == cArr.length) {
                    char[][] cArr2 = new char[i10 + 10];
                    System.arraycopy(cArr, 0, cArr2, 0, i10);
                    cArr = cArr2;
                }
            } else if (i11 == 0) {
                if (i10 == cArr.length) {
                    char[][] cArr3 = new char[i10 + 10];
                    System.arraycopy(cArr, 0, cArr3, 0, i10);
                    cArr = cArr3;
                }
                char[] cArr4 = new char[i12 + 1];
                cArr[i10] = cArr4;
                System.arraycopy(removeCapture, 0, cArr4, 0, i12);
                cArr[i10][i12] = ';';
                i10++;
            }
        }
        char[][] cArr5 = new char[i10 + 1];
        cArr5[0] = removeCapture;
        int i13 = i10 - 1;
        int i14 = 1;
        while (i14 <= i10) {
            cArr5[i14] = cArr[i13];
            i14++;
            i13--;
        }
        return cArr5;
    }

    public static boolean startsWithIgnoreCase(String[] strArr, String[] strArr2, boolean z10) {
        int length = strArr2.length;
        int length2 = strArr.length;
        if (length > length2) {
            return false;
        }
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (i10 >= i11) {
                return (z10 || length == length2) && strArr[i11].toLowerCase().startsWith(strArr2[i11].toLowerCase());
            }
            if (!strArr[i10].equalsIgnoreCase(strArr2[i10])) {
                return false;
            }
            i10++;
        }
    }

    public static String toAnchor(int i10, char[] cArr, String str, boolean z10) {
        try {
            return new String(toAnchor(i10, cArr, str.toCharArray(), z10));
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static char[][] toCharArrays(String[] strArr) {
        int length = strArr.length;
        if (length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        char[][] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = strArr[i10].toCharArray();
        }
        return cArr;
    }

    public static char[][] toCompoundChars(String str) {
        if (str.length() == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        int indexOf = str.indexOf(46);
        int i10 = 1;
        while (indexOf != -1) {
            i10++;
            indexOf = str.indexOf(46, indexOf + 1);
        }
        char[][] cArr = new char[i10];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            int indexOf2 = str.indexOf(46, i11);
            if (indexOf2 == -1) {
                indexOf2 = str.length();
            }
            char[] cArr2 = new char[indexOf2 - i11];
            cArr[i12] = cArr2;
            str.getChars(i11, indexOf2, cArr2, 0);
            i11 = indexOf2 + 1;
        }
        return cArr;
    }

    public static File toLocalFile(URI uri, IProgressMonitor iProgressMonitor) throws CoreException {
        IFileStore store = EFS.getStore(uri);
        File localFile = store.toLocalFile(0, iProgressMonitor);
        return localFile == null ? store.toLocalFile(4096, iProgressMonitor) : localFile;
    }

    public static String toString(char[][] cArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = cArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                stringBuffer.append('.');
            }
            stringBuffer.append(cArr[i10]);
        }
        return stringBuffer.toString();
    }

    public static String[] toStrings(char[][] cArr) {
        int length = cArr.length;
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = new String(cArr[i10]);
        }
        return strArr;
    }

    private static char[] toUnresolvedTypeSignature(char[] cArr) {
        int length = cArr.length;
        if (length <= 1) {
            return cArr;
        }
        StringBuffer stringBuffer = new StringBuffer(length);
        toUnresolvedTypeSignature(cArr, 0, length, stringBuffer);
        int length2 = stringBuffer.length();
        char[] cArr2 = new char[length2];
        stringBuffer.getChars(0, length2, cArr2, 0);
        return cArr2;
    }

    public static String[] typeParameterSignatures(AbstractMethodDeclaration abstractMethodDeclaration) {
        Argument[] argumentArr = abstractMethodDeclaration.arguments;
        if (argumentArr == null) {
            return CharOperation.NO_STRINGS;
        }
        String[] strArr = new String[argumentArr.length];
        for (int i10 = 0; i10 < argumentArr.length; i10++) {
            strArr[i10] = typeSignature(argumentArr[i10].type);
        }
        return strArr;
    }

    public static String typeSignature(TypeReference typeReference) {
        return (typeReference.bits & 536870912) != 0 ? Signature.createIntersectionTypeSignature(typeSignatures(((UnionTypeReference) typeReference).typeReferences)) : typeReference instanceof IntersectionCastTypeReference ? Signature.createUnionTypeSignature(typeSignatures(((IntersectionCastTypeReference) typeReference).typeReferences)) : Signature.createTypeSignature(CharOperation.concatWith(typeReference.getParameterizedTypeName(), '.'), false);
    }

    private static String[] typeSignatures(TypeReference[] typeReferenceArr) {
        int length = typeReferenceArr.length;
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = Signature.createTypeSignature(CharOperation.concatWith(typeReferenceArr[i10].getParameterizedTypeName(), '.'), false);
        }
        return strArr;
    }

    public static void validateMethodSignature(String str) {
        Assert.isTrue(isValidMethodSignature(str));
    }

    public static void validateTypeSignature(String str, boolean z10) {
        Assert.isTrue(isValidTypeSignature(str, z10));
    }

    public static void verbose(String str) {
        verbose(str, System.out);
    }

    public static final boolean isJavaLikeFileName(char[] cArr) {
        if (cArr == null) {
            return false;
        }
        int length = cArr.length;
        for (char[] cArr2 : getJavaLikeExtensions()) {
            int length2 = cArr2.length;
            int i10 = length - length2;
            int i11 = i10 - 1;
            if (i11 >= 0 && cArr[i11] == '.') {
                for (int i12 = 0; i12 < length2; i12++) {
                    if (cArr[i10 + i12] != cArr2[i12]) {
                        break;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static char[] toAnchor(int i10, char[] cArr, char[] cArr2, boolean z10) {
        if (CharOperation.indexOf('(', cArr) != -1) {
            StringBuffer stringBuffer = new StringBuffer(cArr.length + 10);
            if (cArr2 != null) {
                stringBuffer.append(cArr2);
            }
            stringBuffer.append('(');
            char[][] parameterTypes = Signature.getParameterTypes(cArr);
            int length = parameterTypes.length;
            while (i10 < length) {
                if (i10 == length - 1) {
                    appendTypeSignatureForAnchor(parameterTypes[i10], 0, stringBuffer, z10);
                } else {
                    appendTypeSignatureForAnchor(parameterTypes[i10], 0, stringBuffer, false);
                }
                if (i10 != parameterTypes.length - 1) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                    stringBuffer.append(C15883c.f126249O);
                }
                i10++;
            }
            stringBuffer.append(')');
            char[] cArr3 = new char[stringBuffer.length()];
            stringBuffer.getChars(0, stringBuffer.length(), cArr3, 0);
            return cArr3;
        }
        throw new IllegalArgumentException(new String(cArr));
    }

    public static synchronized void verbose(String str, PrintStream printStream) {
        synchronized (Util.class) {
            int i10 = 0;
            do {
                try {
                    int indexOf = str.indexOf(10, i10);
                    printStream.print(Thread.currentThread());
                    printStream.print(" ");
                    printStream.print(str.substring(i10, indexOf == -1 ? str.length() : indexOf + 1));
                    i10 = indexOf + 1;
                } catch (Throwable th2) {
                    throw th2;
                }
            } while (i10 != 0);
            printStream.println();
        }
    }

    public static char[] getResourceContentsAsCharArray(IFile iFile, String str) throws JavaModelException {
        long length;
        IPath location = iFile.getLocation();
        if (location == null) {
            try {
                URI locationURI = iFile.getLocationURI();
                if (locationURI != null) {
                    length = EFS.getStore(locationURI).fetchInfo().getLength();
                } else {
                    throw new CoreException(new Status(4, JavaCore.PLUGIN_ID, Messages.bind(Messages.file_notFound, iFile.getFullPath().toString())));
                }
            } catch (CoreException e10) {
                throw new JavaModelException(e10, 969);
            }
        } else {
            length = location.toFile().length();
        }
        try {
            InputStream contents = iFile.getContents(true);
            try {
                try {
                    char[] inputStreamAsCharArray = org.eclipse.jdt.internal.compiler.util.Util.getInputStreamAsCharArray(contents, (int) length, str);
                    try {
                        contents.close();
                    } catch (IOException unused) {
                    }
                    return inputStreamAsCharArray;
                } catch (IOException e11) {
                    throw new JavaModelException(e11, IJavaModelStatusConstants.IO_EXCEPTION);
                }
            } catch (Throwable th2) {
                try {
                    contents.close();
                } catch (IOException unused2) {
                }
                throw th2;
            }
        } catch (CoreException e12) {
            throw new JavaModelException(e12, 969);
        }
    }

    public static int prefixLength(String str, String str2) {
        int min = Math.min(str.length(), str2.length());
        int i10 = 0;
        for (int i11 = 0; i11 < min && str.charAt(i11) == str2.charAt(i11); i11++) {
            i10++;
        }
        return i10;
    }

    public static void sort(Comparable[] comparableArr) {
        if (comparableArr.length > 1) {
            quickSort(comparableArr, 0, comparableArr.length - 1);
        }
    }

    public static boolean equalArraysOrNull(Object[] objArr, Object[] objArr2) {
        int length;
        if (objArr == objArr2) {
            return true;
        }
        if (objArr == null || objArr2 == null || (length = objArr.length) != objArr2.length) {
            return false;
        }
        for (int i10 = length - 1; i10 >= 0; i10--) {
            Object obj = objArr[i10];
            if (obj == null) {
                if (objArr2[i10] != null) {
                    return false;
                }
            } else if (!obj.equals(objArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    public static void log(int i10, String str) {
        log((IStatus) new Status(i10, JavaCore.PLUGIN_ID, str));
    }

    public static int compare(char[] cArr, char[] cArr2) {
        int length = cArr.length;
        int length2 = cArr2.length;
        int min = Math.min(length, length2);
        int i10 = 0;
        while (true) {
            int i11 = min - 1;
            if (min == 0) {
                return length - length2;
            }
            char c10 = cArr[i10];
            int i12 = i10 + 1;
            char c11 = cArr2[i10];
            if (c10 != c11) {
                return c10 - c11;
            }
            min = i11;
            i10 = i12;
        }
    }

    public static IClassFileAttribute getAttribute(ICodeAttribute iCodeAttribute, char[] cArr) {
        IClassFileAttribute[] attributes = iCodeAttribute.getAttributes();
        int length = attributes.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (CharOperation.equals(attributes[i10].getAttributeName(), cArr)) {
                return attributes[i10];
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static JavaElement getUnresolvedJavaElement(int i10, int i11, JavaElement javaElement) {
        try {
            if (!(javaElement instanceof IType)) {
                return null;
            }
            for (IMethod iMethod : ((IType) javaElement).getInitializers()) {
                ISourceRange sourceRange = iMethod.getSourceRange();
                if (sourceRange != null) {
                    int offset = sourceRange.getOffset();
                    int length = sourceRange.getLength() + offset;
                    if (offset <= i10 && i11 <= length) {
                        return (JavaElement) iMethod;
                    }
                }
            }
            return null;
        } catch (JavaModelException unused) {
            return null;
        }
    }

    public static void logRepeatedMessage(String str, int i10, String str2) {
        if (str != null) {
            if (fgRepeatedMessages.contains(str)) {
                return;
            }
            fgRepeatedMessages.add(str);
            log(i10, str2);
            return;
        }
        throw new IllegalArgumentException("key cannot be null");
    }

    public static void sort(int[] iArr) {
        if (iArr.length > 1) {
            quickSort(iArr, 0, iArr.length - 1);
        }
    }

    public static IJavaElement[] sortCopy(IJavaElement[] iJavaElementArr) {
        int length = iJavaElementArr.length;
        IJavaElement[] iJavaElementArr2 = new IJavaElement[length];
        System.arraycopy(iJavaElementArr, 0, iJavaElementArr2, 0, length);
        sort(iJavaElementArr2, new Comparer() {
            @Override
            public int compare(Object obj, Object obj2) {
                return ((JavaElement) obj).toStringWithAncestors().compareTo(((JavaElement) obj2).toStringWithAncestors());
            }
        });
        return iJavaElementArr2;
    }

    public static final String concatWith(String[] strArr, String str, char c10) {
        if (strArr == null || strArr.length == 0) {
            return str;
        }
        if (str != null && str.length() != 0) {
            StringBuffer stringBuffer = new StringBuffer();
            for (String str2 : strArr) {
                stringBuffer.append(str2);
                stringBuffer.append(c10);
            }
            stringBuffer.append(str);
            return stringBuffer.toString();
        }
        return concatWith(strArr, c10);
    }

    public static boolean equalArraysOrNullSortFirst(String[] strArr, String[] strArr2) {
        int length;
        if (strArr == strArr2) {
            return true;
        }
        if (strArr == null || strArr2 == null || (length = strArr.length) != strArr2.length) {
            return false;
        }
        if (length >= 2) {
            strArr = sortCopy(strArr);
            strArr2 = sortCopy(strArr2);
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!strArr[i10].equals(strArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    public static String toString(char[][] cArr, char[] cArr2) {
        if (cArr == null) {
            return new String(cArr2);
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (char[] cArr3 : cArr) {
            stringBuffer.append(cArr3);
            stringBuffer.append('.');
        }
        stringBuffer.append(cArr2);
        return stringBuffer.toString();
    }

    public static void log(IStatus iStatus) {
        Plugin plugin = JavaCore.getPlugin();
        if (plugin == null) {
            System.err.println(iStatus.toString());
        } else {
            plugin.getLog().log(iStatus);
        }
    }

    public static void sort(Object[] objArr, Comparer comparer) {
        if (objArr.length > 1) {
            quickSort(objArr, 0, objArr.length - 1, comparer);
        }
    }

    private static int toUnresolvedTypeSignature(char[] cArr, int i10, int i11, StringBuffer stringBuffer) {
        char c10 = cArr[i10];
        if (c10 == 'L') {
            stringBuffer.append('Q');
        } else {
            stringBuffer.append(c10);
        }
        while (true) {
            i10++;
            if (i10 >= i11) {
                return i11;
            }
            char c11 = cArr[i10];
            if (c11 == '$' || c11 == '/') {
                stringBuffer.append('.');
            } else if (c11 == '<') {
                stringBuffer.append('<');
                i10 = toUnresolvedTypeSignature(cArr, i10 + 1, i11, stringBuffer);
            } else if (c11 != '>') {
                stringBuffer.append(c11);
            } else {
                stringBuffer.append('>');
                return i10;
            }
        }
    }

    public static IClassFileAttribute getAttribute(IFieldInfo iFieldInfo, char[] cArr) {
        IClassFileAttribute[] attributes = iFieldInfo.getAttributes();
        int length = attributes.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (CharOperation.equals(attributes[i10].getAttributeName(), cArr)) {
                return attributes[i10];
            }
        }
        return null;
    }

    private static void quickSort(Comparable[] comparableArr, int i10, int i11) {
        Comparable comparable = comparableArr[((i11 - i10) / 2) + i10];
        int i12 = i10;
        int i13 = i11;
        while (true) {
            if (comparableArr[i12].compareTo(comparable) >= 0) {
                while (comparable.compareTo(comparableArr[i13]) < 0) {
                    i13--;
                }
                if (i12 <= i13) {
                    Comparable comparable2 = comparableArr[i12];
                    comparableArr[i12] = comparableArr[i13];
                    comparableArr[i13] = comparable2;
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
            quickSort(comparableArr, i10, i13);
        }
        if (i12 < i11) {
            quickSort(comparableArr, i12, i11);
        }
    }

    public static void sort(String[] strArr) {
        if (strArr.length > 1) {
            quickSort(strArr, 0, strArr.length - 1);
        }
    }

    public static Object[] sortCopy(Object[] objArr, Comparer comparer) {
        int length = objArr.length;
        Object[] objArr2 = new Object[length];
        System.arraycopy(objArr, 0, objArr2, 0, length);
        sort(objArr2, comparer);
        return objArr2;
    }

    private static String getLineSeparator(char[] cArr, char[] cArr2) {
        String findLineSeparator = findLineSeparator(cArr2);
        return (findLineSeparator == null && (findLineSeparator = findLineSeparator(cArr)) == null) ? getLineSeparator((String) null, (IJavaProject) null) : findLineSeparator;
    }

    public static void log(Throwable th2) {
        log((IStatus) new Status(4, JavaCore.PLUGIN_ID, Messages.internal_error, th2));
    }

    public static final boolean isExcluded(IPath iPath, char[][] cArr, char[][] cArr2, boolean z10) {
        if (cArr == null && cArr2 == null) {
            return false;
        }
        return org.eclipse.jdt.internal.compiler.util.Util.isExcluded(iPath.toString().toCharArray(), cArr, cArr2, z10);
    }

    public static final boolean isExcluded(IResource iResource, char[][] cArr, char[][] cArr2) {
        IPath fullPath = iResource.getFullPath();
        int type = iResource.getType();
        return isExcluded(fullPath, cArr, cArr2, type == 2 || type == 4);
    }

    public static IClassFileAttribute getAttribute(IMethodInfo iMethodInfo, char[] cArr) {
        IClassFileAttribute[] attributes = iMethodInfo.getAttributes();
        int length = attributes.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (CharOperation.equals(attributes[i10].getAttributeName(), cArr)) {
                return attributes[i10];
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static JavaElement getUnresolvedJavaElement(MethodBinding methodBinding, WorkingCopyOwner workingCopyOwner, BindingsToNodesMap bindingsToNodesMap) {
        char[] unresolvedTypeSignature;
        String[] strArr;
        IJavaElement unresolvedJavaElement = getUnresolvedJavaElement(methodBinding.declaringClass, workingCopyOwner, bindingsToNodesMap);
        if (unresolvedJavaElement == null || unresolvedJavaElement.getElementType() != 7) {
            return null;
        }
        IType iType = (IType) unresolvedJavaElement;
        ASTNode aSTNode = bindingsToNodesMap == null ? null : bindingsToNodesMap.get(methodBinding);
        if (aSTNode != null && !iType.isBinary()) {
            if (aSTNode instanceof AnnotationMethodDeclaration) {
                return (JavaElement) iType.getMethod(String.valueOf(((AnnotationMethodDeclaration) aSTNode).selector), CharOperation.NO_STRINGS);
            }
            MethodDeclaration methodDeclaration = (MethodDeclaration) aSTNode;
            Argument[] argumentArr = methodDeclaration.arguments;
            if (argumentArr != null) {
                strArr = new String[argumentArr.length];
                for (int i10 = 0; i10 < argumentArr.length; i10++) {
                    TypeReference typeReference = argumentArr[i10].type;
                    int dimensions = typeReference.dimensions();
                    String createTypeSignature = Signature.createTypeSignature(CharOperation.concatWith(typeReference.getTypeName(), '.'), false);
                    if (dimensions > 0) {
                        createTypeSignature = Signature.createArraySignature(createTypeSignature, dimensions);
                    }
                    strArr[i10] = createTypeSignature;
                }
            } else {
                strArr = CharOperation.NO_STRINGS;
            }
            return (JavaElement) iType.getMethod(String.valueOf(methodDeclaration.selector), strArr);
        }
        MethodBinding original = methodBinding.original();
        String elementName = original.isConstructor() ? iType.getElementName() : new String(original.selector);
        boolean isBinary = iType.isBinary();
        ReferenceBinding enclosingType = original.declaringClass.enclosingType();
        int i11 = (!isBinary || !original.isConstructor() || original.declaringClass.isStatic() || enclosingType == null) ? 0 : 1;
        TypeBinding[] typeBindingArr = original.parameters;
        int length = typeBindingArr == null ? 0 : typeBindingArr.length;
        String[] strArr2 = new String[i11 + length];
        if (i11 != 0) {
            strArr2[0] = new String(enclosingType.genericTypeSignature()).replace('/', '.');
        }
        for (int i12 = 0; i12 < length; i12++) {
            char[] genericTypeSignature = typeBindingArr[i12].genericTypeSignature();
            if (isBinary) {
                unresolvedTypeSignature = CharOperation.replaceOnCopy(genericTypeSignature, '/', '.');
            } else {
                unresolvedTypeSignature = toUnresolvedTypeSignature(genericTypeSignature);
            }
            strArr2[i11 + i12] = new String(unresolvedTypeSignature);
        }
        IMethod method = iType.getMethod(elementName, strArr2);
        if (isBinary) {
            return (JavaElement) method;
        }
        if (method.exists()) {
            return (JavaElement) method;
        }
        try {
            Object[] findMethods = Member.findMethods(method, iType.getMethods());
            if (findMethods != null && findMethods.length != 0) {
                return (JavaElement) findMethods[0];
            }
        } catch (JavaModelException unused) {
        }
        return null;
    }

    public static String[] sortCopy(String[] strArr) {
        int length = strArr.length;
        String[] strArr2 = new String[length];
        System.arraycopy(strArr, 0, strArr2, 0, length);
        sort(strArr2);
        return strArr2;
    }

    public static String toString(char[] cArr, char[] cArr2, char[] cArr3, boolean z10, boolean z11) {
        boolean equals = CharOperation.equals(cArr2, INIT);
        if (CharOperation.indexOf('(', cArr3) == -1) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(cArr3.length + 10);
        if (cArr != null && cArr.length > 0) {
            if (cArr[0] == '[') {
                CharOperation.replace(cArr, '/', '.');
                cArr = Signature.toCharArray(cArr);
            } else {
                CharOperation.replace(cArr, '/', '.');
            }
            int lastIndexOf = CharOperation.lastIndexOf('.', cArr);
            if (z11 && lastIndexOf != -1) {
                stringBuffer.append(cArr, lastIndexOf + 1, (cArr.length - lastIndexOf) - 1);
            } else {
                stringBuffer.append(cArr);
            }
            if (!equals) {
                stringBuffer.append('.');
            }
        }
        if (!equals && cArr2 != null) {
            stringBuffer.append(cArr2);
        }
        stringBuffer.append('(');
        char[][] parameterTypes = Signature.getParameterTypes(cArr3);
        int length = parameterTypes.length;
        for (int i10 = 0; i10 < length; i10++) {
            appendTypeSignature(parameterTypes[i10], 0, stringBuffer, z11);
            if (i10 != parameterTypes.length - 1) {
                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                stringBuffer.append(C15883c.f126249O);
            }
        }
        stringBuffer.append(')');
        if (!equals) {
            stringBuffer.append(" : ");
            if (z10) {
                appendTypeSignature(Signature.getReturnType(cArr3), 0, stringBuffer, z11);
            }
        }
        return String.valueOf(stringBuffer);
    }

    private static void quickSort(int[] iArr, int i10, int i11) {
        int i12;
        int i13 = iArr[((i11 - i10) / 2) + i10];
        int i14 = i10;
        int i15 = i11;
        while (true) {
            if (iArr[i14] >= i13) {
                while (true) {
                    i12 = iArr[i15];
                    if (i13 >= i12) {
                        break;
                    } else {
                        i15--;
                    }
                }
                if (i14 <= i15) {
                    int i16 = iArr[i14];
                    iArr[i14] = i12;
                    iArr[i15] = i16;
                    i14++;
                    i15--;
                }
                if (i14 > i15) {
                    break;
                }
            } else {
                i14++;
            }
        }
        if (i10 < i15) {
            quickSort(iArr, i10, i15);
        }
        if (i14 < i11) {
            quickSort(iArr, i14, i11);
        }
    }

    public static String normalizeCRs(String str, String str2) {
        return new String(normalizeCRs(str.toCharArray(), str2.toCharArray()));
    }

    private static void quickSort(Object[] objArr, int i10, int i11, Comparer comparer) {
        Object obj = objArr[((i11 - i10) / 2) + i10];
        int i12 = i10;
        int i13 = i11;
        while (true) {
            if (comparer.compare(objArr[i12], obj) >= 0) {
                while (comparer.compare(obj, objArr[i13]) < 0) {
                    i13--;
                }
                if (i12 <= i13) {
                    Object obj2 = objArr[i12];
                    objArr[i12] = objArr[i13];
                    objArr[i13] = obj2;
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
            quickSort(objArr, i10, i13, comparer);
        }
        if (i12 < i11) {
            quickSort(objArr, i12, i11, comparer);
        }
    }

    public static Object getAnnotationMemberValue(MemberValuePair memberValuePair, Constant constant) {
        if (constant == null) {
            memberValuePair.valueKind = 14;
            return null;
        }
        switch (constant.typeID()) {
            case 2:
                memberValuePair.valueKind = 4;
                return Character.valueOf(constant.charValue());
            case 3:
                memberValuePair.valueKind = 2;
                return Byte.valueOf(constant.byteValue());
            case 4:
                memberValuePair.valueKind = 3;
                return Short.valueOf(constant.shortValue());
            case 5:
                memberValuePair.valueKind = 8;
                return Boolean.valueOf(constant.booleanValue());
            case 6:
            default:
                memberValuePair.valueKind = 14;
                return null;
            case 7:
                memberValuePair.valueKind = 7;
                return Long.valueOf(constant.longValue());
            case 8:
                memberValuePair.valueKind = 6;
                return new Double(constant.doubleValue());
            case 9:
                memberValuePair.valueKind = 5;
                return new Float(constant.floatValue());
            case 10:
                memberValuePair.valueKind = 1;
                return Integer.valueOf(constant.intValue());
            case 11:
                memberValuePair.valueKind = 9;
                return constant.stringValue();
        }
    }

    private static void quickSort(String[] strArr, int i10, int i11) {
        String str = strArr[((i11 - i10) / 2) + i10];
        int i12 = i10;
        int i13 = i11;
        while (true) {
            if (strArr[i12].compareTo(str) >= 0) {
                while (str.compareTo(strArr[i13]) < 0) {
                    i13--;
                }
                if (i12 <= i13) {
                    String str2 = strArr[i12];
                    strArr[i12] = strArr[i13];
                    strArr[i13] = str2;
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
            quickSort(strArr, i10, i13);
        }
        if (i12 < i11) {
            quickSort(strArr, i12, i11);
        }
    }

    public static JavaElement getUnresolvedJavaElement(TypeBinding typeBinding, WorkingCopyOwner workingCopyOwner, BindingsToNodesMap bindingsToNodesMap) {
        ReferenceBinding referenceBinding;
        if (typeBinding == null) {
            return null;
        }
        int kind = typeBinding.kind();
        if (kind != 68) {
            if (kind == 132 || kind == 516 || kind == 8196 || typeBinding.isCapture()) {
                return null;
            }
            if (!typeBinding.isParameterizedType() && !typeBinding.isRawType()) {
                referenceBinding = (ReferenceBinding) typeBinding;
            } else {
                referenceBinding = (ReferenceBinding) typeBinding.erasure();
            }
            char[] fileName = referenceBinding.getFileName();
            if (!referenceBinding.isLocalType() && !referenceBinding.isAnonymousType()) {
                if (referenceBinding.isTypeVariable()) {
                    String str = new String(referenceBinding.sourceName());
                    Binding binding = ((TypeVariableBinding) referenceBinding).declaringElement;
                    if (binding instanceof MethodBinding) {
                        return (JavaElement) ((IMethod) getUnresolvedJavaElement((MethodBinding) binding, workingCopyOwner, bindingsToNodesMap)).getTypeParameter(str);
                    }
                    IType iType = (IType) getUnresolvedJavaElement((TypeBinding) binding, workingCopyOwner, bindingsToNodesMap);
                    if (iType == null) {
                        return null;
                    }
                    return (JavaElement) iType.getTypeParameter(str);
                }
                if (fileName == null) {
                    return null;
                }
                ReferenceBinding enclosingType = typeBinding.enclosingType();
                if (enclosingType == null) {
                    if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(fileName)) {
                        ClassFile classFile = (ClassFile) getClassFile(fileName);
                        if (classFile == null) {
                            return null;
                        }
                        return (JavaElement) classFile.getType();
                    }
                    ICompilationUnit compilationUnit = getCompilationUnit(fileName, workingCopyOwner);
                    if (compilationUnit == null) {
                        return null;
                    }
                    return (JavaElement) compilationUnit.getType(new String(referenceBinding.sourceName()));
                }
                IType iType2 = (IType) getUnresolvedJavaElement(enclosingType, workingCopyOwner, bindingsToNodesMap);
                if (iType2 == null) {
                    return null;
                }
                return (JavaElement) iType2.getType(new String(referenceBinding.sourceName()));
            }
            if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(fileName)) {
                int indexOf = CharOperation.indexOf('|', fileName);
                int lastIndexOf = CharOperation.lastIndexOf('/', fileName);
                if (lastIndexOf == -1) {
                    lastIndexOf = CharOperation.lastIndexOf(File.separatorChar, fileName);
                }
                if (indexOf != -1 && lastIndexOf < indexOf) {
                    lastIndexOf = indexOf;
                }
                if (lastIndexOf == -1) {
                    return null;
                }
                IPackageFragment packageFragment = getPackageFragment(fileName, lastIndexOf, indexOf);
                char[] constantPoolName = referenceBinding.constantPoolName();
                if (constantPoolName == null) {
                    ClassFile classFile2 = (ClassFile) getClassFile(fileName);
                    if (classFile2 == null) {
                        return null;
                    }
                    return (JavaElement) classFile2.getType();
                }
                return (JavaElement) ((ClassFile) packageFragment.getClassFile(new String(CharOperation.subarray(constantPoolName, CharOperation.lastIndexOf('/', constantPoolName) + 1, constantPoolName.length)) + ".class")).getType();
            }
            ICompilationUnit compilationUnit2 = getCompilationUnit(fileName, workingCopyOwner);
            if (compilationUnit2 == null) {
                return null;
            }
            try {
                return (JavaElement) compilationUnit2.getElementAt(((LocalTypeBinding) referenceBinding).sourceStart);
            } catch (JavaModelException unused) {
                return null;
            }
        }
        return getUnresolvedJavaElement(((ArrayBinding) typeBinding).leafComponentType(), workingCopyOwner, bindingsToNodesMap);
    }
}
