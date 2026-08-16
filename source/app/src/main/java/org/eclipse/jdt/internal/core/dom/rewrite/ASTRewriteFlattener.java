package org.eclipse.jdt.internal.core.dom.rewrite;

import android.provider.CallLog;
import b3.s;
import java.util.Iterator;
import java.util.List;
import okhttp3.v;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.ArrayAccess;
import org.eclipse.jdt.core.dom.ArrayCreation;
import org.eclipse.jdt.core.dom.ArrayInitializer;
import org.eclipse.jdt.core.dom.ArrayType;
import org.eclipse.jdt.core.dom.AssertStatement;
import org.eclipse.jdt.core.dom.Assignment;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.BlockComment;
import org.eclipse.jdt.core.dom.BooleanLiteral;
import org.eclipse.jdt.core.dom.BreakStatement;
import org.eclipse.jdt.core.dom.CastExpression;
import org.eclipse.jdt.core.dom.CatchClause;
import org.eclipse.jdt.core.dom.CharacterLiteral;
import org.eclipse.jdt.core.dom.ChildListPropertyDescriptor;
import org.eclipse.jdt.core.dom.ChildPropertyDescriptor;
import org.eclipse.jdt.core.dom.ClassInstanceCreation;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.ConditionalExpression;
import org.eclipse.jdt.core.dom.ConstructorInvocation;
import org.eclipse.jdt.core.dom.ContinueStatement;
import org.eclipse.jdt.core.dom.CreationReference;
import org.eclipse.jdt.core.dom.Dimension;
import org.eclipse.jdt.core.dom.DoStatement;
import org.eclipse.jdt.core.dom.EmptyStatement;
import org.eclipse.jdt.core.dom.EnhancedForStatement;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.ExportsDirective;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.ExpressionMethodReference;
import org.eclipse.jdt.core.dom.ExpressionStatement;
import org.eclipse.jdt.core.dom.FieldAccess;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.ForStatement;
import org.eclipse.jdt.core.dom.IfStatement;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.InfixExpression;
import org.eclipse.jdt.core.dom.Initializer;
import org.eclipse.jdt.core.dom.InstanceofExpression;
import org.eclipse.jdt.core.dom.IntersectionType;
import org.eclipse.jdt.core.dom.Javadoc;
import org.eclipse.jdt.core.dom.LabeledStatement;
import org.eclipse.jdt.core.dom.LambdaExpression;
import org.eclipse.jdt.core.dom.LineComment;
import org.eclipse.jdt.core.dom.MarkerAnnotation;
import org.eclipse.jdt.core.dom.MemberRef;
import org.eclipse.jdt.core.dom.MemberValuePair;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.MethodInvocation;
import org.eclipse.jdt.core.dom.MethodRef;
import org.eclipse.jdt.core.dom.MethodRefParameter;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.ModuleDeclaration;
import org.eclipse.jdt.core.dom.ModuleModifier;
import org.eclipse.jdt.core.dom.NameQualifiedType;
import org.eclipse.jdt.core.dom.NormalAnnotation;
import org.eclipse.jdt.core.dom.NullLiteral;
import org.eclipse.jdt.core.dom.NumberLiteral;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.ParenthesizedExpression;
import org.eclipse.jdt.core.dom.PostfixExpression;
import org.eclipse.jdt.core.dom.PrefixExpression;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.ProvidesDirective;
import org.eclipse.jdt.core.dom.QualifiedName;
import org.eclipse.jdt.core.dom.QualifiedType;
import org.eclipse.jdt.core.dom.RequiresDirective;
import org.eclipse.jdt.core.dom.ReturnStatement;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimplePropertyDescriptor;
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.StringLiteral;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.SuperConstructorInvocation;
import org.eclipse.jdt.core.dom.SuperFieldAccess;
import org.eclipse.jdt.core.dom.SuperMethodInvocation;
import org.eclipse.jdt.core.dom.SuperMethodReference;
import org.eclipse.jdt.core.dom.SwitchCase;
import org.eclipse.jdt.core.dom.SwitchExpression;
import org.eclipse.jdt.core.dom.SwitchStatement;
import org.eclipse.jdt.core.dom.SynchronizedStatement;
import org.eclipse.jdt.core.dom.TagElement;
import org.eclipse.jdt.core.dom.TextElement;
import org.eclipse.jdt.core.dom.ThisExpression;
import org.eclipse.jdt.core.dom.ThrowStatement;
import org.eclipse.jdt.core.dom.TryStatement;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.TypeDeclarationStatement;
import org.eclipse.jdt.core.dom.TypeLiteral;
import org.eclipse.jdt.core.dom.TypeMethodReference;
import org.eclipse.jdt.core.dom.TypeParameter;
import org.eclipse.jdt.core.dom.UnionType;
import org.eclipse.jdt.core.dom.UsesDirective;
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.core.dom.WhileStatement;
import org.eclipse.jdt.core.dom.WildcardType;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.openjdk.tools.doclint.DocLint;
import w2.C15883c;

public class ASTRewriteFlattener extends ASTVisitor {
    private static final int JLS12 = 12;
    private static final int JLS2_INTERNAL = 2;
    private static final int JLS3_INTERNAL = 3;
    private static final int JLS4_INTERNAL = 4;
    private static final int JLS8_INTERNAL = 8;
    private static final int JLS9_INTERNAL = 9;
    protected StringBuffer result = new StringBuffer();
    private RewriteEventStore store;
    private static final ChildPropertyDescriptor INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY = ArrayType.COMPONENT_TYPE_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_FIELD_MODIFIERS_PROPERTY = FieldDeclaration.MODIFIERS_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_INITIALIZER_MODIFIERS_PROPERTY = Initializer.MODIFIERS_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_METHOD_MODIFIERS_PROPERTY = MethodDeclaration.MODIFIERS_PROPERTY;
    private static final ChildPropertyDescriptor INTERNAL_METHOD_RETURN_TYPE_PROPERTY = MethodDeclaration.RETURN_TYPE_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_METHOD_EXTRA_DIMENSIONS_PROPERTY = MethodDeclaration.EXTRA_DIMENSIONS_PROPERTY;
    private static final ChildListPropertyDescriptor INTERNAL_METHOD_THROWN_EXCEPTIONS_PROPERTY = MethodDeclaration.THROWN_EXCEPTIONS_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_TYPE_MODIFIERS_PROPERTY = TypeDeclaration.MODIFIERS_PROPERTY;
    private static final ChildPropertyDescriptor INTERNAL_TYPE_SUPERCLASS_PROPERTY = TypeDeclaration.SUPERCLASS_PROPERTY;
    private static final ChildListPropertyDescriptor INTERNAL_TYPE_SUPER_INTERFACES_PROPERTY = TypeDeclaration.SUPER_INTERFACES_PROPERTY;
    private static final ChildPropertyDescriptor INTERNAL_CIC_NAME_PROPERTY = ClassInstanceCreation.NAME_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_FRAGMENT_EXTRA_DIMENSIONS_PROPERTY = VariableDeclarationFragment.EXTRA_DIMENSIONS_PROPERTY;
    private static final ChildPropertyDescriptor INTERNAL_TDS_TYPE_DECLARATION_PROPERTY = TypeDeclarationStatement.TYPE_DECLARATION_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_VARIABLE_MODIFIERS_PROPERTY = SingleVariableDeclaration.MODIFIERS_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_VARIABLE_EXTRA_DIMENSIONS_PROPERTY = SingleVariableDeclaration.EXTRA_DIMENSIONS_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_VDE_MODIFIERS_PROPERTY = VariableDeclarationExpression.MODIFIERS_PROPERTY;
    private static final SimplePropertyDescriptor INTERNAL_VDS_MODIFIERS_PROPERTY = VariableDeclarationStatement.MODIFIERS_PROPERTY;
    private static final ChildListPropertyDescriptor INTERNAL_TRY_STATEMENT_RESOURCES_PROPERTY = TryStatement.RESOURCES_PROPERTY;
    private static final ChildPropertyDescriptor INTERNAL_SWITCH_EXPRESSION_PROPERTY = SwitchCase.EXPRESSION_PROPERTY;

    public ASTRewriteFlattener(RewriteEventStore rewriteEventStore) {
        this.store = rewriteEventStore;
    }

    public static String asString(ASTNode aSTNode, RewriteEventStore rewriteEventStore) {
        ASTRewriteFlattener aSTRewriteFlattener = new ASTRewriteFlattener(rewriteEventStore);
        aSTNode.accept(aSTRewriteFlattener);
        return aSTRewriteFlattener.getResult();
    }

    private void internalVisitDimensionAnnotations(ArrayType arrayType, int i10, boolean z10) {
        if (z10) {
            visitList((Dimension) arrayType.dimensions().get(i10), Dimension.ANNOTATIONS_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        }
    }

    public static void printModifiers(int i10, StringBuffer stringBuffer) {
        if (Modifier.isPublic(i10)) {
            stringBuffer.append("public ");
        }
        if (Modifier.isProtected(i10)) {
            stringBuffer.append("protected ");
        }
        if (Modifier.isPrivate(i10)) {
            stringBuffer.append("private ");
        }
        if (Modifier.isStatic(i10)) {
            stringBuffer.append("static ");
        }
        if (Modifier.isAbstract(i10)) {
            stringBuffer.append("abstract ");
        }
        if (Modifier.isFinal(i10)) {
            stringBuffer.append("final ");
        }
        if (Modifier.isSynchronized(i10)) {
            stringBuffer.append("synchronized ");
        }
        if (Modifier.isVolatile(i10)) {
            stringBuffer.append("volatile ");
        }
        if (Modifier.isNative(i10)) {
            stringBuffer.append("native ");
        }
        if (Modifier.isStrictfp(i10)) {
            stringBuffer.append("strictfp ");
        }
        if (Modifier.isTransient(i10)) {
            stringBuffer.append("transient ");
        }
    }

    private void visitExtraDimensions(ASTNode aSTNode, SimplePropertyDescriptor simplePropertyDescriptor, ChildListPropertyDescriptor childListPropertyDescriptor) {
        if (aSTNode.getAST().apiLevel() >= 8) {
            visitList(aSTNode, childListPropertyDescriptor, String.valueOf(C15883c.f126249O), String.valueOf(C15883c.f126249O), Util.EMPTY_STRING);
            return;
        }
        int intAttribute = getIntAttribute(aSTNode, simplePropertyDescriptor);
        for (int i10 = 0; i10 < intAttribute; i10++) {
            this.result.append(v.f99450n);
        }
    }

    private void visitSwitchNode(ASTNode aSTNode) {
        this.result.append("switch (");
        boolean z10 = aSTNode instanceof SwitchExpression;
        if (z10) {
            getChildNode(aSTNode, SwitchExpression.EXPRESSION_PROPERTY).accept(this);
        } else if (aSTNode instanceof SwitchStatement) {
            getChildNode(aSTNode, SwitchStatement.EXPRESSION_PROPERTY).accept(this);
        }
        this.result.append(')');
        this.result.append(JavaElement.JEM_COMPILATIONUNIT);
        if (z10) {
            visitList(aSTNode, SwitchExpression.STATEMENTS_PROPERTY, null);
        } else if (aSTNode instanceof SwitchStatement) {
            visitList(aSTNode, SwitchStatement.STATEMENTS_PROPERTY, null);
        }
        this.result.append(JavaElement.JEM_ANNOTATION);
    }

    public Object getAttribute(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        return this.store.getNewValue(aSTNode, structuralPropertyDescriptor);
    }

    public boolean getBooleanAttribute(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        return ((Boolean) getAttribute(aSTNode, structuralPropertyDescriptor)).booleanValue();
    }

    public List getChildList(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        return (List) getAttribute(aSTNode, structuralPropertyDescriptor);
    }

    public ASTNode getChildNode(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        return (ASTNode) getAttribute(aSTNode, structuralPropertyDescriptor);
    }

    public int getIntAttribute(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        return ((Integer) getAttribute(aSTNode, structuralPropertyDescriptor)).intValue();
    }

    public String getResult() {
        return this.result.toString();
    }

    public void reset() {
        this.result.setLength(0);
    }

    @Override
    public boolean visit(BlockComment blockComment) {
        return false;
    }

    public void visitList(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, String str) {
        List childList = getChildList(aSTNode, structuralPropertyDescriptor);
        for (int i10 = 0; i10 < childList.size(); i10++) {
            if (str != null && i10 > 0) {
                this.result.append(str);
            }
            ((ASTNode) childList.get(i10)).accept(this);
        }
    }

    @Override
    public boolean visit(LineComment lineComment) {
        return false;
    }

    @Override
    public boolean visit(AnonymousClassDeclaration anonymousClassDeclaration) {
        this.result.append(JavaElement.JEM_COMPILATIONUNIT);
        visitList(anonymousClassDeclaration, AnonymousClassDeclaration.BODY_DECLARATIONS_PROPERTY, null);
        this.result.append(JavaElement.JEM_ANNOTATION);
        return false;
    }

    public void visitList(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, String str, String str2, String str3) {
        List childList = getChildList(aSTNode, structuralPropertyDescriptor);
        if (childList.isEmpty()) {
            return;
        }
        this.result.append(str2);
        for (int i10 = 0; i10 < childList.size(); i10++) {
            if (str != null && i10 > 0) {
                this.result.append(str);
            }
            ((ASTNode) childList.get(i10)).accept(this);
        }
        this.result.append(str3);
    }

    @Override
    public boolean visit(ArrayAccess arrayAccess) {
        getChildNode(arrayAccess, ArrayAccess.ARRAY_PROPERTY).accept(this);
        this.result.append('[');
        getChildNode(arrayAccess, ArrayAccess.INDEX_PROPERTY).accept(this);
        this.result.append(JavaElement.JEM_TYPE_PARAMETER);
        return false;
    }

    @Override
    public boolean visit(ArrayCreation arrayCreation) {
        Type type;
        this.result.append("new ");
        ArrayType arrayType = (ArrayType) getChildNode(arrayCreation, ArrayCreation.TYPE_PROPERTY);
        int i10 = 1;
        boolean z10 = arrayCreation.getAST().apiLevel() >= 8;
        if (z10) {
            type = (Type) getChildNode(arrayType, ArrayType.ELEMENT_TYPE_PROPERTY);
            i10 = getChildList(arrayType, ArrayType.DIMENSIONS_PROPERTY).size();
        } else {
            ASTNode childNode = getChildNode(arrayType, INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY);
            while (true) {
                type = (Type) childNode;
                if (!type.isArrayType()) {
                    break;
                }
                i10++;
                childNode = getChildNode(type, INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY);
            }
        }
        int i11 = i10;
        type.accept(this);
        List childList = getChildList(arrayCreation, ArrayCreation.DIMENSIONS_PROPERTY);
        int size = childList.size();
        for (int i12 = 0; i12 < size; i12++) {
            internalVisitDimensionAnnotations(arrayType, i12, z10);
            this.result.append('[');
            ((ASTNode) childList.get(i12)).accept(this);
            this.result.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        for (int size2 = childList.size(); size2 < i11; size2++) {
            internalVisitDimensionAnnotations(arrayType, size2, z10);
            this.result.append(v.f99450n);
        }
        StructuralPropertyDescriptor structuralPropertyDescriptor = ArrayCreation.INITIALIZER_PROPERTY;
        if (getChildNode(arrayCreation, structuralPropertyDescriptor) != null) {
            getChildNode(arrayCreation, structuralPropertyDescriptor).accept(this);
        }
        return false;
    }

    @Override
    public boolean visit(ArrayInitializer arrayInitializer) {
        this.result.append(JavaElement.JEM_COMPILATIONUNIT);
        visitList(arrayInitializer, ArrayInitializer.EXPRESSIONS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR));
        this.result.append(JavaElement.JEM_ANNOTATION);
        return false;
    }

    @Override
    public boolean visit(ArrayType arrayType) {
        if (arrayType.getAST().apiLevel() < 8) {
            getChildNode(arrayType, INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY).accept(this);
            this.result.append(v.f99450n);
            return false;
        }
        getChildNode(arrayType, ArrayType.ELEMENT_TYPE_PROPERTY).accept(this);
        ChildListPropertyDescriptor childListPropertyDescriptor = ArrayType.DIMENSIONS_PROPERTY;
        String str = Util.EMPTY_STRING;
        visitList(arrayType, childListPropertyDescriptor, str, str, str);
        return false;
    }

    @Override
    public boolean visit(AssertStatement assertStatement) {
        this.result.append("assert ");
        getChildNode(assertStatement, AssertStatement.EXPRESSION_PROPERTY).accept(this);
        ASTNode childNode = getChildNode(assertStatement, AssertStatement.MESSAGE_PROPERTY);
        if (childNode != null) {
            this.result.append(':');
            childNode.accept(this);
        }
        this.result.append(';');
        return false;
    }

    @Override
    public boolean visit(Assignment assignment) {
        getChildNode(assignment, Assignment.LEFT_HAND_SIDE_PROPERTY).accept(this);
        this.result.append(getAttribute(assignment, Assignment.OPERATOR_PROPERTY).toString());
        getChildNode(assignment, Assignment.RIGHT_HAND_SIDE_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(Block block) {
        this.result.append(JavaElement.JEM_COMPILATIONUNIT);
        visitList(block, Block.STATEMENTS_PROPERTY, null);
        this.result.append(JavaElement.JEM_ANNOTATION);
        return false;
    }

    @Override
    public boolean visit(BooleanLiteral booleanLiteral) {
        if (booleanLiteral.booleanValue()) {
            this.result.append("true");
            return false;
        }
        this.result.append("false");
        return false;
    }

    @Override
    public boolean visit(BreakStatement breakStatement) {
        ASTNode childNode;
        if (breakStatement.getAST().apiLevel() >= 12 && breakStatement.isImplicit() && breakStatement.getExpression() == null) {
            return false;
        }
        if (breakStatement.getAST().apiLevel() < 12 || (breakStatement.getAST().apiLevel() >= 12 && !breakStatement.isImplicit())) {
            this.result.append("break");
        }
        ASTNode childNode2 = getChildNode(breakStatement, BreakStatement.LABEL_PROPERTY);
        if (childNode2 != null) {
            this.result.append(C15883c.f126249O);
            childNode2.accept(this);
        }
        if (breakStatement.getAST().apiLevel() >= 12 && (childNode = getChildNode(breakStatement, BreakStatement.EXPRESSION_PROPERTY)) != null) {
            this.result.append(C15883c.f126249O);
            childNode.accept(this);
        }
        this.result.append(';');
        return false;
    }

    @Override
    public boolean visit(CastExpression castExpression) {
        this.result.append('(');
        getChildNode(castExpression, CastExpression.TYPE_PROPERTY).accept(this);
        this.result.append(')');
        getChildNode(castExpression, CastExpression.EXPRESSION_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(CatchClause catchClause) {
        this.result.append("catch (");
        getChildNode(catchClause, CatchClause.EXCEPTION_PROPERTY).accept(this);
        this.result.append(')');
        getChildNode(catchClause, CatchClause.BODY_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(CharacterLiteral characterLiteral) {
        this.result.append(getAttribute(characterLiteral, CharacterLiteral.ESCAPED_VALUE_PROPERTY));
        return false;
    }

    @Override
    public boolean visit(ClassInstanceCreation classInstanceCreation) {
        ASTNode childNode = getChildNode(classInstanceCreation, ClassInstanceCreation.EXPRESSION_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
            this.result.append('.');
        }
        this.result.append("new ");
        if (classInstanceCreation.getAST().apiLevel() == 2) {
            getChildNode(classInstanceCreation, INTERNAL_CIC_NAME_PROPERTY).accept(this);
        } else {
            visitList(classInstanceCreation, ClassInstanceCreation.TYPE_ARGUMENTS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR), String.valueOf('<'), String.valueOf('>'));
            getChildNode(classInstanceCreation, ClassInstanceCreation.TYPE_PROPERTY).accept(this);
        }
        this.result.append('(');
        visitList(classInstanceCreation, ClassInstanceCreation.ARGUMENTS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR));
        this.result.append(')');
        ASTNode childNode2 = getChildNode(classInstanceCreation, ClassInstanceCreation.ANONYMOUS_CLASS_DECLARATION_PROPERTY);
        if (childNode2 == null) {
            return false;
        }
        childNode2.accept(this);
        return false;
    }

    @Override
    public boolean visit(CompilationUnit compilationUnit) {
        ASTNode childNode;
        if (compilationUnit.getAST().apiLevel() >= 9 && (childNode = getChildNode(compilationUnit, CompilationUnit.MODULE_PROPERTY)) != null) {
            childNode.accept(this);
        }
        ASTNode childNode2 = getChildNode(compilationUnit, CompilationUnit.PACKAGE_PROPERTY);
        if (childNode2 != null) {
            childNode2.accept(this);
        }
        visitList(compilationUnit, CompilationUnit.IMPORTS_PROPERTY, null);
        visitList(compilationUnit, CompilationUnit.TYPES_PROPERTY, null);
        return false;
    }

    @Override
    public boolean visit(ConditionalExpression conditionalExpression) {
        getChildNode(conditionalExpression, ConditionalExpression.EXPRESSION_PROPERTY).accept(this);
        this.result.append('?');
        getChildNode(conditionalExpression, ConditionalExpression.THEN_EXPRESSION_PROPERTY).accept(this);
        this.result.append(':');
        getChildNode(conditionalExpression, ConditionalExpression.ELSE_EXPRESSION_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(ConstructorInvocation constructorInvocation) {
        if (constructorInvocation.getAST().apiLevel() >= 3) {
            visitList(constructorInvocation, ConstructorInvocation.TYPE_ARGUMENTS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR), String.valueOf('<'), String.valueOf('>'));
        }
        this.result.append("this(");
        visitList(constructorInvocation, ConstructorInvocation.ARGUMENTS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR));
        this.result.append(");");
        return false;
    }

    @Override
    public boolean visit(ContinueStatement continueStatement) {
        this.result.append("continue");
        ASTNode childNode = getChildNode(continueStatement, ContinueStatement.LABEL_PROPERTY);
        if (childNode != null) {
            this.result.append(C15883c.f126249O);
            childNode.accept(this);
        }
        this.result.append(';');
        return false;
    }

    @Override
    public boolean visit(CreationReference creationReference) {
        getChildNode(creationReference, CreationReference.TYPE_PROPERTY).accept(this);
        this.result.append("::");
        visitList(creationReference, CreationReference.TYPE_ARGUMENTS_PROPERTY, Util.EMPTY_STRING, String.valueOf('<'), String.valueOf('>'));
        this.result.append(CallLog.Calls.NEW);
        return false;
    }

    @Override
    public boolean visit(Dimension dimension) {
        visitList(dimension, Dimension.ANNOTATIONS_PROPERTY, String.valueOf(C15883c.f126249O), String.valueOf(C15883c.f126249O), String.valueOf(C15883c.f126249O));
        this.result.append(v.f99450n);
        return false;
    }

    @Override
    public boolean visit(DoStatement doStatement) {
        this.result.append("do ");
        getChildNode(doStatement, DoStatement.BODY_PROPERTY).accept(this);
        this.result.append(" while (");
        getChildNode(doStatement, DoStatement.EXPRESSION_PROPERTY).accept(this);
        this.result.append(");");
        return false;
    }

    @Override
    public boolean visit(EmptyStatement emptyStatement) {
        this.result.append(';');
        return false;
    }

    @Override
    public boolean visit(ExportsDirective exportsDirective) {
        this.result.append("exports ");
        getChildNode(exportsDirective, ExportsDirective.NAME_PROPERTY).accept(this);
        if (exportsDirective.modules().size() > 0) {
            this.result.append(" to ");
            ChildListPropertyDescriptor childListPropertyDescriptor = ExportsDirective.MODULES_PROPERTY;
            String str = Util.COMMA_SEPARATOR;
            String str2 = Util.EMPTY_STRING;
            visitList(exportsDirective, childListPropertyDescriptor, str, str2, str2);
        }
        this.result.append(';');
        return false;
    }

    @Override
    public boolean visit(ExpressionStatement expressionStatement) {
        getChildNode(expressionStatement, ExpressionStatement.EXPRESSION_PROPERTY).accept(this);
        this.result.append(';');
        return false;
    }

    @Override
    public boolean visit(FieldAccess fieldAccess) {
        getChildNode(fieldAccess, FieldAccess.EXPRESSION_PROPERTY).accept(this);
        this.result.append('.');
        getChildNode(fieldAccess, FieldAccess.NAME_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(FieldDeclaration fieldDeclaration) {
        ASTNode childNode = getChildNode(fieldDeclaration, FieldDeclaration.JAVADOC_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
        }
        if (fieldDeclaration.getAST().apiLevel() == 2) {
            printModifiers(getIntAttribute(fieldDeclaration, INTERNAL_FIELD_MODIFIERS_PROPERTY), this.result);
        } else {
            visitList(fieldDeclaration, FieldDeclaration.MODIFIERS2_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        }
        getChildNode(fieldDeclaration, FieldDeclaration.TYPE_PROPERTY).accept(this);
        this.result.append(C15883c.f126249O);
        visitList(fieldDeclaration, FieldDeclaration.FRAGMENTS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR));
        this.result.append(';');
        return false;
    }

    @Override
    public boolean visit(ForStatement forStatement) {
        this.result.append("for (");
        visitList(forStatement, ForStatement.INITIALIZERS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR));
        this.result.append(';');
        ASTNode childNode = getChildNode(forStatement, ForStatement.EXPRESSION_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
        }
        this.result.append(';');
        visitList(forStatement, ForStatement.UPDATERS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR));
        this.result.append(')');
        getChildNode(forStatement, ForStatement.BODY_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(IfStatement ifStatement) {
        this.result.append("if (");
        getChildNode(ifStatement, IfStatement.EXPRESSION_PROPERTY).accept(this);
        this.result.append(')');
        getChildNode(ifStatement, IfStatement.THEN_STATEMENT_PROPERTY).accept(this);
        ASTNode childNode = getChildNode(ifStatement, IfStatement.ELSE_STATEMENT_PROPERTY);
        if (childNode == null) {
            return false;
        }
        this.result.append(" else ");
        childNode.accept(this);
        return false;
    }

    @Override
    public boolean visit(ImportDeclaration importDeclaration) {
        this.result.append("import ");
        if (importDeclaration.getAST().apiLevel() >= 3 && getBooleanAttribute(importDeclaration, ImportDeclaration.STATIC_PROPERTY)) {
            this.result.append("static ");
        }
        getChildNode(importDeclaration, ImportDeclaration.NAME_PROPERTY).accept(this);
        if (getBooleanAttribute(importDeclaration, ImportDeclaration.ON_DEMAND_PROPERTY)) {
            this.result.append(".*");
        }
        this.result.append(';');
        return false;
    }

    @Override
    public boolean visit(InfixExpression infixExpression) {
        getChildNode(infixExpression, InfixExpression.LEFT_OPERAND_PROPERTY).accept(this);
        this.result.append(C15883c.f126249O);
        String obj = getAttribute(infixExpression, InfixExpression.OPERATOR_PROPERTY).toString();
        this.result.append(obj);
        this.result.append(C15883c.f126249O);
        getChildNode(infixExpression, InfixExpression.RIGHT_OPERAND_PROPERTY).accept(this);
        String str = String.valueOf(C15883c.f126249O) + obj + C15883c.f126249O;
        visitList(infixExpression, InfixExpression.EXTENDED_OPERANDS_PROPERTY, str, str, Util.EMPTY_STRING);
        return false;
    }

    @Override
    public boolean visit(Initializer initializer) {
        ASTNode childNode = getChildNode(initializer, Initializer.JAVADOC_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
        }
        if (initializer.getAST().apiLevel() == 2) {
            printModifiers(getIntAttribute(initializer, INTERNAL_INITIALIZER_MODIFIERS_PROPERTY), this.result);
        } else {
            visitList(initializer, Initializer.MODIFIERS2_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        }
        getChildNode(initializer, Initializer.BODY_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(InstanceofExpression instanceofExpression) {
        getChildNode(instanceofExpression, InstanceofExpression.LEFT_OPERAND_PROPERTY).accept(this);
        this.result.append(" instanceof ");
        getChildNode(instanceofExpression, InstanceofExpression.RIGHT_OPERAND_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(IntersectionType intersectionType) {
        ChildListPropertyDescriptor childListPropertyDescriptor = IntersectionType.TYPES_PROPERTY;
        String str = Util.EMPTY_STRING;
        visitList(intersectionType, childListPropertyDescriptor, " & ", str, str);
        return false;
    }

    @Override
    public boolean visit(Javadoc javadoc) {
        this.result.append("/**");
        List childList = getChildList(javadoc, Javadoc.TAGS_PROPERTY);
        for (int i10 = 0; i10 < childList.size(); i10++) {
            this.result.append("\n * ");
            ((ASTNode) childList.get(i10)).accept(this);
        }
        this.result.append("\n */");
        return false;
    }

    @Override
    public boolean visit(LabeledStatement labeledStatement) {
        getChildNode(labeledStatement, LabeledStatement.LABEL_PROPERTY).accept(this);
        this.result.append(": ");
        getChildNode(labeledStatement, LabeledStatement.BODY_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(LambdaExpression lambdaExpression) {
        boolean booleanAttribute = getBooleanAttribute(lambdaExpression, LambdaExpression.PARENTHESES_PROPERTY);
        if (!booleanAttribute) {
            List childList = getChildList(lambdaExpression, LambdaExpression.PARAMETERS_PROPERTY);
            booleanAttribute = (childList.size() == 1 && (childList.get(0) instanceof VariableDeclarationFragment)) ? false : true;
        }
        if (booleanAttribute) {
            this.result.append('(');
        }
        visitList(lambdaExpression, LambdaExpression.PARAMETERS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR));
        if (booleanAttribute) {
            this.result.append(')');
        }
        this.result.append("->");
        getChildNode(lambdaExpression, LambdaExpression.BODY_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(MethodDeclaration methodDeclaration) {
        ASTNode childNode;
        ASTNode childNode2 = getChildNode(methodDeclaration, MethodDeclaration.JAVADOC_PROPERTY);
        if (childNode2 != null) {
            childNode2.accept(this);
        }
        if (methodDeclaration.getAST().apiLevel() == 2) {
            printModifiers(getIntAttribute(methodDeclaration, INTERNAL_METHOD_MODIFIERS_PROPERTY), this.result);
        } else {
            visitList(methodDeclaration, MethodDeclaration.MODIFIERS2_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
            visitList(methodDeclaration, MethodDeclaration.TYPE_PARAMETERS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR), String.valueOf('<'), String.valueOf('>'));
        }
        if (!getBooleanAttribute(methodDeclaration, MethodDeclaration.CONSTRUCTOR_PROPERTY)) {
            if (methodDeclaration.getAST().apiLevel() == 2) {
                getChildNode(methodDeclaration, INTERNAL_METHOD_RETURN_TYPE_PROPERTY).accept(this);
            } else {
                ASTNode childNode3 = getChildNode(methodDeclaration, MethodDeclaration.RETURN_TYPE2_PROPERTY);
                if (childNode3 != null) {
                    childNode3.accept(this);
                } else {
                    this.result.append("void");
                }
            }
            this.result.append(C15883c.f126249O);
        }
        getChildNode(methodDeclaration, MethodDeclaration.NAME_PROPERTY).accept(this);
        this.result.append('(');
        if (methodDeclaration.getAST().apiLevel() >= 8 && (childNode = getChildNode(methodDeclaration, MethodDeclaration.RECEIVER_TYPE_PROPERTY)) != null) {
            childNode.accept(this);
            this.result.append(C15883c.f126249O);
            ASTNode childNode4 = getChildNode(methodDeclaration, MethodDeclaration.RECEIVER_QUALIFIER_PROPERTY);
            if (childNode4 != null) {
                childNode4.accept(this);
                this.result.append('.');
            }
            this.result.append("this");
            if (getChildList(methodDeclaration, MethodDeclaration.PARAMETERS_PROPERTY).size() > 0) {
                this.result.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
        }
        visitList(methodDeclaration, MethodDeclaration.PARAMETERS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR));
        this.result.append(')');
        visitExtraDimensions(methodDeclaration, INTERNAL_METHOD_EXTRA_DIMENSIONS_PROPERTY, MethodDeclaration.EXTRA_DIMENSIONS2_PROPERTY);
        visitList(methodDeclaration, methodDeclaration.getAST().apiLevel() < 8 ? INTERNAL_METHOD_THROWN_EXCEPTIONS_PROPERTY : MethodDeclaration.THROWN_EXCEPTION_TYPES_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR), " throws ", Util.EMPTY_STRING);
        ASTNode childNode5 = getChildNode(methodDeclaration, MethodDeclaration.BODY_PROPERTY);
        if (childNode5 == null) {
            this.result.append(';');
            return false;
        }
        childNode5.accept(this);
        return false;
    }

    @Override
    public boolean visit(ModuleDeclaration moduleDeclaration) {
        ASTNode childNode = getChildNode(moduleDeclaration, ModuleDeclaration.JAVADOC_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
        }
        visitList(moduleDeclaration, ModuleDeclaration.ANNOTATIONS_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        if (getBooleanAttribute(moduleDeclaration, ModuleDeclaration.OPEN_PROPERTY)) {
            this.result.append("open ");
        }
        this.result.append("module ");
        getChildNode(moduleDeclaration, ModuleDeclaration.NAME_PROPERTY).accept(this);
        this.result.append(JavaElement.JEM_COMPILATIONUNIT);
        visitList(moduleDeclaration, ModuleDeclaration.MODULE_DIRECTIVES_PROPERTY, null);
        this.result.append(JavaElement.JEM_ANNOTATION);
        return false;
    }

    @Override
    public boolean visit(MethodInvocation methodInvocation) {
        ASTNode childNode = getChildNode(methodInvocation, MethodInvocation.EXPRESSION_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
            this.result.append('.');
        }
        if (methodInvocation.getAST().apiLevel() >= 3) {
            visitList(methodInvocation, MethodInvocation.TYPE_ARGUMENTS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR), String.valueOf('<'), String.valueOf('>'));
        }
        getChildNode(methodInvocation, MethodInvocation.NAME_PROPERTY).accept(this);
        this.result.append('(');
        visitList(methodInvocation, MethodInvocation.ARGUMENTS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR));
        this.result.append(')');
        return false;
    }

    @Override
    public boolean visit(NullLiteral nullLiteral) {
        this.result.append("null");
        return false;
    }

    @Override
    public boolean visit(NumberLiteral numberLiteral) {
        this.result.append(getAttribute(numberLiteral, NumberLiteral.TOKEN_PROPERTY).toString());
        return false;
    }

    @Override
    public boolean visit(PackageDeclaration packageDeclaration) {
        if (packageDeclaration.getAST().apiLevel() >= 3) {
            ASTNode childNode = getChildNode(packageDeclaration, PackageDeclaration.JAVADOC_PROPERTY);
            if (childNode != null) {
                childNode.accept(this);
            }
            visitList(packageDeclaration, PackageDeclaration.ANNOTATIONS_PROPERTY, String.valueOf(C15883c.f126249O));
        }
        this.result.append("package ");
        getChildNode(packageDeclaration, PackageDeclaration.NAME_PROPERTY).accept(this);
        this.result.append(';');
        return false;
    }

    @Override
    public boolean visit(ParenthesizedExpression parenthesizedExpression) {
        this.result.append('(');
        getChildNode(parenthesizedExpression, ParenthesizedExpression.EXPRESSION_PROPERTY).accept(this);
        this.result.append(')');
        return false;
    }

    @Override
    public boolean visit(PostfixExpression postfixExpression) {
        getChildNode(postfixExpression, PostfixExpression.OPERAND_PROPERTY).accept(this);
        this.result.append(getAttribute(postfixExpression, PostfixExpression.OPERATOR_PROPERTY).toString());
        return false;
    }

    @Override
    public boolean visit(PrefixExpression prefixExpression) {
        this.result.append(getAttribute(prefixExpression, PrefixExpression.OPERATOR_PROPERTY).toString());
        getChildNode(prefixExpression, PrefixExpression.OPERAND_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(ProvidesDirective providesDirective) {
        this.result.append("provides ");
        getChildNode(providesDirective, ProvidesDirective.NAME_PROPERTY).accept(this);
        this.result.append(" with ");
        ChildListPropertyDescriptor childListPropertyDescriptor = ProvidesDirective.IMPLEMENTATIONS_PROPERTY;
        String str = Util.EMPTY_STRING;
        visitList(providesDirective, childListPropertyDescriptor, str, Util.COMMA_SEPARATOR, str);
        this.result.append(';');
        return false;
    }

    @Override
    public boolean visit(PrimitiveType primitiveType) {
        if (primitiveType.getAST().apiLevel() >= 8) {
            visitList(primitiveType, PrimitiveType.ANNOTATIONS_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        }
        this.result.append(getAttribute(primitiveType, PrimitiveType.PRIMITIVE_TYPE_CODE_PROPERTY).toString());
        return false;
    }

    @Override
    public boolean visit(QualifiedName qualifiedName) {
        getChildNode(qualifiedName, QualifiedName.QUALIFIER_PROPERTY).accept(this);
        this.result.append('.');
        getChildNode(qualifiedName, QualifiedName.NAME_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(RequiresDirective requiresDirective) {
        this.result.append("requires ");
        visitList(requiresDirective, RequiresDirective.MODIFIERS_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        getChildNode(requiresDirective, RequiresDirective.NAME_PROPERTY).accept(this);
        this.result.append(';');
        return false;
    }

    @Override
    public boolean visit(ReturnStatement returnStatement) {
        this.result.append("return");
        ASTNode childNode = getChildNode(returnStatement, ReturnStatement.EXPRESSION_PROPERTY);
        if (childNode != null) {
            this.result.append(C15883c.f126249O);
            childNode.accept(this);
        }
        this.result.append(';');
        return false;
    }

    @Override
    public boolean visit(SimpleName simpleName) {
        this.result.append(getAttribute(simpleName, SimpleName.IDENTIFIER_PROPERTY));
        return false;
    }

    @Override
    public boolean visit(SimpleType simpleType) {
        if (simpleType.getAST().apiLevel() >= 8) {
            visitList(simpleType, SimpleType.ANNOTATIONS_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        }
        simpleType.getName().accept(this);
        return false;
    }

    @Override
    public boolean visit(SingleVariableDeclaration singleVariableDeclaration) {
        if (singleVariableDeclaration.getAST().apiLevel() == 2) {
            printModifiers(getIntAttribute(singleVariableDeclaration, INTERNAL_VARIABLE_MODIFIERS_PROPERTY), this.result);
        } else {
            visitList(singleVariableDeclaration, SingleVariableDeclaration.MODIFIERS2_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        }
        getChildNode(singleVariableDeclaration, SingleVariableDeclaration.TYPE_PROPERTY).accept(this);
        if (singleVariableDeclaration.getAST().apiLevel() >= 8 && singleVariableDeclaration.isVarargs()) {
            visitList(singleVariableDeclaration, SingleVariableDeclaration.VARARGS_ANNOTATIONS_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        }
        if (singleVariableDeclaration.getAST().apiLevel() >= 3 && getBooleanAttribute(singleVariableDeclaration, SingleVariableDeclaration.VARARGS_PROPERTY)) {
            this.result.append("...");
        }
        this.result.append(C15883c.f126249O);
        getChildNode(singleVariableDeclaration, SingleVariableDeclaration.NAME_PROPERTY).accept(this);
        visitExtraDimensions(singleVariableDeclaration, INTERNAL_VARIABLE_EXTRA_DIMENSIONS_PROPERTY, SingleVariableDeclaration.EXTRA_DIMENSIONS2_PROPERTY);
        ASTNode childNode = getChildNode(singleVariableDeclaration, SingleVariableDeclaration.INITIALIZER_PROPERTY);
        if (childNode == null) {
            return false;
        }
        this.result.append('=');
        childNode.accept(this);
        return false;
    }

    @Override
    public boolean visit(StringLiteral stringLiteral) {
        this.result.append(getAttribute(stringLiteral, StringLiteral.ESCAPED_VALUE_PROPERTY));
        return false;
    }

    @Override
    public boolean visit(SuperConstructorInvocation superConstructorInvocation) {
        ASTNode childNode = getChildNode(superConstructorInvocation, SuperConstructorInvocation.EXPRESSION_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
            this.result.append('.');
        }
        if (superConstructorInvocation.getAST().apiLevel() >= 3) {
            visitList(superConstructorInvocation, SuperConstructorInvocation.TYPE_ARGUMENTS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR), String.valueOf('<'), String.valueOf('>'));
        }
        this.result.append("super(");
        visitList(superConstructorInvocation, SuperConstructorInvocation.ARGUMENTS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR));
        this.result.append(");");
        return false;
    }

    @Override
    public boolean visit(SuperFieldAccess superFieldAccess) {
        ASTNode childNode = getChildNode(superFieldAccess, SuperFieldAccess.QUALIFIER_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
            this.result.append('.');
        }
        this.result.append("super.");
        getChildNode(superFieldAccess, SuperFieldAccess.NAME_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(SuperMethodInvocation superMethodInvocation) {
        ASTNode childNode = getChildNode(superMethodInvocation, SuperMethodInvocation.QUALIFIER_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
            this.result.append('.');
        }
        this.result.append("super.");
        if (superMethodInvocation.getAST().apiLevel() >= 3) {
            visitList(superMethodInvocation, SuperMethodInvocation.TYPE_ARGUMENTS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR), String.valueOf('<'), String.valueOf('>'));
        }
        getChildNode(superMethodInvocation, SuperMethodInvocation.NAME_PROPERTY).accept(this);
        this.result.append('(');
        visitList(superMethodInvocation, SuperMethodInvocation.ARGUMENTS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR));
        this.result.append(')');
        return false;
    }

    @Override
    public boolean visit(SwitchCase switchCase) {
        if (switchCase.getAST().apiLevel() >= 12) {
            boolean isDefault = switchCase.isDefault();
            String str = s.f32937c;
            if (isDefault) {
                this.result.append("default");
                StringBuffer stringBuffer = this.result;
                if (getBooleanAttribute(switchCase, SwitchCase.SWITCH_LABELED_RULE_PROPERTY)) {
                    str = " ->";
                }
                stringBuffer.append(str);
                return false;
            }
            this.result.append("case ");
            Iterator it = switchCase.expressions().iterator();
            while (it.hasNext()) {
                ((Expression) it.next()).accept(this);
                this.result.append(it.hasNext() ? ", " : "");
            }
            StringBuffer stringBuffer2 = this.result;
            if (getBooleanAttribute(switchCase, SwitchCase.SWITCH_LABELED_RULE_PROPERTY)) {
                str = " ->";
            }
            stringBuffer2.append(str);
            return false;
        }
        ASTNode childNode = getChildNode(switchCase, INTERNAL_SWITCH_EXPRESSION_PROPERTY);
        if (childNode == null) {
            this.result.append("default");
        } else {
            this.result.append("case ");
            childNode.accept(this);
        }
        this.result.append(':');
        return false;
    }

    @Override
    public boolean visit(SwitchExpression switchExpression) {
        visitSwitchNode(switchExpression);
        return false;
    }

    @Override
    public boolean visit(SwitchStatement switchStatement) {
        visitSwitchNode(switchStatement);
        return false;
    }

    @Override
    public boolean visit(SynchronizedStatement synchronizedStatement) {
        this.result.append("synchronized (");
        getChildNode(synchronizedStatement, SynchronizedStatement.EXPRESSION_PROPERTY).accept(this);
        this.result.append(')');
        getChildNode(synchronizedStatement, SynchronizedStatement.BODY_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(ThisExpression thisExpression) {
        ASTNode childNode = getChildNode(thisExpression, ThisExpression.QUALIFIER_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
            this.result.append('.');
        }
        this.result.append("this");
        return false;
    }

    @Override
    public boolean visit(ThrowStatement throwStatement) {
        this.result.append("throw ");
        getChildNode(throwStatement, ThrowStatement.EXPRESSION_PROPERTY).accept(this);
        this.result.append(';');
        return false;
    }

    @Override
    public boolean visit(TryStatement tryStatement) {
        this.result.append("try ");
        int apiLevel = tryStatement.getAST().apiLevel();
        if (apiLevel >= 4) {
            visitList(tryStatement, apiLevel < 9 ? INTERNAL_TRY_STATEMENT_RESOURCES_PROPERTY : TryStatement.RESOURCES2_PROPERTY, String.valueOf(';'), String.valueOf('('), String.valueOf(')'));
        }
        getChildNode(tryStatement, TryStatement.BODY_PROPERTY).accept(this);
        this.result.append(C15883c.f126249O);
        visitList(tryStatement, TryStatement.CATCH_CLAUSES_PROPERTY, null);
        ASTNode childNode = getChildNode(tryStatement, TryStatement.FINALLY_PROPERTY);
        if (childNode == null) {
            return false;
        }
        this.result.append(" finally ");
        childNode.accept(this);
        return false;
    }

    @Override
    public boolean visit(TypeDeclaration typeDeclaration) {
        int apiLevel = typeDeclaration.getAST().apiLevel();
        ASTNode childNode = getChildNode(typeDeclaration, TypeDeclaration.JAVADOC_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
        }
        if (apiLevel == 2) {
            printModifiers(getIntAttribute(typeDeclaration, INTERNAL_TYPE_MODIFIERS_PROPERTY), this.result);
        } else {
            visitList(typeDeclaration, TypeDeclaration.MODIFIERS2_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        }
        boolean booleanAttribute = getBooleanAttribute(typeDeclaration, TypeDeclaration.INTERFACE_PROPERTY);
        this.result.append(booleanAttribute ? "interface " : ExternalAnnotationProvider.CLASS_PREFIX);
        getChildNode(typeDeclaration, TypeDeclaration.NAME_PROPERTY).accept(this);
        if (apiLevel >= 3) {
            visitList(typeDeclaration, TypeDeclaration.TYPE_PARAMETERS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR), String.valueOf('<'), String.valueOf('>'));
        }
        this.result.append(C15883c.f126249O);
        ASTNode childNode2 = getChildNode(typeDeclaration, apiLevel == 2 ? INTERNAL_TYPE_SUPERCLASS_PROPERTY : TypeDeclaration.SUPERCLASS_TYPE_PROPERTY);
        String str = "extends ";
        if (childNode2 != null) {
            this.result.append("extends ");
            childNode2.accept(this);
            this.result.append(C15883c.f126249O);
        }
        ChildListPropertyDescriptor childListPropertyDescriptor = apiLevel == 2 ? INTERNAL_TYPE_SUPER_INTERFACES_PROPERTY : TypeDeclaration.SUPER_INTERFACE_TYPES_PROPERTY;
        if (!booleanAttribute) {
            str = "implements ";
        }
        visitList(typeDeclaration, childListPropertyDescriptor, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR), str, Util.EMPTY_STRING);
        this.result.append(JavaElement.JEM_COMPILATIONUNIT);
        visitList(typeDeclaration, TypeDeclaration.BODY_DECLARATIONS_PROPERTY, null);
        this.result.append(JavaElement.JEM_ANNOTATION);
        return false;
    }

    @Override
    public boolean visit(TypeDeclarationStatement typeDeclarationStatement) {
        if (typeDeclarationStatement.getAST().apiLevel() == 2) {
            getChildNode(typeDeclarationStatement, INTERNAL_TDS_TYPE_DECLARATION_PROPERTY).accept(this);
            return false;
        }
        getChildNode(typeDeclarationStatement, TypeDeclarationStatement.DECLARATION_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(TypeLiteral typeLiteral) {
        getChildNode(typeLiteral, TypeLiteral.TYPE_PROPERTY).accept(this);
        this.result.append(".class");
        return false;
    }

    @Override
    public boolean visit(UnionType unionType) {
        ChildListPropertyDescriptor childListPropertyDescriptor = UnionType.TYPES_PROPERTY;
        String str = Util.EMPTY_STRING;
        visitList(unionType, childListPropertyDescriptor, " | ", str, str);
        return false;
    }

    @Override
    public boolean visit(UsesDirective usesDirective) {
        this.result.append("uses ");
        getChildNode(usesDirective, UsesDirective.NAME_PROPERTY).accept(this);
        this.result.append(';');
        return false;
    }

    @Override
    public boolean visit(VariableDeclarationExpression variableDeclarationExpression) {
        if (variableDeclarationExpression.getAST().apiLevel() == 2) {
            printModifiers(getIntAttribute(variableDeclarationExpression, INTERNAL_VDE_MODIFIERS_PROPERTY), this.result);
        } else {
            visitList(variableDeclarationExpression, VariableDeclarationExpression.MODIFIERS2_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        }
        getChildNode(variableDeclarationExpression, VariableDeclarationExpression.TYPE_PROPERTY).accept(this);
        this.result.append(C15883c.f126249O);
        visitList(variableDeclarationExpression, VariableDeclarationExpression.FRAGMENTS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR));
        return false;
    }

    @Override
    public boolean visit(VariableDeclarationFragment variableDeclarationFragment) {
        getChildNode(variableDeclarationFragment, VariableDeclarationFragment.NAME_PROPERTY).accept(this);
        visitExtraDimensions(variableDeclarationFragment, INTERNAL_FRAGMENT_EXTRA_DIMENSIONS_PROPERTY, VariableDeclarationFragment.EXTRA_DIMENSIONS2_PROPERTY);
        ASTNode childNode = getChildNode(variableDeclarationFragment, VariableDeclarationFragment.INITIALIZER_PROPERTY);
        if (childNode == null) {
            return false;
        }
        this.result.append('=');
        childNode.accept(this);
        return false;
    }

    @Override
    public boolean visit(VariableDeclarationStatement variableDeclarationStatement) {
        if (variableDeclarationStatement.getAST().apiLevel() == 2) {
            printModifiers(getIntAttribute(variableDeclarationStatement, INTERNAL_VDS_MODIFIERS_PROPERTY), this.result);
        } else {
            visitList(variableDeclarationStatement, VariableDeclarationStatement.MODIFIERS2_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        }
        getChildNode(variableDeclarationStatement, VariableDeclarationStatement.TYPE_PROPERTY).accept(this);
        this.result.append(C15883c.f126249O);
        visitList(variableDeclarationStatement, VariableDeclarationStatement.FRAGMENTS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR));
        this.result.append(';');
        return false;
    }

    @Override
    public boolean visit(WhileStatement whileStatement) {
        this.result.append("while (");
        getChildNode(whileStatement, WhileStatement.EXPRESSION_PROPERTY).accept(this);
        this.result.append(')');
        getChildNode(whileStatement, WhileStatement.BODY_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(MemberRef memberRef) {
        ASTNode childNode = getChildNode(memberRef, MemberRef.QUALIFIER_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
        }
        this.result.append(JavaElement.JEM_IMPORTDECLARATION);
        getChildNode(memberRef, MemberRef.NAME_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(MethodRef methodRef) {
        ASTNode childNode = getChildNode(methodRef, MethodRef.QUALIFIER_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
        }
        this.result.append(JavaElement.JEM_IMPORTDECLARATION);
        getChildNode(methodRef, MethodRef.NAME_PROPERTY).accept(this);
        this.result.append('(');
        visitList(methodRef, MethodRef.PARAMETERS_PROPERTY, DocLint.SEPARATOR);
        this.result.append(')');
        return false;
    }

    @Override
    public boolean visit(MethodRefParameter methodRefParameter) {
        getChildNode(methodRefParameter, MethodRefParameter.TYPE_PROPERTY).accept(this);
        if (methodRefParameter.getAST().apiLevel() >= 3 && getBooleanAttribute(methodRefParameter, MethodRefParameter.VARARGS_PROPERTY)) {
            this.result.append("...");
        }
        ASTNode childNode = getChildNode(methodRefParameter, MethodRefParameter.NAME_PROPERTY);
        if (childNode == null) {
            return false;
        }
        this.result.append(C15883c.f126249O);
        childNode.accept(this);
        return false;
    }

    @Override
    public boolean visit(TagElement tagElement) {
        Object attribute = getAttribute(tagElement, TagElement.TAG_NAME_PROPERTY);
        if (attribute != null) {
            this.result.append((String) attribute);
        }
        List childList = getChildList(tagElement, TagElement.FRAGMENTS_PROPERTY);
        for (int i10 = 0; i10 < childList.size(); i10++) {
            if (i10 > 0 || attribute != null) {
                this.result.append(C15883c.f126249O);
            }
            ASTNode aSTNode = (ASTNode) childList.get(i10);
            if (aSTNode instanceof TagElement) {
                this.result.append(JavaElement.JEM_COMPILATIONUNIT);
                aSTNode.accept(this);
                this.result.append(JavaElement.JEM_ANNOTATION);
            } else {
                aSTNode.accept(this);
            }
        }
        return false;
    }

    @Override
    public boolean visit(TextElement textElement) {
        this.result.append(getAttribute(textElement, TextElement.TEXT_PROPERTY));
        return false;
    }

    @Override
    public boolean visit(AnnotationTypeDeclaration annotationTypeDeclaration) {
        ASTNode childNode = getChildNode(annotationTypeDeclaration, AnnotationTypeDeclaration.JAVADOC_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
        }
        ChildListPropertyDescriptor childListPropertyDescriptor = AnnotationTypeDeclaration.MODIFIERS2_PROPERTY;
        String valueOf = String.valueOf(C15883c.f126249O);
        String str = Util.EMPTY_STRING;
        visitList(annotationTypeDeclaration, childListPropertyDescriptor, valueOf, str, String.valueOf(C15883c.f126249O));
        this.result.append("@interface ");
        getChildNode(annotationTypeDeclaration, AnnotationTypeDeclaration.NAME_PROPERTY).accept(this);
        this.result.append(JavaElement.JEM_COMPILATIONUNIT);
        visitList(annotationTypeDeclaration, AnnotationTypeDeclaration.BODY_DECLARATIONS_PROPERTY, str);
        this.result.append(JavaElement.JEM_ANNOTATION);
        return false;
    }

    @Override
    public boolean visit(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration) {
        ASTNode childNode = getChildNode(annotationTypeMemberDeclaration, AnnotationTypeMemberDeclaration.JAVADOC_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
        }
        visitList(annotationTypeMemberDeclaration, AnnotationTypeMemberDeclaration.MODIFIERS2_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        getChildNode(annotationTypeMemberDeclaration, AnnotationTypeMemberDeclaration.TYPE_PROPERTY).accept(this);
        this.result.append(C15883c.f126249O);
        getChildNode(annotationTypeMemberDeclaration, AnnotationTypeMemberDeclaration.NAME_PROPERTY).accept(this);
        this.result.append("()");
        ASTNode childNode2 = getChildNode(annotationTypeMemberDeclaration, AnnotationTypeMemberDeclaration.DEFAULT_PROPERTY);
        if (childNode2 != null) {
            this.result.append(" default ");
            childNode2.accept(this);
        }
        this.result.append(';');
        return false;
    }

    @Override
    public boolean visit(EnhancedForStatement enhancedForStatement) {
        this.result.append("for (");
        getChildNode(enhancedForStatement, EnhancedForStatement.PARAMETER_PROPERTY).accept(this);
        this.result.append(':');
        getChildNode(enhancedForStatement, EnhancedForStatement.EXPRESSION_PROPERTY).accept(this);
        this.result.append(')');
        getChildNode(enhancedForStatement, EnhancedForStatement.BODY_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(EnumConstantDeclaration enumConstantDeclaration) {
        ASTNode childNode = getChildNode(enumConstantDeclaration, EnumConstantDeclaration.JAVADOC_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
        }
        visitList(enumConstantDeclaration, EnumConstantDeclaration.MODIFIERS2_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        getChildNode(enumConstantDeclaration, EnumConstantDeclaration.NAME_PROPERTY).accept(this);
        visitList(enumConstantDeclaration, EnumConstantDeclaration.ARGUMENTS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR), String.valueOf('('), String.valueOf(')'));
        ASTNode childNode2 = getChildNode(enumConstantDeclaration, EnumConstantDeclaration.ANONYMOUS_CLASS_DECLARATION_PROPERTY);
        if (childNode2 == null) {
            return false;
        }
        childNode2.accept(this);
        return false;
    }

    @Override
    public boolean visit(EnumDeclaration enumDeclaration) {
        ASTNode childNode = getChildNode(enumDeclaration, EnumDeclaration.JAVADOC_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
        }
        ChildListPropertyDescriptor childListPropertyDescriptor = EnumDeclaration.MODIFIERS2_PROPERTY;
        String valueOf = String.valueOf(C15883c.f126249O);
        String str = Util.EMPTY_STRING;
        visitList(enumDeclaration, childListPropertyDescriptor, valueOf, str, String.valueOf(C15883c.f126249O));
        this.result.append("enum ");
        getChildNode(enumDeclaration, EnumDeclaration.NAME_PROPERTY).accept(this);
        this.result.append(C15883c.f126249O);
        visitList(enumDeclaration, EnumDeclaration.SUPER_INTERFACE_TYPES_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR), "implements ", str);
        this.result.append(JavaElement.JEM_COMPILATIONUNIT);
        visitList(enumDeclaration, EnumDeclaration.ENUM_CONSTANTS_PROPERTY, String.valueOf(IIndexConstants.PARAMETER_SEPARATOR), str, str);
        visitList(enumDeclaration, EnumDeclaration.BODY_DECLARATIONS_PROPERTY, str, String.valueOf(';'), str);
        this.result.append(JavaElement.JEM_ANNOTATION);
        return false;
    }

    @Override
    public boolean visit(ExpressionMethodReference expressionMethodReference) {
        getChildNode(expressionMethodReference, ExpressionMethodReference.EXPRESSION_PROPERTY).accept(this);
        this.result.append("::");
        visitList(expressionMethodReference, ExpressionMethodReference.TYPE_ARGUMENTS_PROPERTY, Util.EMPTY_STRING, String.valueOf('<'), String.valueOf('>'));
        expressionMethodReference.getName().accept(this);
        return false;
    }

    @Override
    public boolean visit(MarkerAnnotation markerAnnotation) {
        this.result.append('@');
        getChildNode(markerAnnotation, MarkerAnnotation.TYPE_NAME_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(MemberValuePair memberValuePair) {
        getChildNode(memberValuePair, MemberValuePair.NAME_PROPERTY).accept(this);
        this.result.append('=');
        getChildNode(memberValuePair, MemberValuePair.VALUE_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(Modifier modifier) {
        this.result.append(getAttribute(modifier, Modifier.KEYWORD_PROPERTY).toString());
        return false;
    }

    @Override
    public boolean visit(ModuleModifier moduleModifier) {
        this.result.append(getAttribute(moduleModifier, ModuleModifier.KEYWORD_PROPERTY).toString());
        return false;
    }

    @Override
    public boolean visit(NormalAnnotation normalAnnotation) {
        this.result.append('@');
        getChildNode(normalAnnotation, NormalAnnotation.TYPE_NAME_PROPERTY).accept(this);
        this.result.append('(');
        visitList(normalAnnotation, NormalAnnotation.VALUES_PROPERTY, ", ");
        this.result.append(')');
        return false;
    }

    @Override
    public boolean visit(NameQualifiedType nameQualifiedType) {
        getChildNode(nameQualifiedType, NameQualifiedType.QUALIFIER_PROPERTY).accept(this);
        this.result.append('.');
        if (nameQualifiedType.getAST().apiLevel() >= 8) {
            visitList(nameQualifiedType, NameQualifiedType.ANNOTATIONS_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        }
        getChildNode(nameQualifiedType, NameQualifiedType.NAME_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(ParameterizedType parameterizedType) {
        getChildNode(parameterizedType, ParameterizedType.TYPE_PROPERTY).accept(this);
        this.result.append('<');
        visitList(parameterizedType, ParameterizedType.TYPE_ARGUMENTS_PROPERTY, ", ");
        this.result.append('>');
        return false;
    }

    @Override
    public boolean visit(QualifiedType qualifiedType) {
        getChildNode(qualifiedType, QualifiedType.QUALIFIER_PROPERTY).accept(this);
        this.result.append('.');
        if (qualifiedType.getAST().apiLevel() >= 8) {
            visitList(qualifiedType, QualifiedType.ANNOTATIONS_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        }
        getChildNode(qualifiedType, QualifiedType.NAME_PROPERTY).accept(this);
        return false;
    }

    @Override
    public boolean visit(SingleMemberAnnotation singleMemberAnnotation) {
        this.result.append('@');
        getChildNode(singleMemberAnnotation, SingleMemberAnnotation.TYPE_NAME_PROPERTY).accept(this);
        this.result.append('(');
        getChildNode(singleMemberAnnotation, SingleMemberAnnotation.VALUE_PROPERTY).accept(this);
        this.result.append(')');
        return false;
    }

    @Override
    public boolean visit(SuperMethodReference superMethodReference) {
        ASTNode childNode = getChildNode(superMethodReference, SuperMethodReference.QUALIFIER_PROPERTY);
        if (childNode != null) {
            childNode.accept(this);
            this.result.append('.');
        }
        this.result.append("super ::");
        visitList(superMethodReference, SuperMethodReference.TYPE_ARGUMENTS_PROPERTY, Util.EMPTY_STRING, String.valueOf('<'), String.valueOf('>'));
        superMethodReference.getName().accept(this);
        return false;
    }

    @Override
    public boolean visit(TypeMethodReference typeMethodReference) {
        getChildNode(typeMethodReference, TypeMethodReference.TYPE_PROPERTY).accept(this);
        this.result.append("::");
        visitList(typeMethodReference, TypeMethodReference.TYPE_ARGUMENTS_PROPERTY, Util.EMPTY_STRING, String.valueOf('<'), String.valueOf('>'));
        typeMethodReference.getName().accept(this);
        return false;
    }

    @Override
    public boolean visit(TypeParameter typeParameter) {
        if (typeParameter.getAST().apiLevel() >= 8) {
            visitList(typeParameter, TypeParameter.MODIFIERS_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        }
        getChildNode(typeParameter, TypeParameter.NAME_PROPERTY).accept(this);
        visitList(typeParameter, TypeParameter.TYPE_BOUNDS_PROPERTY, " & ", " extends ", Util.EMPTY_STRING);
        return false;
    }

    @Override
    public boolean visit(WildcardType wildcardType) {
        if (wildcardType.getAST().apiLevel() >= 8) {
            visitList(wildcardType, WildcardType.ANNOTATIONS_PROPERTY, String.valueOf(C15883c.f126249O), Util.EMPTY_STRING, String.valueOf(C15883c.f126249O));
        }
        this.result.append('?');
        ASTNode childNode = getChildNode(wildcardType, WildcardType.BOUND_PROPERTY);
        if (childNode == null) {
            return false;
        }
        if (getBooleanAttribute(wildcardType, WildcardType.UPPER_BOUND_PROPERTY)) {
            this.result.append(" extends ");
        } else {
            this.result.append(" super ");
        }
        childNode.accept(this);
        return false;
    }
}
