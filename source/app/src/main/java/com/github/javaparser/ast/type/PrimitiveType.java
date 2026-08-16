package com.github.javaparser.ast.type;

import com.github.javaparser.StaticJavaParser;
import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.nodeTypes.NodeWithAnnotations;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.PrimitiveTypeMetaModel;
import com.github.javaparser.resolution.Context;
import com.github.javaparser.resolution.types.ResolvedPrimitiveType;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.utils.Utils;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import java.util.HashMap;
import java.util.Optional;
import java.util.function.Consumer;
import org.eclipse.jdt.core.Signature;

public class PrimitiveType extends Type implements NodeWithAnnotations<PrimitiveType> {
    static final HashMap<String, Primitive> unboxMap = new HashMap<>();
    private Primitive type;

    public enum Primitive {
        BOOLEAN("Boolean", Signature.SIG_BOOLEAN),
        CHAR("Character", Signature.SIG_CHAR),
        BYTE("Byte", Signature.SIG_BYTE),
        SHORT("Short", "S"),
        INT("Integer", Signature.SIG_INT),
        LONG("Long", Signature.SIG_LONG),
        FLOAT(SerializableShaderEntry.f81148b, Signature.SIG_FLOAT),
        DOUBLE("Double", Signature.SIG_DOUBLE);

        private String codeRepresentation = name().toLowerCase();
        final String descriptor;
        final String nameOfBoxedType;

        Primitive(String nameOfBoxedType, String descriptor) {
            this.nameOfBoxedType = nameOfBoxedType;
            this.descriptor = descriptor;
        }

        public static Optional<Primitive> byBoxedTypeName(String simpleName) {
            return Optional.ofNullable(PrimitiveType.unboxMap.getOrDefault(simpleName, null));
        }

        public static Optional<Primitive> byTypeName(String name) {
            for (Primitive primitive : values()) {
                if (primitive.name().toLowerCase().equals(name)) {
                    return Optional.of(primitive);
                }
            }
            return Optional.empty();
        }

        public String asString() {
            return this.codeRepresentation;
        }

        public ClassOrInterfaceType toBoxedType() {
            return StaticJavaParser.parseClassOrInterfaceType(this.nameOfBoxedType);
        }

        public String toDescriptor() {
            return this.descriptor;
        }
    }

    static {
        for (Primitive primitive : Primitive.values()) {
            unboxMap.put(primitive.nameOfBoxedType, primitive);
        }
    }

    public PrimitiveType() {
        this(null, Primitive.INT, new NodeList());
    }

    public static PrimitiveType booleanType() {
        return new PrimitiveType(Primitive.BOOLEAN);
    }

    public static PrimitiveType byteType() {
        return new PrimitiveType(Primitive.BYTE);
    }

    public static PrimitiveType charType() {
        return new PrimitiveType(Primitive.CHAR);
    }

    public static PrimitiveType doubleType() {
        return new PrimitiveType(Primitive.DOUBLE);
    }

    public static PrimitiveType floatType() {
        return new PrimitiveType(Primitive.FLOAT);
    }

    public static PrimitiveType intType() {
        return new PrimitiveType(Primitive.INT);
    }

    public static PrimitiveType longType() {
        return new PrimitiveType(Primitive.LONG);
    }

    public static PrimitiveType shortType() {
        return new PrimitiveType(Primitive.SHORT);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (PrimitiveType) arg);
    }

    @Override
    public PrimitiveType asPrimitiveType() {
        return this;
    }

    @Override
    public String asString() {
        return this.type.asString();
    }

    @Override
    public ResolvedType convertToUsage(Context context) {
        return ResolvedPrimitiveType.byName(getType().name());
    }

    public Primitive getType() {
        return this.type;
    }

    @Override
    public void ifPrimitiveType(Consumer<PrimitiveType> action) {
        action.accept(this);
    }

    @Override
    public boolean isPrimitiveType() {
        return true;
    }

    @Override
    public PrimitiveType setAnnotations(NodeList annotations) {
        return setAnnotations2((NodeList<AnnotationExpr>) annotations);
    }

    public PrimitiveType setType(final Primitive type) {
        Utils.assertNotNull(type);
        Primitive primitive = this.type;
        if (type == primitive) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.TYPE, primitive, type);
        this.type = type;
        return this;
    }

    public ClassOrInterfaceType toBoxedType() {
        return this.type.toBoxedType();
    }

    @Override
    public String toDescriptor() {
        return this.type.toDescriptor();
    }

    @Override
    public Optional<PrimitiveType> toPrimitiveType() {
        return Optional.of(this);
    }

    public PrimitiveType(final Primitive type) {
        this(null, type, new NodeList());
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (PrimitiveType) arg);
    }

    @Override
    public Type setAnnotations(NodeList annotations) {
        return setAnnotations2((NodeList<AnnotationExpr>) annotations);
    }

    @AllFieldsConstructor
    public PrimitiveType(final Primitive type, NodeList<AnnotationExpr> annotations) {
        this(null, type, annotations);
    }

    @Override
    public PrimitiveTypeMetaModel getMetaModel() {
        return JavaParserMetaModel.primitiveTypeMetaModel;
    }

    @Override
    public ResolvedPrimitiveType resolve() {
        return (ResolvedPrimitiveType) getSymbolResolver().toResolvedType(this, ResolvedPrimitiveType.class);
    }

    @Override
    public PrimitiveType setAnnotations2(NodeList<AnnotationExpr> annotations) {
        return (PrimitiveType) super.setAnnotations(annotations);
    }

    public PrimitiveType(TokenRange tokenRange, Primitive type, NodeList<AnnotationExpr> annotations) {
        super(tokenRange, annotations);
        setType(type);
        customInitialization();
    }

    @Override
    public PrimitiveType mo1220clone() {
        return (PrimitiveType) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
