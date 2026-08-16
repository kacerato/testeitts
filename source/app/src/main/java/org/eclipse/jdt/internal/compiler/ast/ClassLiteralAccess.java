package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public class ClassLiteralAccess extends Expression {
    FieldBinding syntheticField;
    public TypeBinding targetType;
    public TypeReference type;

    public ClassLiteralAccess(int i10, TypeReference typeReference) {
        this.type = typeReference;
        typeReference.bits |= 1073741824;
        this.sourceStart = typeReference.sourceStart;
        this.sourceEnd = i10;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        SourceTypeBinding enclosingSourceType = blockScope.outerMostClassScope().enclosingSourceType();
        if (!enclosingSourceType.isInterface() && !this.targetType.isBaseType() && blockScope.compilerOptions().targetJDK < ClassFileConstants.JDK1_5) {
            this.syntheticField = enclosingSourceType.addSyntheticFieldForClassLiteral(this.targetType, blockScope);
        }
        return flowInfo;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        if (z10) {
            codeStream.generateClassLiteralAccessForType(this.type.resolvedType, this.syntheticField);
            codeStream.generateImplicitConversion(this.implicitConversion);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        StringBuffer print = this.type.print(0, stringBuffer);
        print.append(".class");
        return print;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        this.constant = Constant.NotAConstant;
        TypeBinding resolveType = this.type.resolveType(blockScope, true);
        this.targetType = resolveType;
        if (resolveType == null) {
            return null;
        }
        LookupEnvironment environment = blockScope.environment();
        TypeBinding convertToRawType = environment.convertToRawType(this.targetType, true);
        this.targetType = convertToRawType;
        if (convertToRawType.isArrayType()) {
            TypeBinding typeBinding = ((ArrayBinding) this.targetType).leafComponentType;
            if (typeBinding == TypeBinding.VOID) {
                blockScope.problemReporter().cannotAllocateVoidArray(this);
                return null;
            }
            if (typeBinding.isTypeVariable()) {
                blockScope.problemReporter().illegalClassLiteralForTypeVariable((TypeVariableBinding) typeBinding, this);
            }
        } else if (this.targetType.isTypeVariable()) {
            blockScope.problemReporter().illegalClassLiteralForTypeVariable((TypeVariableBinding) this.targetType, this);
        }
        ReferenceBinding javaLangClass = blockScope.getJavaLangClass();
        if (blockScope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5) {
            TypeBinding typeBinding2 = this.targetType;
            TypeBinding resolvedJavaBaseType = typeBinding2.f102482id == 6 ? environment.getResolvedJavaBaseType(TypeConstants.JAVA_LANG_VOID, blockScope) : blockScope.boxing(typeBinding2);
            if (environment.usesNullTypeAnnotations()) {
                resolvedJavaBaseType = environment.createAnnotatedType(resolvedJavaBaseType, new AnnotationBinding[]{environment.getNonNullAnnotation()});
            }
            this.resolvedType = environment.createParameterizedType(javaLangClass, new TypeBinding[]{resolvedJavaBaseType}, null);
        } else {
            this.resolvedType = javaLangClass;
        }
        return this.resolvedType;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.type.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
