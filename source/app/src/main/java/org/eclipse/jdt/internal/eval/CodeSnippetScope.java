package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;

public class CodeSnippetScope extends BlockScope {
    public CodeSnippetScope(int i10, Scope scope) {
        super(i10, scope);
    }

    public final boolean canBeSeenByForCodeSnippet(FieldBinding fieldBinding, TypeBinding typeBinding, InvocationSite invocationSite, Scope scope) {
        ReferenceBinding referenceBinding;
        ReferenceBinding referenceBinding2;
        if (fieldBinding.isPublic()) {
            return true;
        }
        ReferenceBinding referenceBinding3 = (ReferenceBinding) typeBinding;
        if (TypeBinding.equalsEquals(referenceBinding3, fieldBinding.declaringClass)) {
            return true;
        }
        if (fieldBinding.isProtected()) {
            if (TypeBinding.equalsEquals(referenceBinding3, fieldBinding.declaringClass)) {
                return true;
            }
            PackageBinding packageBinding = referenceBinding3.fPackage;
            ReferenceBinding referenceBinding4 = fieldBinding.declaringClass;
            if (packageBinding == referenceBinding4.fPackage) {
                return true;
            }
            if (referenceBinding4.isSuperclassOf(referenceBinding3)) {
                if (invocationSite.isSuperAccess()) {
                    return true;
                }
                if (typeBinding instanceof ArrayBinding) {
                    return false;
                }
                if (referenceBinding3.isSuperclassOf(referenceBinding3) || fieldBinding.isStatic()) {
                    return true;
                }
            }
            return false;
        }
        if (fieldBinding.isPrivate()) {
            if (TypeBinding.notEquals(typeBinding, fieldBinding.declaringClass)) {
                return false;
            }
            if (TypeBinding.notEquals(referenceBinding3, fieldBinding.declaringClass)) {
                ReferenceBinding enclosingType = referenceBinding3.enclosingType();
                while (true) {
                    referenceBinding = referenceBinding3;
                    referenceBinding3 = enclosingType;
                    if (referenceBinding3 == null) {
                        break;
                    }
                    enclosingType = referenceBinding3.enclosingType();
                }
                ReferenceBinding referenceBinding5 = fieldBinding.declaringClass;
                ReferenceBinding enclosingType2 = referenceBinding5.enclosingType();
                while (true) {
                    ReferenceBinding referenceBinding6 = enclosingType2;
                    referenceBinding2 = referenceBinding5;
                    referenceBinding5 = referenceBinding6;
                    if (referenceBinding5 == null) {
                        break;
                    }
                    enclosingType2 = referenceBinding5.enclosingType();
                }
                if (TypeBinding.notEquals(referenceBinding, referenceBinding2)) {
                    return false;
                }
            }
            return true;
        }
        PackageBinding packageBinding2 = referenceBinding3.fPackage;
        ReferenceBinding referenceBinding7 = fieldBinding.declaringClass;
        PackageBinding packageBinding3 = referenceBinding7.fPackage;
        if (packageBinding2 != packageBinding3 || (typeBinding instanceof ArrayBinding)) {
            return false;
        }
        TypeBinding original = referenceBinding7.original();
        do {
            if (referenceBinding3.isCapture()) {
                if (TypeBinding.equalsEquals(original, referenceBinding3.erasure().original())) {
                    return true;
                }
            } else if (TypeBinding.equalsEquals(original, referenceBinding3.original())) {
                return true;
            }
            if (packageBinding3 != referenceBinding3.fPackage) {
                return false;
            }
            referenceBinding3 = referenceBinding3.superclass();
        } while (referenceBinding3 != null);
        return false;
    }

    @Override
    public MethodBinding findExactMethod(ReferenceBinding referenceBinding, char[] cArr, TypeBinding[] typeBindingArr, InvocationSite invocationSite) {
        MethodBinding exactMethod = referenceBinding.getExactMethod(cArr, typeBindingArr, null);
        if (exactMethod == null || !(referenceBinding.isInterface() || canBeSeenByForCodeSnippet(exactMethod, referenceBinding, invocationSite, this))) {
            return null;
        }
        return exactMethod;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x008c, code lost:
    
        if (r11 == null) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x008e, code lost:
    
        r1 = new org.eclipse.jdt.internal.compiler.util.SimpleSet(r9 * 2);
        r3 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0096, code lost:
    
        if (r3 <= r9) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x009a, code lost:
    
        r5 = r11[r3];
        r10 = r5.length;
        r15 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x009e, code lost:
    
        if (r15 < r10) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00a3, code lost:
    
        r8 = r5[r15];
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00a9, code lost:
    
        if (r1.addIfNotIncluded(r8) != r8) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00ab, code lost:
    
        r7 = r8.getField(r18, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00af, code lost:
    
        if (r7 == null) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00b1, code lost:
    
        if (r12 != null) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00b3, code lost:
    
        r12 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00b6, code lost:
    
        r1 = new org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding(r12, r12.declaringClass, r18, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00bd, code lost:
    
        if (r1 == null) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00bf, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00c0, code lost:
    
        r7 = r8.superInterfaces();
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00c6, code lost:
    
        if (r7 == org.eclipse.jdt.internal.compiler.lookup.Binding.NO_SUPERINTERFACES) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00c8, code lost:
    
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00cb, code lost:
    
        if (r9 != r11.length) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00cd, code lost:
    
        r8 = new org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding[r9 * 2];
        r14 = 0;
        java.lang.System.arraycopy(r11, 0, r8, 0, r9);
        r11 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00d8, code lost:
    
        r11[r9] = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00da, code lost:
    
        r15 = r15 + 1;
        r7 = r14;
        r14 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x00d7, code lost:
    
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00b4, code lost:
    
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x00a0, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0098, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00e0, code lost:
    
        if (r12 == null) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x00e2, code lost:
    
        return r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x00e3, code lost:
    
        if (r13 == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x00eb, code lost:
    
        return new org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding(r4, r18, 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x00ec, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FieldBinding findFieldForCodeSnippet(TypeBinding typeBinding, char[] cArr, InvocationSite invocationSite) {
        if (!typeBinding.isBaseType()) {
            if (!typeBinding.isArrayType()) {
                ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
                if (!referenceBinding.canBeSeenBy(this)) {
                    return new ProblemFieldBinding(referenceBinding, cArr, 8);
                }
                FieldBinding field = referenceBinding.getField(cArr, true);
                char c10 = 2;
                if (field == null) {
                    int i10 = 0;
                    int i11 = -1;
                    ReferenceBinding[][] referenceBindingArr = null;
                    FieldBinding fieldBinding = null;
                    int i12 = 1;
                    boolean z10 = false;
                    while (true) {
                        int i13 = 3;
                        if (i12 == 0) {
                            break;
                        }
                        ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
                        if (superInterfaces != Binding.NO_SUPERINTERFACES) {
                            if (referenceBindingArr == null) {
                                referenceBindingArr = new ReferenceBinding[5];
                            }
                            i11++;
                            if (i11 == referenceBindingArr.length) {
                                ReferenceBinding[][] referenceBindingArr2 = new ReferenceBinding[i11 * 2];
                                System.arraycopy(referenceBindingArr, i10, referenceBindingArr2, i10, i11);
                                referenceBindingArr = referenceBindingArr2;
                            }
                            referenceBindingArr[i11] = superInterfaces;
                        }
                        referenceBinding = referenceBinding.superclass();
                        if (referenceBinding == null) {
                            break;
                        }
                        int i14 = i10;
                        char c11 = c10;
                        FieldBinding field2 = referenceBinding.getField(cArr, true);
                        if (field2 == null) {
                            c10 = c11;
                            i10 = i14;
                        } else if (!canBeSeenByForCodeSnippet(field2, typeBinding, invocationSite, this)) {
                            c10 = c11;
                            z10 = true;
                            i10 = i14;
                            i12 = i10;
                        } else {
                            if (fieldBinding != null) {
                                return new ProblemFieldBinding(fieldBinding, fieldBinding.declaringClass, cArr, 3);
                            }
                            fieldBinding = field2;
                            i12 = i14;
                            c10 = c11;
                            i10 = i12;
                        }
                    }
                } else {
                    return canBeSeenByForCodeSnippet(field, referenceBinding, invocationSite, this) ? field : new ProblemFieldBinding(field, field.declaringClass, cArr, 2);
                }
            } else {
                TypeBinding leafComponentType = typeBinding.leafComponentType();
                if (leafComponentType instanceof ReferenceBinding) {
                    ReferenceBinding referenceBinding2 = (ReferenceBinding) leafComponentType;
                    if (!referenceBinding2.canBeSeenBy(this)) {
                        return new ProblemFieldBinding(referenceBinding2, cArr, 8);
                    }
                }
                if (CharOperation.equals(cArr, TypeConstants.LENGTH)) {
                    return ArrayBinding.ArrayLength;
                }
                return null;
            }
        } else {
            return null;
        }
    }

    @Override
    public MethodBinding findMethod(ReferenceBinding referenceBinding, char[] cArr, TypeBinding[] typeBindingArr, InvocationSite invocationSite, boolean z10) {
        MethodBinding findMethod = super.findMethod(referenceBinding, cArr, typeBindingArr, invocationSite, z10);
        return (findMethod == null || !findMethod.isValidBinding() || canBeSeenByForCodeSnippet(findMethod, referenceBinding, invocationSite, this)) ? findMethod : new ProblemMethodBinding(findMethod, cArr, typeBindingArr, 2);
    }

    @Override
    public MethodBinding findMethodForArray(ArrayBinding arrayBinding, char[] cArr, TypeBinding[] typeBindingArr, InvocationSite invocationSite) {
        ReferenceBinding javaLangObject = getJavaLangObject();
        MethodBinding exactMethod = javaLangObject.getExactMethod(cArr, typeBindingArr, null);
        if (exactMethod != null) {
            if (typeBindingArr == Binding.NO_PARAMETERS) {
                char[] cArr2 = TypeConstants.CLONE;
                if (CharOperation.equals(cArr, cArr2)) {
                    return new MethodBinding((exactMethod.modifiers & (-5)) | 1, cArr2, exactMethod.returnType, typeBindingArr, null, javaLangObject);
                }
            }
            if (canBeSeenByForCodeSnippet(exactMethod, arrayBinding, invocationSite, this)) {
                return exactMethod;
            }
        }
        MethodBinding findMethod = findMethod(javaLangObject, cArr, typeBindingArr, invocationSite, false);
        if (findMethod == null) {
            return new ProblemMethodBinding(cArr, typeBindingArr, 1);
        }
        if (!findMethod.isValidBinding()) {
            return findMethod;
        }
        MethodBinding computeCompatibleMethod = computeCompatibleMethod(findMethod, typeBindingArr, invocationSite);
        return computeCompatibleMethod == null ? new ProblemMethodBinding(findMethod, cArr, typeBindingArr, 1) : !canBeSeenByForCodeSnippet(computeCompatibleMethod, arrayBinding, invocationSite, this) ? new ProblemMethodBinding(computeCompatibleMethod, cArr, computeCompatibleMethod.parameters, 2) : computeCompatibleMethod;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c2, code lost:
    
        if ((r10 & 1) == 0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c6, code lost:
    
        if ((r1 instanceof org.eclipse.jdt.internal.compiler.lookup.FieldBinding) == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00c8, code lost:
    
        r10 = (org.eclipse.jdt.internal.compiler.lookup.FieldBinding) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00cf, code lost:
    
        if (r10.isStatic() != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00e1, code lost:
    
        return new org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding(r10, r10.declaringClass, org.eclipse.jdt.core.compiler.CharOperation.concatWith(org.eclipse.jdt.core.compiler.CharOperation.subarray(r9, 0, r6), '.'), 7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00e2, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00e5, code lost:
    
        if ((r10 & 4) == 0) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00e9, code lost:
    
        if ((r1 instanceof org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding) == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00eb, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00f5, code lost:
    
        return new org.eclipse.jdt.internal.compiler.lookup.ProblemBinding(org.eclipse.jdt.core.compiler.CharOperation.subarray(r9, 0, r6), 1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Binding getBinding(char[][] cArr, int i10, InvocationSite invocationSite, ReferenceBinding referenceBinding) {
        int i11;
        Binding binding = getBinding(cArr[0], i10 | 20, invocationSite, true);
        invocationSite.setFieldIndex(1);
        if (!binding.isValidBinding() || (binding instanceof VariableBinding)) {
            return binding;
        }
        int length = cArr.length;
        if (binding instanceof PackageBinding) {
            PackageBinding packageBinding = (PackageBinding) binding;
            int i12 = 1;
            while (i12 < length) {
                i11 = i12 + 1;
                binding = packageBinding.getTypeOrPackage(cArr[i12], null, i11 < length);
                invocationSite.setFieldIndex(i11);
                if (binding == null) {
                    return i11 == length ? new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i11), null, 1) : new ProblemBinding(CharOperation.subarray(cArr, 0, i11), 1);
                }
                if (!(binding instanceof ReferenceBinding)) {
                    packageBinding = (PackageBinding) binding;
                    i12 = i11;
                } else {
                    if (!binding.isValidBinding()) {
                        return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i11), (ReferenceBinding) ((ReferenceBinding) binding).closestMatch(), binding.problemId());
                    }
                    ReferenceBinding referenceBinding2 = (ReferenceBinding) binding;
                    if (!canBeSeenByForCodeSnippet(referenceBinding2, referenceBinding)) {
                        return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i11), referenceBinding2, 2);
                    }
                }
            }
            return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i12), null, 1);
        }
        i11 = 1;
        while (true) {
            if (i11 >= length) {
                break;
            }
            ReferenceBinding referenceBinding3 = (ReferenceBinding) binding;
            int i13 = i11 + 1;
            char[] cArr2 = cArr[i11];
            invocationSite.setFieldIndex(i13);
            FieldBinding findFieldForCodeSnippet = findFieldForCodeSnippet(referenceBinding3, cArr2, invocationSite);
            if (findFieldForCodeSnippet == null) {
                ReferenceBinding findMemberType = findMemberType(cArr2, referenceBinding3);
                if (findMemberType == null) {
                    return new ProblemBinding(CharOperation.subarray(cArr, 0, i13), referenceBinding3, 1);
                }
                if (!findMemberType.isValidBinding()) {
                    return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i13), (ReferenceBinding) findMemberType.closestMatch(), findMemberType.problemId());
                }
                binding = findMemberType;
                i11 = i13;
            } else {
                if (!findFieldForCodeSnippet.isValidBinding()) {
                    return new ProblemFieldBinding(findFieldForCodeSnippet, findFieldForCodeSnippet.declaringClass, CharOperation.concatWith(CharOperation.subarray(cArr, 0, i13), '.'), findFieldForCodeSnippet.problemId());
                }
                binding = findFieldForCodeSnippet;
                i11 = i13;
            }
        }
    }

    @Override
    public MethodBinding getConstructor(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, InvocationSite invocationSite) {
        MethodBinding exactConstructor = referenceBinding.getExactConstructor(typeBindingArr);
        if (exactConstructor != null && canBeSeenByForCodeSnippet(exactConstructor, referenceBinding, invocationSite, this)) {
            return exactConstructor;
        }
        char[] cArr = TypeConstants.INIT;
        MethodBinding[] methods = referenceBinding.getMethods(cArr);
        if (methods == Binding.NO_METHODS) {
            return new ProblemMethodBinding(cArr, typeBindingArr, 1);
        }
        MethodBinding[] methodBindingArr = new MethodBinding[methods.length];
        int i10 = 0;
        for (MethodBinding methodBinding : methods) {
            MethodBinding computeCompatibleMethod = computeCompatibleMethod(methodBinding, typeBindingArr, invocationSite);
            if (computeCompatibleMethod != null) {
                methodBindingArr[i10] = computeCompatibleMethod;
                i10++;
            }
        }
        if (i10 == 0) {
            return new ProblemMethodBinding(TypeConstants.INIT, typeBindingArr, 1);
        }
        MethodBinding[] methodBindingArr2 = new MethodBinding[i10];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            MethodBinding methodBinding2 = methodBindingArr[i12];
            if (canBeSeenByForCodeSnippet(methodBinding2, referenceBinding, invocationSite, this)) {
                methodBindingArr2[i11] = methodBinding2;
                i11++;
            }
        }
        if (i11 == 1) {
            return methodBindingArr2[0];
        }
        if (i11 != 0) {
            return mostSpecificClassMethodBinding(methodBindingArr2, i11, invocationSite);
        }
        MethodBinding methodBinding3 = methodBindingArr[0];
        return new ProblemMethodBinding(methodBinding3, TypeConstants.INIT, methodBinding3.parameters, 2);
    }

    public FieldBinding getFieldForCodeSnippet(TypeBinding typeBinding, char[] cArr, InvocationSite invocationSite) {
        FieldBinding findFieldForCodeSnippet = findFieldForCodeSnippet(typeBinding, cArr, invocationSite);
        if (findFieldForCodeSnippet == null) {
            findFieldForCodeSnippet = new ProblemFieldBinding(typeBinding instanceof ReferenceBinding ? (ReferenceBinding) typeBinding : null, cArr, 1);
        }
        return findFieldForCodeSnippet;
    }

    public MethodBinding getImplicitMethod(ReferenceBinding referenceBinding, char[] cArr, TypeBinding[] typeBindingArr, InvocationSite invocationSite) {
        MethodBinding findExactMethod = findExactMethod(referenceBinding, cArr, typeBindingArr, invocationSite);
        if (findExactMethod == null) {
            findExactMethod = findMethod(referenceBinding, cArr, typeBindingArr, invocationSite, false);
        }
        return findExactMethod != null ? (!findExactMethod.isValidBinding() || canBeSeenByForCodeSnippet(findExactMethod, referenceBinding, invocationSite, this)) ? findExactMethod : new ProblemMethodBinding(findExactMethod, cArr, typeBindingArr, 2) : new ProblemMethodBinding(cArr, typeBindingArr, 1);
    }

    public CodeSnippetScope(BlockScope blockScope) {
        super(blockScope);
    }

    public CodeSnippetScope(BlockScope blockScope, int i10) {
        super(blockScope, i10);
    }

    public final boolean canBeSeenByForCodeSnippet(MethodBinding methodBinding, TypeBinding typeBinding, InvocationSite invocationSite, Scope scope) {
        ReferenceBinding referenceBinding;
        ReferenceBinding referenceBinding2;
        if (methodBinding.isPublic()) {
            return true;
        }
        ReferenceBinding referenceBinding3 = (ReferenceBinding) typeBinding;
        if (TypeBinding.equalsEquals(referenceBinding3, methodBinding.declaringClass)) {
            return true;
        }
        if (methodBinding.isProtected()) {
            if (TypeBinding.equalsEquals(referenceBinding3, methodBinding.declaringClass)) {
                return true;
            }
            PackageBinding packageBinding = referenceBinding3.fPackage;
            ReferenceBinding referenceBinding4 = methodBinding.declaringClass;
            if (packageBinding == referenceBinding4.fPackage) {
                return true;
            }
            if (referenceBinding4.isSuperclassOf(referenceBinding3)) {
                if (invocationSite.isSuperAccess()) {
                    return true;
                }
                if (typeBinding instanceof ArrayBinding) {
                    return false;
                }
                if (referenceBinding3.isSuperclassOf(referenceBinding3) || methodBinding.isStatic()) {
                    return true;
                }
            }
            return false;
        }
        if (methodBinding.isPrivate()) {
            if (TypeBinding.notEquals(typeBinding, methodBinding.declaringClass)) {
                return false;
            }
            if (TypeBinding.notEquals(referenceBinding3, methodBinding.declaringClass)) {
                ReferenceBinding enclosingType = referenceBinding3.enclosingType();
                while (true) {
                    referenceBinding = referenceBinding3;
                    referenceBinding3 = enclosingType;
                    if (referenceBinding3 == null) {
                        break;
                    }
                    enclosingType = referenceBinding3.enclosingType();
                }
                ReferenceBinding referenceBinding5 = methodBinding.declaringClass;
                ReferenceBinding enclosingType2 = referenceBinding5.enclosingType();
                while (true) {
                    ReferenceBinding referenceBinding6 = enclosingType2;
                    referenceBinding2 = referenceBinding5;
                    referenceBinding5 = referenceBinding6;
                    if (referenceBinding5 == null) {
                        break;
                    }
                    enclosingType2 = referenceBinding5.enclosingType();
                }
                if (TypeBinding.notEquals(referenceBinding, referenceBinding2)) {
                    return false;
                }
            }
            return true;
        }
        PackageBinding packageBinding2 = referenceBinding3.fPackage;
        ReferenceBinding referenceBinding7 = methodBinding.declaringClass;
        PackageBinding packageBinding3 = referenceBinding7.fPackage;
        if (packageBinding2 != packageBinding3 || (typeBinding instanceof ArrayBinding)) {
            return false;
        }
        TypeBinding original = referenceBinding7.original();
        do {
            if (referenceBinding3.isCapture()) {
                if (TypeBinding.equalsEquals(original, referenceBinding3.erasure().original())) {
                    return true;
                }
            } else if (TypeBinding.equalsEquals(original, referenceBinding3.original())) {
                return true;
            }
            if (packageBinding3 != referenceBinding3.fPackage) {
                return false;
            }
            referenceBinding3 = referenceBinding3.superclass();
        } while (referenceBinding3 != null);
        return false;
    }

    public final boolean canBeSeenByForCodeSnippet(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        ReferenceBinding referenceBinding3;
        if (referenceBinding.isPublic() || TypeBinding.equalsEquals(referenceBinding2, referenceBinding)) {
            return true;
        }
        if (referenceBinding.isProtected()) {
            return referenceBinding2.fPackage == referenceBinding.fPackage || referenceBinding.isSuperclassOf(referenceBinding2) || referenceBinding.enclosingType().isSuperclassOf(referenceBinding2);
        }
        if (!referenceBinding.isPrivate()) {
            return referenceBinding2.fPackage == referenceBinding.fPackage;
        }
        ReferenceBinding enclosingType = referenceBinding2.enclosingType();
        while (true) {
            ReferenceBinding referenceBinding4 = enclosingType;
            referenceBinding3 = referenceBinding2;
            referenceBinding2 = referenceBinding4;
            if (referenceBinding2 == null) {
                break;
            }
            enclosingType = referenceBinding2.enclosingType();
        }
        ReferenceBinding enclosingType2 = referenceBinding.enclosingType();
        while (true) {
            ReferenceBinding referenceBinding5 = enclosingType2;
            ReferenceBinding referenceBinding6 = referenceBinding;
            referenceBinding = referenceBinding5;
            if (referenceBinding == null) {
                return TypeBinding.equalsEquals(referenceBinding3, referenceBinding6);
            }
            enclosingType2 = referenceBinding.enclosingType();
        }
    }
}
