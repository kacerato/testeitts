package org.eclipse.jdt.internal.core.nd.java;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import okhttp3.v;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.nd.util.CharArrayUtils;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;

public class JavaNames {
    private static final char[] CLASS_FILE_SUFFIX = ".class".toCharArray();
    public static final char[] FIELD_DESCRIPTOR_PREFIX = {'L'};
    private static final char[] FIELD_DESCRIPTOR_SUFFIX = {';'};
    private static final char[] METHOD_ID_SEPARATOR = {JavaElement.JEM_IMPORTDECLARATION};
    private static final char[] JAR_FILE_ENTRY_SEPARATOR = "|".toCharArray();
    public static final char[] ARRAY_FIELD_DESCRIPTOR_PREFIX = {'['};

    public static char[] binaryNameToFieldDescriptor(char[] cArr) {
        return CharArrayUtils.concat(FIELD_DESCRIPTOR_PREFIX, cArr, FIELD_DESCRIPTOR_SUFFIX);
    }

    public static char[] binaryNameToFullyQualifiedName(char[] cArr) {
        return CharOperation.replaceOnCopy(cArr, '/', '.');
    }

    public static char[] binaryNameToResourceRelativePath(char[] cArr) {
        return CharOperation.concat(cArr, CLASS_FILE_SUFFIX);
    }

    public static char[] binaryNameToSimpleName(char[] cArr) {
        return CharArrayUtils.subarray(cArr, Math.max(Math.max(CharOperation.lastIndexOf('$', cArr), CharOperation.lastIndexOf('.', cArr)), CharOperation.lastIndexOf('/', cArr)) + 1);
    }

    public static String classFilePathToBinaryName(String str) {
        return str.endsWith(".class") ? str.substring(0, str.length() - 6) : str;
    }

    public static char[] fieldDescriptorToBinaryName(char[] cArr) {
        return CharArrayUtils.startsWith(cArr, 'L') ? CharArrayUtils.subarray(cArr, 1, cArr.length - 1) : CharArrayUtils.EMPTY_CHAR_ARRAY;
    }

    public static char[] fieldDescriptorToJavaName(char[] cArr, boolean z10) {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer();
        int i10 = 0;
        int i11 = 0;
        while (i10 < cArr.length) {
            char c10 = cArr[i10];
            if (c10 == 'F') {
                charArrayBuffer.append(TypedValues.Custom.S_FLOAT);
            } else if (c10 == 'L') {
                char[] subarray = CharArrayUtils.subarray(cArr, i10 + 1, cArr.length - 1);
                if (z10) {
                    CharOperation.replace(subarray, '/', '.');
                    charArrayBuffer.append(subarray);
                } else {
                    charArrayBuffer.append(binaryNameToSimpleName(subarray));
                }
                i10 += subarray.length;
            } else if (c10 == 'S') {
                charArrayBuffer.append("short");
            } else if (c10 == 'I') {
                charArrayBuffer.append("int");
            } else if (c10 == 'J') {
                charArrayBuffer.append("long");
            } else if (c10 == 'Z') {
                charArrayBuffer.append(TypedValues.Custom.S_BOOLEAN);
            } else if (c10 != '[') {
                switch (c10) {
                    case 'B':
                        charArrayBuffer.append("byte");
                        break;
                    case 'C':
                        charArrayBuffer.append("char");
                        break;
                    case 'D':
                        charArrayBuffer.append("double");
                        break;
                }
            } else {
                i11++;
            }
            i10++;
        }
        while (true) {
            i11--;
            if (i11 < 0) {
                return CharArrayUtils.notNull(charArrayBuffer.getContents());
            }
            charArrayBuffer.append(v.f99450n);
        }
    }

    public static char[] fieldDescriptorToSimpleName(char[] cArr) {
        if (!CharArrayUtils.startsWith(cArr, 'L') || !CharArrayUtils.endsWith(cArr, ';')) {
            return null;
        }
        int lastIndexOf = CharArrayUtils.lastIndexOf('/', cArr);
        if (lastIndexOf == -1) {
            lastIndexOf = 0;
        }
        return CharArrayUtils.subarray(cArr, lastIndexOf + 1, cArr.length - 1);
    }

    public static char[] fullyQualifiedNameToBinaryName(char[] cArr) {
        return CharOperation.replaceOnCopy(cArr, '.', '/');
    }

    public static char[] fullyQualifiedNameToFieldDescriptor(char[] cArr) {
        char[] concat = CharArrayUtils.concat(FIELD_DESCRIPTOR_PREFIX, cArr, FIELD_DESCRIPTOR_SUFFIX);
        CharOperation.replace(concat, '.', '/');
        return concat;
    }

    public static char[] getIndexPathFor(NdType ndType, IWorkspaceRoot iWorkspaceRoot) {
        NdResourceFile resourceFile = ndType.getResourceFile();
        char[] binaryName = ndType.getTypeId().getBinaryName();
        char[] charArray = iWorkspaceRoot != null ? resourceFile.getAnyOpenWorkspaceLocation(iWorkspaceRoot).toString().toCharArray() : null;
        if (charArray == null || charArray.length == 0) {
            charArray = resourceFile.getLocation().getChars();
        }
        return CharArrayUtils.concat(charArray, JAR_FILE_ENTRY_SEPARATOR, binaryNameToResourceRelativePath(binaryName));
    }

    public static char[] getMethodId(char[] cArr, char[] cArr2) {
        return CharArrayUtils.concat(FIELD_DESCRIPTOR_PREFIX, cArr, METHOD_ID_SEPARATOR, cArr2);
    }

    public static char[] simpleNameToSourceName(char[] cArr) {
        int lastIndexOf = CharOperation.lastIndexOf('/', cArr);
        int lastIndexOf2 = CharOperation.lastIndexOf('$', cArr);
        int max = Math.max(Math.max(lastIndexOf, lastIndexOf2), CharOperation.lastIndexOf('.', cArr));
        do {
            max++;
            if (max >= cArr.length) {
                break;
            }
        } while (Character.isDigit(cArr[max]));
        return CharArrayUtils.subarray(cArr, max);
    }

    public static char[] getMethodId(char[] cArr, char[] cArr2, char[] cArr3) {
        return CharArrayUtils.concat(FIELD_DESCRIPTOR_PREFIX, cArr, METHOD_ID_SEPARATOR, cArr2, cArr3);
    }
}
