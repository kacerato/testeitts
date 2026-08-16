package com.github.javaparser.ast.type;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.VariableDeclarationExpr;
import com.github.javaparser.ast.stmt.ForEachStmt;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.VarTypeMetaModel;
import com.github.javaparser.resolution.Context;
import com.github.javaparser.resolution.declarations.ResolvedTypeDeclaration;
import com.github.javaparser.resolution.model.typesystem.ReferenceTypeImpl;
import com.github.javaparser.resolution.types.ResolvedArrayType;
import com.github.javaparser.resolution.types.ResolvedReferenceType;
import com.github.javaparser.resolution.types.ResolvedType;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

public class VarType extends Type {
    private static final String JAVA_LANG_OBJECT = Object.class.getCanonicalName();

    @AllFieldsConstructor
    public VarType() {
        this(null);
    }

    private Optional<ForEachStmt> forEachStmtWithVariableDeclarator(VariableDeclarator variableDeclarator) {
        Optional<Node> parentNode = variableDeclarator.getParentNode();
        if (!parentNode.isPresent() || !(parentNode.get() instanceof VariableDeclarationExpr)) {
            return Optional.empty();
        }
        Optional<Node> parentNode2 = parentNode.get().getParentNode();
        return (parentNode2.isPresent() && (parentNode2.get() instanceof ForEachStmt)) ? Optional.of((ForEachStmt) parentNode2.get()) : Optional.empty();
    }

    public static ResolvedReferenceType lambda$convertToUsage$0(ResolvedTypeDeclaration decl) {
        return ReferenceTypeImpl.undeterminedParameters(decl.asReferenceType());
    }

    public static UnsupportedOperationException lambda$convertToUsage$1() {
        return new UnsupportedOperationException();
    }

    public static IllegalStateException lambda$convertToUsage$2() {
        return new IllegalStateException("Cannot resolve `var` which has no initializer.");
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (VarType) arg);
    }

    @Override
    public String asString() {
        return "var";
    }

    @Override
    public VarType asVarType() {
        return this;
    }

    @Override
    public ResolvedType convertToUsage(Context context) {
        Node node = getParentNode().get();
        if (!(node instanceof VariableDeclarator)) {
            throw new IllegalStateException("Trying to resolve a `var` which is not in a variable declaration.");
        }
        VariableDeclarator variableDeclarator = (VariableDeclarator) node;
        Optional<Expression> initializer = variableDeclarator.getInitializer();
        if (!initializer.isPresent()) {
            Optional<ForEachStmt> forEachStmtWithVariableDeclarator = forEachStmtWithVariableDeclarator(variableDeclarator);
            if (forEachStmtWithVariableDeclarator.isPresent()) {
                ResolvedType calculateResolvedType = forEachStmtWithVariableDeclarator.get().getIterable().calculateResolvedType();
                if (calculateResolvedType instanceof ResolvedArrayType) {
                    return ((ResolvedArrayType) calculateResolvedType).getComponentType();
                }
                if (calculateResolvedType.isReferenceType()) {
                    List<ResolvedType> types = calculateResolvedType.asReferenceType().typeParametersMap().getTypes();
                    return types.isEmpty() ? (ResolvedType) context.solveType(JAVA_LANG_OBJECT).getDeclaration().map(new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            ResolvedReferenceType lambda$convertToUsage$0;
                            lambda$convertToUsage$0 = VarType.lambda$convertToUsage$0((ResolvedTypeDeclaration) obj);
                            return lambda$convertToUsage$0;
                        }
                    }).orElseThrow(new Supplier() {
                        @Override
                        public final Object get() {
                            UnsupportedOperationException lambda$convertToUsage$1;
                            lambda$convertToUsage$1 = VarType.lambda$convertToUsage$1();
                            return lambda$convertToUsage$1;
                        }
                    }) : types.get(0);
                }
            }
        }
        return (ResolvedType) initializer.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((Expression) obj).calculateResolvedType();
            }
        }).orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                IllegalStateException lambda$convertToUsage$2;
                lambda$convertToUsage$2 = VarType.lambda$convertToUsage$2();
                return lambda$convertToUsage$2;
            }
        });
    }

    @Override
    public void ifVarType(Consumer<VarType> action) {
        action.accept(this);
    }

    @Override
    public boolean isVarType() {
        return true;
    }

    @Override
    public Type setAnnotations(NodeList annotations) {
        return setAnnotations((NodeList<AnnotationExpr>) annotations);
    }

    @Override
    public Optional<VarType> toVarType() {
        return Optional.of(this);
    }

    public VarType(TokenRange tokenRange) {
        super(tokenRange);
        customInitialization();
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (VarType) arg);
    }

    @Override
    public ResolvedType resolve() {
        return (ResolvedType) getSymbolResolver().toResolvedType(this, ResolvedType.class);
    }

    @Override
    public VarType setAnnotations(NodeList<AnnotationExpr> annotations) {
        return (VarType) super.setAnnotations(annotations);
    }

    @Override
    public VarTypeMetaModel getMetaModel() {
        return JavaParserMetaModel.varTypeMetaModel;
    }

    @Override
    public VarType mo1220clone() {
        return (VarType) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
