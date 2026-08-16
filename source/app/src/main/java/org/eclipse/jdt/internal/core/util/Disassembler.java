package org.eclipse.jdt.internal.core.util;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.constant.ConstantDescs;
import org.apache.commons.lang3.concurrent.AbstractCircuitBreaker;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.util.ClassFileBytesDisassembler;
import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAnnotation;
import org.eclipse.jdt.core.util.IAnnotationComponent;
import org.eclipse.jdt.core.util.IAnnotationComponentValue;
import org.eclipse.jdt.core.util.IAnnotationDefaultAttribute;
import org.eclipse.jdt.core.util.IAttributeNamesConstants;
import org.eclipse.jdt.core.util.IBootstrapMethodsAttribute;
import org.eclipse.jdt.core.util.IBootstrapMethodsEntry;
import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IClassFileReader;
import org.eclipse.jdt.core.util.ICodeAttribute;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IConstantPoolEntry2;
import org.eclipse.jdt.core.util.IConstantValueAttribute;
import org.eclipse.jdt.core.util.IEnclosingMethodAttribute;
import org.eclipse.jdt.core.util.IExceptionAttribute;
import org.eclipse.jdt.core.util.IExceptionTableEntry;
import org.eclipse.jdt.core.util.IExtendedAnnotation;
import org.eclipse.jdt.core.util.IFieldInfo;
import org.eclipse.jdt.core.util.IInnerClassesAttribute;
import org.eclipse.jdt.core.util.IInnerClassesAttributeEntry;
import org.eclipse.jdt.core.util.ILineNumberAttribute;
import org.eclipse.jdt.core.util.ILocalVariableAttribute;
import org.eclipse.jdt.core.util.ILocalVariableReferenceInfo;
import org.eclipse.jdt.core.util.ILocalVariableTableEntry;
import org.eclipse.jdt.core.util.ILocalVariableTypeTableAttribute;
import org.eclipse.jdt.core.util.ILocalVariableTypeTableEntry;
import org.eclipse.jdt.core.util.IMethodInfo;
import org.eclipse.jdt.core.util.IMethodParametersAttribute;
import org.eclipse.jdt.core.util.IModuleAttribute;
import org.eclipse.jdt.core.util.IModuleMainClassAttribute;
import org.eclipse.jdt.core.util.IModulePackagesAttribute;
import org.eclipse.jdt.core.util.INestHostAttribute;
import org.eclipse.jdt.core.util.INestMemberAttributeEntry;
import org.eclipse.jdt.core.util.INestMembersAttribute;
import org.eclipse.jdt.core.util.IPackageVisibilityInfo;
import org.eclipse.jdt.core.util.IParameterAnnotation;
import org.eclipse.jdt.core.util.IProvidesInfo;
import org.eclipse.jdt.core.util.IRequiresInfo;
import org.eclipse.jdt.core.util.IRuntimeInvisibleAnnotationsAttribute;
import org.eclipse.jdt.core.util.IRuntimeInvisibleParameterAnnotationsAttribute;
import org.eclipse.jdt.core.util.IRuntimeInvisibleTypeAnnotationsAttribute;
import org.eclipse.jdt.core.util.IRuntimeVisibleAnnotationsAttribute;
import org.eclipse.jdt.core.util.IRuntimeVisibleParameterAnnotationsAttribute;
import org.eclipse.jdt.core.util.IRuntimeVisibleTypeAnnotationsAttribute;
import org.eclipse.jdt.core.util.ISignatureAttribute;
import org.eclipse.jdt.core.util.ISourceAttribute;
import org.eclipse.jdt.core.util.IStackMapAttribute;
import org.eclipse.jdt.core.util.IStackMapFrame;
import org.eclipse.jdt.core.util.IStackMapTableAttribute;
import org.eclipse.jdt.core.util.IVerificationTypeInfo;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.codegen.AttributeNamesConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.C15883c;

public class Disassembler extends ClassFileBytesDisassembler {
    private static final char[] ANY_EXCEPTION = Messages.classfileformat_anyexceptionhandler.toCharArray();
    private static final String VERSION_UNKNOWN = Messages.classfileformat_versionUnknown;

    private boolean appendModifier(StringBuffer stringBuffer, int i10, int i11, String str, boolean z10) {
        if ((i10 & i11) != 0) {
            if (!z10) {
                stringBuffer.append(Messages.disassembler_space);
            }
            if (z10) {
                z10 = false;
            }
            stringBuffer.append(str);
        }
        return z10;
    }

    private String[] bootstrapArgumentsDescription(IBootstrapMethodsEntry iBootstrapMethodsEntry, IConstantPool iConstantPool) {
        if (iBootstrapMethodsEntry.getBootstrapArguments().length == 0) {
            return null;
        }
        int[] bootstrapArguments = iBootstrapMethodsEntry.getBootstrapArguments();
        String[] strArr = new String[bootstrapArguments.length];
        int length = bootstrapArguments.length;
        for (int i10 = 0; i10 < length; i10++) {
            ConstantPoolEntry constantPoolEntry = (ConstantPoolEntry) iConstantPool.decodeEntry(bootstrapArguments[i10]);
            int kind = constantPoolEntry.getKind();
            if (kind == 3) {
                strArr[i10] = Integer.valueOf(constantPoolEntry.getIntegerValue()).toString();
            } else if (kind == 15) {
                ConstantPoolEntry2 constantPoolEntry2 = (ConstantPoolEntry2) constantPoolEntry;
                StringBuilder sb2 = new StringBuilder(10);
                int referenceKind = constantPoolEntry2.getReferenceKind();
                if (referenceKind != 5) {
                    if (referenceKind == 6) {
                        sb2.append("invokestatic ");
                    } else if (referenceKind != 8) {
                    }
                }
                sb2.append(Messages.bind("{0}.{1}:{2}", (Object[]) methodDescription((ConstantPoolEntry) iConstantPool.decodeEntry(constantPoolEntry2.getReferenceIndex()))));
                strArr[i10] = sb2.toString();
            } else if (kind == 16) {
                strArr[i10] = new String(((ConstantPoolEntry2) constantPoolEntry).getMethodDescriptor());
            }
        }
        return strArr;
    }

    private String bootstrapMethodDescription(IBootstrapMethodsEntry iBootstrapMethodsEntry, IConstantPool iConstantPool) {
        ConstantPoolEntry2 constantPoolEntry2 = (ConstantPoolEntry2) iConstantPool.decodeEntry(iBootstrapMethodsEntry.getBootstrapMethodReference());
        if (constantPoolEntry2.getReferenceKind() != 6) {
            return null;
        }
        return Messages.bind("invokestatic {0}.{1}:{2}", (Object[]) methodDescription((ConstantPoolEntry) iConstantPool.decodeEntry(constantPoolEntry2.getReferenceIndex())));
    }

    private boolean checkMode(int i10, int i11) {
        return (i10 & i11) != 0;
    }

    private void convertModuleNames(StringBuffer stringBuffer, char[] cArr) {
        stringBuffer.append(CharOperation.replaceOnCopy(CharOperation.replaceOnCopy(cArr, '$', '.'), '/', '.'));
    }

    private void decodeModifiers(StringBuffer stringBuffer, int i10, int[] iArr) {
        decodeModifiers(stringBuffer, i10, false, false, iArr);
    }

    private void decodeModifiersForField(StringBuffer stringBuffer, int i10) {
        decodeModifiers(stringBuffer, i10, new int[]{1, 4, 2, 8, 16, 128, 64, 16384});
    }

    private void decodeModifiersForFieldForWorkingCopy(StringBuffer stringBuffer, int i10) {
        decodeModifiers(stringBuffer, i10, new int[]{1, 4, 2, 8, 16, 128, 64});
    }

    private final void decodeModifiersForInnerClasses(StringBuffer stringBuffer, int i10, boolean z10) {
        decodeModifiers(stringBuffer, i10, z10, false, new int[]{1, 4, 2, 1024, 8, 16});
    }

    private final void decodeModifiersForMethod(StringBuffer stringBuffer, int i10) {
        decodeModifiers(stringBuffer, i10, false, true, new int[]{1, 4, 2, 1024, 8, 16, 32, 256, 2048, 64});
    }

    private final void decodeModifiersForMethodParameters(StringBuffer stringBuffer, int i10) {
        decodeModifiers(stringBuffer, i10, false, true, new int[]{16, 32768, 4096});
    }

    private final void decodeModifiersForModule(StringBuffer stringBuffer, int i10) {
        appendModifier(stringBuffer, i10, 32, AbstractCircuitBreaker.PROPERTY_NAME, true);
        stringBuffer.append(Messages.disassembler_space);
    }

    private final void decodeModifiersForModuleRequires(StringBuffer stringBuffer, int i10) {
        boolean appendModifier;
        int[] iArr = {32, 64};
        boolean z10 = true;
        for (int i11 = 0; i11 < 2; i11++) {
            int i12 = iArr[i11];
            if (i12 == 32) {
                appendModifier = appendModifier(stringBuffer, i10, 32, "transitive", z10);
            } else if (i12 == 64) {
                appendModifier = appendModifier(stringBuffer, i10, 64, "protected", z10);
            }
            z10 = appendModifier;
        }
        if (z10) {
            return;
        }
        stringBuffer.append(Messages.disassembler_space);
    }

    private final void decodeModifiersForType(StringBuffer stringBuffer, int i10) {
        decodeModifiers(stringBuffer, i10, new int[]{1, 1024, 16});
    }

    public static String decodeStringValue(char[] cArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (char c10 : cArr) {
            org.eclipse.jdt.internal.compiler.util.Util.appendEscapedChar(stringBuffer, c10, true);
        }
        return stringBuffer.toString();
    }

    private void disassembleAsModifier(IAnnotation iAnnotation, StringBuffer stringBuffer, String str, int i10, int i11) {
        char[] replaceOnCopy = CharOperation.replaceOnCopy(iAnnotation.getTypeName(), '/', '.');
        stringBuffer.append('@');
        stringBuffer.append(returnClassName(Signature.toCharArray(replaceOnCopy), '.', i11));
        IAnnotationComponent[] components = iAnnotation.getComponents();
        int length = components.length;
        if (length != 0) {
            stringBuffer.append('(');
            for (int i12 = 0; i12 < length; i12++) {
                if (i12 > 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                    writeNewLine(stringBuffer, str, i10);
                }
                disassembleAsModifier(components[i12], stringBuffer, str, i10 + 1, i11);
            }
            stringBuffer.append(')');
        }
    }

    private void disassembleEnumConstants(IFieldInfo iFieldInfo, StringBuffer stringBuffer, String str, int i10, char[][] cArr, int i11) {
        writeNewLine(stringBuffer, str, i10);
        IClassFileAttribute attribute = Util.getAttribute(iFieldInfo, IAttributeNamesConstants.RUNTIME_VISIBLE_ANNOTATIONS);
        IClassFileAttribute attribute2 = Util.getAttribute(iFieldInfo, IAttributeNamesConstants.RUNTIME_INVISIBLE_ANNOTATIONS);
        if (attribute2 != null) {
            disassembleAsModifier((IRuntimeInvisibleAnnotationsAttribute) attribute2, stringBuffer, str, i10, i11);
            writeNewLine(stringBuffer, str, i10);
        }
        if (attribute != null) {
            disassembleAsModifier((IRuntimeVisibleAnnotationsAttribute) attribute, stringBuffer, str, i10, i11);
            writeNewLine(stringBuffer, str, i10);
        }
        stringBuffer.append(new String(iFieldInfo.getName()));
        stringBuffer.append('(');
        int length = cArr.length;
        if (length != 0) {
            for (int i12 = 0; i12 < length; i12++) {
                if (i12 != 0) {
                    stringBuffer.append(Messages.disassembler_comma);
                }
                char[] cArr2 = cArr[i12];
                if (cArr2.length != 1) {
                    stringBuffer.append("null");
                } else {
                    char c10 = cArr2[0];
                    if (c10 != 'F' && c10 != 'S') {
                        if (c10 != 'Z') {
                            if (c10 != 'I' && c10 != 'J') {
                                switch (c10) {
                                    case 'C':
                                        stringBuffer.append("' '");
                                        break;
                                }
                            }
                        } else {
                            stringBuffer.append("false");
                        }
                    }
                    stringBuffer.append('0');
                }
            }
        }
        stringBuffer.append(')');
        stringBuffer.append(Messages.disassembler_comma);
    }

    private void disassembleEnumConstructor(IClassFileReader iClassFileReader, char[] cArr, IMethodInfo iMethodInfo, StringBuffer stringBuffer, String str, int i10, int i11) {
        writeNewLine(stringBuffer, str, i10);
        ICodeAttribute codeAttribute = iMethodInfo.getCodeAttribute();
        IMethodParametersAttribute iMethodParametersAttribute = (IMethodParametersAttribute) Util.getAttribute(iMethodInfo, IAttributeNamesConstants.METHOD_PARAMETERS);
        char[] descriptor = iMethodInfo.getDescriptor();
        IClassFileAttribute attribute = Util.getAttribute(iMethodInfo, IAttributeNamesConstants.RUNTIME_VISIBLE_ANNOTATIONS);
        IClassFileAttribute attribute2 = Util.getAttribute(iMethodInfo, IAttributeNamesConstants.RUNTIME_INVISIBLE_ANNOTATIONS);
        if (attribute2 != null) {
            disassembleAsModifier((IRuntimeInvisibleAnnotationsAttribute) attribute2, stringBuffer, str, i10, i11);
            writeNewLine(stringBuffer, str, i10);
        }
        if (attribute != null) {
            disassembleAsModifier((IRuntimeVisibleAnnotationsAttribute) attribute, stringBuffer, str, i10, i11);
            writeNewLine(stringBuffer, str, i10);
        }
        int accessFlags = iMethodInfo.getAccessFlags();
        decodeModifiersForMethod(stringBuffer, accessFlags & 2);
        CharOperation.replace(descriptor, '/', '.');
        char[] charArray = Signature.toCharArray(descriptor, returnClassName(cArr, '.', 8), getParameterNames(descriptor, codeAttribute, iMethodParametersAttribute, accessFlags), !checkMode(i11, 8), false, (accessFlags & 128) != 0);
        int indexOf = CharOperation.indexOf(IIndexConstants.PARAMETER_SEPARATOR, charArray, CharOperation.indexOf(IIndexConstants.PARAMETER_SEPARATOR, charArray) + 1);
        stringBuffer.append(charArray, 0, CharOperation.indexOf('(', charArray) + 1);
        stringBuffer.append(charArray, indexOf + 2, (charArray.length - indexOf) - 2);
        IExceptionAttribute exceptionAttribute = iMethodInfo.getExceptionAttribute();
        if (exceptionAttribute != null) {
            stringBuffer.append(" throws ");
            char[][] exceptionNames = exceptionAttribute.getExceptionNames();
            int length = exceptionNames.length;
            for (int i12 = 0; i12 < length; i12++) {
                if (i12 != 0) {
                    stringBuffer.append(Messages.disassembler_comma);
                    stringBuffer.append(Messages.disassembler_space);
                }
                char[] cArr2 = exceptionNames[i12];
                CharOperation.replace(cArr2, '/', '.');
                stringBuffer.append(returnClassName(cArr2, '.', i11));
            }
        }
        if ((accessFlags & 256) != 0 || (accessFlags & 1024) != 0) {
            stringBuffer.append(';');
            return;
        }
        stringBuffer.append(" {");
        char[] returnType = Signature.getReturnType(descriptor);
        if (returnType.length == 1) {
            char c10 = returnType[0];
            if (c10 != 'F' && c10 != 'S') {
                if (c10 != 'V') {
                    if (c10 != 'I' && c10 != 'J') {
                        switch (c10) {
                            case 'B':
                            case 'C':
                            case 'D':
                                break;
                            default:
                                writeNewLine(stringBuffer, str, i10 + 1);
                                stringBuffer.append("return false;");
                                writeNewLine(stringBuffer, str, i10);
                                break;
                        }
                    }
                } else {
                    writeNewLine(stringBuffer, str, i10);
                }
            }
            writeNewLine(stringBuffer, str, i10 + 1);
            stringBuffer.append("return 0;");
            writeNewLine(stringBuffer, str, i10);
        } else {
            writeNewLine(stringBuffer, str, i10 + 1);
            stringBuffer.append("return null;");
            writeNewLine(stringBuffer, str, i10);
        }
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
    }

    private void disassembleGenericSignature(int i10, StringBuffer stringBuffer, char[] cArr) {
        CharOperation.replace(cArr, '/', '.');
        char[][] typeParameters = Signature.getTypeParameters(cArr);
        int length = typeParameters.length;
        if (length != 0) {
            stringBuffer.append('<');
            for (int i11 = 0; i11 < length; i11++) {
                if (i11 != 0) {
                    stringBuffer.append(Messages.disassembler_comma);
                }
                char[] cArr2 = typeParameters[i11];
                stringBuffer.append(cArr2, 0, CharOperation.indexOf(':', cArr2));
                char[][] typeParameterBounds = Signature.getTypeParameterBounds(typeParameters[i11]);
                int length2 = typeParameterBounds.length;
                if (length2 != 0) {
                    if (length2 == 1) {
                        char[] cArr3 = typeParameterBounds[0];
                        if (!isJavaLangObject(Signature.toCharArray(cArr3))) {
                            stringBuffer.append(" extends ");
                            stringBuffer.append(returnClassName(Signature.toCharArray(cArr3), '.', i10));
                        }
                    } else {
                        stringBuffer.append(" extends ");
                        for (int i12 = 0; i12 < length2; i12++) {
                            if (i12 != 0) {
                                stringBuffer.append(" & ");
                            }
                            stringBuffer.append(returnClassName(Signature.toCharArray(typeParameterBounds[i12]), '.', i10));
                        }
                    }
                }
            }
            stringBuffer.append('>');
        }
    }

    private void disassembleModule(IModuleAttribute iModuleAttribute, StringBuffer stringBuffer, String str, int i10) {
        writeNewLine(stringBuffer, str, i10);
        char[] moduleVersionValue = iModuleAttribute.getModuleVersionValue();
        if (moduleVersionValue == null) {
            moduleVersionValue = Messages.disassembler_module_version_none.toCharArray();
        }
        stringBuffer.append(Messages.bind(Messages.disassembler_module_version, new String(moduleVersionValue)));
        IRequiresInfo[] requiresInfo = iModuleAttribute.getRequiresInfo();
        if (requiresInfo.length > 0) {
            writeNewLine(stringBuffer, str, 0);
            for (IRequiresInfo iRequiresInfo : requiresInfo) {
                writeNewLine(stringBuffer, str, i10);
                disassemble(iRequiresInfo, stringBuffer, str, i10);
            }
        }
        IPackageVisibilityInfo[] exportsInfo = iModuleAttribute.getExportsInfo();
        if (exportsInfo.length > 0) {
            writeNewLine(stringBuffer, str, 0);
            for (IPackageVisibilityInfo iPackageVisibilityInfo : exportsInfo) {
                writeNewLine(stringBuffer, str, i10);
                disassemble(iPackageVisibilityInfo, stringBuffer, str, i10, true);
            }
        }
        IPackageVisibilityInfo[] opensInfo = iModuleAttribute.getOpensInfo();
        if (opensInfo.length > 0) {
            writeNewLine(stringBuffer, str, 0);
            for (IPackageVisibilityInfo iPackageVisibilityInfo2 : opensInfo) {
                writeNewLine(stringBuffer, str, i10);
                disassemble(iPackageVisibilityInfo2, stringBuffer, str, i10, false);
            }
        }
        char[][] usesClassNames = iModuleAttribute.getUsesClassNames();
        if (usesClassNames.length > 0) {
            writeNewLine(stringBuffer, str, 0);
            for (char[] cArr : usesClassNames) {
                writeNewLine(stringBuffer, str, i10);
                stringBuffer.append("uses " + CharOperation.charToString(CharOperation.replaceOnCopy(cArr, '/', '.')));
            }
        }
        IProvidesInfo[] providesInfo = iModuleAttribute.getProvidesInfo();
        if (providesInfo.length > 0) {
            writeNewLine(stringBuffer, str, 0);
            for (IProvidesInfo iProvidesInfo : providesInfo) {
                writeNewLine(stringBuffer, str, i10);
                disassemble(iProvidesInfo, stringBuffer, str, i10);
            }
        }
    }

    private void disassembleTargetTypeContents(boolean z10, int i10, IExtendedAnnotation iExtendedAnnotation, StringBuffer stringBuffer, String str, int i11, int i12) {
        if (i10 == 0 || i10 == 1) {
            stringBuffer.append(Messages.bind(Messages.disassembler_extendedannotation_type_parameter, (Object[]) new String[]{Integer.toString(iExtendedAnnotation.getTypeParameterIndex())}));
            return;
        }
        if (i10 == 22) {
            stringBuffer.append(Messages.bind(Messages.disassembler_extendedannotation_method_parameter, (Object[]) new String[]{Integer.toString(iExtendedAnnotation.getParameterIndex())}));
            return;
        }
        if (i10 == 23) {
            stringBuffer.append(Messages.bind(Messages.disassembler_extendedannotation_throws, (Object[]) new String[]{Integer.toString(iExtendedAnnotation.getAnnotationTypeIndex())}));
            return;
        }
        switch (i10) {
            case 16:
                stringBuffer.append(Messages.bind(Messages.disassembler_extendedannotation_classextendsimplements, (Object[]) new String[]{Integer.toString(iExtendedAnnotation.getAnnotationTypeIndex())}));
                return;
            case 17:
            case 18:
                stringBuffer.append(Messages.bind(Messages.disassembler_extendedannotation_type_parameter_with_bound, (Object[]) new String[]{Integer.toString(iExtendedAnnotation.getTypeParameterIndex()), Integer.toString(iExtendedAnnotation.getTypeParameterBoundIndex())}));
                return;
            default:
                switch (i10) {
                    case 64:
                    case 65:
                        stringBuffer.append(Messages.disassembler_localvariabletargetheader);
                        int i13 = i11 + 3;
                        writeNewLine(stringBuffer, str, i13);
                        int localVariableRefenceInfoLength = iExtendedAnnotation.getLocalVariableRefenceInfoLength();
                        ILocalVariableReferenceInfo[] localVariableTable = iExtendedAnnotation.getLocalVariableTable();
                        for (int i14 = 0; i14 < localVariableRefenceInfoLength; i14++) {
                            if (i14 != 0) {
                                writeNewLine(stringBuffer, str, i13);
                            }
                            ILocalVariableReferenceInfo iLocalVariableReferenceInfo = localVariableTable[i14];
                            int index = iLocalVariableReferenceInfo.getIndex();
                            int startPC = iLocalVariableReferenceInfo.getStartPC();
                            stringBuffer.append(Messages.bind(Messages.classfileformat_localvariablereferenceinfoentry, (Object[]) new String[]{Integer.toString(startPC), Integer.toString(startPC + iLocalVariableReferenceInfo.getLength()), Integer.toString(index)}));
                        }
                        return;
                    case 66:
                        stringBuffer.append(Messages.bind(Messages.disassembler_extendedannotation_exception_table_index, (Object[]) new String[]{Integer.toString(iExtendedAnnotation.getExceptionTableIndex())}));
                        return;
                    case 67:
                    case 68:
                    case 69:
                    case 70:
                        stringBuffer.append(Messages.bind(Messages.disassembler_extendedannotation_offset, (Object[]) new String[]{Integer.toString(iExtendedAnnotation.getOffset())}));
                        return;
                    case 71:
                    case 72:
                    case 73:
                    case 74:
                    case 75:
                        stringBuffer.append(Messages.bind(Messages.disassembler_extendedannotation_offset, (Object[]) new String[]{Integer.toString(iExtendedAnnotation.getOffset())}));
                        writeNewLine(stringBuffer, str, i11 + 2);
                        stringBuffer.append(Messages.bind(Messages.disassembler_extendedannotation_type_argument, (Object[]) new String[]{Integer.toString(iExtendedAnnotation.getAnnotationTypeIndex())}));
                        return;
                    default:
                        return;
                }
        }
    }

    private void disassembleTypeMembers(IClassFileReader iClassFileReader, char[] cArr, StringBuffer stringBuffer, String str, int i10, int i11, boolean z10) {
        int i12;
        char c10;
        int i13;
        int i14;
        int i15;
        IFieldInfo[] fieldInfos = iClassFileReader.getFieldInfos();
        if (!z10 || !checkMode(i11, 16)) {
            for (IFieldInfo iFieldInfo : fieldInfos) {
                writeNewLine(stringBuffer, str, i10);
                disassemble(iFieldInfo, stringBuffer, str, i10, i11);
            }
            IMethodInfo[] methodInfos = iClassFileReader.getMethodInfos();
            int i16 = 0;
            for (int length = methodInfos.length; i16 < length; length = length) {
                writeNewLine(stringBuffer, str, i10);
                disassemble(iClassFileReader, cArr, methodInfos[i16], stringBuffer, str, i10, i11);
                i16++;
            }
            return;
        }
        int length2 = fieldInfos.length;
        IMethodInfo[] methodInfos2 = iClassFileReader.getMethodInfos();
        char[][] constructorArgumentsForEnum = getConstructorArgumentsForEnum(methodInfos2);
        int i17 = 0;
        while (i17 < length2 && (fieldInfos[i17].getAccessFlags() & 16384) != 0) {
            writeNewLine(stringBuffer, str, i10);
            disassembleEnumConstants(fieldInfos[i17], stringBuffer, str, i10, constructorArgumentsForEnum, i11);
            i17++;
            methodInfos2 = methodInfos2;
            length2 = length2;
        }
        int i18 = i17;
        IMethodInfo[] iMethodInfoArr = methodInfos2;
        int i19 = length2;
        char c11 = ';';
        stringBuffer.append(';');
        int i20 = i18;
        int i21 = i19;
        boolean z11 = false;
        while (i20 < i21) {
            char c12 = c11;
            if (z11 || !CharOperation.equals(TypeConstants.SYNTHETIC_ENUM_VALUES, fieldInfos[i20].getName())) {
                writeNewLine(stringBuffer, str, i10);
                i14 = i21;
                i15 = i20;
                disassemble(fieldInfos[i20], stringBuffer, str, i10, i11);
            } else {
                i14 = i21;
                i15 = i20;
                z11 = true;
            }
            i20 = i15 + 1;
            i21 = i14;
            c11 = c12;
        }
        int length3 = iMethodInfoArr.length;
        int i22 = 0;
        while (i22 < length3) {
            IMethodInfo iMethodInfo = iMethodInfoArr[i22];
            if (CharOperation.equals(iMethodInfo.getName(), TypeConstants.VALUES)) {
                char[] descriptor = iMethodInfo.getDescriptor();
                CharOperation.replace(descriptor, '/', '.');
                if (Signature.getParameterCount(descriptor) == 0) {
                    CharOperation.equals(returnClassName(Signature.getReturnType(descriptor), '.', i11), CharOperation.concat(new char[]{'[', 'L'}, cArr, new char[]{c11}));
                }
                i12 = i22;
                c10 = c11;
                i13 = length3;
            } else {
                if (CharOperation.equals(iMethodInfo.getName(), TypeConstants.VALUEOF)) {
                    char[] descriptor2 = iMethodInfo.getDescriptor();
                    CharOperation.replace(descriptor2, '/', '.');
                    char[][] parameterTypes = Signature.getParameterTypes(descriptor2);
                    if (parameterTypes.length == 1 && CharOperation.equals(parameterTypes[0], "Ljava.lang.String;".toCharArray())) {
                        CharOperation.equals(returnClassName(Signature.getReturnType(descriptor2), '.', i11), CharOperation.concat('L', cArr, c11));
                    }
                } else if (!iMethodInfo.isClinit() && !iMethodInfo.isSynthetic()) {
                    if (iMethodInfo.isConstructor()) {
                        writeNewLine(stringBuffer, str, i10);
                        i12 = i22;
                        c10 = c11;
                        i13 = length3;
                        disassembleEnumConstructor(iClassFileReader, cArr, iMethodInfo, stringBuffer, str, i10, i11);
                    } else {
                        i12 = i22;
                        c10 = c11;
                        i13 = length3;
                        writeNewLine(stringBuffer, str, i10);
                        disassemble(iClassFileReader, cArr, iMethodInfo, stringBuffer, str, i10, i11);
                    }
                }
                i12 = i22;
                c10 = c11;
                i13 = length3;
            }
            i22 = i12 + 1;
            c11 = c10;
            length3 = i13;
        }
    }

    private void disassembleTypePathContents(int i10, IExtendedAnnotation iExtendedAnnotation, StringBuffer stringBuffer, String str, int i11, int i12) {
        int[][] typePath = iExtendedAnnotation.getTypePath();
        if (typePath.length != 0) {
            writeNewLine(stringBuffer, str, i11 + 2);
            stringBuffer.append(Messages.bind(Messages.disassembler_extendedannotation_typepath, (Object[]) new String[]{toTypePathString(typePath)}));
        }
    }

    private final String dumpNewLineWithTabs(String str, int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        writeNewLine(stringBuffer, str, i10);
        return String.valueOf(stringBuffer);
    }

    private final void dumpTab(int i10, StringBuffer stringBuffer) {
        for (int i11 = 0; i11 < i10; i11++) {
            stringBuffer.append(Messages.disassembler_indentation);
        }
    }

    private static void escapeChar(StringBuffer stringBuffer, char c10) {
        org.eclipse.jdt.internal.compiler.util.Util.appendEscapedChar(stringBuffer, c10, false);
    }

    public static String escapeString(String str) {
        return decodeStringValue(str);
    }

    private String getArguments(int[] iArr, String[] strArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = iArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            stringBuffer.append(Messages.bind(Messages.disassembler_bootstrapmethodentry_argument, (Object[]) new String[]{Integer.toString(iArr[i10]), strArr[i10]}));
            if (i10 != iArr.length - 1) {
                stringBuffer.append("\n\t\t");
            }
        }
        return String.valueOf(stringBuffer);
    }

    private char[][] getConstructorArgumentsForEnum(IMethodInfo[] iMethodInfoArr) {
        char[][] parameterTypes;
        int length;
        for (IMethodInfo iMethodInfo : iMethodInfoArr) {
            if (iMethodInfo.isConstructor() && (length = (parameterTypes = Signature.getParameterTypes(iMethodInfo.getDescriptor())).length) >= 2) {
                return CharOperation.subarray(parameterTypes, 2, length);
            }
        }
        return null;
    }

    private ILocalVariableTableEntry getEntryFor(int i10, ILocalVariableTableEntry[] iLocalVariableTableEntryArr) {
        for (ILocalVariableTableEntry iLocalVariableTableEntry : iLocalVariableTableEntryArr) {
            if (i10 == iLocalVariableTableEntry.getIndex()) {
                return iLocalVariableTableEntry;
            }
        }
        return null;
    }

    private int getLocalIndex(int i10, int i11, char[] cArr) {
        char c10;
        char[][] parameterTypes = Signature.getParameterTypes(cArr);
        for (int i12 = 0; i12 < i11; i12++) {
            char[] cArr2 = parameterTypes[i12];
            i10 = (cArr2.length == 1 && ((c10 = cArr2[0]) == 'D' || c10 == 'J')) ? i10 + 2 : i10 + 1;
        }
        return i10;
    }

    private char[][] getParameterNames(char[] cArr, ICodeAttribute iCodeAttribute, IMethodParametersAttribute iMethodParametersAttribute, int i10) {
        int parameterCount = Signature.getParameterCount(cArr);
        char[][] cArr2 = new char[parameterCount];
        int i11 = 0;
        if (iMethodParametersAttribute != null) {
            int methodParameterLength = iMethodParametersAttribute.getMethodParameterLength();
            while (i11 < parameterCount) {
                if (i11 >= methodParameterLength || iMethodParametersAttribute.getParameterName(i11) == null) {
                    cArr2[i11] = Messages.disassembler_anonymousparametername.toCharArray();
                } else {
                    cArr2[i11] = iMethodParametersAttribute.getParameterName(i11);
                }
                i11++;
            }
        } else if (iCodeAttribute != null) {
            ILocalVariableAttribute localVariableAttribute = iCodeAttribute.getLocalVariableAttribute();
            if (localVariableAttribute != null) {
                ILocalVariableTableEntry[] localVariableTable = localVariableAttribute.getLocalVariableTable();
                int i12 = (i10 & 8) != 0 ? 0 : 1;
                while (i11 < parameterCount) {
                    ILocalVariableTableEntry entryFor = getEntryFor(getLocalIndex(i12, i11, cArr), localVariableTable);
                    if (entryFor != null) {
                        cArr2[i11] = entryFor.getName();
                    } else {
                        cArr2[i11] = CharOperation.concat(Messages.disassembler_parametername.toCharArray(), Integer.toString(i11).toCharArray());
                    }
                    i11++;
                }
            } else {
                while (i11 < parameterCount) {
                    cArr2[i11] = CharOperation.concat(Messages.disassembler_parametername.toCharArray(), Integer.toString(i11).toCharArray());
                    i11++;
                }
            }
        } else {
            while (i11 < parameterCount) {
                cArr2[i11] = CharOperation.concat(Messages.disassembler_parametername.toCharArray(), Integer.toString(i11).toCharArray());
                i11++;
            }
        }
        return cArr2;
    }

    private String getReferenceKind(int i10) {
        String str;
        switch (i10) {
            case 1:
                str = Messages.disassembler_method_type_ref_getfield;
                break;
            case 2:
                str = Messages.disassembler_method_type_ref_getstatic;
                break;
            case 3:
                str = Messages.disassembler_method_type_ref_putfield;
                break;
            case 4:
                str = Messages.disassembler_method_type_ref_putstatic;
                break;
            case 5:
                str = Messages.disassembler_method_type_ref_invokevirtual;
                break;
            case 6:
                str = Messages.disassembler_method_type_ref_invokestatic;
                break;
            case 7:
                str = Messages.disassembler_method_type_ref_invokespecial;
                break;
            case 8:
            default:
                str = Messages.disassembler_method_type_ref_newinvokespecial;
                break;
            case 9:
                str = Messages.disassembler_method_type_ref_invokeinterface;
                break;
        }
        return Messages.bind(str, (Object[]) new String[]{Integer.toString(i10)});
    }

    private char[] getSignatureForField(char[] cArr) {
        char[] charArray = Signature.toCharArray(CharOperation.replaceOnCopy(CharOperation.replaceOnCopy(cArr, '/', '.'), '$', JavaElement.JEM_PACKAGEDECLARATION));
        CharOperation.replace(charArray, JavaElement.JEM_PACKAGEDECLARATION, '$');
        return charArray;
    }

    private String getTargetType(int i10) {
        if (i10 == 0) {
            return "CLASS_TYPE_PARAMETER";
        }
        if (i10 == 1) {
            return "METHOD_TYPE_PARAMETER";
        }
        switch (i10) {
            case 16:
                return "CLASS_EXTENDS";
            case 17:
                return "CLASS_TYPE_PARAMETER_BOUND";
            case 18:
                return "METHOD_TYPE_PARAMETER_BOUND";
            case 19:
                return "FIELD";
            case 20:
                return "METHOD_RETURN";
            case 21:
                return "METHOD_RECEIVER";
            case 22:
                return "METHOD_FORMAL_PARAMETER";
            case 23:
                return "THROWS";
            default:
                switch (i10) {
                    case 64:
                        return "LOCAL_VARIABLE";
                    case 65:
                        return "RESOURCE_VARIABLE";
                    case 66:
                        return "EXCEPTION_PARAMETER";
                    case 67:
                        return "INSTANCEOF";
                    case 68:
                        return "NEW";
                    case 69:
                        return "CONSTRUCTOR_REFERENCE";
                    case 70:
                        return "METHOD_REFERENCE";
                    case 71:
                        return "CAST";
                    case 72:
                        return "CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT";
                    case 73:
                        return "METHOD_INVOCATION_TYPE_ARGUMENT";
                    case 74:
                        return "CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT";
                    case 75:
                        return "METHOD_REFERENCE_TYPE_ARGUMENT";
                    default:
                        return "UNKNOWN";
                }
        }
    }

    private boolean isCompact(int i10) {
        return (i10 & 8) != 0;
    }

    private boolean isDeprecated(IClassFileReader iClassFileReader) {
        for (IClassFileAttribute iClassFileAttribute : iClassFileReader.getAttributes()) {
            if (CharOperation.equals(iClassFileAttribute.getAttributeName(), IAttributeNamesConstants.DEPRECATED)) {
                return true;
            }
        }
        return false;
    }

    private boolean isJavaLangObject(char[] cArr) {
        return CharOperation.equals(TypeConstants.JAVA_LANG_OBJECT, CharOperation.splitOn('.', cArr));
    }

    private boolean isSynthetic(IClassFileReader iClassFileReader) {
        if ((iClassFileReader.getAccessFlags() & 4096) != 0) {
            return true;
        }
        for (IClassFileAttribute iClassFileAttribute : iClassFileReader.getAttributes()) {
            if (CharOperation.equals(iClassFileAttribute.getAttributeName(), IAttributeNamesConstants.SYNTHETIC)) {
                return true;
            }
        }
        return false;
    }

    private boolean isVarArgs(IMethodInfo iMethodInfo) {
        return ((iMethodInfo.getAccessFlags() & 128) == 0 && Util.getAttribute(iMethodInfo, AttributeNamesConstants.VarargsName) == null) ? false : true;
    }

    private String[] methodDescription(IConstantPoolEntry iConstantPoolEntry) {
        return new String[]{new String(iConstantPoolEntry.getClassName()), new String(iConstantPoolEntry.getMethodName()), new String(iConstantPoolEntry.getMethodDescriptor())};
    }

    private char[] returnClassName(char[] cArr, char c10, int i10) {
        int lastIndexOf;
        return cArr.length == 0 ? CharOperation.NO_CHAR : (!isCompact(i10) || (lastIndexOf = CharOperation.lastIndexOf(c10, cArr)) == -1) ? cArr : CharOperation.subarray(cArr, lastIndexOf + 1, cArr.length);
    }

    private String toTypePathString(int[][] iArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('[');
        int length = iArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            int[] iArr2 = iArr[i10];
            if (i10 > 0) {
                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                stringBuffer.append(C15883c.f126249O);
            }
            int i11 = iArr2[0];
            if (i11 == 0) {
                stringBuffer.append(Messages.disassembler_extendedannotation_typepath_array);
            } else if (i11 == 1) {
                stringBuffer.append(Messages.disassembler_extendedannotation_typepath_innertype);
            } else if (i11 == 2) {
                stringBuffer.append(Messages.disassembler_extendedannotation_typepath_wildcard);
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("Unrecognized type_path_kind: " + iArr2[0]);
                }
                stringBuffer.append(Messages.bind(Messages.disassembler_extendedannotation_typepath_typeargument, (Object[]) new String[]{Integer.toString(iArr2[1])}));
            }
        }
        stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
        return String.valueOf(stringBuffer);
    }

    private void writeNewLine(StringBuffer stringBuffer, String str, int i10) {
        stringBuffer.append(str);
        dumpTab(i10, stringBuffer);
    }

    @Override
    public String disassemble(byte[] bArr, String str) throws ClassFormatException {
        try {
            return disassemble(new ClassFileReader(bArr, 65535), str, 2);
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw new ClassFormatException(e10.getMessage(), e10);
        }
    }

    @Override
    public String getDescription() {
        return Messages.disassembler_description;
    }

    private void decodeModifiers(StringBuffer stringBuffer, int i10, boolean z10, boolean z11, int[] iArr) {
        if (iArr == null) {
            return;
        }
        boolean z12 = true;
        for (int i11 : iArr) {
            if (i11 == 1) {
                z12 = appendModifier(stringBuffer, i10, 1, "public", z12);
            } else if (i11 != 2) {
                switch (i11) {
                    case 4:
                        z12 = appendModifier(stringBuffer, i10, 4, "protected", z12);
                        break;
                    case 8:
                        z12 = appendModifier(stringBuffer, i10, 8, "static", z12);
                        break;
                    case 16:
                        z12 = appendModifier(stringBuffer, i10, 16, "final", z12);
                        break;
                    case 32:
                        z12 = appendModifier(stringBuffer, i10, 32, "synchronized", z12);
                        break;
                    case 64:
                        if (z11) {
                            z12 = appendModifier(stringBuffer, i10, 64, "bridge", z12);
                            break;
                        } else {
                            z12 = appendModifier(stringBuffer, i10, 64, "volatile", z12);
                            break;
                        }
                    case 128:
                        z12 = appendModifier(stringBuffer, i10, 128, "transient", z12);
                        break;
                    case 256:
                        z12 = appendModifier(stringBuffer, i10, 256, "native", z12);
                        break;
                    case 1024:
                        z12 = appendModifier(stringBuffer, i10, 1024, "abstract", z12);
                        break;
                    case 2048:
                        z12 = appendModifier(stringBuffer, i10, 2048, "strictfp", z12);
                        break;
                    case 4096:
                        z12 = appendModifier(stringBuffer, i10, 4096, "synthetic", z12);
                        break;
                    case 16384:
                        z12 = appendModifier(stringBuffer, i10, 16384, "enum", z12);
                        break;
                    case 32768:
                        z12 = appendModifier(stringBuffer, i10, 32768, "mandated", z12);
                        break;
                }
            } else {
                z12 = appendModifier(stringBuffer, i10, 2, "private", z12);
            }
        }
        if (z12) {
            if (z10) {
                stringBuffer.append("default");
            }
        } else {
            if (z10) {
                return;
            }
            stringBuffer.append(Messages.disassembler_space);
        }
    }

    @Override
    public String disassemble(byte[] bArr, String str, int i10) throws ClassFormatException {
        try {
            return disassemble(new ClassFileReader(bArr, 65535), str, i10);
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw new ClassFormatException(e10.getMessage(), e10);
        }
    }

    private void disassemble(IAnnotation iAnnotation, StringBuffer stringBuffer, String str, int i10, int i11) {
        int i12 = i10 + 1;
        writeNewLine(stringBuffer, str, i12);
        stringBuffer.append(Messages.bind(Messages.disassembler_annotationentrystart, (Object[]) new String[]{Integer.toString(iAnnotation.getTypeIndex()), new String(returnClassName(Signature.toCharArray(CharOperation.replaceOnCopy(iAnnotation.getTypeName(), '/', '.')), '.', i11))}));
        for (IAnnotationComponent iAnnotationComponent : iAnnotation.getComponents()) {
            disassemble(iAnnotationComponent, stringBuffer, str, i12, i11);
        }
        writeNewLine(stringBuffer, str, i12);
        stringBuffer.append(Messages.disassembler_annotationentryend);
    }

    public static String decodeStringValue(String str) {
        return decodeStringValue(str.toCharArray());
    }

    private void disassembleAsModifier(IAnnotationComponent iAnnotationComponent, StringBuffer stringBuffer, String str, int i10, int i11) {
        stringBuffer.append(iAnnotationComponent.getComponentName());
        stringBuffer.append('=');
        disassembleAsModifier(iAnnotationComponent.getComponentValue(), stringBuffer, str, i10 + 1, i11);
    }

    private void disassembleAsModifier(IAnnotationComponentValue iAnnotationComponentValue, StringBuffer stringBuffer, String str, int i10, int i11) {
        String str2;
        int tag = iAnnotationComponentValue.getTag();
        if (tag != 64) {
            if (tag != 70 && tag != 83) {
                if (tag == 99) {
                    stringBuffer.append(returnClassName(Signature.toCharArray(CharOperation.replaceOnCopy(iAnnotationComponentValue.getClassInfo().getUtf8Value(), '/', '.')), '.', i11));
                    return;
                }
                if (tag == 101) {
                    char[] replaceOnCopy = CharOperation.replaceOnCopy(iAnnotationComponentValue.getEnumConstantTypeName(), '/', '.');
                    char[] enumConstantName = iAnnotationComponentValue.getEnumConstantName();
                    stringBuffer.append(returnClassName(Signature.toCharArray(replaceOnCopy), '.', i11));
                    stringBuffer.append('.');
                    stringBuffer.append(enumConstantName);
                    return;
                }
                if (tag != 115 && tag != 73 && tag != 74 && tag != 90) {
                    if (tag == 91) {
                        IAnnotationComponentValue[] annotationComponentValues = iAnnotationComponentValue.getAnnotationComponentValues();
                        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
                        int length = annotationComponentValues.length;
                        for (int i12 = 0; i12 < length; i12++) {
                            if (i12 > 0) {
                                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                            }
                            disassembleAsModifier(annotationComponentValues[i12], stringBuffer, str, i10 + 1, i11);
                        }
                        stringBuffer.append(JavaElement.JEM_ANNOTATION);
                        return;
                    }
                    switch (tag) {
                        case 66:
                        case 67:
                        case 68:
                            break;
                        default:
                            return;
                    }
                }
            }
            IConstantPoolEntry constantValue = iAnnotationComponentValue.getConstantValue();
            int kind = constantValue.getKind();
            if (kind == 1) {
                str2 = JavadocConstants.ANCHOR_PREFIX_END + decodeStringValue(constantValue.getUtf8Value()) + JavadocConstants.ANCHOR_PREFIX_END;
            } else if (kind == 3) {
                StringBuffer stringBuffer2 = new StringBuffer();
                int tag2 = iAnnotationComponentValue.getTag();
                if (tag2 == 66) {
                    stringBuffer2.append("(byte) ");
                    stringBuffer2.append(constantValue.getIntegerValue());
                } else if (tag2 == 67) {
                    stringBuffer2.append(JavaElement.JEM_MODULAR_CLASSFILE);
                    escapeChar(stringBuffer2, (char) constantValue.getIntegerValue());
                    stringBuffer2.append(JavaElement.JEM_MODULAR_CLASSFILE);
                } else if (tag2 == 73) {
                    stringBuffer2.append("(int) ");
                    stringBuffer2.append(constantValue.getIntegerValue());
                } else if (tag2 == 83) {
                    stringBuffer2.append("(short) ");
                    stringBuffer2.append(constantValue.getIntegerValue());
                } else if (tag2 == 90) {
                    stringBuffer2.append(constantValue.getIntegerValue() == 1 ? "true" : "false");
                }
                str2 = String.valueOf(stringBuffer2);
            } else if (kind == 4) {
                str2 = String.valueOf(constantValue.getFloatValue()) + "f";
            } else if (kind != 5) {
                str2 = kind != 6 ? null : Double.toString(constantValue.getDoubleValue());
            } else {
                str2 = String.valueOf(constantValue.getLongValue()) + "L";
            }
            stringBuffer.append(str2);
            return;
        }
        disassembleAsModifier(iAnnotationComponentValue.getAnnotationValue(), stringBuffer, str, i10 + 1, i11);
    }

    private void disassemble(IExtendedAnnotation iExtendedAnnotation, StringBuffer stringBuffer, String str, int i10, int i11) {
        int i12 = i10 + 1;
        writeNewLine(stringBuffer, str, i12);
        stringBuffer.append(Messages.bind(Messages.disassembler_extendedannotationentrystart, (Object[]) new String[]{Integer.toString(iExtendedAnnotation.getTypeIndex()), new String(returnClassName(Signature.toCharArray(CharOperation.replaceOnCopy(iExtendedAnnotation.getTypeName(), '/', '.')), '.', i11))}));
        for (IAnnotationComponent iAnnotationComponent : iExtendedAnnotation.getComponents()) {
            disassemble(iAnnotationComponent, stringBuffer, str, i12, i11);
        }
        int i13 = i10 + 2;
        writeNewLine(stringBuffer, str, i13);
        int targetType = iExtendedAnnotation.getTargetType();
        stringBuffer.append(Messages.bind(Messages.disassembler_extendedannotation_targetType, (Object[]) new String[]{Integer.toHexString(targetType), getTargetType(targetType)}));
        switch (targetType) {
            case 19:
            case 20:
            case 21:
                break;
            default:
                writeNewLine(stringBuffer, str, i13);
                disassembleTargetTypeContents(false, targetType, iExtendedAnnotation, stringBuffer, str, i10, i11);
                break;
        }
        disassembleTypePathContents(targetType, iExtendedAnnotation, stringBuffer, str, i10, i11);
        writeNewLine(stringBuffer, str, i12);
        stringBuffer.append(Messages.disassembler_extendedannotationentryend);
    }

    private void disassembleModule(IModulePackagesAttribute iModulePackagesAttribute, StringBuffer stringBuffer, String str, int i10) {
        if (iModulePackagesAttribute == null) {
            return;
        }
        writeNewLine(stringBuffer, str, i10);
        writeNewLine(stringBuffer, str, i10);
        stringBuffer.append(Messages.disassembler_modulepackagesattributeheader);
        char[][] packageNames = iModulePackagesAttribute.getPackageNames();
        int packagesCount = iModulePackagesAttribute.getPackagesCount();
        for (int i11 = 0; i11 < packagesCount; i11++) {
            writeNewLine(stringBuffer, str, i10 + 1);
            convertModuleNames(stringBuffer, packageNames[i11]);
        }
        writeNewLine(stringBuffer, str, 0);
    }

    private void disassemble(IAnnotationComponent iAnnotationComponent, StringBuffer stringBuffer, String str, int i10, int i11) {
        int i12 = i10 + 1;
        writeNewLine(stringBuffer, str, i12);
        stringBuffer.append(Messages.bind(Messages.disassembler_annotationcomponent, (Object[]) new String[]{Integer.toString(iAnnotationComponent.getComponentNameIndex()), new String(iAnnotationComponent.getComponentName())}));
        disassemble(iAnnotationComponent.getComponentValue(), stringBuffer, str, i12, i11);
    }

    private void disassembleModule(IModuleMainClassAttribute iModuleMainClassAttribute, StringBuffer stringBuffer, String str, int i10) {
        if (iModuleMainClassAttribute == null) {
            return;
        }
        writeNewLine(stringBuffer, str, i10);
        stringBuffer.append(Messages.disassembler_modulemainclassattributeheader);
        writeNewLine(stringBuffer, str, i10 + 1);
        convertModuleNames(stringBuffer, iModuleMainClassAttribute.getMainClassName());
        writeNewLine(stringBuffer, str, 0);
    }

    private void disassembleAsModifier(IAnnotationDefaultAttribute iAnnotationDefaultAttribute, StringBuffer stringBuffer, String str, int i10, int i11) {
        disassembleAsModifier(iAnnotationDefaultAttribute.getMemberValue(), stringBuffer, str, i10 + 1, i11);
    }

    private void disassembleAsModifier(IRuntimeInvisibleAnnotationsAttribute iRuntimeInvisibleAnnotationsAttribute, StringBuffer stringBuffer, String str, int i10, int i11) {
        for (IAnnotation iAnnotation : iRuntimeInvisibleAnnotationsAttribute.getAnnotations()) {
            disassembleAsModifier(iAnnotation, stringBuffer, str, i10 + 1, i11);
        }
    }

    private void disassemble(IAnnotationComponentValue iAnnotationComponentValue, StringBuffer stringBuffer, String str, int i10, int i11) {
        String str2;
        int tag = iAnnotationComponentValue.getTag();
        if (tag != 64) {
            if (tag != 70 && tag != 83) {
                if (tag == 99) {
                    stringBuffer.append(Messages.bind(Messages.disassembler_annotationclassvalue, (Object[]) new String[]{Integer.toString(iAnnotationComponentValue.getClassInfoIndex()), new String(returnClassName(Signature.toCharArray(CharOperation.replaceOnCopy(iAnnotationComponentValue.getClassInfo().getUtf8Value(), '/', '.')), '.', i11))}));
                    return;
                }
                if (tag == 101) {
                    stringBuffer.append(Messages.bind(Messages.disassembler_annotationenumvalue, (Object[]) new String[]{Integer.toString(iAnnotationComponentValue.getEnumConstantTypeNameIndex()), Integer.toString(iAnnotationComponentValue.getEnumConstantNameIndex()), new String(returnClassName(Signature.toCharArray(CharOperation.replaceOnCopy(iAnnotationComponentValue.getEnumConstantTypeName(), '/', '.')), '.', i11)), new String(iAnnotationComponentValue.getEnumConstantName())}));
                    return;
                }
                if (tag != 115 && tag != 73 && tag != 74 && tag != 90) {
                    if (tag == 91) {
                        stringBuffer.append(Messages.disassembler_annotationarrayvaluestart);
                        IAnnotationComponentValue[] annotationComponentValues = iAnnotationComponentValue.getAnnotationComponentValues();
                        for (IAnnotationComponentValue iAnnotationComponentValue2 : annotationComponentValues) {
                            int i12 = i10 + 1;
                            writeNewLine(stringBuffer, str, i12);
                            disassemble(iAnnotationComponentValue2, stringBuffer, str, i12, i11);
                        }
                        writeNewLine(stringBuffer, str, i10 + 1);
                        stringBuffer.append(Messages.disassembler_annotationarrayvalueend);
                        return;
                    }
                    switch (tag) {
                        case 66:
                        case 67:
                        case 68:
                            break;
                        default:
                            return;
                    }
                }
            }
            IConstantPoolEntry constantValue = iAnnotationComponentValue.getConstantValue();
            int kind = constantValue.getKind();
            if (kind == 1) {
                str2 = JavadocConstants.ANCHOR_PREFIX_END + decodeStringValue(constantValue.getUtf8Value()) + JavadocConstants.ANCHOR_PREFIX_END;
            } else if (kind == 3) {
                StringBuffer stringBuffer2 = new StringBuffer();
                int tag2 = iAnnotationComponentValue.getTag();
                if (tag2 == 66) {
                    stringBuffer2.append("(byte) ");
                    stringBuffer2.append(constantValue.getIntegerValue());
                } else if (tag2 == 67) {
                    stringBuffer2.append(JavaElement.JEM_MODULAR_CLASSFILE);
                    escapeChar(stringBuffer2, (char) constantValue.getIntegerValue());
                    stringBuffer2.append(JavaElement.JEM_MODULAR_CLASSFILE);
                } else if (tag2 == 73) {
                    stringBuffer2.append("(int) ");
                    stringBuffer2.append(constantValue.getIntegerValue());
                } else if (tag2 == 83) {
                    stringBuffer2.append("(short) ");
                    stringBuffer2.append(constantValue.getIntegerValue());
                } else if (tag2 == 90) {
                    stringBuffer2.append(constantValue.getIntegerValue() == 1 ? "true" : "false");
                }
                str2 = String.valueOf(stringBuffer2);
            } else if (kind == 4) {
                str2 = String.valueOf(constantValue.getFloatValue()) + "f";
            } else if (kind != 5) {
                str2 = kind != 6 ? null : Double.toString(constantValue.getDoubleValue());
            } else {
                str2 = String.valueOf(constantValue.getLongValue()) + "L";
            }
            stringBuffer.append(Messages.bind(Messages.disassembler_annotationdefaultvalue, str2));
            return;
        }
        stringBuffer.append(Messages.disassembler_annotationannotationvalue);
        disassemble(iAnnotationComponentValue.getAnnotationValue(), stringBuffer, str, i10 + 1, i11);
    }

    private void disassembleAsModifier(IParameterAnnotation[] iParameterAnnotationArr, StringBuffer stringBuffer, int i10, String str, int i11, int i12) {
        if (iParameterAnnotationArr.length > i10) {
            disassembleAsModifier(iParameterAnnotationArr[i10], stringBuffer, str, i11 + 1, i12);
        }
    }

    private void disassembleAsModifier(IParameterAnnotation iParameterAnnotation, StringBuffer stringBuffer, String str, int i10, int i11) {
        if (iParameterAnnotation == null) {
            return;
        }
        IAnnotation[] annotations = iParameterAnnotation.getAnnotations();
        int length = annotations.length;
        for (int i12 = 0; i12 < length; i12++) {
            if (i12 > 0) {
                stringBuffer.append(C15883c.f126249O);
            }
            disassembleAsModifier(annotations[i12], stringBuffer, str, i10 + 1, i11);
        }
    }

    private void disassembleAsModifier(IRuntimeVisibleAnnotationsAttribute iRuntimeVisibleAnnotationsAttribute, StringBuffer stringBuffer, String str, int i10, int i11) {
        IAnnotation[] annotations = iRuntimeVisibleAnnotationsAttribute.getAnnotations();
        int length = annotations.length;
        for (int i12 = 0; i12 < length; i12++) {
            if (i12 > 0) {
                writeNewLine(stringBuffer, str, i10);
            }
            disassembleAsModifier(annotations[i12], stringBuffer, str, i10 + 1, i11);
        }
    }

    private void disassemble(IAnnotationDefaultAttribute iAnnotationDefaultAttribute, StringBuffer stringBuffer, String str, int i10, int i11) {
        int i12 = i10 + 1;
        writeNewLine(stringBuffer, str, i12);
        stringBuffer.append(Messages.disassembler_annotationdefaultheader);
        IAnnotationComponentValue memberValue = iAnnotationDefaultAttribute.getMemberValue();
        writeNewLine(stringBuffer, str, i10 + 2);
        disassemble(memberValue, stringBuffer, str, i12, i11);
    }

    private void disassemble(IClassFileAttribute iClassFileAttribute, StringBuffer stringBuffer, String str, int i10, int i11) {
        writeNewLine(stringBuffer, str, i10 + 1);
        stringBuffer.append(Messages.bind(Messages.disassembler_genericattributeheader, (Object[]) new String[]{new String(iClassFileAttribute.getAttributeName()), Long.toString(iClassFileAttribute.getAttributeLength())}));
    }

    private void disassemble(IMethodParametersAttribute iMethodParametersAttribute, StringBuffer stringBuffer, String str, int i10, int i11) {
        writeNewLine(stringBuffer, str, i10 + 2);
        stringBuffer.append(Messages.disassembler_methodparametersheader);
        int methodParameterLength = iMethodParametersAttribute.getMethodParameterLength();
        for (int i12 = 0; i12 < methodParameterLength; i12++) {
            writeNewLine(stringBuffer, str, i10 + 3);
            decodeModifiersForMethodParameters(stringBuffer, iMethodParametersAttribute.getAccessFlags(i12));
            char[] parameterName = iMethodParametersAttribute.getParameterName(i12);
            if (parameterName == null) {
                parameterName = Messages.disassembler_anonymousparametername.toCharArray();
            }
            stringBuffer.append(parameterName);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:149:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0477  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x039f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x03d6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x03f3  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0487 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x04b7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x04d0  */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void disassemble(IClassFileReader iClassFileReader, char[] cArr, IMethodInfo iMethodInfo, StringBuffer stringBuffer, String str, int i10, int i11) {
        IClassFileAttribute iClassFileAttribute;
        IClassFileAttribute iClassFileAttribute2;
        IClassFileAttribute iClassFileAttribute3;
        IClassFileAttribute iClassFileAttribute4;
        IClassFileAttribute iClassFileAttribute5;
        IClassFileAttribute iClassFileAttribute6;
        IClassFileAttribute iClassFileAttribute7;
        IClassFileAttribute iClassFileAttribute8;
        IClassFileAttribute iClassFileAttribute9;
        ISignatureAttribute iSignatureAttribute;
        IClassFileAttribute iClassFileAttribute10;
        char[][] cArr2;
        int i12;
        int i13;
        char[] charArray;
        char[] charArray2;
        char[] cArr3;
        char[] cArr4;
        IClassFileAttribute iClassFileAttribute11;
        IClassFileAttribute iClassFileAttribute12;
        ICodeAttribute iCodeAttribute;
        IClassFileAttribute iClassFileAttribute13;
        IClassFileAttribute iClassFileAttribute14;
        int i14;
        char[][] cArr5;
        IExceptionAttribute exceptionAttribute;
        IClassFileAttribute iClassFileAttribute15;
        int i15;
        boolean z10;
        ISignatureAttribute iSignatureAttribute2;
        IClassFileAttribute iClassFileAttribute16;
        IClassFileAttribute iClassFileAttribute17;
        ICodeAttribute iCodeAttribute2;
        int i16;
        IClassFileAttribute[] iClassFileAttributeArr;
        int i17;
        ISignatureAttribute iSignatureAttribute3;
        IClassFileAttribute iClassFileAttribute18;
        IClassFileAttribute iClassFileAttribute19;
        IClassFileAttribute iClassFileAttribute20;
        IClassFileAttribute iClassFileAttribute21;
        IClassFileAttribute iClassFileAttribute22;
        IClassFileAttribute iClassFileAttribute23;
        char[][] cArr6;
        IClassFileAttribute iClassFileAttribute24;
        IClassFileAttribute iClassFileAttribute25;
        int i18;
        IParameterAnnotation[] iParameterAnnotationArr;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        IClassFileAttribute iClassFileAttribute26;
        char[] cArr7;
        ICodeAttribute iCodeAttribute3;
        IClassFileAttribute iClassFileAttribute27;
        IClassFileAttribute iClassFileAttribute28;
        char c10;
        StringBuffer stringBuffer2;
        int i25;
        StringBuffer stringBuffer3;
        int length;
        writeNewLine(stringBuffer, str, i10);
        ICodeAttribute codeAttribute = iMethodInfo.getCodeAttribute();
        char[] descriptor = iMethodInfo.getDescriptor();
        ISignatureAttribute iSignatureAttribute4 = (ISignatureAttribute) Util.getAttribute(iMethodInfo, IAttributeNamesConstants.SIGNATURE);
        IClassFileAttribute attribute = Util.getAttribute(iMethodInfo, IAttributeNamesConstants.RUNTIME_VISIBLE_ANNOTATIONS);
        IClassFileAttribute attribute2 = Util.getAttribute(iMethodInfo, IAttributeNamesConstants.RUNTIME_INVISIBLE_ANNOTATIONS);
        IClassFileAttribute attribute3 = Util.getAttribute(iMethodInfo, IAttributeNamesConstants.RUNTIME_VISIBLE_TYPE_ANNOTATIONS);
        IClassFileAttribute attribute4 = Util.getAttribute(iMethodInfo, IAttributeNamesConstants.RUNTIME_INVISIBLE_TYPE_ANNOTATIONS);
        IClassFileAttribute attribute5 = Util.getAttribute(iMethodInfo, IAttributeNamesConstants.RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS);
        IClassFileAttribute attribute6 = Util.getAttribute(iMethodInfo, IAttributeNamesConstants.RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS);
        IClassFileAttribute attribute7 = Util.getAttribute(iMethodInfo, IAttributeNamesConstants.METHOD_PARAMETERS);
        IClassFileAttribute attribute8 = Util.getAttribute(iMethodInfo, IAttributeNamesConstants.ANNOTATION_DEFAULT);
        if (checkMode(i11, 5)) {
            iClassFileAttribute = attribute8;
            iClassFileAttribute2 = attribute5;
            stringBuffer.append(Messages.bind(Messages.classfileformat_methoddescriptor, (Object[]) new String[]{Integer.toString(iMethodInfo.getDescriptorIndex()), new String(descriptor)}));
            if (iMethodInfo.isDeprecated()) {
                stringBuffer.append(Messages.disassembler_deprecated);
            }
            writeNewLine(stringBuffer, str, i10);
            if (iSignatureAttribute4 != null) {
                stringBuffer.append(Messages.bind(Messages.disassembler_signatureattributeheader, new String(iSignatureAttribute4.getSignature())));
                writeNewLine(stringBuffer, str, i10);
            }
            if (codeAttribute != null) {
                stringBuffer.append(Messages.bind(Messages.classfileformat_stacksAndLocals, (Object[]) new String[]{Integer.toString(codeAttribute.getMaxStack()), Integer.toString(codeAttribute.getMaxLocals())}));
                writeNewLine(stringBuffer, str, i10);
            }
        } else {
            iClassFileAttribute = attribute8;
            iClassFileAttribute2 = attribute5;
        }
        if (checkMode(i11, 1)) {
            if (attribute2 != null) {
                iClassFileAttribute3 = attribute6;
                iClassFileAttribute7 = attribute7;
                iClassFileAttribute9 = iClassFileAttribute;
                iClassFileAttribute8 = iClassFileAttribute2;
                iClassFileAttribute4 = attribute4;
                iClassFileAttribute5 = attribute3;
                iClassFileAttribute6 = attribute2;
                iSignatureAttribute = iSignatureAttribute4;
                iClassFileAttribute10 = attribute;
                disassembleAsModifier((IRuntimeInvisibleAnnotationsAttribute) attribute2, stringBuffer, str, i10, i11);
                writeNewLine(stringBuffer, str, i10);
            } else {
                iClassFileAttribute3 = attribute6;
                iClassFileAttribute4 = attribute4;
                iClassFileAttribute5 = attribute3;
                iClassFileAttribute6 = attribute2;
                iClassFileAttribute7 = attribute7;
                iClassFileAttribute8 = iClassFileAttribute2;
                iClassFileAttribute9 = iClassFileAttribute;
                iSignatureAttribute = iSignatureAttribute4;
                iClassFileAttribute10 = attribute;
            }
            if (iClassFileAttribute10 != null) {
                disassembleAsModifier((IRuntimeVisibleAnnotationsAttribute) iClassFileAttribute10, stringBuffer, str, i10, i11);
                writeNewLine(stringBuffer, str, i10);
            }
        } else {
            iClassFileAttribute3 = attribute6;
            iClassFileAttribute4 = attribute4;
            iClassFileAttribute5 = attribute3;
            iClassFileAttribute6 = attribute2;
            iClassFileAttribute7 = attribute7;
            iClassFileAttribute8 = iClassFileAttribute2;
            iClassFileAttribute9 = iClassFileAttribute;
            iSignatureAttribute = iSignatureAttribute4;
            iClassFileAttribute10 = attribute;
        }
        int accessFlags = iMethodInfo.getAccessFlags();
        decodeModifiersForMethod(stringBuffer, accessFlags);
        if (iMethodInfo.isSynthetic() && !checkMode(i11, 16)) {
            stringBuffer.append("synthetic");
            stringBuffer.append(Messages.disassembler_space);
        }
        CharOperation.replace(descriptor, '/', '.');
        boolean isVarArgs = isVarArgs(iMethodInfo);
        IParameterAnnotation[] iParameterAnnotationArr2 = null;
        char[][] parameterNames = !iMethodInfo.isClinit() ? getParameterNames(descriptor, codeAttribute, (IMethodParametersAttribute) iClassFileAttribute7, accessFlags) : null;
        if (iMethodInfo.isConstructor()) {
            if (checkMode(i11, 16) && iSignatureAttribute != null) {
                char[] signature = iSignatureAttribute.getSignature();
                CharOperation.replace(signature, '/', '.');
                disassembleGenericSignature(i11, stringBuffer, signature);
                stringBuffer.append(C15883c.f126249O);
                charArray = Signature.toCharArray(signature, returnClassName(cArr, '.', 8), parameterNames, !checkMode(i11, 8), false, isVarArgs);
                cArr2 = parameterNames;
                i12 = accessFlags;
                i13 = 1;
                cArr3 = charArray;
            } else {
                cArr2 = parameterNames;
                i12 = accessFlags;
                charArray2 = Signature.toCharArray(descriptor, returnClassName(cArr, '.', 8), cArr2, !checkMode(i11, 8), false, isVarArgs);
                cArr3 = charArray2;
                i13 = 1;
            }
        } else {
            cArr2 = parameterNames;
            i12 = accessFlags;
            if (iMethodInfo.isClinit()) {
                charArray2 = Messages.bind(Messages.classfileformat_clinitname).toCharArray();
            } else if (checkMode(i11, 16) && iSignatureAttribute != null) {
                char[] signature2 = iSignatureAttribute.getSignature();
                CharOperation.replace(signature2, '/', '.');
                disassembleGenericSignature(i11, stringBuffer, signature2);
                stringBuffer.append(C15883c.f126249O);
                charArray2 = Signature.toCharArray(signature2, iMethodInfo.getName(), cArr2, !checkMode(i11, 8), true, isVarArgs);
            } else {
                i13 = 1;
                charArray = Signature.toCharArray(descriptor, iMethodInfo.getName(), cArr2, !checkMode(i11, 8), true, isVarArgs);
                cArr3 = charArray;
            }
            cArr3 = charArray2;
            i13 = 1;
        }
        if (checkMode(i11, i13)) {
            IClassFileAttribute iClassFileAttribute29 = iClassFileAttribute3;
            IClassFileAttribute iClassFileAttribute30 = iClassFileAttribute8;
            if (iClassFileAttribute29 == null && iClassFileAttribute30 == null) {
                cArr5 = cArr2;
                iClassFileAttribute14 = iClassFileAttribute30;
                iClassFileAttribute13 = iClassFileAttribute29;
                cArr4 = cArr3;
                iClassFileAttribute11 = iClassFileAttribute7;
                iClassFileAttribute12 = iClassFileAttribute10;
                iCodeAttribute = codeAttribute;
                i14 = 1;
            } else {
                if (iClassFileAttribute29 != null) {
                    IParameterAnnotation[] parameterAnnotations = ((IRuntimeInvisibleParameterAnnotationsAttribute) iClassFileAttribute29).getParameterAnnotations();
                    i18 = parameterAnnotations.length;
                    cArr6 = cArr2;
                    if (i18 > 0) {
                        int length2 = cArr6.length;
                        iClassFileAttribute24 = iClassFileAttribute29;
                        if (i18 < length2) {
                            IParameterAnnotation[] iParameterAnnotationArr3 = new IParameterAnnotation[length2];
                            iClassFileAttribute25 = iClassFileAttribute7;
                            iClassFileAttribute12 = iClassFileAttribute10;
                            System.arraycopy(parameterAnnotations, 0, iParameterAnnotationArr3, 1, i18);
                            iParameterAnnotationArr = iParameterAnnotationArr3;
                            i18 = length2;
                        }
                    } else {
                        iClassFileAttribute24 = iClassFileAttribute29;
                    }
                    iClassFileAttribute25 = iClassFileAttribute7;
                    iClassFileAttribute12 = iClassFileAttribute10;
                    iParameterAnnotationArr = parameterAnnotations;
                } else {
                    cArr6 = cArr2;
                    iClassFileAttribute24 = iClassFileAttribute29;
                    iClassFileAttribute25 = iClassFileAttribute7;
                    iClassFileAttribute12 = iClassFileAttribute10;
                    i18 = -1;
                    iParameterAnnotationArr = null;
                }
                if (iClassFileAttribute30 != null) {
                    IParameterAnnotation[] parameterAnnotations2 = ((IRuntimeVisibleParameterAnnotationsAttribute) iClassFileAttribute30).getParameterAnnotations();
                    i18 = parameterAnnotations2.length;
                    if (i18 > 0 && i18 < (length = cArr6.length)) {
                        IParameterAnnotation[] iParameterAnnotationArr4 = new IParameterAnnotation[length];
                        cArr5 = cArr6;
                        i19 = 0;
                        i20 = 1;
                        System.arraycopy(parameterAnnotations2, 0, iParameterAnnotationArr4, 1, i18);
                        iParameterAnnotationArr2 = iParameterAnnotationArr4;
                        i21 = length;
                        int indexOf = CharOperation.indexOf('(', cArr3) + i20;
                        StringBuffer stringBuffer4 = new StringBuffer();
                        stringBuffer4.append(cArr3, i19, indexOf);
                        int i26 = indexOf;
                        i22 = 0;
                        while (i22 < i21) {
                            if (i22 > 0) {
                                stringBuffer4.append(C15883c.f126249O);
                            }
                            int length3 = stringBuffer4.length();
                            if (iParameterAnnotationArr2 != null) {
                                iCodeAttribute3 = codeAttribute;
                                c10 = ' ';
                                i23 = i22;
                                i24 = i26;
                                iClassFileAttribute26 = iClassFileAttribute30;
                                iClassFileAttribute28 = iClassFileAttribute24;
                                stringBuffer2 = stringBuffer4;
                                cArr7 = cArr3;
                                iClassFileAttribute27 = iClassFileAttribute25;
                                i25 = i21;
                                disassembleAsModifier(iParameterAnnotationArr2, stringBuffer4, i23, str, i10, i11);
                            } else {
                                i23 = i22;
                                i24 = i26;
                                iClassFileAttribute26 = iClassFileAttribute30;
                                cArr7 = cArr3;
                                iCodeAttribute3 = codeAttribute;
                                iClassFileAttribute27 = iClassFileAttribute25;
                                iClassFileAttribute28 = iClassFileAttribute24;
                                c10 = ' ';
                                stringBuffer2 = stringBuffer4;
                                i25 = i21;
                            }
                            if (iParameterAnnotationArr != null) {
                                StringBuffer stringBuffer5 = stringBuffer2;
                                if (stringBuffer2.length() != length3) {
                                    stringBuffer5.append(c10);
                                    length3 = stringBuffer5.length();
                                }
                                stringBuffer2 = stringBuffer5;
                                disassembleAsModifier(iParameterAnnotationArr, stringBuffer5, i23, str, i10, i11);
                            }
                            if (i23 != 0 || stringBuffer2.length() == length3) {
                                stringBuffer3 = stringBuffer2;
                            } else {
                                stringBuffer3 = stringBuffer2;
                                stringBuffer3.append(c10);
                            }
                            int i27 = i24;
                            char[] cArr8 = cArr7;
                            i26 = CharOperation.indexOf(IIndexConstants.PARAMETER_SEPARATOR, cArr8, i27 + 1) + 1;
                            if (i26 == 0) {
                                stringBuffer3.append(cArr8, i27, cArr8.length - i27);
                            } else {
                                stringBuffer3.append(cArr8, i27, i26 - i27);
                            }
                            i22 = i23 + 1;
                            cArr3 = cArr8;
                            i20 = 1;
                            i21 = i25;
                            codeAttribute = iCodeAttribute3;
                            iClassFileAttribute30 = iClassFileAttribute26;
                            iClassFileAttribute24 = iClassFileAttribute28;
                            iClassFileAttribute25 = iClassFileAttribute27;
                            stringBuffer4 = stringBuffer3;
                        }
                        stringBuffer.append(stringBuffer4);
                        iClassFileAttribute14 = iClassFileAttribute30;
                        i14 = i20;
                        iCodeAttribute = codeAttribute;
                        iClassFileAttribute11 = iClassFileAttribute25;
                        iClassFileAttribute13 = iClassFileAttribute24;
                        exceptionAttribute = iMethodInfo.getExceptionAttribute();
                        if (exceptionAttribute != null) {
                            stringBuffer.append(" throws ");
                            char[][] exceptionNames = exceptionAttribute.getExceptionNames();
                            int length4 = exceptionNames.length;
                            for (int i28 = 0; i28 < length4; i28++) {
                                if (i28 != 0) {
                                    stringBuffer.append(Messages.disassembler_comma);
                                    stringBuffer.append(Messages.disassembler_space);
                                }
                                char[] cArr9 = exceptionNames[i28];
                                CharOperation.replace(cArr9, '/', '.');
                                stringBuffer.append(returnClassName(cArr9, '.', i11));
                            }
                        }
                        iClassFileAttribute15 = iClassFileAttribute9;
                        if (checkMode(i11, i14) && iClassFileAttribute15 != null) {
                            stringBuffer.append(" default ");
                            disassembleAsModifier((IAnnotationDefaultAttribute) iClassFileAttribute15, stringBuffer, str, i10, i11);
                        }
                        if (checkMode(i11, 16)) {
                            if (iClassFileAttribute15 != null) {
                                stringBuffer.append(" default ");
                                disassembleAsModifier((IAnnotationDefaultAttribute) iClassFileAttribute15, stringBuffer, str, i10, i11);
                            }
                            i15 = i12;
                            if ((i15 & 256) == 0 && (i15 & 1024) == 0) {
                                stringBuffer.append(" {");
                                char[] returnType = Signature.getReturnType(descriptor);
                                if (returnType.length == i14) {
                                    z10 = false;
                                    char c11 = returnType[0];
                                    if (c11 != 'F' && c11 != 'S') {
                                        if (c11 != 'V') {
                                            if (c11 != 'I' && c11 != 'J') {
                                                switch (c11) {
                                                    case 'B':
                                                    case 'C':
                                                    case 'D':
                                                        break;
                                                    default:
                                                        writeNewLine(stringBuffer, str, i10 + 1);
                                                        stringBuffer.append("return false;");
                                                        writeNewLine(stringBuffer, str, i10);
                                                        break;
                                                }
                                            }
                                        } else {
                                            writeNewLine(stringBuffer, str, i10);
                                        }
                                    }
                                    writeNewLine(stringBuffer, str, i10 + 1);
                                    stringBuffer.append("return 0;");
                                    writeNewLine(stringBuffer, str, i10);
                                } else {
                                    z10 = false;
                                    writeNewLine(stringBuffer, str, i10 + 1);
                                    stringBuffer.append("return null;");
                                    writeNewLine(stringBuffer, str, i10);
                                }
                                stringBuffer.append(JavaElement.JEM_ANNOTATION);
                            } else {
                                z10 = false;
                                stringBuffer.append(';');
                            }
                        } else {
                            i15 = i12;
                            z10 = false;
                            stringBuffer.append(Messages.disassembler_endofmethodheader);
                        }
                        if (checkMode(i11, 5) || iCodeAttribute == null) {
                            iSignatureAttribute2 = iSignatureAttribute;
                            iClassFileAttribute16 = iClassFileAttribute12;
                        } else {
                            iSignatureAttribute2 = iSignatureAttribute;
                            iClassFileAttribute16 = iClassFileAttribute12;
                            disassemble(iCodeAttribute, cArr5, descriptor, (i15 & 8) != 0 ? i14 : z10, stringBuffer, str, i10, i11);
                        }
                        iClassFileAttribute17 = iClassFileAttribute11;
                        if (checkMode(i11, 5) && iClassFileAttribute17 != null) {
                            disassemble((IMethodParametersAttribute) iClassFileAttribute17, stringBuffer, str, i10, i11);
                        }
                        if (checkMode(i11, 4)) {
                            IClassFileAttribute[] attributes = iMethodInfo.getAttributes();
                            int length5 = attributes.length;
                            if (length5 != 0) {
                                for (?? r52 = z10; r52 < length5; r52 = i16 + 1) {
                                    IClassFileAttribute iClassFileAttribute31 = attributes[r52];
                                    ICodeAttribute iCodeAttribute4 = iCodeAttribute;
                                    if (iClassFileAttribute31 == iCodeAttribute4 || iClassFileAttribute31 == exceptionAttribute || iClassFileAttribute31 == iSignatureAttribute2 || iClassFileAttribute31 == iClassFileAttribute15) {
                                        iCodeAttribute2 = iCodeAttribute4;
                                        i16 = r52;
                                        iClassFileAttributeArr = attributes;
                                        i17 = length5;
                                        iSignatureAttribute3 = iSignatureAttribute2;
                                        iClassFileAttribute18 = iClassFileAttribute16;
                                        iClassFileAttribute19 = iClassFileAttribute4;
                                        iClassFileAttribute20 = iClassFileAttribute5;
                                        iClassFileAttribute21 = iClassFileAttribute6;
                                    } else {
                                        IClassFileAttribute iClassFileAttribute32 = iClassFileAttribute6;
                                        if (iClassFileAttribute31 == iClassFileAttribute32 || iClassFileAttribute31 == iClassFileAttribute16) {
                                            iClassFileAttribute21 = iClassFileAttribute32;
                                            iCodeAttribute2 = iCodeAttribute4;
                                            i16 = r52;
                                            iClassFileAttributeArr = attributes;
                                            i17 = length5;
                                            iSignatureAttribute3 = iSignatureAttribute2;
                                            iClassFileAttribute18 = iClassFileAttribute16;
                                            iClassFileAttribute19 = iClassFileAttribute4;
                                        } else {
                                            IClassFileAttribute iClassFileAttribute33 = iClassFileAttribute4;
                                            if (iClassFileAttribute31 != iClassFileAttribute33) {
                                                IClassFileAttribute iClassFileAttribute34 = iClassFileAttribute5;
                                                if (iClassFileAttribute31 != iClassFileAttribute34) {
                                                    iClassFileAttributeArr = attributes;
                                                    iClassFileAttribute23 = iClassFileAttribute13;
                                                    if (iClassFileAttribute31 != iClassFileAttribute23) {
                                                        i17 = length5;
                                                        iClassFileAttribute22 = iClassFileAttribute14;
                                                        if (iClassFileAttribute31 == iClassFileAttribute22 || iClassFileAttribute31 == iClassFileAttribute17) {
                                                            iClassFileAttribute20 = iClassFileAttribute34;
                                                            iClassFileAttribute19 = iClassFileAttribute33;
                                                            iClassFileAttribute21 = iClassFileAttribute32;
                                                            iCodeAttribute2 = iCodeAttribute4;
                                                            i16 = r52;
                                                            iSignatureAttribute3 = iSignatureAttribute2;
                                                            iClassFileAttribute18 = iClassFileAttribute16;
                                                        } else if (CharOperation.equals(iClassFileAttribute31.getAttributeName(), IAttributeNamesConstants.DEPRECATED) || CharOperation.equals(iClassFileAttribute31.getAttributeName(), IAttributeNamesConstants.SYNTHETIC)) {
                                                            iClassFileAttribute21 = iClassFileAttribute32;
                                                            iCodeAttribute2 = iCodeAttribute4;
                                                            i16 = r52;
                                                            iSignatureAttribute3 = iSignatureAttribute2;
                                                            iClassFileAttribute18 = iClassFileAttribute16;
                                                            iClassFileAttribute19 = iClassFileAttribute33;
                                                            iClassFileAttribute20 = iClassFileAttribute34;
                                                        } else {
                                                            iClassFileAttribute20 = iClassFileAttribute34;
                                                            iClassFileAttribute19 = iClassFileAttribute33;
                                                            iClassFileAttribute21 = iClassFileAttribute32;
                                                            iCodeAttribute2 = iCodeAttribute4;
                                                            i16 = r52;
                                                            disassemble(iClassFileAttribute31, stringBuffer, str, i10, i11);
                                                            iSignatureAttribute3 = iSignatureAttribute2;
                                                            iClassFileAttribute18 = iClassFileAttribute16;
                                                            writeNewLine(stringBuffer, str, i10);
                                                            iSignatureAttribute2 = iSignatureAttribute3;
                                                            iClassFileAttribute13 = iClassFileAttribute23;
                                                            iClassFileAttribute14 = iClassFileAttribute22;
                                                            length5 = i17;
                                                            iClassFileAttribute5 = iClassFileAttribute20;
                                                            iClassFileAttribute4 = iClassFileAttribute19;
                                                            iClassFileAttribute6 = iClassFileAttribute21;
                                                            iCodeAttribute = iCodeAttribute2;
                                                            iClassFileAttribute16 = iClassFileAttribute18;
                                                            attributes = iClassFileAttributeArr;
                                                        }
                                                    } else {
                                                        iClassFileAttribute20 = iClassFileAttribute34;
                                                        iClassFileAttribute19 = iClassFileAttribute33;
                                                        iClassFileAttribute21 = iClassFileAttribute32;
                                                        iCodeAttribute2 = iCodeAttribute4;
                                                        i16 = r52;
                                                        i17 = length5;
                                                        iSignatureAttribute3 = iSignatureAttribute2;
                                                        iClassFileAttribute18 = iClassFileAttribute16;
                                                        iClassFileAttribute22 = iClassFileAttribute14;
                                                    }
                                                    iSignatureAttribute2 = iSignatureAttribute3;
                                                    iClassFileAttribute13 = iClassFileAttribute23;
                                                    iClassFileAttribute14 = iClassFileAttribute22;
                                                    length5 = i17;
                                                    iClassFileAttribute5 = iClassFileAttribute20;
                                                    iClassFileAttribute4 = iClassFileAttribute19;
                                                    iClassFileAttribute6 = iClassFileAttribute21;
                                                    iCodeAttribute = iCodeAttribute2;
                                                    iClassFileAttribute16 = iClassFileAttribute18;
                                                    attributes = iClassFileAttributeArr;
                                                } else {
                                                    iClassFileAttribute20 = iClassFileAttribute34;
                                                    iClassFileAttribute19 = iClassFileAttribute33;
                                                    iClassFileAttribute21 = iClassFileAttribute32;
                                                    iCodeAttribute2 = iCodeAttribute4;
                                                    i16 = r52;
                                                    iClassFileAttributeArr = attributes;
                                                    i17 = length5;
                                                    iSignatureAttribute3 = iSignatureAttribute2;
                                                    iClassFileAttribute18 = iClassFileAttribute16;
                                                }
                                            } else {
                                                iClassFileAttribute19 = iClassFileAttribute33;
                                                iClassFileAttribute21 = iClassFileAttribute32;
                                                iCodeAttribute2 = iCodeAttribute4;
                                                i16 = r52;
                                                iClassFileAttributeArr = attributes;
                                                i17 = length5;
                                                iSignatureAttribute3 = iSignatureAttribute2;
                                                iClassFileAttribute18 = iClassFileAttribute16;
                                            }
                                        }
                                        iClassFileAttribute20 = iClassFileAttribute5;
                                    }
                                    iClassFileAttribute22 = iClassFileAttribute14;
                                    iClassFileAttribute23 = iClassFileAttribute13;
                                    iSignatureAttribute2 = iSignatureAttribute3;
                                    iClassFileAttribute13 = iClassFileAttribute23;
                                    iClassFileAttribute14 = iClassFileAttribute22;
                                    length5 = i17;
                                    iClassFileAttribute5 = iClassFileAttribute20;
                                    iClassFileAttribute4 = iClassFileAttribute19;
                                    iClassFileAttribute6 = iClassFileAttribute21;
                                    iCodeAttribute = iCodeAttribute2;
                                    iClassFileAttribute16 = iClassFileAttribute18;
                                    attributes = iClassFileAttributeArr;
                                }
                            }
                            IClassFileAttribute iClassFileAttribute35 = iClassFileAttribute16;
                            IClassFileAttribute iClassFileAttribute36 = iClassFileAttribute4;
                            IClassFileAttribute iClassFileAttribute37 = iClassFileAttribute5;
                            IClassFileAttribute iClassFileAttribute38 = iClassFileAttribute6;
                            IClassFileAttribute iClassFileAttribute39 = iClassFileAttribute14;
                            IClassFileAttribute iClassFileAttribute40 = iClassFileAttribute13;
                            if (iClassFileAttribute15 != null) {
                                disassemble((IAnnotationDefaultAttribute) iClassFileAttribute15, stringBuffer, str, i10, i11);
                            }
                            if (iClassFileAttribute35 != null) {
                                disassemble((IRuntimeVisibleAnnotationsAttribute) iClassFileAttribute35, stringBuffer, str, i10, i11);
                            }
                            if (iClassFileAttribute38 != null) {
                                disassemble((IRuntimeInvisibleAnnotationsAttribute) iClassFileAttribute38, stringBuffer, str, i10, i11);
                            }
                            if (iClassFileAttribute39 != null) {
                                disassemble((IRuntimeVisibleParameterAnnotationsAttribute) iClassFileAttribute39, stringBuffer, str, i10, i11);
                            }
                            if (iClassFileAttribute40 != null) {
                                disassemble((IRuntimeInvisibleParameterAnnotationsAttribute) iClassFileAttribute40, stringBuffer, str, i10, i11);
                            }
                            if (iClassFileAttribute37 != null) {
                                disassemble((IRuntimeVisibleTypeAnnotationsAttribute) iClassFileAttribute37, stringBuffer, str, i10, i11);
                            }
                            if (iClassFileAttribute36 != null) {
                                disassemble((IRuntimeInvisibleTypeAnnotationsAttribute) iClassFileAttribute36, stringBuffer, str, i10, i11);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    cArr5 = cArr6;
                    i19 = 0;
                    i20 = 1;
                    iParameterAnnotationArr2 = parameterAnnotations2;
                } else {
                    cArr5 = cArr6;
                    i19 = 0;
                    i20 = 1;
                }
                i21 = i18;
                int indexOf2 = CharOperation.indexOf('(', cArr3) + i20;
                StringBuffer stringBuffer42 = new StringBuffer();
                stringBuffer42.append(cArr3, i19, indexOf2);
                int i262 = indexOf2;
                i22 = 0;
                while (i22 < i21) {
                }
                stringBuffer.append(stringBuffer42);
                iClassFileAttribute14 = iClassFileAttribute30;
                i14 = i20;
                iCodeAttribute = codeAttribute;
                iClassFileAttribute11 = iClassFileAttribute25;
                iClassFileAttribute13 = iClassFileAttribute24;
                exceptionAttribute = iMethodInfo.getExceptionAttribute();
                if (exceptionAttribute != null) {
                }
                iClassFileAttribute15 = iClassFileAttribute9;
                if (checkMode(i11, i14)) {
                    stringBuffer.append(" default ");
                    disassembleAsModifier((IAnnotationDefaultAttribute) iClassFileAttribute15, stringBuffer, str, i10, i11);
                }
                if (checkMode(i11, 16)) {
                }
                if (checkMode(i11, 5)) {
                }
                iSignatureAttribute2 = iSignatureAttribute;
                iClassFileAttribute16 = iClassFileAttribute12;
                iClassFileAttribute17 = iClassFileAttribute11;
                if (checkMode(i11, 5)) {
                    disassemble((IMethodParametersAttribute) iClassFileAttribute17, stringBuffer, str, i10, i11);
                }
                if (checkMode(i11, 4)) {
                }
            }
        } else {
            cArr4 = cArr3;
            iClassFileAttribute11 = iClassFileAttribute7;
            iClassFileAttribute12 = iClassFileAttribute10;
            iCodeAttribute = codeAttribute;
            iClassFileAttribute13 = iClassFileAttribute3;
            iClassFileAttribute14 = iClassFileAttribute8;
            i14 = 1;
            cArr5 = cArr2;
        }
        stringBuffer.append(cArr4);
        exceptionAttribute = iMethodInfo.getExceptionAttribute();
        if (exceptionAttribute != null) {
        }
        iClassFileAttribute15 = iClassFileAttribute9;
        if (checkMode(i11, i14)) {
        }
        if (checkMode(i11, 16)) {
        }
        if (checkMode(i11, 5)) {
        }
        iSignatureAttribute2 = iSignatureAttribute;
        iClassFileAttribute16 = iClassFileAttribute12;
        iClassFileAttribute17 = iClassFileAttribute11;
        if (checkMode(i11, 5)) {
        }
        if (checkMode(i11, 4)) {
        }
    }

    public String disassemble(IClassFileReader iClassFileReader, String str) {
        return disassemble(iClassFileReader, str, 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:189:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0333  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String disassemble(IClassFileReader iClassFileReader, String str, int i10) {
        char c10;
        IInnerClassesAttribute iInnerClassesAttribute;
        ISignatureAttribute iSignatureAttribute;
        ISourceAttribute iSourceAttribute;
        IClassFileAttribute iClassFileAttribute;
        INestMembersAttribute iNestMembersAttribute;
        IClassFileAttribute iClassFileAttribute2;
        IClassFileAttribute iClassFileAttribute3;
        IClassFileAttribute iClassFileAttribute4;
        IClassFileAttribute iClassFileAttribute5;
        char[] cArr;
        int i11;
        StringBuffer stringBuffer;
        int i12;
        boolean z10;
        char[] cArr2;
        char[] superclassName;
        char[][] interfaceNames;
        int length;
        int i13;
        IInnerClassesAttribute iInnerClassesAttribute2;
        IModuleAttribute iModuleAttribute;
        IClassFileReader iClassFileReader2;
        int i14;
        INestMembersAttribute iNestMembersAttribute2;
        IClassFileAttribute iClassFileAttribute6;
        ISourceAttribute iSourceAttribute2;
        IClassFileAttribute iClassFileAttribute7;
        IClassFileAttribute iClassFileAttribute8;
        INestHostAttribute iNestHostAttribute;
        IClassFileAttribute iClassFileAttribute9;
        IClassFileAttribute iClassFileAttribute10;
        int i15;
        IClassFileAttribute iClassFileAttribute11;
        IClassFileAttribute iClassFileAttribute12;
        INestMembersAttribute iNestMembersAttribute3;
        IClassFileAttribute iClassFileAttribute13;
        IClassFileAttribute iClassFileAttribute14;
        String versionFromJdkLevel;
        String str2;
        if (iClassFileReader == null) {
            return org.eclipse.jdt.internal.compiler.util.Util.EMPTY_STRING;
        }
        char[] className = iClassFileReader.getClassName();
        if (className == null) {
            return org.eclipse.jdt.internal.compiler.util.Util.EMPTY_STRING;
        }
        char[] replaceOnCopy = CharOperation.replaceOnCopy(className, '/', '.');
        int length2 = replaceOnCopy.length;
        int accessFlags = iClassFileReader.getAccessFlags();
        boolean z11 = (accessFlags & 16384) != 0;
        StringBuffer stringBuffer2 = new StringBuffer();
        ISourceAttribute sourceFileAttribute = iClassFileReader.getSourceFileAttribute();
        ISignatureAttribute iSignatureAttribute2 = (ISignatureAttribute) Util.getAttribute(iClassFileReader, IAttributeNamesConstants.SIGNATURE);
        if (checkMode(i10, 5)) {
            int minorVersion = iClassFileReader.getMinorVersion();
            int majorVersion = iClassFileReader.getMajorVersion();
            stringBuffer2.append(Messages.disassembler_begincommentline);
            if (sourceFileAttribute != null) {
                stringBuffer2.append(Messages.disassembler_sourceattributeheader);
                stringBuffer2.append(sourceFileAttribute.getSourceFileName());
            }
            if (minorVersion == 3 && majorVersion == 45) {
                versionFromJdkLevel = "1.1";
            } else {
                versionFromJdkLevel = CompilerOptions.versionFromJdkLevel((majorVersion << 16) + minorVersion);
                if (versionFromJdkLevel.length() == 0) {
                    versionFromJdkLevel = VERSION_UNKNOWN;
                }
            }
            String str3 = Messages.classfileformat_versiondetails;
            String num = Integer.toString(majorVersion);
            String num2 = Integer.toString(minorVersion);
            if ((accessFlags & 32) != 0) {
                str2 = Messages.classfileformat_superflagisset;
            } else {
                str2 = Messages.classfileformat_superflagisnotset;
            }
            StringBuilder sb2 = new StringBuilder(String.valueOf(str2));
            sb2.append(isDeprecated(iClassFileReader) ? ", deprecated" : org.eclipse.jdt.internal.compiler.util.Util.EMPTY_STRING);
            stringBuffer2.append(Messages.bind(str3, (Object[]) new String[]{versionFromJdkLevel, num, num2, sb2.toString()}));
            writeNewLine(stringBuffer2, str, 0);
            if (iSignatureAttribute2 != null) {
                stringBuffer2.append(Messages.bind(Messages.disassembler_signatureattributeheader, new String(iSignatureAttribute2.getSignature())));
                writeNewLine(stringBuffer2, str, 0);
            }
            c10 = '.';
        } else {
            c10 = '.';
        }
        int lastIndexOf = CharOperation.lastIndexOf(c10, replaceOnCopy);
        if (checkMode(i10, 16) && lastIndexOf != -1) {
            stringBuffer2.append("package ");
            stringBuffer2.append(replaceOnCopy, 0, lastIndexOf);
            stringBuffer2.append(';');
            writeNewLine(stringBuffer2, str, 0);
        }
        INestMembersAttribute nestMembersAttribute = iClassFileReader.getNestMembersAttribute();
        IInnerClassesAttribute innerClassesAttribute = iClassFileReader.getInnerClassesAttribute();
        IClassFileAttribute attribute = Util.getAttribute(iClassFileReader, IAttributeNamesConstants.RUNTIME_VISIBLE_ANNOTATIONS);
        IClassFileAttribute attribute2 = Util.getAttribute(iClassFileReader, IAttributeNamesConstants.RUNTIME_INVISIBLE_ANNOTATIONS);
        IClassFileAttribute attribute3 = Util.getAttribute(iClassFileReader, IAttributeNamesConstants.RUNTIME_VISIBLE_TYPE_ANNOTATIONS);
        IClassFileAttribute attribute4 = Util.getAttribute(iClassFileReader, IAttributeNamesConstants.RUNTIME_INVISIBLE_TYPE_ANNOTATIONS);
        IClassFileAttribute attribute5 = Util.getAttribute(iClassFileReader, IAttributeNamesConstants.BOOTSTRAP_METHODS);
        IModuleAttribute iModuleAttribute2 = (IModuleAttribute) Util.getAttribute(iClassFileReader, IAttributeNamesConstants.MODULE);
        if (checkMode(i10, 1)) {
            if (attribute2 != null) {
                iNestMembersAttribute = nestMembersAttribute;
                iClassFileAttribute2 = attribute;
                iClassFileAttribute3 = attribute4;
                iClassFileAttribute4 = attribute5;
                iClassFileAttribute5 = attribute3;
                iInnerClassesAttribute = innerClassesAttribute;
                iSourceAttribute = sourceFileAttribute;
                iSignatureAttribute = iSignatureAttribute2;
                stringBuffer = stringBuffer2;
                iClassFileAttribute = attribute2;
                cArr = replaceOnCopy;
                i11 = 0;
                disassembleAsModifier((IRuntimeInvisibleAnnotationsAttribute) attribute2, stringBuffer2, str, 0, i10);
                writeNewLine(stringBuffer, str, 0);
            } else {
                iInnerClassesAttribute = innerClassesAttribute;
                iSignatureAttribute = iSignatureAttribute2;
                iSourceAttribute = sourceFileAttribute;
                iClassFileAttribute = attribute2;
                iNestMembersAttribute = nestMembersAttribute;
                iClassFileAttribute2 = attribute;
                iClassFileAttribute3 = attribute4;
                iClassFileAttribute4 = attribute5;
                iClassFileAttribute5 = attribute3;
                cArr = replaceOnCopy;
                i11 = 0;
                stringBuffer = stringBuffer2;
            }
            if (iClassFileAttribute2 != null) {
                disassembleAsModifier((IRuntimeVisibleAnnotationsAttribute) iClassFileAttribute2, stringBuffer, str, 0, i10);
                writeNewLine(stringBuffer, str, i11);
            }
        } else {
            iInnerClassesAttribute = innerClassesAttribute;
            iSignatureAttribute = iSignatureAttribute2;
            iSourceAttribute = sourceFileAttribute;
            iClassFileAttribute = attribute2;
            iNestMembersAttribute = nestMembersAttribute;
            iClassFileAttribute2 = attribute;
            iClassFileAttribute3 = attribute4;
            iClassFileAttribute4 = attribute5;
            iClassFileAttribute5 = attribute3;
            cArr = replaceOnCopy;
            i11 = 0;
            stringBuffer = stringBuffer2;
        }
        if (z11 && checkMode(i10, 16)) {
            decodeModifiersForType(stringBuffer, accessFlags & 1);
        } else {
            if (iInnerClassesAttribute != null) {
                IInnerClassesAttributeEntry[] innerClassAttributesEntries = iInnerClassesAttribute.getInnerClassAttributesEntries();
                int length3 = innerClassAttributesEntries.length;
                int i16 = i11;
                for (int i17 = i16; i17 < length3; i17++) {
                    IInnerClassesAttributeEntry iInnerClassesAttributeEntry = innerClassAttributesEntries[i17];
                    char[] innerClassName = iInnerClassesAttributeEntry.getInnerClassName();
                    if (innerClassName != null && CharOperation.equals(iClassFileReader.getClassName(), innerClassName)) {
                        decodeModifiersForInnerClasses(stringBuffer, iInnerClassesAttributeEntry.getAccessFlags(), false);
                        i16 = 1;
                    }
                }
                i12 = i16;
            } else {
                i12 = 0;
            }
            if (i12 == 0) {
                decodeModifiersForType(stringBuffer, accessFlags);
                if (isSynthetic(iClassFileReader)) {
                    stringBuffer.append("synthetic");
                    stringBuffer.append(Messages.disassembler_space);
                }
            }
        }
        boolean z12 = (accessFlags & 8192) != 0;
        boolean z13 = (32768 & accessFlags) != 0;
        if (z11) {
            stringBuffer.append("enum ");
        } else if (!z13) {
            if (iClassFileReader.isClass()) {
                stringBuffer.append(ExternalAnnotationProvider.CLASS_PREFIX);
            } else {
                if (z12) {
                    stringBuffer.append("@");
                }
                stringBuffer.append("interface ");
                z10 = true;
                if (checkMode(i10, 16)) {
                    char[] cArr3 = cArr;
                    if (!z13) {
                        stringBuffer.append(cArr3);
                    }
                    cArr2 = cArr3;
                } else {
                    int i18 = lastIndexOf + 1;
                    char[] cArr4 = cArr;
                    stringBuffer.append(cArr4, i18, length2 - i18);
                    cArr2 = CharOperation.subarray(cArr4, i18, length2);
                    if (iSignatureAttribute != null) {
                        disassembleGenericSignature(i10, stringBuffer, iSignatureAttribute.getSignature());
                    }
                }
                superclassName = iClassFileReader.getSuperclassName();
                if (superclassName != null) {
                    CharOperation.replace(superclassName, '/', '.');
                    if (!isJavaLangObject(superclassName) && !z11) {
                        stringBuffer.append(" extends ");
                        stringBuffer.append(returnClassName(superclassName, '.', i10));
                    }
                }
                if ((z12 || !checkMode(i10, 16)) && (length = (interfaceNames = iClassFileReader.getInterfaceNames()).length) != 0) {
                    if (!z10) {
                        stringBuffer.append(" extends ");
                    } else {
                        stringBuffer.append(" implements ");
                    }
                    for (i13 = 0; i13 < length; i13++) {
                        if (i13 != 0) {
                            stringBuffer.append(Messages.disassembler_comma);
                            stringBuffer.append(Messages.disassembler_space);
                        }
                        char[] cArr5 = interfaceNames[i13];
                        CharOperation.replace(cArr5, '/', '.');
                        stringBuffer.append(returnClassName(cArr5, '.', i10));
                    }
                }
                if (!z13) {
                    stringBuffer.append(Messages.bind(Messages.disassembler_opentypedeclaration));
                }
                if (checkMode(i10, 4)) {
                    disassemble(iClassFileReader.getConstantPool(), stringBuffer, str, 1);
                }
                if (z13 || iModuleAttribute2 == null) {
                    iInnerClassesAttribute2 = iInnerClassesAttribute;
                    iModuleAttribute = iModuleAttribute2;
                    iClassFileReader2 = iClassFileReader;
                } else {
                    decodeModifiersForModule(stringBuffer, accessFlags);
                    stringBuffer.append(IClasspathAttribute.MODULE);
                    stringBuffer.append(Messages.disassembler_space);
                    stringBuffer.append(iModuleAttribute2.getModuleName());
                    stringBuffer.append(Messages.disassembler_space);
                    stringBuffer.append(Messages.bind(Messages.disassembler_opentypedeclaration));
                    iModuleAttribute = iModuleAttribute2;
                    disassembleModule(iModuleAttribute, stringBuffer, str, 1);
                    iInnerClassesAttribute2 = iInnerClassesAttribute;
                    iClassFileReader2 = iClassFileReader;
                    disassembleModule((IModulePackagesAttribute) Util.getAttribute(iClassFileReader2, IAttributeNamesConstants.MODULE_PACKAGES), stringBuffer, str, 1);
                    disassembleModule((IModuleMainClassAttribute) Util.getAttribute(iClassFileReader2, IAttributeNamesConstants.MODULE_MAIN_CLASS), stringBuffer, str, 1);
                }
                ISignatureAttribute iSignatureAttribute3 = iSignatureAttribute;
                IClassFileAttribute iClassFileAttribute15 = iClassFileAttribute5;
                IClassFileAttribute iClassFileAttribute16 = iClassFileAttribute2;
                IClassFileAttribute iClassFileAttribute17 = iModuleAttribute;
                StringBuffer stringBuffer3 = stringBuffer;
                disassembleTypeMembers(iClassFileReader, cArr2, stringBuffer, str, 1, i10, z11);
                if (checkMode(i10, 5)) {
                    IClassFileAttribute[] attributes = iClassFileReader.getAttributes();
                    int length4 = attributes.length;
                    IEnclosingMethodAttribute iEnclosingMethodAttribute = (IEnclosingMethodAttribute) Util.getAttribute(iClassFileReader2, IAttributeNamesConstants.ENCLOSING_METHOD);
                    INestHostAttribute iNestHostAttribute2 = (INestHostAttribute) Util.getAttribute(iClassFileReader2, IAttributeNamesConstants.NEST_HOST);
                    int i19 = iInnerClassesAttribute2 != null ? length4 - 1 : length4;
                    if (iEnclosingMethodAttribute != null) {
                        i19--;
                    }
                    ISourceAttribute iSourceAttribute3 = iSourceAttribute;
                    if (iSourceAttribute3 != null) {
                        i19--;
                    }
                    if (iSignatureAttribute3 != null) {
                        i19--;
                    }
                    IClassFileAttribute iClassFileAttribute18 = iClassFileAttribute4;
                    if (iClassFileAttribute18 != null) {
                        i19--;
                    }
                    if (iClassFileAttribute17 != null) {
                        i19--;
                    }
                    if (iNestHostAttribute2 != null) {
                        i19--;
                    }
                    if (iNestMembersAttribute != null) {
                        i19--;
                    }
                    if ((iInnerClassesAttribute2 == null && iEnclosingMethodAttribute == null && iNestHostAttribute2 == null && iNestMembersAttribute == null && iClassFileAttribute18 == null && iClassFileAttribute17 == null && i19 == 0) || stringBuffer3.lastIndexOf(str) == stringBuffer3.length() - str.length()) {
                        i14 = 0;
                    } else {
                        i14 = 0;
                        writeNewLine(stringBuffer3, str, 0);
                    }
                    if (iInnerClassesAttribute2 != null) {
                        disassemble(iInnerClassesAttribute2, stringBuffer3, str, 1);
                    }
                    if (iEnclosingMethodAttribute != null) {
                        disassemble(iEnclosingMethodAttribute, stringBuffer3, str, i14);
                    }
                    if (iNestHostAttribute2 != null) {
                        disassemble(iNestHostAttribute2, stringBuffer3, str, i14);
                    }
                    INestMembersAttribute iNestMembersAttribute4 = iNestMembersAttribute;
                    if (iNestMembersAttribute != null) {
                        disassemble(iNestMembersAttribute4, stringBuffer3, str, i14);
                    }
                    if (iClassFileAttribute18 != null) {
                        iNestMembersAttribute2 = iNestMembersAttribute4;
                        iClassFileAttribute6 = iClassFileAttribute18;
                        iSourceAttribute2 = iSourceAttribute3;
                        iClassFileAttribute8 = iClassFileAttribute17;
                        iNestHostAttribute = iNestHostAttribute2;
                        iClassFileAttribute7 = iEnclosingMethodAttribute;
                        disassemble((IBootstrapMethodsAttribute) iClassFileAttribute18, stringBuffer3, str, 0, iClassFileReader.getConstantPool());
                    } else {
                        iNestMembersAttribute2 = iNestMembersAttribute4;
                        iClassFileAttribute6 = iClassFileAttribute18;
                        iSourceAttribute2 = iSourceAttribute3;
                        iClassFileAttribute7 = iEnclosingMethodAttribute;
                        iClassFileAttribute8 = iClassFileAttribute17;
                        iNestHostAttribute = iNestHostAttribute2;
                    }
                    if (checkMode(i10, 4)) {
                        if (iClassFileAttribute16 != null) {
                            disassemble((IRuntimeVisibleAnnotationsAttribute) iClassFileAttribute16, stringBuffer3, str, 0, i10);
                        }
                        IClassFileAttribute iClassFileAttribute19 = iClassFileAttribute;
                        if (iClassFileAttribute19 != null) {
                            disassemble((IRuntimeInvisibleAnnotationsAttribute) iClassFileAttribute19, stringBuffer3, str, 0, i10);
                        }
                        if (iClassFileAttribute15 != null) {
                            iClassFileAttribute9 = iClassFileAttribute15;
                            disassemble((IRuntimeVisibleTypeAnnotationsAttribute) iClassFileAttribute15, stringBuffer3, str, 0, i10);
                        } else {
                            iClassFileAttribute9 = iClassFileAttribute15;
                        }
                        IClassFileAttribute iClassFileAttribute20 = iClassFileAttribute3;
                        if (iClassFileAttribute20 != null) {
                            iClassFileAttribute10 = iClassFileAttribute20;
                            disassemble((IRuntimeInvisibleTypeAnnotationsAttribute) iClassFileAttribute20, stringBuffer3, str, 0, i10);
                        } else {
                            iClassFileAttribute10 = iClassFileAttribute20;
                        }
                        if (length4 != 0) {
                            int i20 = 0;
                            while (i20 < length4) {
                                IClassFileAttribute iClassFileAttribute21 = attributes[i20];
                                if (iClassFileAttribute21 == iInnerClassesAttribute2 || iClassFileAttribute21 == iNestHostAttribute) {
                                    i15 = i20;
                                    iClassFileAttribute11 = iClassFileAttribute16;
                                    iClassFileAttribute12 = iClassFileAttribute8;
                                    iNestMembersAttribute3 = iNestMembersAttribute2;
                                } else {
                                    INestMembersAttribute iNestMembersAttribute5 = iNestMembersAttribute2;
                                    if (iClassFileAttribute21 == iNestMembersAttribute5 || iClassFileAttribute21 == iSourceAttribute2 || iClassFileAttribute21 == iSignatureAttribute3) {
                                        iNestMembersAttribute3 = iNestMembersAttribute5;
                                        i15 = i20;
                                        iClassFileAttribute11 = iClassFileAttribute16;
                                        iClassFileAttribute12 = iClassFileAttribute8;
                                    } else {
                                        IClassFileAttribute iClassFileAttribute22 = iClassFileAttribute7;
                                        if (iClassFileAttribute21 != iClassFileAttribute22 && iClassFileAttribute21 != iClassFileAttribute19) {
                                            IClassFileAttribute iClassFileAttribute23 = iClassFileAttribute16;
                                            if (iClassFileAttribute21 == iClassFileAttribute23 || iClassFileAttribute21 == iClassFileAttribute10 || iClassFileAttribute21 == iClassFileAttribute9) {
                                                iClassFileAttribute11 = iClassFileAttribute23;
                                                iClassFileAttribute14 = iClassFileAttribute22;
                                                iNestMembersAttribute3 = iNestMembersAttribute5;
                                                i15 = i20;
                                                iClassFileAttribute12 = iClassFileAttribute8;
                                                iClassFileAttribute13 = iClassFileAttribute6;
                                                i20 = i15 + 1;
                                                iClassFileAttribute8 = iClassFileAttribute12;
                                                iClassFileAttribute16 = iClassFileAttribute11;
                                                iClassFileAttribute6 = iClassFileAttribute13;
                                                iClassFileAttribute7 = iClassFileAttribute14;
                                                iNestMembersAttribute2 = iNestMembersAttribute3;
                                            } else {
                                                iClassFileAttribute16 = iClassFileAttribute23;
                                                if (!CharOperation.equals(iClassFileAttribute21.getAttributeName(), IAttributeNamesConstants.DEPRECATED) && !CharOperation.equals(iClassFileAttribute21.getAttributeName(), IAttributeNamesConstants.SYNTHETIC)) {
                                                    IClassFileAttribute iClassFileAttribute24 = iClassFileAttribute6;
                                                    if (iClassFileAttribute21 != iClassFileAttribute24) {
                                                        IClassFileAttribute iClassFileAttribute25 = iClassFileAttribute8;
                                                        if (iClassFileAttribute21 != iClassFileAttribute25) {
                                                            iClassFileAttribute12 = iClassFileAttribute25;
                                                            iClassFileAttribute13 = iClassFileAttribute24;
                                                            iClassFileAttribute11 = iClassFileAttribute16;
                                                            iClassFileAttribute14 = iClassFileAttribute22;
                                                            iNestMembersAttribute3 = iNestMembersAttribute5;
                                                            i15 = i20;
                                                            disassemble(iClassFileAttribute21, stringBuffer3, str, 0, i10);
                                                        } else {
                                                            iClassFileAttribute12 = iClassFileAttribute25;
                                                            iClassFileAttribute13 = iClassFileAttribute24;
                                                            iClassFileAttribute14 = iClassFileAttribute22;
                                                            iNestMembersAttribute3 = iNestMembersAttribute5;
                                                            i15 = i20;
                                                            iClassFileAttribute11 = iClassFileAttribute16;
                                                        }
                                                    } else {
                                                        iClassFileAttribute13 = iClassFileAttribute24;
                                                        iClassFileAttribute14 = iClassFileAttribute22;
                                                        iNestMembersAttribute3 = iNestMembersAttribute5;
                                                        i15 = i20;
                                                        iClassFileAttribute11 = iClassFileAttribute16;
                                                        iClassFileAttribute12 = iClassFileAttribute8;
                                                    }
                                                    i20 = i15 + 1;
                                                    iClassFileAttribute8 = iClassFileAttribute12;
                                                    iClassFileAttribute16 = iClassFileAttribute11;
                                                    iClassFileAttribute6 = iClassFileAttribute13;
                                                    iClassFileAttribute7 = iClassFileAttribute14;
                                                    iNestMembersAttribute2 = iNestMembersAttribute3;
                                                }
                                            }
                                        }
                                        iClassFileAttribute14 = iClassFileAttribute22;
                                        iNestMembersAttribute3 = iNestMembersAttribute5;
                                        i15 = i20;
                                        iClassFileAttribute11 = iClassFileAttribute16;
                                        iClassFileAttribute12 = iClassFileAttribute8;
                                        iClassFileAttribute13 = iClassFileAttribute6;
                                        i20 = i15 + 1;
                                        iClassFileAttribute8 = iClassFileAttribute12;
                                        iClassFileAttribute16 = iClassFileAttribute11;
                                        iClassFileAttribute6 = iClassFileAttribute13;
                                        iClassFileAttribute7 = iClassFileAttribute14;
                                        iNestMembersAttribute2 = iNestMembersAttribute3;
                                    }
                                }
                                iClassFileAttribute13 = iClassFileAttribute6;
                                iClassFileAttribute14 = iClassFileAttribute7;
                                i20 = i15 + 1;
                                iClassFileAttribute8 = iClassFileAttribute12;
                                iClassFileAttribute16 = iClassFileAttribute11;
                                iClassFileAttribute6 = iClassFileAttribute13;
                                iClassFileAttribute7 = iClassFileAttribute14;
                                iNestMembersAttribute2 = iNestMembersAttribute3;
                            }
                        }
                    }
                }
                writeNewLine(stringBuffer3, str, 0);
                stringBuffer3.append(Messages.disassembler_closetypedeclaration);
                return stringBuffer3.toString();
            }
        }
        z10 = false;
        if (checkMode(i10, 16)) {
        }
        superclassName = iClassFileReader.getSuperclassName();
        if (superclassName != null) {
        }
        if (z12) {
        }
        if (!z10) {
        }
        while (i13 < length) {
        }
        if (!z13) {
        }
        if (checkMode(i10, 4)) {
        }
        if (z13) {
        }
        iInnerClassesAttribute2 = iInnerClassesAttribute;
        iModuleAttribute = iModuleAttribute2;
        iClassFileReader2 = iClassFileReader;
        ISignatureAttribute iSignatureAttribute32 = iSignatureAttribute;
        IClassFileAttribute iClassFileAttribute152 = iClassFileAttribute5;
        IClassFileAttribute iClassFileAttribute162 = iClassFileAttribute2;
        IClassFileAttribute iClassFileAttribute172 = iModuleAttribute;
        StringBuffer stringBuffer32 = stringBuffer;
        disassembleTypeMembers(iClassFileReader, cArr2, stringBuffer, str, 1, i10, z11);
        if (checkMode(i10, 5)) {
        }
        writeNewLine(stringBuffer32, str, 0);
        stringBuffer32.append(Messages.disassembler_closetypedeclaration);
        return stringBuffer32.toString();
    }

    private void disassemble(IProvidesInfo iProvidesInfo, StringBuffer stringBuffer, String str, int i10) {
        stringBuffer.append("provides");
        stringBuffer.append(Messages.disassembler_space);
        convertModuleNames(stringBuffer, iProvidesInfo.getServiceName());
        stringBuffer.append(Messages.disassembler_space);
        char[][] implementationNames = iProvidesInfo.getImplementationNames();
        if (implementationNames.length > 0) {
            stringBuffer.append("with");
            stringBuffer.append(Messages.disassembler_space);
            int length = implementationNames.length;
            for (int i11 = 0; i11 < length; i11++) {
                if (i11 != 0) {
                    stringBuffer.append(Messages.disassembler_comma);
                    stringBuffer.append(Messages.disassembler_space);
                }
                convertModuleNames(stringBuffer, implementationNames[i11]);
            }
        }
        stringBuffer.append(';');
    }

    private void disassemble(INestHostAttribute iNestHostAttribute, StringBuffer stringBuffer, String str, int i10) {
        writeNewLine(stringBuffer, str, i10);
        writeNewLine(stringBuffer, str, i10);
        stringBuffer.append(Messages.disassembler_nesthost);
        stringBuffer.append(Messages.disassembler_constantpoolindex);
        stringBuffer.append(iNestHostAttribute.getNestHostIndex());
        stringBuffer.append(" ");
        stringBuffer.append(iNestHostAttribute.getNestHostName());
    }

    private void disassemble(INestMembersAttribute iNestMembersAttribute, StringBuffer stringBuffer, String str, int i10) {
        writeNewLine(stringBuffer, str, i10);
        writeNewLine(stringBuffer, str, i10);
        stringBuffer.append(Messages.disassembler_nestmembers);
        int i11 = i10 + 1;
        writeNewLine(stringBuffer, str, i11);
        INestMemberAttributeEntry[] nestMemberAttributesEntries = iNestMembersAttribute.getNestMemberAttributesEntries();
        int length = nestMemberAttributesEntries.length;
        for (int i12 = 0; i12 < length; i12++) {
            if (i12 != 0) {
                stringBuffer.append(Messages.disassembler_comma);
                writeNewLine(stringBuffer, str, i11);
            }
            INestMemberAttributeEntry iNestMemberAttributeEntry = nestMemberAttributesEntries[i12];
            int nestMemberIndex = iNestMemberAttributeEntry.getNestMemberIndex();
            stringBuffer.append(Messages.disassembler_constantpoolindex);
            stringBuffer.append(nestMemberIndex);
            if (nestMemberIndex != 0) {
                stringBuffer.append(Messages.disassembler_space);
                stringBuffer.append(iNestMemberAttributeEntry.getNestMemberName());
            }
        }
    }

    private void disassemble(IPackageVisibilityInfo iPackageVisibilityInfo, StringBuffer stringBuffer, String str, int i10, boolean z10) {
        stringBuffer.append(z10 ? "exports" : "opens");
        stringBuffer.append(Messages.disassembler_space);
        convertModuleNames(stringBuffer, iPackageVisibilityInfo.getPackageName());
        char[][] targetModuleNames = iPackageVisibilityInfo.getTargetModuleNames();
        if (targetModuleNames.length > 0) {
            stringBuffer.append(Messages.disassembler_space);
            stringBuffer.append(TypedValues.TransitionType.S_TO);
            stringBuffer.append(Messages.disassembler_space);
            int length = targetModuleNames.length;
            for (int i11 = 0; i11 < length; i11++) {
                if (i11 != 0) {
                    stringBuffer.append(Messages.disassembler_comma);
                    stringBuffer.append(Messages.disassembler_space);
                }
                stringBuffer.append(targetModuleNames[i11]);
            }
        }
        stringBuffer.append(';');
    }

    private void disassemble(IRequiresInfo iRequiresInfo, StringBuffer stringBuffer, String str, int i10) {
        stringBuffer.append("requires ");
        decodeModifiersForModuleRequires(stringBuffer, iRequiresInfo.getRequiresFlags());
        stringBuffer.append(iRequiresInfo.getRequiresModuleName());
        stringBuffer.append(';');
    }

    private void disassemble(ICodeAttribute iCodeAttribute, char[][] cArr, char[] cArr2, boolean z10, StringBuffer stringBuffer, String str, int i10, int i11) {
        boolean z11;
        String str2;
        StringBuffer stringBuffer2;
        boolean z12;
        boolean z13;
        boolean z14;
        char[] cArr3;
        StringBuffer stringBuffer3 = stringBuffer;
        String str3 = str;
        int i12 = i10 - 1;
        writeNewLine(stringBuffer3, str3, i12);
        try {
            iCodeAttribute.traverse(new DefaultBytecodeVisitor(iCodeAttribute, cArr, cArr2, z10, stringBuffer, str, i10, i11));
        } catch (ClassFormatException unused) {
            dumpTab(i10 + 3, stringBuffer3);
            stringBuffer3.append(Messages.classformat_classformatexception);
            writeNewLine(stringBuffer3, str3, i12);
        }
        int exceptionTableLength = iCodeAttribute.getExceptionTableLength();
        char c10 = '/';
        char c11 = '.';
        if (exceptionTableLength != 0) {
            dumpTab(i10 + 2, stringBuffer3);
            IExceptionTableEntry[] exceptionTable = iCodeAttribute.getExceptionTable();
            stringBuffer3.append(Messages.disassembler_exceptiontableheader);
            int i13 = i10 + 3;
            writeNewLine(stringBuffer3, str3, i13);
            int i14 = 0;
            while (i14 < exceptionTableLength) {
                if (i14 != 0) {
                    writeNewLine(stringBuffer3, str3, i13);
                }
                IExceptionTableEntry iExceptionTableEntry = exceptionTable[i14];
                if (iExceptionTableEntry.getCatchTypeIndex() != 0) {
                    char[] catchType = iExceptionTableEntry.getCatchType();
                    CharOperation.replace(catchType, c10, c11);
                    cArr3 = returnClassName(catchType, c11, i11);
                } else {
                    cArr3 = ANY_EXCEPTION;
                }
                stringBuffer3.append(Messages.bind(Messages.classfileformat_exceptiontableentry, (Object[]) new String[]{Integer.toString(iExceptionTableEntry.getStartPC()), Integer.toString(iExceptionTableEntry.getEndPC()), Integer.toString(iExceptionTableEntry.getHandlerPC()), new String(cArr3)}));
                i14++;
                c10 = '/';
                c11 = '.';
            }
            z11 = false;
        } else {
            z11 = true;
        }
        ILineNumberAttribute lineNumberAttribute = iCodeAttribute.getLineNumberAttribute();
        int lineNumberTableLength = lineNumberAttribute == null ? 0 : lineNumberAttribute.getLineNumberTableLength();
        if (lineNumberTableLength != 0) {
            int i15 = i10 + 2;
            if (!z11) {
                writeNewLine(stringBuffer3, str3, i15);
                z14 = z11;
            } else {
                dumpTab(i15, stringBuffer3);
                z14 = false;
            }
            stringBuffer3.append(Messages.disassembler_linenumberattributeheader);
            int i16 = i10 + 3;
            writeNewLine(stringBuffer3, str3, i16);
            int[][] lineNumberTable = lineNumberAttribute.getLineNumberTable();
            for (int i17 = 0; i17 < lineNumberTableLength; i17++) {
                if (i17 != 0) {
                    writeNewLine(stringBuffer3, str3, i16);
                }
                stringBuffer3.append(Messages.bind(Messages.classfileformat_linenumbertableentry, (Object[]) new String[]{Integer.toString(lineNumberTable[i17][0]), Integer.toString(lineNumberTable[i17][1])}));
            }
            z11 = z14;
        }
        ILocalVariableAttribute localVariableAttribute = iCodeAttribute.getLocalVariableAttribute();
        int localVariableTableLength = localVariableAttribute == null ? 0 : localVariableAttribute.getLocalVariableTableLength();
        if (localVariableTableLength != 0) {
            int i18 = i10 + 2;
            if (!z11) {
                writeNewLine(stringBuffer3, str3, i18);
                z13 = z11;
            } else {
                dumpTab(i18, stringBuffer3);
                z13 = false;
            }
            stringBuffer3.append(Messages.disassembler_localvariabletableattributeheader);
            int i19 = i10 + 3;
            writeNewLine(stringBuffer3, str3, i19);
            ILocalVariableTableEntry[] localVariableTable = localVariableAttribute.getLocalVariableTable();
            int i20 = 0;
            while (i20 < localVariableTableLength) {
                if (i20 != 0) {
                    writeNewLine(stringBuffer3, str3, i19);
                }
                ILocalVariableTableEntry iLocalVariableTableEntry = localVariableTable[i20];
                int index = iLocalVariableTableEntry.getIndex();
                int startPC = iLocalVariableTableEntry.getStartPC();
                int length = iLocalVariableTableEntry.getLength();
                char[] charArray = Signature.toCharArray(iLocalVariableTableEntry.getDescriptor());
                CharOperation.replace(charArray, '/', '.');
                stringBuffer3.append(Messages.bind(Messages.classfileformat_localvariabletableentry, (Object[]) new String[]{Integer.toString(startPC), Integer.toString(startPC + length), new String(iLocalVariableTableEntry.getName()), Integer.toString(index), new String(returnClassName(charArray, '.', i11))}));
                i20++;
                i19 = i19;
                localVariableTableLength = localVariableTableLength;
                z13 = z13;
                localVariableTable = localVariableTable;
            }
            z11 = z13;
        }
        ILocalVariableTypeTableAttribute iLocalVariableTypeTableAttribute = (ILocalVariableTypeTableAttribute) Util.getAttribute(iCodeAttribute, IAttributeNamesConstants.LOCAL_VARIABLE_TYPE_TABLE);
        int localVariableTypeTableLength = iLocalVariableTypeTableAttribute == null ? 0 : iLocalVariableTypeTableAttribute.getLocalVariableTypeTableLength();
        if (localVariableTypeTableLength != 0) {
            int i21 = i10 + 2;
            if (!z11) {
                writeNewLine(stringBuffer3, str3, i21);
                z12 = z11;
            } else {
                dumpTab(i21, stringBuffer3);
                z12 = false;
            }
            stringBuffer3.append(Messages.disassembler_localvariabletypetableattributeheader);
            int i22 = i10 + 3;
            writeNewLine(stringBuffer3, str3, i22);
            ILocalVariableTypeTableEntry[] localVariableTypeTable = iLocalVariableTypeTableAttribute.getLocalVariableTypeTable();
            int i23 = 0;
            while (i23 < localVariableTypeTableLength) {
                if (i23 != 0) {
                    writeNewLine(stringBuffer3, str3, i22);
                }
                ILocalVariableTypeTableEntry iLocalVariableTypeTableEntry = localVariableTypeTable[i23];
                int index2 = iLocalVariableTypeTableEntry.getIndex();
                int startPC2 = iLocalVariableTypeTableEntry.getStartPC();
                int length2 = iLocalVariableTypeTableEntry.getLength();
                char[] charArray2 = Signature.toCharArray(iLocalVariableTypeTableEntry.getSignature());
                CharOperation.replace(charArray2, '/', '.');
                stringBuffer3.append(Messages.bind(Messages.classfileformat_localvariabletableentry, (Object[]) new String[]{Integer.toString(startPC2), Integer.toString(startPC2 + length2), new String(iLocalVariableTypeTableEntry.getName()), Integer.toString(index2), new String(returnClassName(charArray2, '.', i11))}));
                i23++;
                z12 = z12;
                i22 = i22;
                localVariableTypeTableLength = localVariableTypeTableLength;
                localVariableTypeTable = localVariableTypeTable;
            }
            z11 = z12;
        }
        int attributesCount = iCodeAttribute.getAttributesCount();
        if (attributesCount != 0) {
            IClassFileAttribute[] attributes = iCodeAttribute.getAttributes();
            boolean z15 = z11;
            int i24 = 0;
            while (i24 < attributesCount) {
                IClassFileAttribute iClassFileAttribute = attributes[i24];
                if (CharOperation.equals(iClassFileAttribute.getAttributeName(), IAttributeNamesConstants.STACK_MAP_TABLE)) {
                    IStackMapTableAttribute iStackMapTableAttribute = (IStackMapTableAttribute) iClassFileAttribute;
                    if (!z15) {
                        writeNewLine(stringBuffer3, str3, i10 + 2);
                    } else {
                        dumpTab(i10 + 1, stringBuffer3);
                        z15 = false;
                    }
                    int numberOfEntries = iStackMapTableAttribute.getNumberOfEntries();
                    stringBuffer3.append(Messages.bind(Messages.disassembler_stackmaptableattributeheader, Integer.toString(numberOfEntries)));
                    if (numberOfEntries != 0) {
                        str2 = str3;
                        stringBuffer2 = stringBuffer3;
                        disassemble(iStackMapTableAttribute, stringBuffer, str, i10, i11);
                    } else {
                        str2 = str3;
                        stringBuffer2 = stringBuffer3;
                    }
                } else {
                    str2 = str3;
                    stringBuffer2 = stringBuffer3;
                    if (CharOperation.equals(iClassFileAttribute.getAttributeName(), IAttributeNamesConstants.STACK_MAP)) {
                        IStackMapAttribute iStackMapAttribute = (IStackMapAttribute) iClassFileAttribute;
                        if (!z15) {
                            writeNewLine(stringBuffer2, str2, i10 + 2);
                        } else {
                            dumpTab(i10 + 1, stringBuffer2);
                            z15 = false;
                        }
                        int numberOfEntries2 = iStackMapAttribute.getNumberOfEntries();
                        stringBuffer2.append(Messages.bind(Messages.disassembler_stackmapattributeheader, Integer.toString(numberOfEntries2)));
                        if (numberOfEntries2 != 0) {
                            disassemble(iStackMapAttribute, stringBuffer, str, i10, i11);
                        }
                    } else if (CharOperation.equals(iClassFileAttribute.getAttributeName(), IAttributeNamesConstants.RUNTIME_VISIBLE_TYPE_ANNOTATIONS)) {
                        disassemble((IRuntimeVisibleTypeAnnotationsAttribute) iClassFileAttribute, stringBuffer, str, i10, i11);
                    } else if (CharOperation.equals(iClassFileAttribute.getAttributeName(), IAttributeNamesConstants.RUNTIME_INVISIBLE_TYPE_ANNOTATIONS)) {
                        disassemble((IRuntimeInvisibleTypeAnnotationsAttribute) iClassFileAttribute, stringBuffer, str, i10, i11);
                    } else if (iClassFileAttribute != lineNumberAttribute && iClassFileAttribute != localVariableAttribute && iClassFileAttribute != iLocalVariableTypeTableAttribute) {
                        if (!z15) {
                            writeNewLine(stringBuffer2, str2, i10 + 2);
                        } else {
                            dumpTab(i10 + 1, stringBuffer2);
                            z15 = false;
                        }
                        stringBuffer2.append(Messages.bind(Messages.disassembler_genericattributeheader, (Object[]) new String[]{new String(iClassFileAttribute.getAttributeName()), Long.toString(iClassFileAttribute.getAttributeLength())}));
                    }
                }
                i24++;
                str3 = str2;
                stringBuffer3 = stringBuffer2;
            }
        }
    }

    private void disassemble(IStackMapTableAttribute iStackMapTableAttribute, StringBuffer stringBuffer, String str, int i10, int i11) {
        int i12 = i10 + 3;
        writeNewLine(stringBuffer, str, i12);
        int numberOfEntries = iStackMapTableAttribute.getNumberOfEntries();
        IStackMapFrame[] stackMapFrame = iStackMapTableAttribute.getStackMapFrame();
        int i13 = -1;
        for (int i14 = 0; i14 < numberOfEntries; i14++) {
            if (i14 > 0) {
                writeNewLine(stringBuffer, str, i12);
            }
            IStackMapFrame iStackMapFrame = stackMapFrame[i14];
            int frameType = iStackMapFrame.getFrameType();
            int offsetDelta = iStackMapFrame.getOffsetDelta();
            i13 = i13 == -1 ? offsetDelta : i13 + offsetDelta + 1;
            switch (frameType) {
                case 247:
                    stringBuffer.append(Messages.bind(Messages.disassembler_frame_same_locals_1_stack_item_extended, Integer.toString(i13), disassemble(iStackMapFrame.getStackItems(), i11)));
                    break;
                case 248:
                case 249:
                case 250:
                    stringBuffer.append(Messages.bind(Messages.disassembler_frame_chop, Integer.toString(i13), Integer.toString(251 - frameType)));
                    break;
                case 251:
                    stringBuffer.append(Messages.bind(Messages.disassembler_frame_same_frame_extended, Integer.toString(i13)));
                    break;
                case 252:
                case 253:
                case 254:
                    stringBuffer.append(Messages.bind(Messages.disassembler_frame_append, Integer.toString(i13), disassemble(iStackMapFrame.getLocals(), i11)));
                    break;
                case 255:
                    stringBuffer.append(Messages.bind(Messages.disassembler_frame_full_frame, (Object[]) new String[]{Integer.toString(i13), Integer.toString(iStackMapFrame.getNumberOfLocals()), disassemble(iStackMapFrame.getLocals(), i11), Integer.toString(iStackMapFrame.getNumberOfStackItems()), disassemble(iStackMapFrame.getStackItems(), i11), dumpNewLineWithTabs(str, i10 + 5)}));
                    break;
                default:
                    if (frameType <= 63) {
                        stringBuffer.append(Messages.bind(Messages.disassembler_frame_same_frame, Integer.toString(i13)));
                        break;
                    } else if (frameType <= 127) {
                        stringBuffer.append(Messages.bind(Messages.disassembler_frame_same_locals_1_stack_item, Integer.toString(i13), disassemble(iStackMapFrame.getStackItems(), i11)));
                        break;
                    } else {
                        break;
                    }
            }
        }
    }

    private void disassemble(IStackMapAttribute iStackMapAttribute, StringBuffer stringBuffer, String str, int i10, int i11) {
        int i12 = i10 + 3;
        writeNewLine(stringBuffer, str, i12);
        int numberOfEntries = iStackMapAttribute.getNumberOfEntries();
        IStackMapFrame[] stackMapFrame = iStackMapAttribute.getStackMapFrame();
        for (int i13 = 0; i13 < numberOfEntries; i13++) {
            if (i13 > 0) {
                writeNewLine(stringBuffer, str, i12);
            }
            IStackMapFrame iStackMapFrame = stackMapFrame[i13];
            stringBuffer.append(Messages.bind(Messages.disassembler_frame_full_frame, (Object[]) new String[]{Integer.toString(iStackMapFrame.getOffsetDelta()), Integer.toString(iStackMapFrame.getNumberOfLocals()), disassemble(iStackMapFrame.getLocals(), i11), Integer.toString(iStackMapFrame.getNumberOfStackItems()), disassemble(iStackMapFrame.getStackItems(), i11), dumpNewLineWithTabs(str, i10 + 5)}));
        }
    }

    private void disassemble(IConstantPool iConstantPool, StringBuffer stringBuffer, String str, int i10) {
        writeNewLine(stringBuffer, str, i10);
        int constantPoolCount = iConstantPool.getConstantPoolCount();
        stringBuffer.append(Messages.disassembler_constantpoolheader);
        int i11 = i10 + 1;
        writeNewLine(stringBuffer, str, i11);
        for (int i12 = 1; i12 < constantPoolCount; i12++) {
            if (i12 != 1) {
                writeNewLine(stringBuffer, str, i11);
            }
            IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(i12);
            switch (iConstantPool.getEntryKind(i12)) {
                case 1:
                    stringBuffer.append(Messages.bind(Messages.disassembler_constantpool_utf8, (Object[]) new String[]{Integer.toString(i12), decodeStringValue(new String(decodeEntry.getUtf8Value()))}));
                    break;
                case 3:
                    stringBuffer.append(Messages.bind(Messages.disassembler_constantpool_integer, (Object[]) new String[]{Integer.toString(i12), Integer.toString(decodeEntry.getIntegerValue())}));
                    break;
                case 4:
                    stringBuffer.append(Messages.bind(Messages.disassembler_constantpool_float, (Object[]) new String[]{Integer.toString(i12), Float.toString(decodeEntry.getFloatValue())}));
                    break;
                case 5:
                    stringBuffer.append(Messages.bind(Messages.disassembler_constantpool_long, (Object[]) new String[]{Integer.toString(i12), Long.toString(decodeEntry.getLongValue())}));
                    break;
                case 6:
                    stringBuffer.append(Messages.bind(Messages.disassembler_constantpool_double, (Object[]) new String[]{Integer.toString(i12), Double.toString(decodeEntry.getDoubleValue())}));
                    break;
                case 7:
                    stringBuffer.append(Messages.bind(Messages.disassembler_constantpool_class, (Object[]) new String[]{Integer.toString(i12), Integer.toString(decodeEntry.getClassInfoNameIndex()), new String(decodeEntry.getClassInfoName())}));
                    break;
                case 8:
                    stringBuffer.append(Messages.bind(Messages.disassembler_constantpool_string, (Object[]) new String[]{Integer.toString(i12), Integer.toString(decodeEntry.getStringIndex()), decodeStringValue(decodeEntry.getStringValue())}));
                    break;
                case 9:
                    stringBuffer.append(Messages.bind(Messages.disassembler_constantpool_fieldref, (Object[]) new String[]{Integer.toString(i12), Integer.toString(decodeEntry.getClassIndex()), Integer.toString(decodeEntry.getNameAndTypeIndex()), new String(decodeEntry.getClassName()), new String(decodeEntry.getFieldName()), new String(decodeEntry.getFieldDescriptor())}));
                    break;
                case 10:
                    String[] methodDescription = methodDescription(decodeEntry);
                    stringBuffer.append(Messages.bind(Messages.disassembler_constantpool_methodref, (Object[]) new String[]{Integer.toString(i12), Integer.toString(decodeEntry.getClassIndex()), Integer.toString(decodeEntry.getNameAndTypeIndex()), methodDescription[0], methodDescription[1], methodDescription[2]}));
                    break;
                case 11:
                    String[] methodDescription2 = methodDescription(decodeEntry);
                    stringBuffer.append(Messages.bind(Messages.disassembler_constantpool_interfacemethodref, (Object[]) new String[]{Integer.toString(i12), Integer.toString(decodeEntry.getClassIndex()), Integer.toString(decodeEntry.getNameAndTypeIndex()), methodDescription2[0], methodDescription2[1], methodDescription2[2]}));
                    break;
                case 12:
                    int nameAndTypeInfoNameIndex = decodeEntry.getNameAndTypeInfoNameIndex();
                    int nameAndTypeInfoDescriptorIndex = decodeEntry.getNameAndTypeInfoDescriptorIndex();
                    stringBuffer.append(Messages.bind(Messages.disassembler_constantpool_name_and_type, (Object[]) new String[]{Integer.toString(i12), Integer.toString(nameAndTypeInfoNameIndex), Integer.toString(nameAndTypeInfoDescriptorIndex), String.valueOf(iConstantPool.decodeEntry(nameAndTypeInfoNameIndex).getUtf8Value()), String.valueOf(iConstantPool.decodeEntry(nameAndTypeInfoDescriptorIndex).getUtf8Value())}));
                    break;
                case 15:
                    IConstantPoolEntry2 iConstantPoolEntry2 = (IConstantPoolEntry2) decodeEntry;
                    stringBuffer.append(Messages.bind(Messages.disassembler_constantpool_methodhandle, (Object[]) new String[]{Integer.toString(i12), getReferenceKind(iConstantPoolEntry2.getReferenceKind()), Integer.toString(iConstantPoolEntry2.getReferenceIndex())}));
                    break;
                case 16:
                    IConstantPoolEntry2 iConstantPoolEntry22 = (IConstantPoolEntry2) decodeEntry;
                    stringBuffer.append(Messages.bind(Messages.disassembler_constantpool_methodtype, (Object[]) new String[]{Integer.toString(i12), Integer.toString(iConstantPoolEntry22.getDescriptorIndex()), String.valueOf(iConstantPoolEntry22.getMethodDescriptor())}));
                    break;
                case 17:
                    IConstantPoolEntry2 iConstantPoolEntry23 = (IConstantPoolEntry2) decodeEntry;
                    stringBuffer.append(Messages.bind(Messages.disassembler_constantpool_dynamic, (Object[]) new String[]{Integer.toString(i12), Integer.toString(iConstantPoolEntry23.getBootstrapMethodAttributeIndex()), Integer.toString(iConstantPoolEntry23.getNameAndTypeIndex()), new String(decodeEntry.getFieldName()), new String(decodeEntry.getFieldDescriptor())}));
                    break;
                case 18:
                    IConstantPoolEntry2 iConstantPoolEntry24 = (IConstantPoolEntry2) decodeEntry;
                    stringBuffer.append(Messages.bind(Messages.disassembler_constantpool_invokedynamic, (Object[]) new String[]{Integer.toString(i12), Integer.toString(iConstantPoolEntry24.getBootstrapMethodAttributeIndex()), Integer.toString(iConstantPoolEntry24.getNameAndTypeIndex()), new String(decodeEntry.getMethodName()), new String(decodeEntry.getMethodDescriptor())}));
                    break;
            }
        }
    }

    private void disassemble(IEnclosingMethodAttribute iEnclosingMethodAttribute, StringBuffer stringBuffer, String str, int i10) {
        writeNewLine(stringBuffer, str, i10 + 1);
        stringBuffer.append(Messages.disassembler_enclosingmethodheader);
        stringBuffer.append(Messages.disassembler_constantpoolindex);
        stringBuffer.append(iEnclosingMethodAttribute.getEnclosingClassIndex());
        stringBuffer.append(" ");
        stringBuffer.append(Messages.disassembler_constantpoolindex);
        stringBuffer.append(iEnclosingMethodAttribute.getMethodNameAndTypeIndex());
        stringBuffer.append(" ");
        stringBuffer.append(iEnclosingMethodAttribute.getEnclosingClass());
        if (iEnclosingMethodAttribute.getMethodNameAndTypeIndex() != 0) {
            stringBuffer.append(".");
            stringBuffer.append(iEnclosingMethodAttribute.getMethodName());
            stringBuffer.append(iEnclosingMethodAttribute.getMethodDescriptor());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x022e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void disassemble(IFieldInfo iFieldInfo, StringBuffer stringBuffer, String str, int i10, int i11) {
        IClassFileAttribute iClassFileAttribute;
        IClassFileAttribute iClassFileAttribute2;
        IClassFileAttribute iClassFileAttribute3;
        int i12;
        IClassFileAttribute iClassFileAttribute4;
        IClassFileAttribute iClassFileAttribute5;
        IConstantValueAttribute iConstantValueAttribute;
        writeNewLine(stringBuffer, str, i10);
        char[] descriptor = iFieldInfo.getDescriptor();
        ISignatureAttribute iSignatureAttribute = (ISignatureAttribute) Util.getAttribute(iFieldInfo, IAttributeNamesConstants.SIGNATURE);
        if (checkMode(i11, 5)) {
            stringBuffer.append(Messages.bind(Messages.classfileformat_fieldddescriptor, (Object[]) new String[]{Integer.toString(iFieldInfo.getDescriptorIndex()), new String(descriptor)}));
            if (iFieldInfo.isDeprecated()) {
                stringBuffer.append(Messages.disassembler_deprecated);
            }
            writeNewLine(stringBuffer, str, i10);
            if (iSignatureAttribute != null) {
                stringBuffer.append(Messages.bind(Messages.disassembler_signatureattributeheader, new String(iSignatureAttribute.getSignature())));
                writeNewLine(stringBuffer, str, i10);
            }
        }
        IClassFileAttribute attribute = Util.getAttribute(iFieldInfo, IAttributeNamesConstants.RUNTIME_VISIBLE_ANNOTATIONS);
        IClassFileAttribute attribute2 = Util.getAttribute(iFieldInfo, IAttributeNamesConstants.RUNTIME_INVISIBLE_ANNOTATIONS);
        IClassFileAttribute attribute3 = Util.getAttribute(iFieldInfo, IAttributeNamesConstants.RUNTIME_VISIBLE_TYPE_ANNOTATIONS);
        IClassFileAttribute attribute4 = Util.getAttribute(iFieldInfo, IAttributeNamesConstants.RUNTIME_INVISIBLE_TYPE_ANNOTATIONS);
        if (checkMode(i11, 1)) {
            if (attribute2 != null) {
                iClassFileAttribute = attribute4;
                iClassFileAttribute2 = attribute3;
                iClassFileAttribute3 = attribute2;
                disassembleAsModifier((IRuntimeInvisibleAnnotationsAttribute) attribute2, stringBuffer, str, i10, i11);
                writeNewLine(stringBuffer, str, i10);
            } else {
                iClassFileAttribute = attribute4;
                iClassFileAttribute2 = attribute3;
                iClassFileAttribute3 = attribute2;
            }
            if (attribute != null) {
                disassembleAsModifier((IRuntimeVisibleAnnotationsAttribute) attribute, stringBuffer, str, i10, i11);
                writeNewLine(stringBuffer, str, i10);
            }
        } else {
            iClassFileAttribute = attribute4;
            iClassFileAttribute2 = attribute3;
            iClassFileAttribute3 = attribute2;
        }
        if (checkMode(i11, 16)) {
            decodeModifiersForFieldForWorkingCopy(stringBuffer, iFieldInfo.getAccessFlags());
            if (iSignatureAttribute != null) {
                stringBuffer.append(returnClassName(getSignatureForField(iSignatureAttribute.getSignature()), '.', i11));
            } else {
                stringBuffer.append(returnClassName(getSignatureForField(descriptor), '.', i11));
            }
        } else {
            decodeModifiersForField(stringBuffer, iFieldInfo.getAccessFlags());
            if (iFieldInfo.isSynthetic()) {
                stringBuffer.append("synthetic");
                stringBuffer.append(Messages.disassembler_space);
            }
            stringBuffer.append(returnClassName(getSignatureForField(descriptor), '.', i11));
        }
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append(new String(iFieldInfo.getName()));
        IConstantValueAttribute constantValueAttribute = iFieldInfo.getConstantValueAttribute();
        if (constantValueAttribute != null) {
            stringBuffer.append(Messages.disassembler_fieldhasconstant);
            IConstantPoolEntry constantValue = constantValueAttribute.getConstantValue();
            int kind = constantValue.getKind();
            if (kind == 3) {
                i12 = 0;
                char c10 = descriptor[0];
                if (c10 == 'B') {
                    stringBuffer.append(constantValue.getIntegerValue());
                } else if (c10 == 'C') {
                    stringBuffer.append("'" + ((char) constantValue.getIntegerValue()) + "'");
                } else if (c10 == 'I') {
                    stringBuffer.append(constantValue.getIntegerValue());
                } else if (c10 == 'S') {
                    stringBuffer.append(constantValue.getIntegerValue());
                } else if (c10 == 'Z') {
                    stringBuffer.append(constantValue.getIntegerValue() == 1 ? "true" : "false");
                }
                stringBuffer.append(Messages.disassembler_endoffieldheader);
                if (checkMode(i11, 4)) {
                    return;
                }
                IClassFileAttribute[] attributes = iFieldInfo.getAttributes();
                int length = attributes.length;
                if (length != 0) {
                    int i13 = i12;
                    while (i13 < length) {
                        IClassFileAttribute iClassFileAttribute6 = attributes[i13];
                        if (iClassFileAttribute6 == constantValueAttribute || iClassFileAttribute6 == iSignatureAttribute) {
                            iClassFileAttribute4 = iClassFileAttribute2;
                            iClassFileAttribute5 = iClassFileAttribute3;
                        } else {
                            IClassFileAttribute iClassFileAttribute7 = iClassFileAttribute3;
                            if (iClassFileAttribute6 != iClassFileAttribute7 && iClassFileAttribute6 != attribute) {
                                IClassFileAttribute iClassFileAttribute8 = iClassFileAttribute;
                                if (iClassFileAttribute6 != iClassFileAttribute8) {
                                    IClassFileAttribute iClassFileAttribute9 = iClassFileAttribute2;
                                    if (iClassFileAttribute6 != iClassFileAttribute9) {
                                        iClassFileAttribute2 = iClassFileAttribute9;
                                        if (!CharOperation.equals(iClassFileAttribute6.getAttributeName(), IAttributeNamesConstants.DEPRECATED) && !CharOperation.equals(iClassFileAttribute6.getAttributeName(), IAttributeNamesConstants.SYNTHETIC)) {
                                            iClassFileAttribute4 = iClassFileAttribute2;
                                            iClassFileAttribute = iClassFileAttribute8;
                                            iClassFileAttribute5 = iClassFileAttribute7;
                                            iConstantValueAttribute = constantValueAttribute;
                                            disassemble(iClassFileAttribute6, stringBuffer, str, i10, i11);
                                            i13++;
                                            constantValueAttribute = iConstantValueAttribute;
                                            iClassFileAttribute3 = iClassFileAttribute5;
                                            iClassFileAttribute2 = iClassFileAttribute4;
                                        }
                                    } else {
                                        iClassFileAttribute4 = iClassFileAttribute9;
                                        iClassFileAttribute = iClassFileAttribute8;
                                        iClassFileAttribute5 = iClassFileAttribute7;
                                    }
                                }
                                iClassFileAttribute = iClassFileAttribute8;
                            }
                            iConstantValueAttribute = constantValueAttribute;
                            iClassFileAttribute4 = iClassFileAttribute2;
                            iClassFileAttribute5 = iClassFileAttribute7;
                            i13++;
                            constantValueAttribute = iConstantValueAttribute;
                            iClassFileAttribute3 = iClassFileAttribute5;
                            iClassFileAttribute2 = iClassFileAttribute4;
                        }
                        iConstantValueAttribute = constantValueAttribute;
                        i13++;
                        constantValueAttribute = iConstantValueAttribute;
                        iClassFileAttribute3 = iClassFileAttribute5;
                        iClassFileAttribute2 = iClassFileAttribute4;
                    }
                }
                IClassFileAttribute iClassFileAttribute10 = iClassFileAttribute2;
                IClassFileAttribute iClassFileAttribute11 = iClassFileAttribute3;
                if (attribute != null) {
                    disassemble((IRuntimeVisibleAnnotationsAttribute) attribute, stringBuffer, str, i10, i11);
                }
                if (iClassFileAttribute11 != null) {
                    disassemble((IRuntimeInvisibleAnnotationsAttribute) iClassFileAttribute11, stringBuffer, str, i10, i11);
                }
                if (iClassFileAttribute10 != null) {
                    disassemble((IRuntimeVisibleTypeAnnotationsAttribute) iClassFileAttribute10, stringBuffer, str, i10, i11);
                }
                if (iClassFileAttribute != null) {
                    disassemble((IRuntimeInvisibleTypeAnnotationsAttribute) iClassFileAttribute, stringBuffer, str, i10, i11);
                    return;
                }
                return;
            }
            if (kind == 4) {
                stringBuffer.append(String.valueOf(constantValue.getFloatValue()) + "f");
            } else if (kind == 5) {
                stringBuffer.append(String.valueOf(constantValue.getLongValue()) + "L");
            } else if (kind == 6) {
                double doubleValue = constantValue.getDoubleValue();
                if (!checkMode(i11, 16)) {
                    stringBuffer.append(constantValue.getDoubleValue());
                } else if (doubleValue == Double.POSITIVE_INFINITY) {
                    stringBuffer.append("1.0 / 0.0");
                } else if (doubleValue == Double.NEGATIVE_INFINITY) {
                    stringBuffer.append("-1.0 / 0.0");
                } else {
                    stringBuffer.append(constantValue.getDoubleValue());
                }
            } else if (kind == 8) {
                stringBuffer.append(JavadocConstants.ANCHOR_PREFIX_END + decodeStringValue(constantValue.getStringValue()) + JavadocConstants.ANCHOR_PREFIX_END);
            }
        }
        i12 = 0;
        stringBuffer.append(Messages.disassembler_endoffieldheader);
        if (checkMode(i11, 4)) {
        }
    }

    private void disassemble(IInnerClassesAttribute iInnerClassesAttribute, StringBuffer stringBuffer, String str, int i10) {
        writeNewLine(stringBuffer, str, i10);
        stringBuffer.append(Messages.disassembler_innerattributesheader);
        int i11 = i10 + 1;
        writeNewLine(stringBuffer, str, i11);
        IInnerClassesAttributeEntry[] innerClassAttributesEntries = iInnerClassesAttribute.getInnerClassAttributesEntries();
        int length = innerClassAttributesEntries.length;
        for (int i12 = 0; i12 < length; i12++) {
            if (i12 != 0) {
                stringBuffer.append(Messages.disassembler_comma);
                writeNewLine(stringBuffer, str, i11);
            }
            IInnerClassesAttributeEntry iInnerClassesAttributeEntry = innerClassAttributesEntries[i12];
            int innerClassNameIndex = iInnerClassesAttributeEntry.getInnerClassNameIndex();
            int outerClassNameIndex = iInnerClassesAttributeEntry.getOuterClassNameIndex();
            int innerNameIndex = iInnerClassesAttributeEntry.getInnerNameIndex();
            int accessFlags = iInnerClassesAttributeEntry.getAccessFlags();
            stringBuffer.append(Messages.disassembler_openinnerclassentry);
            stringBuffer.append(Messages.disassembler_inner_class_info_name);
            stringBuffer.append(Messages.disassembler_constantpoolindex);
            stringBuffer.append(innerClassNameIndex);
            if (innerClassNameIndex != 0) {
                stringBuffer.append(Messages.disassembler_space);
                stringBuffer.append(iInnerClassesAttributeEntry.getInnerClassName());
            }
            stringBuffer.append(Messages.disassembler_comma);
            stringBuffer.append(Messages.disassembler_space);
            stringBuffer.append(Messages.disassembler_outer_class_info_name);
            stringBuffer.append(Messages.disassembler_constantpoolindex);
            stringBuffer.append(outerClassNameIndex);
            if (outerClassNameIndex != 0) {
                stringBuffer.append(Messages.disassembler_space);
                stringBuffer.append(iInnerClassesAttributeEntry.getOuterClassName());
            }
            writeNewLine(stringBuffer, str, i10);
            dumpTab(i10, stringBuffer);
            stringBuffer.append(Messages.disassembler_space);
            stringBuffer.append(Messages.disassembler_inner_name);
            stringBuffer.append(Messages.disassembler_constantpoolindex);
            stringBuffer.append(innerNameIndex);
            if (innerNameIndex != 0) {
                stringBuffer.append(Messages.disassembler_space);
                stringBuffer.append(iInnerClassesAttributeEntry.getInnerName());
            }
            stringBuffer.append(Messages.disassembler_comma);
            stringBuffer.append(Messages.disassembler_space);
            stringBuffer.append(Messages.disassembler_inner_accessflags);
            stringBuffer.append(accessFlags);
            stringBuffer.append(Messages.disassembler_space);
            decodeModifiersForInnerClasses(stringBuffer, accessFlags, true);
            stringBuffer.append(Messages.disassembler_closeinnerclassentry);
        }
    }

    private void disassemble(IBootstrapMethodsAttribute iBootstrapMethodsAttribute, StringBuffer stringBuffer, String str, int i10, IConstantPool iConstantPool) {
        writeNewLine(stringBuffer, str, i10);
        stringBuffer.append(Messages.disassembler_bootstrapmethodattributesheader);
        int i11 = i10 + 1;
        writeNewLine(stringBuffer, str, i11);
        IBootstrapMethodsEntry[] bootstrapMethods = iBootstrapMethodsAttribute.getBootstrapMethods();
        int length = bootstrapMethods.length;
        for (int i12 = 0; i12 < length; i12++) {
            if (i12 != 0) {
                stringBuffer.append(Messages.disassembler_comma);
                writeNewLine(stringBuffer, str, i11);
            }
            IBootstrapMethodsEntry iBootstrapMethodsEntry = bootstrapMethods[i12];
            stringBuffer.append(Messages.bind(Messages.disassembler_bootstrapmethodentry, (Object[]) new String[]{Integer.toString(i12), Integer.toString(iBootstrapMethodsEntry.getBootstrapMethodReference()), bootstrapMethodDescription(iBootstrapMethodsEntry, iConstantPool), getArguments(iBootstrapMethodsEntry.getBootstrapArguments(), bootstrapArgumentsDescription(iBootstrapMethodsEntry, iConstantPool))}));
        }
    }

    private void disassemble(int i10, IParameterAnnotation iParameterAnnotation, StringBuffer stringBuffer, String str, int i11, int i12) {
        IAnnotation[] annotations = iParameterAnnotation.getAnnotations();
        int i13 = i11 + 1;
        writeNewLine(stringBuffer, str, i13);
        stringBuffer.append(Messages.bind(Messages.disassembler_parameterannotationentrystart, (Object[]) new String[]{Integer.toString(i10), Integer.toString(annotations.length)}));
        for (IAnnotation iAnnotation : annotations) {
            disassemble(iAnnotation, stringBuffer, str, i13, i12);
        }
    }

    private void disassemble(IRuntimeInvisibleAnnotationsAttribute iRuntimeInvisibleAnnotationsAttribute, StringBuffer stringBuffer, String str, int i10, int i11) {
        int i12 = i10 + 1;
        writeNewLine(stringBuffer, str, i12);
        stringBuffer.append(Messages.disassembler_runtimeinvisibleannotationsattributeheader);
        for (IAnnotation iAnnotation : iRuntimeInvisibleAnnotationsAttribute.getAnnotations()) {
            disassemble(iAnnotation, stringBuffer, str, i12, i11);
        }
    }

    private void disassemble(IRuntimeInvisibleParameterAnnotationsAttribute iRuntimeInvisibleParameterAnnotationsAttribute, StringBuffer stringBuffer, String str, int i10, int i11) {
        int i12 = i10 + 1;
        writeNewLine(stringBuffer, str, i12);
        stringBuffer.append(Messages.disassembler_runtimeinvisibleparameterannotationsattributeheader);
        IParameterAnnotation[] parameterAnnotations = iRuntimeInvisibleParameterAnnotationsAttribute.getParameterAnnotations();
        int length = parameterAnnotations.length;
        for (int i13 = 0; i13 < length; i13++) {
            disassemble(i13, parameterAnnotations[i13], stringBuffer, str, i12, i11);
        }
    }

    private void disassemble(IRuntimeInvisibleTypeAnnotationsAttribute iRuntimeInvisibleTypeAnnotationsAttribute, StringBuffer stringBuffer, String str, int i10, int i11) {
        int i12 = i10 + 1;
        writeNewLine(stringBuffer, str, i12);
        stringBuffer.append(Messages.disassembler_runtimeinvisibletypeannotationsattributeheader);
        for (IExtendedAnnotation iExtendedAnnotation : iRuntimeInvisibleTypeAnnotationsAttribute.getExtendedAnnotations()) {
            disassemble(iExtendedAnnotation, stringBuffer, str, i12, i11);
        }
    }

    private void disassemble(IRuntimeVisibleAnnotationsAttribute iRuntimeVisibleAnnotationsAttribute, StringBuffer stringBuffer, String str, int i10, int i11) {
        int i12 = i10 + 1;
        writeNewLine(stringBuffer, str, i12);
        stringBuffer.append(Messages.disassembler_runtimevisibleannotationsattributeheader);
        for (IAnnotation iAnnotation : iRuntimeVisibleAnnotationsAttribute.getAnnotations()) {
            disassemble(iAnnotation, stringBuffer, str, i12, i11);
        }
    }

    private void disassemble(IRuntimeVisibleParameterAnnotationsAttribute iRuntimeVisibleParameterAnnotationsAttribute, StringBuffer stringBuffer, String str, int i10, int i11) {
        int i12 = i10 + 1;
        writeNewLine(stringBuffer, str, i12);
        stringBuffer.append(Messages.disassembler_runtimevisibleparameterannotationsattributeheader);
        IParameterAnnotation[] parameterAnnotations = iRuntimeVisibleParameterAnnotationsAttribute.getParameterAnnotations();
        int length = parameterAnnotations.length;
        for (int i13 = 0; i13 < length; i13++) {
            disassemble(i13, parameterAnnotations[i13], stringBuffer, str, i12, i11);
        }
    }

    private void disassemble(IRuntimeVisibleTypeAnnotationsAttribute iRuntimeVisibleTypeAnnotationsAttribute, StringBuffer stringBuffer, String str, int i10, int i11) {
        int i12 = i10 + 1;
        writeNewLine(stringBuffer, str, i12);
        stringBuffer.append(Messages.disassembler_runtimevisibletypeannotationsattributeheader);
        for (IExtendedAnnotation iExtendedAnnotation : iRuntimeVisibleTypeAnnotationsAttribute.getExtendedAnnotations()) {
            disassemble(iExtendedAnnotation, stringBuffer, str, i12, i11);
        }
    }

    private String disassemble(IVerificationTypeInfo[] iVerificationTypeInfoArr, int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        int length = iVerificationTypeInfoArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (i11 != 0) {
                stringBuffer.append(Messages.disassembler_comma);
                stringBuffer.append(Messages.disassembler_space);
            }
            switch (iVerificationTypeInfoArr[i11].getTag()) {
                case 0:
                    stringBuffer.append(ConstantDescs.DEFAULT_NAME);
                    break;
                case 1:
                    stringBuffer.append("int");
                    break;
                case 2:
                    stringBuffer.append(TypedValues.Custom.S_FLOAT);
                    break;
                case 3:
                    stringBuffer.append("double");
                    break;
                case 4:
                    stringBuffer.append("long");
                    break;
                case 5:
                    stringBuffer.append("null");
                    break;
                case 6:
                    stringBuffer.append("uninitialized_this");
                    break;
                case 7:
                    char[] classTypeName = iVerificationTypeInfoArr[i11].getClassTypeName();
                    CharOperation.replace(classTypeName, '/', '.');
                    if (classTypeName.length > 0 && classTypeName[0] == '[') {
                        classTypeName = Signature.toCharArray(classTypeName);
                    }
                    stringBuffer.append(returnClassName(classTypeName, '.', i10));
                    break;
                case 8:
                    stringBuffer.append("uninitialized(");
                    stringBuffer.append(iVerificationTypeInfoArr[i11].getOffset());
                    stringBuffer.append(')');
                    break;
            }
        }
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        return String.valueOf(stringBuffer);
    }
}
