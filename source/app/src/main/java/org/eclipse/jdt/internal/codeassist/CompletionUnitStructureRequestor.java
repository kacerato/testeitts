package org.eclipse.jdt.internal.codeassist;

import java.util.Map;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMarkerAnnotationName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMemberValueName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnQualifiedNameReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnSingleNameReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnSingleTypeReference;
import org.eclipse.jdt.internal.codeassist.impl.AssistAnnotation;
import org.eclipse.jdt.internal.codeassist.impl.AssistImportContainer;
import org.eclipse.jdt.internal.codeassist.impl.AssistImportDeclaration;
import org.eclipse.jdt.internal.codeassist.impl.AssistInitializer;
import org.eclipse.jdt.internal.codeassist.impl.AssistPackageDeclaration;
import org.eclipse.jdt.internal.codeassist.impl.AssistSourceField;
import org.eclipse.jdt.internal.codeassist.impl.AssistSourceMethod;
import org.eclipse.jdt.internal.codeassist.impl.AssistSourceType;
import org.eclipse.jdt.internal.codeassist.impl.AssistTypeParameter;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.core.AnnotatableInfo;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.CompilationUnitElementInfo;
import org.eclipse.jdt.internal.core.CompilationUnitStructureRequestor;
import org.eclipse.jdt.internal.core.ImportContainer;
import org.eclipse.jdt.internal.core.ImportDeclaration;
import org.eclipse.jdt.internal.core.Initializer;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.MemberValuePair;
import org.eclipse.jdt.internal.core.PackageDeclaration;
import org.eclipse.jdt.internal.core.SourceField;
import org.eclipse.jdt.internal.core.SourceMethod;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.TypeParameter;

public class CompletionUnitStructureRequestor extends CompilationUnitStructureRequestor {
    private ASTNode assistNode;
    private Map bindingCache;
    private Map elementCache;
    private Map elementWithProblemCache;

    public CompletionUnitStructureRequestor(ICompilationUnit iCompilationUnit, CompilationUnitElementInfo compilationUnitElementInfo, Parser parser, ASTNode aSTNode, Map map, Map map2, Map map3, Map map4) {
        super(iCompilationUnit, compilationUnitElementInfo, map4);
        this.parser = parser;
        this.assistNode = aSTNode;
        this.bindingCache = map;
        this.elementCache = map2;
        this.elementWithProblemCache = map3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x006d, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean hasEmptyName(TypeReference typeReference, ASTNode aSTNode) {
        TypeReference[][] typeReferenceArr;
        if (typeReference == null) {
            return false;
        }
        if (typeReference != aSTNode && typeReference.sourceStart <= aSTNode.sourceStart && aSTNode.sourceEnd <= typeReference.sourceEnd) {
            return false;
        }
        if ((typeReference instanceof CompletionOnSingleTypeReference) || (typeReference instanceof CompletionOnQualifiedTypeReference) || (typeReference instanceof CompletionOnParameterizedQualifiedTypeReference)) {
            char[][] typeName = typeReference.getTypeName();
            if (typeName[typeName.length - 1].length == 0) {
                return true;
            }
        }
        if (typeReference instanceof ParameterizedSingleTypeReference) {
            TypeReference[] typeReferenceArr2 = ((ParameterizedSingleTypeReference) typeReference).typeArguments;
            if (typeReferenceArr2 != null) {
                for (TypeReference typeReference2 : typeReferenceArr2) {
                    if (hasEmptyName(typeReference2, aSTNode)) {
                        return true;
                    }
                }
            }
        } else if ((typeReference instanceof ParameterizedQualifiedTypeReference) && (typeReferenceArr = ((ParameterizedQualifiedTypeReference) typeReference).typeArguments) != null) {
            for (int i10 = 0; i10 < typeReferenceArr.length; i10++) {
                if (typeReferenceArr[i10] != null) {
                    int i11 = 0;
                    while (true) {
                        TypeReference[] typeReferenceArr3 = typeReferenceArr[i10];
                        if (i11 >= typeReferenceArr3.length) {
                            break;
                        }
                        if (hasEmptyName(typeReferenceArr3[i11], aSTNode)) {
                            return true;
                        }
                        i11++;
                    }
                }
            }
        }
        return false;
    }

    @Override
    public IAnnotation acceptAnnotation(Annotation annotation, AnnotatableInfo annotatableInfo, JavaElement javaElement) {
        if (!(annotation instanceof CompletionOnMarkerAnnotationName) || !hasEmptyName(annotation.type, this.assistNode)) {
            return super.acceptAnnotation(annotation, annotatableInfo, javaElement);
        }
        super.acceptAnnotation(annotation, null, javaElement);
        return null;
    }

    @Override
    public org.eclipse.jdt.internal.core.Annotation createAnnotation(JavaElement javaElement, String str) {
        return new AssistAnnotation(javaElement, str, this.newElements);
    }

    @Override
    public SourceField createField(JavaElement javaElement, ISourceElementRequestor.FieldInfo fieldInfo) {
        AssistSourceField assistSourceField = new AssistSourceField(javaElement, JavaModelManager.getJavaModelManager().intern(new String(fieldInfo.name)), this.bindingCache, this.newElements);
        FieldDeclaration fieldDeclaration = fieldInfo.node;
        FieldBinding fieldBinding = fieldDeclaration.binding;
        if (fieldBinding != null) {
            this.bindingCache.put(assistSourceField, fieldBinding);
            this.elementCache.put(fieldInfo.node.binding, assistSourceField);
        } else {
            this.elementWithProblemCache.put(fieldDeclaration, assistSourceField);
        }
        return assistSourceField;
    }

    @Override
    public ImportContainer createImportContainer(ICompilationUnit iCompilationUnit) {
        return new AssistImportContainer((CompilationUnit) iCompilationUnit, this.newElements);
    }

    @Override
    public ImportDeclaration createImportDeclaration(ImportContainer importContainer, String str, boolean z10) {
        return new AssistImportDeclaration(importContainer, str, z10, this.newElements);
    }

    @Override
    public Initializer createInitializer(JavaElement javaElement) {
        return new AssistInitializer(javaElement, 1, this.bindingCache, this.newElements);
    }

    @Override
    public SourceMethod createMethodHandle(JavaElement javaElement, ISourceElementRequestor.MethodInfo methodInfo) {
        AssistSourceMethod assistSourceMethod = new AssistSourceMethod(javaElement, JavaModelManager.getJavaModelManager().intern(new String(methodInfo.name)), CompilationUnitStructureRequestor.convertTypeNamesToSigs(methodInfo.parameterTypes), this.bindingCache, this.newElements);
        AbstractMethodDeclaration abstractMethodDeclaration = methodInfo.node;
        MethodBinding methodBinding = abstractMethodDeclaration.binding;
        if (methodBinding != null) {
            this.bindingCache.put(assistSourceMethod, methodBinding);
            this.elementCache.put(methodInfo.node.binding, assistSourceMethod);
        } else {
            this.elementWithProblemCache.put(abstractMethodDeclaration, assistSourceMethod);
        }
        return assistSourceMethod;
    }

    @Override
    public PackageDeclaration createPackageDeclaration(JavaElement javaElement, String str) {
        return new AssistPackageDeclaration((CompilationUnit) javaElement, str, this.newElements);
    }

    @Override
    public SourceType createTypeHandle(JavaElement javaElement, ISourceElementRequestor.TypeInfo typeInfo) {
        AssistSourceType assistSourceType = new AssistSourceType(javaElement, new String(typeInfo.name), this.bindingCache, this.newElements);
        TypeDeclaration typeDeclaration = typeInfo.node;
        SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
        if (sourceTypeBinding != null) {
            this.bindingCache.put(assistSourceType, sourceTypeBinding);
            this.elementCache.put(typeInfo.node.binding, assistSourceType);
        } else {
            this.elementWithProblemCache.put(typeDeclaration, assistSourceType);
        }
        return assistSourceType;
    }

    @Override
    public TypeParameter createTypeParameter(JavaElement javaElement, String str) {
        return new AssistTypeParameter(javaElement, str, this.newElements);
    }

    @Override
    public Object getMemberValue(MemberValuePair memberValuePair, Expression expression) {
        if (expression instanceof CompletionOnSingleNameReference) {
            if (((CompletionOnSingleNameReference) expression).token.length == 0) {
                return null;
            }
        } else if (expression instanceof CompletionOnQualifiedNameReference) {
            if (((CompletionOnQualifiedNameReference) expression).tokens[r0.length - 1].length == 0) {
                return null;
            }
        }
        return super.getMemberValue(memberValuePair, expression);
    }

    @Override
    public IMemberValuePair[] getMemberValuePairs(org.eclipse.jdt.internal.compiler.ast.MemberValuePair[] memberValuePairArr) {
        int length = memberValuePairArr.length;
        IMemberValuePair[] iMemberValuePairArr = new IMemberValuePair[length];
        int i10 = 0;
        for (org.eclipse.jdt.internal.compiler.ast.MemberValuePair memberValuePair : memberValuePairArr) {
            if (!(memberValuePair instanceof CompletionOnMemberValueName)) {
                iMemberValuePairArr[i10] = getMemberValuePair(memberValuePair);
                i10++;
            }
        }
        if (i10 > length) {
            System.arraycopy(iMemberValuePairArr, 0, iMemberValuePairArr, 0, i10);
        }
        return iMemberValuePairArr;
    }
}
