package org.eclipse.jdt.internal.core.dom;

import android.provider.CallLog;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import b3.s;
import com.bumptech.glide.load.engine.GlideException;
import java.util.Iterator;
import java.util.List;
import okhttp3.v;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotatableType;
import org.eclipse.jdt.core.dom.Annotation;
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
import org.eclipse.jdt.core.dom.BodyDeclaration;
import org.eclipse.jdt.core.dom.BooleanLiteral;
import org.eclipse.jdt.core.dom.BreakStatement;
import org.eclipse.jdt.core.dom.CastExpression;
import org.eclipse.jdt.core.dom.CatchClause;
import org.eclipse.jdt.core.dom.CharacterLiteral;
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
import org.eclipse.jdt.core.dom.ModuleDirective;
import org.eclipse.jdt.core.dom.ModuleModifier;
import org.eclipse.jdt.core.dom.ModulePackageAccess;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.NameQualifiedType;
import org.eclipse.jdt.core.dom.NormalAnnotation;
import org.eclipse.jdt.core.dom.NullLiteral;
import org.eclipse.jdt.core.dom.NumberLiteral;
import org.eclipse.jdt.core.dom.OpensDirective;
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
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.dom.StringLiteral;
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
import org.eclipse.jdt.core.dom.VariableDeclaration;
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.core.dom.WhileStatement;
import org.eclipse.jdt.core.dom.WildcardType;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.openjdk.tools.doclint.DocLint;
import w2.C15883c;
import yd.C16181m;

public class NaiveASTFlattener extends ASTVisitor {
    private static final int JLS12 = 12;
    private static final int JLS2 = 2;
    private static final int JLS3 = 3;
    private static final int JLS4 = 4;
    private static final int JLS8 = 8;
    private static final int JLS9 = 9;
    private int indent = 0;
    protected StringBuffer buffer = new StringBuffer();

    private Name getName(ClassInstanceCreation classInstanceCreation) {
        return classInstanceCreation.getName();
    }

    private static Type getReturnType(MethodDeclaration methodDeclaration) {
        return methodDeclaration.getReturnType();
    }

    private static Name getSuperclass(TypeDeclaration typeDeclaration) {
        return typeDeclaration.getSuperclass();
    }

    private Expression getSwitchExpression(SwitchCase switchCase) {
        return switchCase.getExpression();
    }

    private static TypeDeclaration getTypeDeclaration(TypeDeclarationStatement typeDeclarationStatement) {
        return typeDeclarationStatement.getTypeDeclaration();
    }

    private void printTypes(List<Type> list, String str) {
        if (list.size() > 0) {
            this.buffer.append(" " + str + " ");
            list.get(0).accept(this);
            int size = list.size();
            for (int i10 = 1; i10 < size; i10++) {
                this.buffer.append(DocLint.SEPARATOR);
                list.get(0).accept(this);
            }
        }
    }

    private List superInterfaces(TypeDeclaration typeDeclaration) {
        return typeDeclaration.superInterfaces();
    }

    private static List thrownExceptions(MethodDeclaration methodDeclaration) {
        return methodDeclaration.thrownExceptions();
    }

    private void visitAnnotationsList(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Annotation) it.next()).accept(this);
            this.buffer.append(C15883c.f126249O);
        }
    }

    private void visitComponentType(ArrayType arrayType) {
        arrayType.getComponentType().accept(this);
    }

    private void visitReferenceTypeArguments(List list) {
        this.buffer.append("::");
        if (list.isEmpty()) {
            return;
        }
        this.buffer.append('<');
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Type) it.next()).accept(this);
            if (it.hasNext()) {
                this.buffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
        }
        this.buffer.append('>');
    }

    private void visitSwitchNode(ASTNode aSTNode) {
        this.buffer.append("switch (");
        boolean z10 = aSTNode instanceof SwitchExpression;
        if (z10) {
            ((SwitchExpression) aSTNode).getExpression().accept(this);
        } else if (aSTNode instanceof SwitchStatement) {
            ((SwitchStatement) aSTNode).getExpression().accept(this);
        }
        this.buffer.append(") ");
        this.buffer.append("{\n");
        this.indent++;
        if (z10) {
            Iterator it = ((SwitchExpression) aSTNode).statements().iterator();
            while (it.hasNext()) {
                ((Statement) it.next()).accept(this);
                this.indent--;
            }
        } else if (aSTNode instanceof SwitchStatement) {
            Iterator it2 = ((SwitchStatement) aSTNode).statements().iterator();
            while (it2.hasNext()) {
                ((Statement) it2.next()).accept(this);
                this.indent--;
            }
        }
        this.indent--;
        printIndent();
        this.buffer.append("}\n");
    }

    private void visitTypeAnnotations(AnnotatableType annotatableType) {
        if (annotatableType.getAST().apiLevel() >= 8) {
            visitAnnotationsList(annotatableType.annotations());
        }
    }

    public String getResult() {
        return this.buffer.toString();
    }

    public void printIndent() {
        for (int i10 = 0; i10 < this.indent; i10++) {
            this.buffer.append(GlideException.a.f59088e);
        }
    }

    public void printModifiers(int i10) {
        if (Modifier.isPublic(i10)) {
            this.buffer.append("public ");
        }
        if (Modifier.isProtected(i10)) {
            this.buffer.append("protected ");
        }
        if (Modifier.isPrivate(i10)) {
            this.buffer.append("private ");
        }
        if (Modifier.isStatic(i10)) {
            this.buffer.append("static ");
        }
        if (Modifier.isAbstract(i10)) {
            this.buffer.append("abstract ");
        }
        if (Modifier.isFinal(i10)) {
            this.buffer.append("final ");
        }
        if (Modifier.isSynchronized(i10)) {
            this.buffer.append("synchronized ");
        }
        if (Modifier.isVolatile(i10)) {
            this.buffer.append("volatile ");
        }
        if (Modifier.isNative(i10)) {
            this.buffer.append("native ");
        }
        if (Modifier.isStrictfp(i10)) {
            this.buffer.append("strictfp ");
        }
        if (Modifier.isTransient(i10)) {
            this.buffer.append("transient ");
        }
    }

    public void reset() {
        this.buffer.setLength(0);
    }

    @Override
    public boolean visit(AnnotationTypeDeclaration annotationTypeDeclaration) {
        if (annotationTypeDeclaration.getJavadoc() != null) {
            annotationTypeDeclaration.getJavadoc().accept(this);
        }
        printIndent();
        printModifiers(annotationTypeDeclaration.modifiers());
        this.buffer.append("@interface ");
        annotationTypeDeclaration.getName().accept(this);
        this.buffer.append(" {");
        Iterator it = annotationTypeDeclaration.bodyDeclarations().iterator();
        while (it.hasNext()) {
            ((BodyDeclaration) it.next()).accept(this);
        }
        this.buffer.append("}\n");
        return false;
    }

    @Override
    public boolean visit(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration) {
        if (annotationTypeMemberDeclaration.getJavadoc() != null) {
            annotationTypeMemberDeclaration.getJavadoc().accept(this);
        }
        printIndent();
        printModifiers(annotationTypeMemberDeclaration.modifiers());
        annotationTypeMemberDeclaration.getType().accept(this);
        this.buffer.append(" ");
        annotationTypeMemberDeclaration.getName().accept(this);
        this.buffer.append("()");
        if (annotationTypeMemberDeclaration.getDefault() != null) {
            this.buffer.append(" default ");
            annotationTypeMemberDeclaration.getDefault().accept(this);
        }
        this.buffer.append(";\n");
        return false;
    }

    public void printModifiers(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((ASTNode) it.next()).accept(this);
            this.buffer.append(" ");
        }
    }

    @Override
    public boolean visit(AnonymousClassDeclaration anonymousClassDeclaration) {
        this.buffer.append("{\n");
        this.indent++;
        Iterator it = anonymousClassDeclaration.bodyDeclarations().iterator();
        while (it.hasNext()) {
            ((BodyDeclaration) it.next()).accept(this);
        }
        this.indent--;
        printIndent();
        this.buffer.append("}\n");
        return false;
    }

    @Override
    public boolean visit(ArrayAccess arrayAccess) {
        arrayAccess.getArray().accept(this);
        this.buffer.append("[");
        arrayAccess.getIndex().accept(this);
        this.buffer.append("]");
        return false;
    }

    @Override
    public boolean visit(ArrayCreation arrayCreation) {
        this.buffer.append("new ");
        ArrayType type = arrayCreation.getType();
        int dimensions = type.getDimensions();
        type.getElementType().accept(this);
        Iterator it = arrayCreation.dimensions().iterator();
        while (it.hasNext()) {
            this.buffer.append("[");
            ((Expression) it.next()).accept(this);
            this.buffer.append("]");
            dimensions--;
        }
        for (int i10 = 0; i10 < dimensions; i10++) {
            this.buffer.append(v.f99450n);
        }
        if (arrayCreation.getInitializer() != null) {
            arrayCreation.getInitializer().accept(this);
        }
        return false;
    }

    @Override
    public boolean visit(ArrayInitializer arrayInitializer) {
        this.buffer.append("{");
        Iterator it = arrayInitializer.expressions().iterator();
        while (it.hasNext()) {
            ((Expression) it.next()).accept(this);
            if (it.hasNext()) {
                this.buffer.append(DocLint.SEPARATOR);
            }
        }
        this.buffer.append(VectorFormat.DEFAULT_SUFFIX);
        return false;
    }

    @Override
    public boolean visit(ArrayType arrayType) {
        if (arrayType.getAST().apiLevel() < 8) {
            visitComponentType(arrayType);
            this.buffer.append(v.f99450n);
        } else {
            arrayType.getElementType().accept(this);
            List dimensions = arrayType.dimensions();
            int size = dimensions.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((Dimension) dimensions.get(i10)).accept(this);
            }
        }
        return false;
    }

    @Override
    public boolean visit(AssertStatement assertStatement) {
        printIndent();
        this.buffer.append("assert ");
        assertStatement.getExpression().accept(this);
        if (assertStatement.getMessage() != null) {
            this.buffer.append(" : ");
            assertStatement.getMessage().accept(this);
        }
        this.buffer.append(";\n");
        return false;
    }

    @Override
    public boolean visit(Assignment assignment) {
        assignment.getLeftHandSide().accept(this);
        this.buffer.append(assignment.getOperator().toString());
        assignment.getRightHandSide().accept(this);
        return false;
    }

    @Override
    public boolean visit(Block block) {
        this.buffer.append("{\n");
        this.indent++;
        Iterator it = block.statements().iterator();
        while (it.hasNext()) {
            ((Statement) it.next()).accept(this);
        }
        this.indent--;
        printIndent();
        this.buffer.append("}\n");
        return false;
    }

    @Override
    public boolean visit(BlockComment blockComment) {
        printIndent();
        this.buffer.append("/* */");
        return false;
    }

    @Override
    public boolean visit(BooleanLiteral booleanLiteral) {
        if (booleanLiteral.booleanValue()) {
            this.buffer.append("true");
            return false;
        }
        this.buffer.append("false");
        return false;
    }

    @Override
    public boolean visit(BreakStatement breakStatement) {
        if (breakStatement.getAST().apiLevel() >= 12 && breakStatement.isImplicit() && breakStatement.getExpression() == null) {
            return false;
        }
        printIndent();
        if (breakStatement.getAST().apiLevel() < 12 || (breakStatement.getAST().apiLevel() >= 12 && !breakStatement.isImplicit())) {
            this.buffer.append("break");
        }
        if (breakStatement.getLabel() != null) {
            this.buffer.append(" ");
            breakStatement.getLabel().accept(this);
        }
        if (breakStatement.getAST().apiLevel() >= 12 && breakStatement.getExpression() != null) {
            this.buffer.append(" ");
            breakStatement.getExpression().accept(this);
        }
        this.buffer.append(";\n");
        return false;
    }

    @Override
    public boolean visit(CastExpression castExpression) {
        this.buffer.append("(");
        castExpression.getType().accept(this);
        this.buffer.append(")");
        castExpression.getExpression().accept(this);
        return false;
    }

    @Override
    public boolean visit(CatchClause catchClause) {
        this.buffer.append("catch (");
        catchClause.getException().accept(this);
        this.buffer.append(") ");
        catchClause.getBody().accept(this);
        return false;
    }

    @Override
    public boolean visit(CharacterLiteral characterLiteral) {
        this.buffer.append(characterLiteral.getEscapedValue());
        return false;
    }

    @Override
    public boolean visit(ClassInstanceCreation classInstanceCreation) {
        if (classInstanceCreation.getExpression() != null) {
            classInstanceCreation.getExpression().accept(this);
            this.buffer.append(".");
        }
        this.buffer.append("new ");
        if (classInstanceCreation.getAST().apiLevel() == 2) {
            getName(classInstanceCreation).accept(this);
        }
        if (classInstanceCreation.getAST().apiLevel() >= 3) {
            if (!classInstanceCreation.typeArguments().isEmpty()) {
                this.buffer.append("<");
                Iterator it = classInstanceCreation.typeArguments().iterator();
                while (it.hasNext()) {
                    ((Type) it.next()).accept(this);
                    if (it.hasNext()) {
                        this.buffer.append(DocLint.SEPARATOR);
                    }
                }
                this.buffer.append(">");
            }
            classInstanceCreation.getType().accept(this);
        }
        this.buffer.append("(");
        Iterator it2 = classInstanceCreation.arguments().iterator();
        while (it2.hasNext()) {
            ((Expression) it2.next()).accept(this);
            if (it2.hasNext()) {
                this.buffer.append(DocLint.SEPARATOR);
            }
        }
        this.buffer.append(")");
        if (classInstanceCreation.getAnonymousClassDeclaration() == null) {
            return false;
        }
        classInstanceCreation.getAnonymousClassDeclaration().accept(this);
        return false;
    }

    @Override
    public boolean visit(CompilationUnit compilationUnit) {
        if (compilationUnit.getAST().apiLevel() >= 9 && compilationUnit.getModule() != null) {
            compilationUnit.getModule().accept(this);
        }
        if (compilationUnit.getPackage() != null) {
            compilationUnit.getPackage().accept(this);
        }
        Iterator it = compilationUnit.imports().iterator();
        while (it.hasNext()) {
            ((ImportDeclaration) it.next()).accept(this);
        }
        Iterator it2 = compilationUnit.types().iterator();
        while (it2.hasNext()) {
            ((AbstractTypeDeclaration) it2.next()).accept(this);
        }
        return false;
    }

    @Override
    public boolean visit(ConditionalExpression conditionalExpression) {
        conditionalExpression.getExpression().accept(this);
        this.buffer.append(" ? ");
        conditionalExpression.getThenExpression().accept(this);
        this.buffer.append(" : ");
        conditionalExpression.getElseExpression().accept(this);
        return false;
    }

    @Override
    public boolean visit(ConstructorInvocation constructorInvocation) {
        printIndent();
        if (constructorInvocation.getAST().apiLevel() >= 3 && !constructorInvocation.typeArguments().isEmpty()) {
            this.buffer.append("<");
            Iterator it = constructorInvocation.typeArguments().iterator();
            while (it.hasNext()) {
                ((Type) it.next()).accept(this);
                if (it.hasNext()) {
                    this.buffer.append(DocLint.SEPARATOR);
                }
            }
            this.buffer.append(">");
        }
        this.buffer.append("this(");
        Iterator it2 = constructorInvocation.arguments().iterator();
        while (it2.hasNext()) {
            ((Expression) it2.next()).accept(this);
            if (it2.hasNext()) {
                this.buffer.append(DocLint.SEPARATOR);
            }
        }
        this.buffer.append(");\n");
        return false;
    }

    @Override
    public boolean visit(ContinueStatement continueStatement) {
        printIndent();
        this.buffer.append("continue");
        if (continueStatement.getLabel() != null) {
            this.buffer.append(" ");
            continueStatement.getLabel().accept(this);
        }
        this.buffer.append(";\n");
        return false;
    }

    @Override
    public boolean visit(CreationReference creationReference) {
        creationReference.getType().accept(this);
        visitReferenceTypeArguments(creationReference.typeArguments());
        this.buffer.append(CallLog.Calls.NEW);
        return false;
    }

    @Override
    public boolean visit(Dimension dimension) {
        List annotations = dimension.annotations();
        if (annotations.size() > 0) {
            this.buffer.append(C15883c.f126249O);
        }
        visitAnnotationsList(annotations);
        this.buffer.append(v.f99450n);
        return false;
    }

    @Override
    public boolean visit(DoStatement doStatement) {
        printIndent();
        this.buffer.append("do ");
        doStatement.getBody().accept(this);
        this.buffer.append(" while (");
        doStatement.getExpression().accept(this);
        this.buffer.append(");\n");
        return false;
    }

    @Override
    public boolean visit(EmptyStatement emptyStatement) {
        printIndent();
        this.buffer.append(";\n");
        return false;
    }

    @Override
    public boolean visit(EnhancedForStatement enhancedForStatement) {
        printIndent();
        this.buffer.append("for (");
        enhancedForStatement.getParameter().accept(this);
        this.buffer.append(" : ");
        enhancedForStatement.getExpression().accept(this);
        this.buffer.append(") ");
        enhancedForStatement.getBody().accept(this);
        return false;
    }

    @Override
    public boolean visit(EnumConstantDeclaration enumConstantDeclaration) {
        if (enumConstantDeclaration.getJavadoc() != null) {
            enumConstantDeclaration.getJavadoc().accept(this);
        }
        printIndent();
        printModifiers(enumConstantDeclaration.modifiers());
        enumConstantDeclaration.getName().accept(this);
        if (!enumConstantDeclaration.arguments().isEmpty()) {
            this.buffer.append("(");
            Iterator it = enumConstantDeclaration.arguments().iterator();
            while (it.hasNext()) {
                ((Expression) it.next()).accept(this);
                if (it.hasNext()) {
                    this.buffer.append(DocLint.SEPARATOR);
                }
            }
            this.buffer.append(")");
        }
        if (enumConstantDeclaration.getAnonymousClassDeclaration() == null) {
            return false;
        }
        enumConstantDeclaration.getAnonymousClassDeclaration().accept(this);
        return false;
    }

    @Override
    public boolean visit(EnumDeclaration enumDeclaration) {
        if (enumDeclaration.getJavadoc() != null) {
            enumDeclaration.getJavadoc().accept(this);
        }
        printIndent();
        printModifiers(enumDeclaration.modifiers());
        this.buffer.append("enum ");
        enumDeclaration.getName().accept(this);
        this.buffer.append(" ");
        if (!enumDeclaration.superInterfaceTypes().isEmpty()) {
            this.buffer.append("implements ");
            Iterator it = enumDeclaration.superInterfaceTypes().iterator();
            while (it.hasNext()) {
                ((Type) it.next()).accept(this);
                if (it.hasNext()) {
                    this.buffer.append(", ");
                }
            }
            this.buffer.append(" ");
        }
        this.buffer.append("{");
        Iterator it2 = enumDeclaration.enumConstants().iterator();
        while (it2.hasNext()) {
            ((EnumConstantDeclaration) it2.next()).accept(this);
            if (it2.hasNext()) {
                this.buffer.append(", ");
            }
        }
        if (!enumDeclaration.bodyDeclarations().isEmpty()) {
            this.buffer.append(VectorFormat.DEFAULT_SEPARATOR);
            Iterator it3 = enumDeclaration.bodyDeclarations().iterator();
            while (it3.hasNext()) {
                ((BodyDeclaration) it3.next()).accept(this);
            }
        }
        this.buffer.append("}\n");
        return false;
    }

    @Override
    public boolean visit(ExportsDirective exportsDirective) {
        return visit(exportsDirective, "exports");
    }

    @Override
    public boolean visit(ExpressionMethodReference expressionMethodReference) {
        expressionMethodReference.getExpression().accept(this);
        visitReferenceTypeArguments(expressionMethodReference.typeArguments());
        expressionMethodReference.getName().accept(this);
        return false;
    }

    @Override
    public boolean visit(ExpressionStatement expressionStatement) {
        printIndent();
        expressionStatement.getExpression().accept(this);
        this.buffer.append(";\n");
        return false;
    }

    @Override
    public boolean visit(FieldAccess fieldAccess) {
        fieldAccess.getExpression().accept(this);
        this.buffer.append(".");
        fieldAccess.getName().accept(this);
        return false;
    }

    @Override
    public boolean visit(FieldDeclaration fieldDeclaration) {
        if (fieldDeclaration.getJavadoc() != null) {
            fieldDeclaration.getJavadoc().accept(this);
        }
        printIndent();
        if (fieldDeclaration.getAST().apiLevel() == 2) {
            printModifiers(fieldDeclaration.getModifiers());
        }
        if (fieldDeclaration.getAST().apiLevel() >= 3) {
            printModifiers(fieldDeclaration.modifiers());
        }
        fieldDeclaration.getType().accept(this);
        this.buffer.append(" ");
        Iterator it = fieldDeclaration.fragments().iterator();
        while (it.hasNext()) {
            ((VariableDeclarationFragment) it.next()).accept(this);
            if (it.hasNext()) {
                this.buffer.append(", ");
            }
        }
        this.buffer.append(";\n");
        return false;
    }

    @Override
    public boolean visit(ForStatement forStatement) {
        printIndent();
        this.buffer.append("for (");
        Iterator it = forStatement.initializers().iterator();
        while (it.hasNext()) {
            ((Expression) it.next()).accept(this);
            if (it.hasNext()) {
                this.buffer.append(", ");
            }
        }
        this.buffer.append(VectorFormat.DEFAULT_SEPARATOR);
        if (forStatement.getExpression() != null) {
            forStatement.getExpression().accept(this);
        }
        this.buffer.append(VectorFormat.DEFAULT_SEPARATOR);
        Iterator it2 = forStatement.updaters().iterator();
        while (it2.hasNext()) {
            ((Expression) it2.next()).accept(this);
            if (it2.hasNext()) {
                this.buffer.append(", ");
            }
        }
        this.buffer.append(") ");
        forStatement.getBody().accept(this);
        return false;
    }

    @Override
    public boolean visit(IfStatement ifStatement) {
        printIndent();
        this.buffer.append("if (");
        ifStatement.getExpression().accept(this);
        this.buffer.append(") ");
        ifStatement.getThenStatement().accept(this);
        if (ifStatement.getElseStatement() == null) {
            return false;
        }
        this.buffer.append(" else ");
        ifStatement.getElseStatement().accept(this);
        return false;
    }

    @Override
    public boolean visit(ImportDeclaration importDeclaration) {
        printIndent();
        this.buffer.append("import ");
        if (importDeclaration.getAST().apiLevel() >= 3 && importDeclaration.isStatic()) {
            this.buffer.append("static ");
        }
        importDeclaration.getName().accept(this);
        if (importDeclaration.isOnDemand()) {
            this.buffer.append(".*");
        }
        this.buffer.append(";\n");
        return false;
    }

    @Override
    public boolean visit(InfixExpression infixExpression) {
        infixExpression.getLeftOperand().accept(this);
        this.buffer.append(C15883c.f126249O);
        this.buffer.append(infixExpression.getOperator().toString());
        this.buffer.append(C15883c.f126249O);
        infixExpression.getRightOperand().accept(this);
        List extendedOperands = infixExpression.extendedOperands();
        if (extendedOperands.size() == 0) {
            return false;
        }
        this.buffer.append(C15883c.f126249O);
        Iterator it = extendedOperands.iterator();
        while (it.hasNext()) {
            StringBuffer stringBuffer = this.buffer;
            stringBuffer.append(infixExpression.getOperator().toString());
            stringBuffer.append(C15883c.f126249O);
            ((Expression) it.next()).accept(this);
        }
        return false;
    }

    @Override
    public boolean visit(Initializer initializer) {
        if (initializer.getJavadoc() != null) {
            initializer.getJavadoc().accept(this);
        }
        if (initializer.getAST().apiLevel() == 2) {
            printModifiers(initializer.getModifiers());
        }
        if (initializer.getAST().apiLevel() >= 3) {
            printModifiers(initializer.modifiers());
        }
        initializer.getBody().accept(this);
        return false;
    }

    @Override
    public boolean visit(InstanceofExpression instanceofExpression) {
        instanceofExpression.getLeftOperand().accept(this);
        this.buffer.append(" instanceof ");
        instanceofExpression.getRightOperand().accept(this);
        return false;
    }

    @Override
    public boolean visit(IntersectionType intersectionType) {
        Iterator it = intersectionType.types().iterator();
        while (it.hasNext()) {
            ((Type) it.next()).accept(this);
            if (it.hasNext()) {
                this.buffer.append(" & ");
            }
        }
        return false;
    }

    @Override
    public boolean visit(Javadoc javadoc) {
        printIndent();
        this.buffer.append("/** ");
        Iterator it = javadoc.tags().iterator();
        while (it.hasNext()) {
            ((ASTNode) it.next()).accept(this);
        }
        this.buffer.append("\n */\n");
        return false;
    }

    @Override
    public boolean visit(LabeledStatement labeledStatement) {
        printIndent();
        labeledStatement.getLabel().accept(this);
        this.buffer.append(": ");
        labeledStatement.getBody().accept(this);
        return false;
    }

    @Override
    public boolean visit(LambdaExpression lambdaExpression) {
        boolean hasParentheses = lambdaExpression.hasParentheses();
        if (hasParentheses) {
            this.buffer.append('(');
        }
        Iterator it = lambdaExpression.parameters().iterator();
        while (it.hasNext()) {
            ((VariableDeclaration) it.next()).accept(this);
            if (it.hasNext()) {
                this.buffer.append(DocLint.SEPARATOR);
            }
        }
        if (hasParentheses) {
            this.buffer.append(')');
        }
        this.buffer.append(" -> ");
        lambdaExpression.getBody().accept(this);
        return false;
    }

    @Override
    public boolean visit(LineComment lineComment) {
        this.buffer.append("//\n");
        return false;
    }

    @Override
    public boolean visit(MarkerAnnotation markerAnnotation) {
        this.buffer.append("@");
        markerAnnotation.getTypeName().accept(this);
        return false;
    }

    @Override
    public boolean visit(MemberRef memberRef) {
        if (memberRef.getQualifier() != null) {
            memberRef.getQualifier().accept(this);
        }
        this.buffer.append(C16181m.f130230g);
        memberRef.getName().accept(this);
        return false;
    }

    @Override
    public boolean visit(MemberValuePair memberValuePair) {
        memberValuePair.getName().accept(this);
        this.buffer.append("=");
        memberValuePair.getValue().accept(this);
        return false;
    }

    @Override
    public boolean visit(MethodDeclaration methodDeclaration) {
        Type receiverType;
        if (methodDeclaration.getJavadoc() != null) {
            methodDeclaration.getJavadoc().accept(this);
        }
        printIndent();
        if (methodDeclaration.getAST().apiLevel() == 2) {
            printModifiers(methodDeclaration.getModifiers());
        }
        if (methodDeclaration.getAST().apiLevel() >= 3) {
            printModifiers(methodDeclaration.modifiers());
            if (!methodDeclaration.typeParameters().isEmpty()) {
                this.buffer.append("<");
                Iterator it = methodDeclaration.typeParameters().iterator();
                while (it.hasNext()) {
                    ((TypeParameter) it.next()).accept(this);
                    if (it.hasNext()) {
                        this.buffer.append(DocLint.SEPARATOR);
                    }
                }
                this.buffer.append(">");
            }
        }
        if (!methodDeclaration.isConstructor()) {
            if (methodDeclaration.getAST().apiLevel() == 2) {
                getReturnType(methodDeclaration).accept(this);
            } else if (methodDeclaration.getReturnType2() != null) {
                methodDeclaration.getReturnType2().accept(this);
            } else {
                this.buffer.append("void");
            }
            this.buffer.append(" ");
        }
        methodDeclaration.getName().accept(this);
        this.buffer.append("(");
        if (methodDeclaration.getAST().apiLevel() >= 8 && (receiverType = methodDeclaration.getReceiverType()) != null) {
            receiverType.accept(this);
            this.buffer.append(C15883c.f126249O);
            SimpleName receiverQualifier = methodDeclaration.getReceiverQualifier();
            if (receiverQualifier != null) {
                receiverQualifier.accept(this);
                this.buffer.append('.');
            }
            this.buffer.append("this");
            if (methodDeclaration.parameters().size() > 0) {
                this.buffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
        }
        Iterator it2 = methodDeclaration.parameters().iterator();
        while (it2.hasNext()) {
            ((SingleVariableDeclaration) it2.next()).accept(this);
            if (it2.hasNext()) {
                this.buffer.append(DocLint.SEPARATOR);
            }
        }
        this.buffer.append(")");
        int extraDimensions = methodDeclaration.getExtraDimensions();
        if (methodDeclaration.getAST().apiLevel() >= 8) {
            List extraDimensions2 = methodDeclaration.extraDimensions();
            for (int i10 = 0; i10 < extraDimensions; i10++) {
                visit((Dimension) extraDimensions2.get(i10));
            }
        } else {
            for (int i11 = 0; i11 < extraDimensions; i11++) {
                this.buffer.append(v.f99450n);
            }
        }
        if (methodDeclaration.getAST().apiLevel() < 8) {
            if (!thrownExceptions(methodDeclaration).isEmpty()) {
                this.buffer.append(" throws ");
                Iterator it3 = thrownExceptions(methodDeclaration).iterator();
                while (it3.hasNext()) {
                    ((Name) it3.next()).accept(this);
                    if (it3.hasNext()) {
                        this.buffer.append(", ");
                    }
                }
                this.buffer.append(" ");
            }
        } else if (!methodDeclaration.thrownExceptionTypes().isEmpty()) {
            this.buffer.append(" throws ");
            Iterator it4 = methodDeclaration.thrownExceptionTypes().iterator();
            while (it4.hasNext()) {
                ((Type) it4.next()).accept(this);
                if (it4.hasNext()) {
                    this.buffer.append(", ");
                }
            }
            this.buffer.append(" ");
        }
        if (methodDeclaration.getBody() == null) {
            this.buffer.append(";\n");
        } else {
            methodDeclaration.getBody().accept(this);
        }
        return false;
    }

    @Override
    public boolean visit(MethodInvocation methodInvocation) {
        if (methodInvocation.getExpression() != null) {
            methodInvocation.getExpression().accept(this);
            this.buffer.append(".");
        }
        if (methodInvocation.getAST().apiLevel() >= 3 && !methodInvocation.typeArguments().isEmpty()) {
            this.buffer.append("<");
            Iterator it = methodInvocation.typeArguments().iterator();
            while (it.hasNext()) {
                ((Type) it.next()).accept(this);
                if (it.hasNext()) {
                    this.buffer.append(DocLint.SEPARATOR);
                }
            }
            this.buffer.append(">");
        }
        methodInvocation.getName().accept(this);
        this.buffer.append("(");
        Iterator it2 = methodInvocation.arguments().iterator();
        while (it2.hasNext()) {
            ((Expression) it2.next()).accept(this);
            if (it2.hasNext()) {
                this.buffer.append(DocLint.SEPARATOR);
            }
        }
        this.buffer.append(")");
        return false;
    }

    @Override
    public boolean visit(MethodRef methodRef) {
        if (methodRef.getQualifier() != null) {
            methodRef.getQualifier().accept(this);
        }
        this.buffer.append(C16181m.f130230g);
        methodRef.getName().accept(this);
        this.buffer.append("(");
        Iterator it = methodRef.parameters().iterator();
        while (it.hasNext()) {
            ((MethodRefParameter) it.next()).accept(this);
            if (it.hasNext()) {
                this.buffer.append(DocLint.SEPARATOR);
            }
        }
        this.buffer.append(")");
        return false;
    }

    @Override
    public boolean visit(MethodRefParameter methodRefParameter) {
        methodRefParameter.getType().accept(this);
        if (methodRefParameter.getAST().apiLevel() >= 3 && methodRefParameter.isVarargs()) {
            this.buffer.append("...");
        }
        if (methodRefParameter.getName() == null) {
            return false;
        }
        this.buffer.append(" ");
        methodRefParameter.getName().accept(this);
        return false;
    }

    @Override
    public boolean visit(Modifier modifier) {
        this.buffer.append(modifier.getKeyword().toString());
        return false;
    }

    @Override
    public boolean visit(ModuleDeclaration moduleDeclaration) {
        if (moduleDeclaration.getJavadoc() != null) {
            moduleDeclaration.getJavadoc().accept(this);
        }
        printModifiers(moduleDeclaration.annotations());
        if (moduleDeclaration.isOpen()) {
            this.buffer.append("open ");
        }
        this.buffer.append(IClasspathAttribute.MODULE);
        this.buffer.append(" ");
        moduleDeclaration.getName().accept(this);
        this.buffer.append(" {\n");
        this.indent++;
        Iterator it = moduleDeclaration.moduleStatements().iterator();
        while (it.hasNext()) {
            ((ModuleDirective) it.next()).accept(this);
        }
        this.indent--;
        this.buffer.append(VectorFormat.DEFAULT_SUFFIX);
        return false;
    }

    @Override
    public boolean visit(ModuleModifier moduleModifier) {
        this.buffer.append(moduleModifier.getKeyword().toString());
        return false;
    }

    private boolean visit(ModulePackageAccess modulePackageAccess, String str) {
        printIndent();
        this.buffer.append(str);
        this.buffer.append(" ");
        modulePackageAccess.getName().accept(this);
        printTypes(modulePackageAccess.modules(), TypedValues.TransitionType.S_TO);
        this.buffer.append(";\n");
        return false;
    }

    @Override
    public boolean visit(NameQualifiedType nameQualifiedType) {
        nameQualifiedType.getQualifier().accept(this);
        this.buffer.append('.');
        visitTypeAnnotations(nameQualifiedType);
        nameQualifiedType.getName().accept(this);
        return false;
    }

    @Override
    public boolean visit(NormalAnnotation normalAnnotation) {
        this.buffer.append("@");
        normalAnnotation.getTypeName().accept(this);
        this.buffer.append("(");
        Iterator it = normalAnnotation.values().iterator();
        while (it.hasNext()) {
            ((MemberValuePair) it.next()).accept(this);
            if (it.hasNext()) {
                this.buffer.append(DocLint.SEPARATOR);
            }
        }
        this.buffer.append(")");
        return false;
    }

    @Override
    public boolean visit(NullLiteral nullLiteral) {
        this.buffer.append("null");
        return false;
    }

    @Override
    public boolean visit(NumberLiteral numberLiteral) {
        this.buffer.append(numberLiteral.getToken());
        return false;
    }

    @Override
    public boolean visit(OpensDirective opensDirective) {
        return visit(opensDirective, "opens");
    }

    @Override
    public boolean visit(PackageDeclaration packageDeclaration) {
        if (packageDeclaration.getAST().apiLevel() >= 3) {
            if (packageDeclaration.getJavadoc() != null) {
                packageDeclaration.getJavadoc().accept(this);
            }
            Iterator it = packageDeclaration.annotations().iterator();
            while (it.hasNext()) {
                ((Annotation) it.next()).accept(this);
                this.buffer.append(" ");
            }
        }
        printIndent();
        this.buffer.append("package ");
        packageDeclaration.getName().accept(this);
        this.buffer.append(";\n");
        return false;
    }

    @Override
    public boolean visit(ParameterizedType parameterizedType) {
        parameterizedType.getType().accept(this);
        this.buffer.append("<");
        Iterator it = parameterizedType.typeArguments().iterator();
        while (it.hasNext()) {
            ((Type) it.next()).accept(this);
            if (it.hasNext()) {
                this.buffer.append(DocLint.SEPARATOR);
            }
        }
        this.buffer.append(">");
        return false;
    }

    @Override
    public boolean visit(ParenthesizedExpression parenthesizedExpression) {
        this.buffer.append("(");
        parenthesizedExpression.getExpression().accept(this);
        this.buffer.append(")");
        return false;
    }

    @Override
    public boolean visit(PostfixExpression postfixExpression) {
        postfixExpression.getOperand().accept(this);
        this.buffer.append(postfixExpression.getOperator().toString());
        return false;
    }

    @Override
    public boolean visit(PrefixExpression prefixExpression) {
        this.buffer.append(prefixExpression.getOperator().toString());
        prefixExpression.getOperand().accept(this);
        return false;
    }

    @Override
    public boolean visit(PrimitiveType primitiveType) {
        visitTypeAnnotations(primitiveType);
        this.buffer.append(primitiveType.getPrimitiveTypeCode().toString());
        return false;
    }

    @Override
    public boolean visit(ProvidesDirective providesDirective) {
        printIndent();
        this.buffer.append("provides");
        this.buffer.append(" ");
        providesDirective.getName().accept(this);
        printTypes(providesDirective.implementations(), "with");
        this.buffer.append(";\n");
        return false;
    }

    @Override
    public boolean visit(QualifiedName qualifiedName) {
        qualifiedName.getQualifier().accept(this);
        this.buffer.append(".");
        qualifiedName.getName().accept(this);
        return false;
    }

    @Override
    public boolean visit(QualifiedType qualifiedType) {
        qualifiedType.getQualifier().accept(this);
        this.buffer.append(".");
        visitTypeAnnotations(qualifiedType);
        qualifiedType.getName().accept(this);
        return false;
    }

    @Override
    public boolean visit(RequiresDirective requiresDirective) {
        printIndent();
        this.buffer.append("requires");
        this.buffer.append(" ");
        printModifiers(requiresDirective.modifiers());
        requiresDirective.getName().accept(this);
        this.buffer.append(";\n");
        return false;
    }

    @Override
    public boolean visit(ReturnStatement returnStatement) {
        printIndent();
        this.buffer.append("return");
        if (returnStatement.getExpression() != null) {
            this.buffer.append(" ");
            returnStatement.getExpression().accept(this);
        }
        this.buffer.append(";\n");
        return false;
    }

    @Override
    public boolean visit(SimpleName simpleName) {
        this.buffer.append(simpleName.getIdentifier());
        return false;
    }

    @Override
    public boolean visit(SimpleType simpleType) {
        visitTypeAnnotations(simpleType);
        simpleType.getName().accept(this);
        return false;
    }

    @Override
    public boolean visit(SingleMemberAnnotation singleMemberAnnotation) {
        this.buffer.append("@");
        singleMemberAnnotation.getTypeName().accept(this);
        this.buffer.append("(");
        singleMemberAnnotation.getValue().accept(this);
        this.buffer.append(")");
        return false;
    }

    @Override
    public boolean visit(SingleVariableDeclaration singleVariableDeclaration) {
        printIndent();
        if (singleVariableDeclaration.getAST().apiLevel() == 2) {
            printModifiers(singleVariableDeclaration.getModifiers());
        }
        if (singleVariableDeclaration.getAST().apiLevel() >= 3) {
            printModifiers(singleVariableDeclaration.modifiers());
        }
        singleVariableDeclaration.getType().accept(this);
        if (singleVariableDeclaration.getAST().apiLevel() >= 3 && singleVariableDeclaration.isVarargs()) {
            if (singleVariableDeclaration.getAST().apiLevel() >= 8) {
                List varargsAnnotations = singleVariableDeclaration.varargsAnnotations();
                if (varargsAnnotations.size() > 0) {
                    this.buffer.append(C15883c.f126249O);
                }
                visitAnnotationsList(varargsAnnotations);
            }
            this.buffer.append("...");
        }
        this.buffer.append(" ");
        singleVariableDeclaration.getName().accept(this);
        int extraDimensions = singleVariableDeclaration.getExtraDimensions();
        if (singleVariableDeclaration.getAST().apiLevel() >= 8) {
            List extraDimensions2 = singleVariableDeclaration.extraDimensions();
            for (int i10 = 0; i10 < extraDimensions; i10++) {
                visit((Dimension) extraDimensions2.get(i10));
            }
        } else {
            for (int i11 = 0; i11 < extraDimensions; i11++) {
                this.buffer.append(v.f99450n);
            }
        }
        if (singleVariableDeclaration.getInitializer() != null) {
            this.buffer.append("=");
            singleVariableDeclaration.getInitializer().accept(this);
        }
        return false;
    }

    @Override
    public boolean visit(StringLiteral stringLiteral) {
        this.buffer.append(stringLiteral.getEscapedValue());
        return false;
    }

    @Override
    public boolean visit(SuperConstructorInvocation superConstructorInvocation) {
        printIndent();
        if (superConstructorInvocation.getExpression() != null) {
            superConstructorInvocation.getExpression().accept(this);
            this.buffer.append(".");
        }
        if (superConstructorInvocation.getAST().apiLevel() >= 3 && !superConstructorInvocation.typeArguments().isEmpty()) {
            this.buffer.append("<");
            Iterator it = superConstructorInvocation.typeArguments().iterator();
            while (it.hasNext()) {
                ((Type) it.next()).accept(this);
                if (it.hasNext()) {
                    this.buffer.append(DocLint.SEPARATOR);
                }
            }
            this.buffer.append(">");
        }
        this.buffer.append("super(");
        Iterator it2 = superConstructorInvocation.arguments().iterator();
        while (it2.hasNext()) {
            ((Expression) it2.next()).accept(this);
            if (it2.hasNext()) {
                this.buffer.append(DocLint.SEPARATOR);
            }
        }
        this.buffer.append(");\n");
        return false;
    }

    @Override
    public boolean visit(SuperFieldAccess superFieldAccess) {
        if (superFieldAccess.getQualifier() != null) {
            superFieldAccess.getQualifier().accept(this);
            this.buffer.append(".");
        }
        this.buffer.append("super.");
        superFieldAccess.getName().accept(this);
        return false;
    }

    @Override
    public boolean visit(SuperMethodInvocation superMethodInvocation) {
        if (superMethodInvocation.getQualifier() != null) {
            superMethodInvocation.getQualifier().accept(this);
            this.buffer.append(".");
        }
        this.buffer.append("super.");
        if (superMethodInvocation.getAST().apiLevel() >= 3 && !superMethodInvocation.typeArguments().isEmpty()) {
            this.buffer.append("<");
            Iterator it = superMethodInvocation.typeArguments().iterator();
            while (it.hasNext()) {
                ((Type) it.next()).accept(this);
                if (it.hasNext()) {
                    this.buffer.append(DocLint.SEPARATOR);
                }
            }
            this.buffer.append(">");
        }
        superMethodInvocation.getName().accept(this);
        this.buffer.append("(");
        Iterator it2 = superMethodInvocation.arguments().iterator();
        while (it2.hasNext()) {
            ((Expression) it2.next()).accept(this);
            if (it2.hasNext()) {
                this.buffer.append(DocLint.SEPARATOR);
            }
        }
        this.buffer.append(")");
        return false;
    }

    @Override
    public boolean visit(SuperMethodReference superMethodReference) {
        if (superMethodReference.getQualifier() != null) {
            superMethodReference.getQualifier().accept(this);
            this.buffer.append('.');
        }
        this.buffer.append("super");
        visitReferenceTypeArguments(superMethodReference.typeArguments());
        superMethodReference.getName().accept(this);
        return false;
    }

    @Override
    public boolean visit(SwitchCase switchCase) {
        String str;
        if (switchCase.getAST().apiLevel() >= 12) {
            boolean isDefault = switchCase.isDefault();
            String str2 = s.f32937c;
            if (isDefault) {
                this.buffer.append("default");
                StringBuffer stringBuffer = this.buffer;
                if (switchCase.isSwitchLabeledRule()) {
                    str2 = " ->";
                }
                stringBuffer.append(str2);
            } else {
                this.buffer.append("case ");
                Iterator it = switchCase.expressions().iterator();
                while (it.hasNext()) {
                    ((Expression) it.next()).accept(this);
                    StringBuffer stringBuffer2 = this.buffer;
                    if (it.hasNext()) {
                        str = ", ";
                    } else {
                        str = switchCase.isSwitchLabeledRule() ? " ->" : s.f32937c;
                    }
                    stringBuffer2.append(str);
                }
            }
        } else if (switchCase.isDefault()) {
            this.buffer.append("default :\n");
        } else {
            this.buffer.append("case ");
            getSwitchExpression(switchCase).accept(this);
            this.buffer.append(":\n");
        }
        this.indent++;
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
        this.buffer.append("synchronized (");
        synchronizedStatement.getExpression().accept(this);
        this.buffer.append(") ");
        synchronizedStatement.getBody().accept(this);
        return false;
    }

    @Override
    public boolean visit(TagElement tagElement) {
        boolean z10;
        boolean z11;
        if (tagElement.isNested()) {
            this.buffer.append("{");
        } else {
            this.buffer.append("\n * ");
        }
        if (tagElement.getTagName() != null) {
            this.buffer.append(tagElement.getTagName());
            z10 = true;
        } else {
            z10 = false;
        }
        boolean z12 = false;
        for (ASTNode aSTNode : tagElement.fragments()) {
            if (aSTNode instanceof TextElement) {
                String text = ((TextElement) aSTNode).getText();
                if (text.length() > 0 && ScannerHelper.isWhitespace(text.charAt(0))) {
                    z11 = true;
                    if (z12 && z11) {
                        this.buffer.append("\n * ");
                    }
                    if (z10 && !z11) {
                        this.buffer.append(" ");
                    }
                    aSTNode.accept(this);
                    z10 = z11 && !(aSTNode instanceof TagElement);
                    z12 = z11;
                }
            }
            z11 = false;
            if (z12) {
                this.buffer.append("\n * ");
            }
            if (z10) {
                this.buffer.append(" ");
            }
            aSTNode.accept(this);
            if (z11) {
            }
            z12 = z11;
        }
        if (tagElement.isNested()) {
            this.buffer.append(VectorFormat.DEFAULT_SUFFIX);
        }
        return false;
    }

    @Override
    public boolean visit(TextElement textElement) {
        this.buffer.append(textElement.getText());
        return false;
    }

    @Override
    public boolean visit(ThisExpression thisExpression) {
        if (thisExpression.getQualifier() != null) {
            thisExpression.getQualifier().accept(this);
            this.buffer.append(".");
        }
        this.buffer.append("this");
        return false;
    }

    @Override
    public boolean visit(ThrowStatement throwStatement) {
        printIndent();
        this.buffer.append("throw ");
        throwStatement.getExpression().accept(this);
        this.buffer.append(";\n");
        return false;
    }

    @Override
    public boolean visit(TryStatement tryStatement) {
        printIndent();
        this.buffer.append("try ");
        if (tryStatement.getAST().apiLevel() >= 4) {
            List resources = tryStatement.resources();
            if (!resources.isEmpty()) {
                this.buffer.append('(');
                Iterator it = resources.iterator();
                while (it.hasNext()) {
                    ((Expression) it.next()).accept(this);
                    if (it.hasNext()) {
                        this.buffer.append(';');
                    }
                }
                this.buffer.append(')');
            }
        }
        tryStatement.getBody().accept(this);
        this.buffer.append(" ");
        Iterator it2 = tryStatement.catchClauses().iterator();
        while (it2.hasNext()) {
            ((CatchClause) it2.next()).accept(this);
        }
        if (tryStatement.getFinally() == null) {
            return false;
        }
        this.buffer.append(" finally ");
        tryStatement.getFinally().accept(this);
        return false;
    }

    @Override
    public boolean visit(TypeDeclaration typeDeclaration) {
        if (typeDeclaration.getJavadoc() != null) {
            typeDeclaration.getJavadoc().accept(this);
        }
        if (typeDeclaration.getAST().apiLevel() == 2) {
            printModifiers(typeDeclaration.getModifiers());
        }
        if (typeDeclaration.getAST().apiLevel() >= 3) {
            printModifiers(typeDeclaration.modifiers());
        }
        this.buffer.append(typeDeclaration.isInterface() ? "interface " : ExternalAnnotationProvider.CLASS_PREFIX);
        typeDeclaration.getName().accept(this);
        if (typeDeclaration.getAST().apiLevel() >= 3 && !typeDeclaration.typeParameters().isEmpty()) {
            this.buffer.append("<");
            Iterator it = typeDeclaration.typeParameters().iterator();
            while (it.hasNext()) {
                ((TypeParameter) it.next()).accept(this);
                if (it.hasNext()) {
                    this.buffer.append(DocLint.SEPARATOR);
                }
            }
            this.buffer.append(">");
        }
        this.buffer.append(" ");
        if (typeDeclaration.getAST().apiLevel() == 2) {
            if (getSuperclass(typeDeclaration) != null) {
                this.buffer.append("extends ");
                getSuperclass(typeDeclaration).accept(this);
                this.buffer.append(" ");
            }
            if (!superInterfaces(typeDeclaration).isEmpty()) {
                this.buffer.append(typeDeclaration.isInterface() ? "extends " : "implements ");
                Iterator it2 = superInterfaces(typeDeclaration).iterator();
                while (it2.hasNext()) {
                    ((Name) it2.next()).accept(this);
                    if (it2.hasNext()) {
                        this.buffer.append(", ");
                    }
                }
                this.buffer.append(" ");
            }
        }
        if (typeDeclaration.getAST().apiLevel() >= 3) {
            if (typeDeclaration.getSuperclassType() != null) {
                this.buffer.append("extends ");
                typeDeclaration.getSuperclassType().accept(this);
                this.buffer.append(" ");
            }
            if (!typeDeclaration.superInterfaceTypes().isEmpty()) {
                this.buffer.append(typeDeclaration.isInterface() ? "extends " : "implements ");
                Iterator it3 = typeDeclaration.superInterfaceTypes().iterator();
                while (it3.hasNext()) {
                    ((Type) it3.next()).accept(this);
                    if (it3.hasNext()) {
                        this.buffer.append(", ");
                    }
                }
                this.buffer.append(" ");
            }
        }
        this.buffer.append("{\n");
        this.indent++;
        Iterator it4 = typeDeclaration.bodyDeclarations().iterator();
        while (it4.hasNext()) {
            ((BodyDeclaration) it4.next()).accept(this);
        }
        this.indent--;
        printIndent();
        this.buffer.append("}\n");
        return false;
    }

    @Override
    public boolean visit(TypeDeclarationStatement typeDeclarationStatement) {
        if (typeDeclarationStatement.getAST().apiLevel() == 2) {
            getTypeDeclaration(typeDeclarationStatement).accept(this);
        }
        if (typeDeclarationStatement.getAST().apiLevel() < 3) {
            return false;
        }
        typeDeclarationStatement.getDeclaration().accept(this);
        return false;
    }

    @Override
    public boolean visit(TypeLiteral typeLiteral) {
        typeLiteral.getType().accept(this);
        this.buffer.append(".class");
        return false;
    }

    @Override
    public boolean visit(TypeMethodReference typeMethodReference) {
        typeMethodReference.getType().accept(this);
        visitReferenceTypeArguments(typeMethodReference.typeArguments());
        typeMethodReference.getName().accept(this);
        return false;
    }

    @Override
    public boolean visit(TypeParameter typeParameter) {
        if (typeParameter.getAST().apiLevel() >= 8) {
            printModifiers(typeParameter.modifiers());
        }
        typeParameter.getName().accept(this);
        if (typeParameter.typeBounds().isEmpty()) {
            return false;
        }
        this.buffer.append(" extends ");
        Iterator it = typeParameter.typeBounds().iterator();
        while (it.hasNext()) {
            ((Type) it.next()).accept(this);
            if (it.hasNext()) {
                this.buffer.append(" & ");
            }
        }
        return false;
    }

    @Override
    public boolean visit(UnionType unionType) {
        Iterator it = unionType.types().iterator();
        while (it.hasNext()) {
            ((Type) it.next()).accept(this);
            if (it.hasNext()) {
                this.buffer.append('|');
            }
        }
        return false;
    }

    @Override
    public boolean visit(UsesDirective usesDirective) {
        printIndent();
        this.buffer.append("uses");
        this.buffer.append(" ");
        usesDirective.getName().accept(this);
        this.buffer.append(";\n");
        return false;
    }

    @Override
    public boolean visit(VariableDeclarationExpression variableDeclarationExpression) {
        if (variableDeclarationExpression.getAST().apiLevel() == 2) {
            printModifiers(variableDeclarationExpression.getModifiers());
        }
        if (variableDeclarationExpression.getAST().apiLevel() >= 3) {
            printModifiers(variableDeclarationExpression.modifiers());
        }
        variableDeclarationExpression.getType().accept(this);
        this.buffer.append(" ");
        Iterator it = variableDeclarationExpression.fragments().iterator();
        while (it.hasNext()) {
            ((VariableDeclarationFragment) it.next()).accept(this);
            if (it.hasNext()) {
                this.buffer.append(", ");
            }
        }
        return false;
    }

    @Override
    public boolean visit(VariableDeclarationFragment variableDeclarationFragment) {
        variableDeclarationFragment.getName().accept(this);
        int extraDimensions = variableDeclarationFragment.getExtraDimensions();
        if (variableDeclarationFragment.getAST().apiLevel() >= 8) {
            List extraDimensions2 = variableDeclarationFragment.extraDimensions();
            for (int i10 = 0; i10 < extraDimensions; i10++) {
                visit((Dimension) extraDimensions2.get(i10));
            }
        } else {
            for (int i11 = 0; i11 < extraDimensions; i11++) {
                this.buffer.append(v.f99450n);
            }
        }
        if (variableDeclarationFragment.getInitializer() != null) {
            this.buffer.append("=");
            variableDeclarationFragment.getInitializer().accept(this);
        }
        return false;
    }

    @Override
    public boolean visit(VariableDeclarationStatement variableDeclarationStatement) {
        printIndent();
        if (variableDeclarationStatement.getAST().apiLevel() == 2) {
            printModifiers(variableDeclarationStatement.getModifiers());
        }
        if (variableDeclarationStatement.getAST().apiLevel() >= 3) {
            printModifiers(variableDeclarationStatement.modifiers());
        }
        variableDeclarationStatement.getType().accept(this);
        this.buffer.append(" ");
        Iterator it = variableDeclarationStatement.fragments().iterator();
        while (it.hasNext()) {
            ((VariableDeclarationFragment) it.next()).accept(this);
            if (it.hasNext()) {
                this.buffer.append(", ");
            }
        }
        this.buffer.append(";\n");
        return false;
    }

    @Override
    public boolean visit(WhileStatement whileStatement) {
        printIndent();
        this.buffer.append("while (");
        whileStatement.getExpression().accept(this);
        this.buffer.append(") ");
        whileStatement.getBody().accept(this);
        return false;
    }

    @Override
    public boolean visit(WildcardType wildcardType) {
        visitTypeAnnotations(wildcardType);
        this.buffer.append("?");
        Type bound = wildcardType.getBound();
        if (bound == null) {
            return false;
        }
        if (wildcardType.isUpperBound()) {
            this.buffer.append(" extends ");
        } else {
            this.buffer.append(" super ");
        }
        bound.accept(this);
        return false;
    }
}
