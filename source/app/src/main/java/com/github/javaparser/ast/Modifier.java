package com.github.javaparser.ast;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.ast.visitor.GenericVisitor;
import com.github.javaparser.ast.visitor.VoidVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.ModifierMetaModel;
import com.github.javaparser.utils.Utils;
import java.util.Arrays;

public class Modifier extends Node {
    private Keyword keyword;

    public enum Keyword {
        DEFAULT("default"),
        PUBLIC("public"),
        PROTECTED("protected"),
        PRIVATE("private"),
        ABSTRACT("abstract"),
        STATIC("static"),
        FINAL("final"),
        TRANSIENT("transient"),
        VOLATILE("volatile"),
        SYNCHRONIZED("synchronized"),
        NATIVE("native"),
        STRICTFP("strictfp"),
        TRANSITIVE("transitive"),
        SEALED("sealed"),
        NON_SEALED("non-sealed");

        private final String codeRepresentation;

        Keyword(String codeRepresentation) {
            this.codeRepresentation = codeRepresentation;
        }

        public String asString() {
            return this.codeRepresentation;
        }
    }

    public Modifier() {
        this(Keyword.PUBLIC);
    }

    public static Modifier abstractModifier() {
        return new Modifier(Keyword.ABSTRACT);
    }

    public static NodeList<Modifier> createModifierList(Keyword... modifiers) {
        return (NodeList) Arrays.stream(modifiers).map(new C11778x()).collect(NodeList.toNodeList());
    }

    public static Modifier finalModifier() {
        return new Modifier(Keyword.FINAL);
    }

    public static Modifier nativeModifier() {
        return new Modifier(Keyword.NATIVE);
    }

    public static Modifier nonSealedModifier() {
        return new Modifier(Keyword.NON_SEALED);
    }

    public static Modifier privateModifier() {
        return new Modifier(Keyword.PRIVATE);
    }

    public static Modifier protectedModifier() {
        return new Modifier(Keyword.PROTECTED);
    }

    public static Modifier publicModifier() {
        return new Modifier(Keyword.PUBLIC);
    }

    public static Modifier sealedModifier() {
        return new Modifier(Keyword.SEALED);
    }

    public static Modifier staticModifier() {
        return new Modifier(Keyword.STATIC);
    }

    public static Modifier strictfpModifier() {
        return new Modifier(Keyword.STRICTFP);
    }

    public static Modifier synchronizedModifier() {
        return new Modifier(Keyword.SYNCHRONIZED);
    }

    public static Modifier transientModifier() {
        return new Modifier(Keyword.TRANSIENT);
    }

    public static Modifier transitiveModifier() {
        return new Modifier(Keyword.TRANSITIVE);
    }

    public static Modifier volatileModifier() {
        return new Modifier(Keyword.VOLATILE);
    }

    @Override
    public <R, A> R accept(final GenericVisitor<R, A> v10, final A arg) {
        return v10.visit(this, (Modifier) arg);
    }

    public Keyword getKeyword() {
        return this.keyword;
    }

    public Modifier setKeyword(final Keyword keyword) {
        Utils.assertNotNull(keyword);
        Keyword keyword2 = this.keyword;
        if (keyword == keyword2) {
            return this;
        }
        notifyPropertyChange(ObservableProperty.KEYWORD, keyword2, keyword);
        this.keyword = keyword;
        return this;
    }

    @AllFieldsConstructor
    public Modifier(Keyword keyword) {
        this(null, keyword);
    }

    @Override
    public <A> void accept(final VoidVisitor<A> v10, final A arg) {
        v10.visit(this, (Modifier) arg);
    }

    @Override
    public ModifierMetaModel getMetaModel() {
        return JavaParserMetaModel.modifierMetaModel;
    }

    public Modifier(TokenRange tokenRange, Keyword keyword) {
        super(tokenRange);
        setKeyword(keyword);
        customInitialization();
    }

    @Override
    public Modifier mo1220clone() {
        return (Modifier) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
