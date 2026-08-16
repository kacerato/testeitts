package com.github.javaparser.ast.type;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.nodeTypes.NodeWithAnnotations;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.ArrayTypeMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.resolution.Context;
import com.github.javaparser.resolution.types.ResolvedArrayType;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.utils.Pair;
import com.github.javaparser.utils.Utils;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
import okhttp3.v;

public class ArrayType extends ReferenceType implements NodeWithAnnotations<ArrayType> {
    private Type componentType;
    private Origin origin;

    public static class ArrayBracketPair {
        private NodeList<AnnotationExpr> annotations = new NodeList<>();
        private Origin origin;
        private TokenRange tokenRange;

        public ArrayBracketPair(TokenRange tokenRange, Origin origin, NodeList<AnnotationExpr> annotations) {
            setTokenRange(tokenRange);
            setAnnotations(annotations);
            setOrigin(origin);
        }

        public NodeList<AnnotationExpr> getAnnotations() {
            return this.annotations;
        }

        public Origin getOrigin() {
            return this.origin;
        }

        public Optional<TokenRange> getTokenRange() {
            return Optional.ofNullable(this.tokenRange);
        }

        public ArrayBracketPair setAnnotations(NodeList<AnnotationExpr> annotations) {
            this.annotations = (NodeList) Utils.assertNotNull(annotations);
            return this;
        }

        public ArrayBracketPair setOrigin(Origin origin) {
            this.origin = (Origin) Utils.assertNotNull(origin);
            return this;
        }

        public ArrayBracketPair setTokenRange(TokenRange range) {
            this.tokenRange = range;
            return this;
        }
    }

    public enum Origin {
        NAME,
        TYPE
    }

    @AllFieldsConstructor
    public ArrayType(Type componentType, Origin origin, NodeList<AnnotationExpr> annotations) {
        this(null, componentType, origin, annotations);
    }

    private static TokenRange getOuterMostTokenRange(TokenRange tokenRange1, TokenRange tokenRange2) {
        return (tokenRange2 == null || tokenRange1.getEnd().getRange().get().isAfter(tokenRange2.getEnd().getRange().get())) ? tokenRange1 : new TokenRange(tokenRange1.getBegin(), tokenRange2.getEnd());
    }

    public static Pair<Type, List<ArrayBracketPair>> unwrapArrayTypes(Type type) {
        ArrayList arrayList = new ArrayList(0);
        while (type instanceof ArrayType) {
            ArrayType arrayType = (ArrayType) type;
            arrayList.add(new ArrayBracketPair(type.getTokenRange().orElse(null), arrayType.getOrigin(), arrayType.getAnnotations()));
            type = arrayType.getComponentType();
        }
        return new Pair<>(type, arrayList);
    }

    @SafeVarargs
    public static Type wrapInArrayTypes(Type type, List<ArrayBracketPair>... arrayBracketPairLists) {
        TokenRange tokenRange = null;
        for (int length = arrayBracketPairLists.length - 1; length >= 0; length--) {
            List<ArrayBracketPair> list = arrayBracketPairLists[length];
            if (list != null) {
                int size = list.size() - 1;
                while (size >= 0) {
                    ArrayBracketPair arrayBracketPair = list.get(size);
                    if (type.getTokenRange().isPresent() && arrayBracketPair.getTokenRange().isPresent()) {
                        tokenRange = getOuterMostTokenRange(new TokenRange(type.getTokenRange().get().getBegin(), arrayBracketPair.getTokenRange().get().getEnd()), tokenRange);
                    }
                    size--;
                    type = new ArrayType(tokenRange, type, arrayBracketPair.getOrigin(), arrayBracketPair.getAnnotations());
                }
            }
        }
        return type;
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (ArrayType) arg);
    }

    @Override
    public ArrayType asArrayType() {
        return this;
    }

    @Override
    public String asString() {
        return this.componentType.asString() + v.f99450n;
    }

    @Override
    public ResolvedType convertToUsage(Context context) {
        return new ResolvedArrayType(getComponentType().convertToUsage(context));
    }

    @Override
    public int getArrayLevel() {
        return getComponentType().getArrayLevel() + 1;
    }

    public Type getComponentType() {
        return this.componentType;
    }

    @Override
    public Type getElementType() {
        return getComponentType().getElementType();
    }

    public Origin getOrigin() {
        return this.origin;
    }

    @Override
    public void ifArrayType(Consumer<ArrayType> action) {
        action.accept(this);
    }

    @Override
    public boolean isArrayType() {
        return true;
    }

    @Override
    public boolean replace(Node node, Node replacementNode) {
        if (node == null) {
            return false;
        }
        if (node != this.componentType) {
            return super.replace(node, replacementNode);
        }
        setComponentType((Type) replacementNode);
        return true;
    }

    @Override
    public ArrayType setAnnotations(NodeList annotations) {
        return setAnnotations2((NodeList<AnnotationExpr>) annotations);
    }

    public ArrayType setComponentType(final Type componentType) {
        Utils.assertNotNull(componentType);
        Type type = this.componentType;
        if (componentType == type) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.COMPONENT_TYPE, type, componentType);
        Type type2 = this.componentType;
        if (type2 != null) {
            type2.setParentNode((Node) null);
        }
        this.componentType = componentType;
        setAsParentNodeOf(componentType);
        return this;
    }

    public ArrayType setOrigin(final Origin origin) {
        Utils.assertNotNull(origin);
        Origin origin2 = this.origin;
        if (origin == origin2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.ORIGIN, origin2, origin);
        this.origin = origin;
        return this;
    }

    @Override
    public Optional<ArrayType> toArrayType() {
        return Optional.of(this);
    }

    @Override
    public String toDescriptor() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        stringBuffer.append(this.componentType.toDescriptor());
        return stringBuffer.toString();
    }

    public ArrayType(Type type, AnnotationExpr... annotations) {
        this(type, Origin.TYPE, NodeList.nodeList(annotations));
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (ArrayType) arg);
    }

    @Override
    public Type setAnnotations(NodeList annotations) {
        return setAnnotations2((NodeList<AnnotationExpr>) annotations);
    }

    public ArrayType(TokenRange tokenRange, Type componentType, Origin origin, NodeList<AnnotationExpr> annotations) {
        super(tokenRange, annotations);
        setComponentType(componentType);
        setOrigin(origin);
        customInitialization();
    }

    @Override
    public ResolvedArrayType resolve() {
        return (ResolvedArrayType) getSymbolResolver().toResolvedType(this, ResolvedArrayType.class);
    }

    @Override
    public ArrayType setAnnotations2(NodeList<AnnotationExpr> annotations) {
        return (ArrayType) super.setAnnotations(annotations);
    }

    @Override
    public ArrayTypeMetaModel getMetaModel() {
        return JavaParserMetaModel.arrayTypeMetaModel;
    }

    @Override
    public ArrayType mo1220clone() {
        return (ArrayType) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
