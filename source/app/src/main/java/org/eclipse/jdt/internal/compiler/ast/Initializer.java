package org.eclipse.jdt.internal.compiler.ast;

import com.tonyodev.fetch2.util.FetchDefaults;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public class Initializer extends FieldDeclaration {
    public Block block;
    public int bodyEnd;
    public int bodyStart;
    public int lastVisibleFieldID;
    private MethodBinding methodBinding;

    public Initializer(Block block, int i10) {
        this.block = block;
        this.modifiers = i10;
        if (block != null) {
            int i11 = block.sourceStart;
            this.sourceStart = i11;
            this.declarationSourceStart = i11;
        }
    }

    @Override
    public FlowInfo analyseCode(MethodScope methodScope, FlowContext flowContext, FlowInfo flowInfo) {
        Block block = this.block;
        return block != null ? block.analyseCode(methodScope, flowContext, flowInfo) : flowInfo;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int i10 = codeStream.position;
        Block block = this.block;
        if (block != null) {
            block.generateCode(blockScope, codeStream);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public int getKind() {
        return 2;
    }

    public MethodBinding getMethodBinding() {
        if (this.methodBinding == null) {
            BlockScope blockScope = this.block.scope;
            this.methodBinding = isStatic() ? new MethodBinding(8, CharOperation.NO_CHAR, TypeBinding.VOID, Binding.NO_PARAMETERS, Binding.NO_EXCEPTIONS, blockScope.enclosingSourceType()) : new MethodBinding(0, CharOperation.NO_CHAR, TypeBinding.VOID, Binding.NO_PARAMETERS, Binding.NO_EXCEPTIONS, blockScope.enclosingSourceType());
        }
        return this.methodBinding;
    }

    @Override
    public boolean isStatic() {
        return (this.modifiers & 8) != 0;
    }

    public void parseStatements(Parser parser, TypeDeclaration typeDeclaration, CompilationUnitDeclaration compilationUnitDeclaration) {
        parser.parse(this, typeDeclaration, compilationUnitDeclaration);
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        if (this.modifiers == 0) {
            Block block = this.block;
            if (block != null) {
                block.printStatement(i10, stringBuffer);
            } else {
                ASTNode.printIndent(i10, stringBuffer).append(FetchDefaults.EMPTY_JSON_OBJECT_STRING);
            }
            return stringBuffer;
        }
        ASTNode.printIndent(i10, stringBuffer);
        ASTNode.printModifiers(this.modifiers, stringBuffer);
        Annotation[] annotationArr = this.annotations;
        if (annotationArr != null) {
            ASTNode.printAnnotations(annotationArr, stringBuffer);
            stringBuffer.append(C15883c.f126249O);
        }
        stringBuffer.append("{\n");
        Block block2 = this.block;
        if (block2 != null) {
            block2.printBody(i10, stringBuffer);
        }
        ASTNode.printIndent(i10, stringBuffer).append(JavaElement.JEM_ANNOTATION);
        return stringBuffer;
    }

    @Override
    public void resolve(MethodScope methodScope) {
        FieldBinding fieldBinding = methodScope.initializedField;
        int i10 = methodScope.lastVisibleFieldID;
        try {
            methodScope.initializedField = null;
            methodScope.lastVisibleFieldID = this.lastVisibleFieldID;
            if (isStatic()) {
                SourceTypeBinding enclosingSourceType = methodScope.enclosingSourceType();
                if (enclosingSourceType.isNestedType() && !enclosingSourceType.isStatic()) {
                    methodScope.problemReporter().innerTypesCannotDeclareStaticInitializers(enclosingSourceType, this);
                }
            }
            Block block = this.block;
            if (block != null) {
                block.resolve(methodScope);
            }
            methodScope.initializedField = fieldBinding;
            methodScope.lastVisibleFieldID = i10;
        } catch (Throwable th2) {
            methodScope.initializedField = fieldBinding;
            methodScope.lastVisibleFieldID = i10;
            throw th2;
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, MethodScope methodScope) {
        Block block;
        if (aSTVisitor.visit(this, methodScope) && (block = this.block) != null) {
            block.traverse(aSTVisitor, methodScope);
        }
        aSTVisitor.endVisit(this, methodScope);
    }
}
