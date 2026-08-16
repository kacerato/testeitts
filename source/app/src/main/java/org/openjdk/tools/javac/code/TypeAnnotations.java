package org.openjdk.tools.javac.code;

import java.util.Iterator;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Predicate;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ElementKind;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.source.tree.MemberReferenceTree;
import org.openjdk.source.tree.Tree;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeAnnotationPosition;
import org.openjdk.tools.javac.code.TypeAnnotations;
import org.openjdk.tools.javac.code.TypeMetadata;
import org.openjdk.tools.javac.comp.Annotate;
import org.openjdk.tools.javac.comp.Attr;
import org.openjdk.tools.javac.comp.AttrContext;
import org.openjdk.tools.javac.comp.Env;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeScanner;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;

public class TypeAnnotations {
    protected static final Context.Key<TypeAnnotations> typeAnnosKey = new Context.Key<>();
    final Annotate annotate;
    final Attr attr;
    final Log log;
    final Names names;
    final Symtab syms;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode;
        static final int[] $SwitchMap$com$sun$source$tree$Tree$Kind;
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeAnnotations$AnnotationType;
        static final int[] $SwitchMap$javax$lang$model$element$ElementKind;

        static {
            int[] iArr = new int[Tree.Kind.values().length];
            $SwitchMap$com$sun$source$tree$Tree$Kind = iArr;
            try {
                iArr[Tree.Kind.TYPE_CAST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.INSTANCE_OF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.NEW_CLASS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.NEW_ARRAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.ANNOTATION_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.CLASS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.ENUM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.INTERFACE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.METHOD.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.PARAMETERIZED_TYPE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.MEMBER_REFERENCE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.ARRAY_TYPE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.TYPE_PARAMETER.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.VARIABLE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.ANNOTATED_TYPE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.UNION_TYPE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.INTERSECTION_TYPE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.METHOD_INVOCATION.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.EXTENDS_WILDCARD.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.SUPER_WILDCARD.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.MEMBER_SELECT.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            int[] iArr2 = new int[ElementKind.values().length];
            $SwitchMap$javax$lang$model$element$ElementKind = iArr2;
            try {
                iArr2[ElementKind.LOCAL_VARIABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.FIELD.ordinal()] = 2;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.PARAMETER.ordinal()] = 3;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.EXCEPTION_PARAMETER.ordinal()] = 4;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.RESOURCE_VARIABLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused26) {
            }
            int[] iArr3 = new int[MemberReferenceTree.ReferenceMode.values().length];
            $SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode = iArr3;
            try {
                iArr3[MemberReferenceTree.ReferenceMode.INVOKE.ordinal()] = 1;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode[MemberReferenceTree.ReferenceMode.NEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused28) {
            }
            int[] iArr4 = new int[AnnotationType.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeAnnotations$AnnotationType = iArr4;
            try {
                iArr4[AnnotationType.DECLARATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeAnnotations$AnnotationType[AnnotationType.BOTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeAnnotations$AnnotationType[AnnotationType.TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused31) {
            }
        }
    }

    public enum AnnotationType {
        DECLARATION,
        TYPE,
        NONE,
        BOTH
    }

    public TypeAnnotations(Context context) {
        context.put((Context.Key<Context.Key<TypeAnnotations>>) typeAnnosKey, (Context.Key<TypeAnnotations>) this);
        this.names = Names.instance(context);
        this.log = Log.instance(context);
        this.syms = Symtab.instance(context);
        this.annotate = Annotate.instance(context);
        this.attr = Attr.instance(context);
    }

    public AnnotationType combineAnnotationType(AnnotationType annotationType, AnnotationType annotationType2) {
        AnnotationType annotationType3 = AnnotationType.NONE;
        return annotationType == annotationType3 ? annotationType2 : (annotationType2 == annotationType3 || annotationType == annotationType2) ? annotationType : AnnotationType.BOTH;
    }

    public static TypeAnnotations instance(Context context) {
        TypeAnnotations typeAnnotations = (TypeAnnotations) context.get(typeAnnosKey);
        return typeAnnotations == null ? new TypeAnnotations(context) : typeAnnotations;
    }

    public static boolean lambda$annotationTargets$2(Attribute attribute) {
        return !(attribute instanceof Attribute.Enum);
    }

    public void lambda$organizeTypeAnnotationsSignatures$0(Env env, JCTree.JCClassDecl jCClassDecl) {
        JavaFileObject useSource = this.log.useSource(env.toplevel.sourcefile);
        try {
            new TypeAnnotationPositions(true).scan(jCClassDecl);
        } finally {
            this.log.useSource(useSource);
        }
    }

    public void lambda$validateTypeAnnotationsSignatures$1(Env env, JCTree.JCClassDecl jCClassDecl) {
        JavaFileObject useSource = this.log.useSource(env.toplevel.sourcefile);
        try {
            this.attr.validateTypeAnnotations(jCClassDecl, true);
        } finally {
            this.log.useSource(useSource);
        }
    }

    public AnnotationType lambda$annotationTargetType$3(Attribute attribute, Symbol symbol) {
        Kinds.Kind kind;
        Attribute.Enum r82 = (Attribute.Enum) attribute;
        Name name = r82.value.name;
        Names names = this.names;
        if (name == names.TYPE) {
            if (symbol.kind == Kinds.Kind.TYP) {
                return AnnotationType.DECLARATION;
            }
        } else if (name == names.FIELD) {
            if (symbol.kind == Kinds.Kind.VAR && symbol.owner.kind != Kinds.Kind.MTH) {
                return AnnotationType.DECLARATION;
            }
        } else if (name == names.METHOD) {
            if (symbol.kind == Kinds.Kind.MTH && !symbol.isConstructor()) {
                return AnnotationType.DECLARATION;
            }
        } else if (name == names.PARAMETER) {
            if (symbol.kind == Kinds.Kind.VAR && symbol.owner.kind == Kinds.Kind.MTH && (symbol.flags() & 8589934592L) != 0) {
                return AnnotationType.DECLARATION;
            }
        } else if (name == names.CONSTRUCTOR) {
            if (symbol.kind == Kinds.Kind.MTH && symbol.isConstructor()) {
                return AnnotationType.DECLARATION;
            }
        } else if (name == names.LOCAL_VARIABLE) {
            if (symbol.kind == Kinds.Kind.VAR && symbol.owner.kind == Kinds.Kind.MTH && (symbol.flags() & 8589934592L) == 0) {
                return AnnotationType.DECLARATION;
            }
        } else if (name == names.ANNOTATION_TYPE) {
            if (symbol.kind == Kinds.Kind.TYP && (symbol.flags() & 8192) != 0) {
                return AnnotationType.DECLARATION;
            }
        } else if (name == names.PACKAGE) {
            if (symbol.kind == Kinds.Kind.PCK) {
                return AnnotationType.DECLARATION;
            }
        } else if (name == names.TYPE_USE) {
            Kinds.Kind kind2 = symbol.kind;
            if (kind2 == Kinds.Kind.TYP || kind2 == Kinds.Kind.VAR || ((kind2 == (kind = Kinds.Kind.MTH) && !symbol.isConstructor() && !symbol.type.getReturnType().hasTag(TypeTag.VOID)) || (symbol.kind == kind && symbol.isConstructor()))) {
                return AnnotationType.TYPE;
            }
        } else if (name != names.TYPE_PARAMETER) {
            if (name != names.MODULE) {
                Assert.error("annotationTargetType(): unrecognized Attribute name " + ((Object) r82.value.name) + " (" + ((Object) r82.value.name.getClass()) + ")");
                return AnnotationType.DECLARATION;
            }
            if (symbol.kind == Kinds.Kind.MDL) {
                return AnnotationType.DECLARATION;
            }
        }
        return AnnotationType.NONE;
    }

    public AnnotationType annotationTargetType(Attribute.Compound compound, final Symbol symbol) {
        List<Attribute> annotationTargets = annotationTargets(compound.type.tsym);
        return annotationTargets == null ? AnnotationType.DECLARATION : (AnnotationType) annotationTargets.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                TypeAnnotations.AnnotationType lambda$annotationTargetType$3;
                lambda$annotationTargetType$3 = TypeAnnotations.this.lambda$annotationTargetType$3(symbol, (Attribute) obj);
                return lambda$annotationTargetType$3;
            }
        }).reduce(AnnotationType.NONE, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                TypeAnnotations.AnnotationType combineAnnotationType;
                combineAnnotationType = TypeAnnotations.this.combineAnnotationType((TypeAnnotations.AnnotationType) obj, (TypeAnnotations.AnnotationType) obj2);
                return combineAnnotationType;
            }
        });
    }

    public List<Attribute> annotationTargets(Symbol.TypeSymbol typeSymbol) {
        Attribute.Compound target = typeSymbol.getAnnotationTypeMetadata().getTarget();
        if (target == null) {
            return null;
        }
        Attribute member = target.member(this.names.value);
        if (!(member instanceof Attribute.Array)) {
            return null;
        }
        List<Attribute> value = ((Attribute.Array) member).getValue();
        if (value.stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$annotationTargets$2;
                lambda$annotationTargets$2 = TypeAnnotations.lambda$annotationTargets$2((Attribute) obj);
                return lambda$annotationTargets$2;
            }
        })) {
            return null;
        }
        return value;
    }

    public void organizeTypeAnnotationsBodies(JCTree.JCClassDecl jCClassDecl) {
        new TypeAnnotationPositions(false).scan(jCClassDecl);
    }

    public void organizeTypeAnnotationsSignatures(final Env<AttrContext> env, final JCTree.JCClassDecl jCClassDecl) {
        this.annotate.afterTypes(new Runnable() {
            @Override
            public final void run() {
                TypeAnnotations.this.lambda$organizeTypeAnnotationsSignatures$0(env, jCClassDecl);
            }
        });
    }

    public void validateTypeAnnotationsSignatures(final Env<AttrContext> env, final JCTree.JCClassDecl jCClassDecl) {
        this.annotate.validate(new Runnable() {
            @Override
            public final void run() {
                TypeAnnotations.this.lambda$validateTypeAnnotationsSignatures$1(env, jCClassDecl);
            }
        });
    }

    public class TypeAnnotationPositions extends TreeScanner {
        private final boolean sigOnly;
        private List<JCTree> frames = List.nil();
        private boolean isInClass = false;
        private JCTree.JCLambda currentLambda = null;

        public TypeAnnotationPositions(boolean z10) {
            this.sigOnly = z10;
        }

        private void copyNewClassAnnotationsToOwner(JCTree.JCNewClass jCNewClass) {
            Symbol.ClassSymbol classSymbol = jCNewClass.def.sym;
            TypeAnnotationPosition newObj = TypeAnnotationPosition.newObj(jCNewClass.pos);
            ListBuffer listBuffer = new ListBuffer();
            Iterator<Attribute.TypeCompound> it = classSymbol.getRawTypeAttributes().iterator();
            while (it.hasNext()) {
                Attribute.TypeCompound next = it.next();
                listBuffer.append(new Attribute.TypeCompound(next.type, next.values, newObj));
            }
            classSymbol.owner.appendUniqueTypeAttributes(listBuffer.toList());
        }

        private void findPosition(JCTree jCTree, JCTree jCTree2, List<JCTree.JCAnnotation> list) {
            if (list.isEmpty()) {
                return;
            }
            setTypeAnnotationPos(list, resolveFrame(jCTree, jCTree2, this.frames, this.currentLambda, 0, new ListBuffer<>()));
        }

        private void findTypeCompoundPosition(JCTree jCTree, JCTree jCTree2, List<Attribute.TypeCompound> list) {
            if (list.isEmpty()) {
                return;
            }
            TypeAnnotationPosition resolveFrame = resolveFrame(jCTree, jCTree2, this.frames, this.currentLambda, 0, new ListBuffer<>());
            Iterator<Attribute.TypeCompound> it = list.iterator();
            while (it.hasNext()) {
                it.next().position = resolveFrame;
            }
        }

        private ListBuffer<TypeAnnotationPosition.TypePathEntry> locateNestedTypes(Type type, ListBuffer<TypeAnnotationPosition.TypePathEntry> listBuffer) {
            for (Type enclosingType = type.getEnclosingType(); enclosingType != null && enclosingType.getKind() != TypeKind.NONE && enclosingType.getKind() != TypeKind.ERROR; enclosingType = enclosingType.getEnclosingType()) {
                listBuffer = listBuffer.prepend(TypeAnnotationPosition.TypePathEntry.INNER_TYPE);
            }
            return listBuffer;
        }

        /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        
            r4 = r4;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private int methodParamIndex(List<JCTree> list, JCTree jCTree) {
            List<JCTree> list2;
            JCTree.Tag tag;
            while (true) {
                JCTree.Tag tag2 = list2.head.getTag();
                tag = JCTree.Tag.METHODDEF;
                if (tag2 == tag || list2.head.getTag() == JCTree.Tag.LAMBDA) {
                    break;
                }
                list2 = list2.tail;
            }
            if (list2.head.getTag() == tag) {
                return ((JCTree.JCMethodDecl) list2.head).params.indexOf(jCTree);
            }
            if (list2.head.getTag() == JCTree.Tag.LAMBDA) {
                return ((JCTree.JCLambda) list2.head).params.indexOf(jCTree);
            }
            Assert.error("methodParamIndex expected to find method or lambda for param: " + ((Object) jCTree));
            return -1;
        }

        private JCTree peek2() {
            return this.frames.tail.head;
        }

        private TypeAnnotationPosition resolveFrame(JCTree jCTree, JCTree jCTree2, List<JCTree> list, JCTree.JCLambda jCLambda, int i10, ListBuffer<TypeAnnotationPosition.TypePathEntry> listBuffer) {
            switch (AnonymousClass1.$SwitchMap$com$sun$source$tree$Tree$Kind[jCTree2.getKind().ordinal()]) {
                case 1:
                    return TypeAnnotationPosition.typeCast(listBuffer.toList(), jCLambda, i10, jCTree2.pos);
                case 2:
                    return TypeAnnotationPosition.instanceOf(listBuffer.toList(), jCLambda, jCTree2.pos);
                case 3:
                    JCTree.JCNewClass jCNewClass = (JCTree.JCNewClass) jCTree2;
                    JCTree.JCClassDecl jCClassDecl = jCNewClass.def;
                    if (jCClassDecl != null) {
                        if (jCClassDecl.implementing.contains(jCTree)) {
                            return TypeAnnotationPosition.classExtends(listBuffer.toList(), jCLambda, jCClassDecl.implementing.indexOf(jCTree), jCTree2.pos);
                        }
                        return TypeAnnotationPosition.classExtends(listBuffer.toList(), jCLambda, jCTree2.pos);
                    }
                    if (jCNewClass.typeargs.contains(jCTree)) {
                        return TypeAnnotationPosition.constructorInvocationTypeArg(listBuffer.toList(), jCLambda, jCNewClass.typeargs.indexOf(jCTree), jCTree2.pos);
                    }
                    return TypeAnnotationPosition.newObj(listBuffer.toList(), jCLambda, jCTree2.pos);
                case 4:
                    return TypeAnnotationPosition.newObj(listBuffer.toList(), jCLambda, jCTree2.pos);
                case 5:
                case 6:
                case 7:
                case 8:
                    JCTree.JCClassDecl jCClassDecl2 = (JCTree.JCClassDecl) jCTree2;
                    if (jCClassDecl2.extending == jCTree) {
                        return TypeAnnotationPosition.classExtends(listBuffer.toList(), jCLambda, jCTree2.pos);
                    }
                    if (jCClassDecl2.implementing.contains(jCTree)) {
                        return TypeAnnotationPosition.classExtends(listBuffer.toList(), jCLambda, jCClassDecl2.implementing.indexOf(jCTree), jCTree2.pos);
                    }
                    if (jCClassDecl2.typarams.contains(jCTree)) {
                        return TypeAnnotationPosition.typeParameter(listBuffer.toList(), jCLambda, jCClassDecl2.typarams.indexOf(jCTree), jCTree2.pos);
                    }
                    throw new AssertionError((Object) ("Could not determine position of tree " + ((Object) jCTree) + " within frame " + ((Object) jCTree2)));
                case 9:
                    JCTree.JCMethodDecl jCMethodDecl = (JCTree.JCMethodDecl) jCTree2;
                    if (jCMethodDecl.thrown.contains(jCTree)) {
                        return TypeAnnotationPosition.methodThrows(listBuffer.toList(), jCLambda, jCMethodDecl.thrown.indexOf(jCTree), jCTree2.pos);
                    }
                    if (jCMethodDecl.restype == jCTree) {
                        return TypeAnnotationPosition.methodReturn(listBuffer.toList(), jCLambda, jCTree2.pos);
                    }
                    if (jCMethodDecl.typarams.contains(jCTree)) {
                        return TypeAnnotationPosition.methodTypeParameter(listBuffer.toList(), jCLambda, jCMethodDecl.typarams.indexOf(jCTree), jCTree2.pos);
                    }
                    throw new AssertionError((Object) ("Could not determine position of tree " + ((Object) jCTree) + " within frame " + ((Object) jCTree2)));
                case 10:
                    List<JCTree> list2 = list.tail;
                    JCTree.JCTypeApply jCTypeApply = (JCTree.JCTypeApply) jCTree2;
                    if (jCTypeApply.clazz != jCTree) {
                        if (!jCTypeApply.arguments.contains(jCTree)) {
                            throw new AssertionError((Object) ("Could not determine type argument position of tree " + ((Object) jCTree) + " within frame " + ((Object) jCTree2)));
                        }
                        ListBuffer<TypeAnnotationPosition.TypePathEntry> prepend = listBuffer.prepend(new TypeAnnotationPosition.TypePathEntry(TypeAnnotationPosition.TypePathEntryKind.TYPE_ARGUMENT, jCTypeApply.arguments.indexOf(jCTree)));
                        List<JCTree> list3 = list2.tail;
                        listBuffer = locateNestedTypes((list3 == null || !list3.head.hasTag(JCTree.Tag.NEWCLASS)) ? jCTypeApply.type : list2.tail.head.type, prepend);
                    }
                    return resolveFrame(list2.head, list2.tail.head, list2, jCLambda, i10, listBuffer);
                case 11:
                    JCTree.JCMemberReference jCMemberReference = (JCTree.JCMemberReference) jCTree2;
                    if (jCMemberReference.expr == jCTree) {
                        int i11 = AnonymousClass1.$SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode[jCMemberReference.mode.ordinal()];
                        if (i11 == 1) {
                            return TypeAnnotationPosition.methodRef(listBuffer.toList(), jCLambda, jCTree2.pos);
                        }
                        if (i11 == 2) {
                            return TypeAnnotationPosition.constructorRef(listBuffer.toList(), jCLambda, jCTree2.pos);
                        }
                        throw new AssertionError((Object) ("Unknown method reference mode " + ((Object) jCMemberReference.mode) + " for tree " + ((Object) jCTree) + " within frame " + ((Object) jCTree2)));
                    }
                    List<JCTree.JCExpression> list4 = jCMemberReference.typeargs;
                    if (list4 == null || !list4.contains(jCTree)) {
                        throw new AssertionError((Object) ("Could not determine type argument position of tree " + ((Object) jCTree) + " within frame " + ((Object) jCTree2)));
                    }
                    int indexOf = jCMemberReference.typeargs.indexOf(jCTree);
                    int i12 = AnonymousClass1.$SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode[jCMemberReference.mode.ordinal()];
                    if (i12 == 1) {
                        return TypeAnnotationPosition.methodRefTypeArg(listBuffer.toList(), jCLambda, indexOf, jCTree2.pos);
                    }
                    if (i12 == 2) {
                        return TypeAnnotationPosition.constructorRefTypeArg(listBuffer.toList(), jCLambda, indexOf, jCTree2.pos);
                    }
                    throw new AssertionError((Object) ("Unknown method reference mode " + ((Object) jCMemberReference.mode) + " for tree " + ((Object) jCTree) + " within frame " + ((Object) jCTree2)));
                case 12:
                    ListBuffer<TypeAnnotationPosition.TypePathEntry> prepend2 = listBuffer.prepend(TypeAnnotationPosition.TypePathEntry.ARRAY);
                    List<JCTree> list5 = list.tail;
                    while (true) {
                        JCTree jCTree3 = list5.tail.head;
                        if (jCTree3.hasTag(JCTree.Tag.TYPEARRAY)) {
                            list5 = list5.tail;
                            prepend2 = prepend2.prepend(TypeAnnotationPosition.TypePathEntry.ARRAY);
                        } else {
                            if (!jCTree3.hasTag(JCTree.Tag.ANNOTATED_TYPE)) {
                                return resolveFrame(list5.head, list5.tail.head, list5, jCLambda, i10, prepend2);
                            }
                            list5 = list5.tail;
                        }
                    }
                case 13:
                    if (list.tail.tail.head.hasTag(JCTree.Tag.CLASSDEF)) {
                        List<JCTree> list6 = list.tail;
                        JCTree.JCTypeParameter jCTypeParameter = (JCTree.JCTypeParameter) jCTree2;
                        return TypeAnnotationPosition.typeParameterBound(listBuffer.toList(), jCLambda, ((JCTree.JCClassDecl) list6.tail.head).typarams.indexOf(list6.head), jCTypeParameter.bounds.get(0).type.isInterface() ? jCTypeParameter.bounds.indexOf(jCTree) + 1 : jCTypeParameter.bounds.indexOf(jCTree), jCTree2.pos);
                    }
                    if (list.tail.tail.head.hasTag(JCTree.Tag.METHODDEF)) {
                        List<JCTree> list7 = list.tail;
                        JCTree.JCTypeParameter jCTypeParameter2 = (JCTree.JCTypeParameter) jCTree2;
                        return TypeAnnotationPosition.methodTypeParameterBound(listBuffer.toList(), jCLambda, ((JCTree.JCMethodDecl) list7.tail.head).typarams.indexOf(list7.head), jCTypeParameter2.bounds.get(0).type.isInterface() ? jCTypeParameter2.bounds.indexOf(jCTree) + 1 : jCTypeParameter2.bounds.indexOf(jCTree), jCTree2.pos);
                    }
                    throw new AssertionError((Object) ("Could not determine position of tree " + ((Object) jCTree) + " within frame " + ((Object) jCTree2)));
                case 14:
                    Symbol.VarSymbol varSymbol = ((JCTree.JCVariableDecl) jCTree2).sym;
                    if (varSymbol.getKind() != ElementKind.FIELD) {
                        varSymbol.owner.appendUniqueTypeAttributes(varSymbol.getRawTypeAttributes());
                    }
                    int i13 = AnonymousClass1.$SwitchMap$javax$lang$model$element$ElementKind[varSymbol.getKind().ordinal()];
                    if (i13 == 1) {
                        return TypeAnnotationPosition.localVariable(listBuffer.toList(), jCLambda, jCTree2.pos);
                    }
                    if (i13 == 2) {
                        return TypeAnnotationPosition.field(listBuffer.toList(), jCLambda, jCTree2.pos);
                    }
                    if (i13 == 3) {
                        if (varSymbol.getQualifiedName().equals(TypeAnnotations.this.names._this)) {
                            return TypeAnnotationPosition.methodReceiver(listBuffer.toList(), jCLambda, jCTree2.pos);
                        }
                        return TypeAnnotationPosition.methodParameter(listBuffer.toList(), jCLambda, methodParamIndex(list, jCTree2), jCTree2.pos);
                    }
                    if (i13 == 4) {
                        return TypeAnnotationPosition.exceptionParameter(listBuffer.toList(), jCLambda, jCTree2.pos);
                    }
                    if (i13 == 5) {
                        return TypeAnnotationPosition.resourceVariable(listBuffer.toList(), jCLambda, jCTree2.pos);
                    }
                    throw new AssertionError((Object) ("Found unexpected type annotation for variable: " + ((Object) varSymbol) + " with kind: " + ((Object) varSymbol.getKind())));
                case 15:
                    if (jCTree2 == jCTree) {
                        Type type = ((JCTree.JCAnnotatedType) jCTree2).underlyingType.type;
                        Assert.checkNonNull(type);
                        if (!type.tsym.getKind().equals(ElementKind.TYPE_PARAMETER) && !type.getKind().equals(TypeKind.WILDCARD) && !type.getKind().equals(TypeKind.ARRAY)) {
                            listBuffer = locateNestedTypes(type, listBuffer);
                        }
                    }
                    List<JCTree> list8 = list.tail;
                    return resolveFrame(list8.head, list8.tail.head, list8, jCLambda, i10, listBuffer);
                case 16:
                    List<JCTree> list9 = list.tail;
                    return resolveFrame(list9.head, list9.tail.head, list9, jCLambda, i10, listBuffer);
                case 17:
                    List<JCTree> list10 = list.tail;
                    return resolveFrame(list10.head, list10.tail.head, list10, jCLambda, ((JCTree.JCTypeIntersection) jCTree2).bounds.indexOf(jCTree), listBuffer);
                case 18:
                    JCTree.JCMethodInvocation jCMethodInvocation = (JCTree.JCMethodInvocation) jCTree2;
                    if (!jCMethodInvocation.typeargs.contains(jCTree)) {
                        return TypeAnnotationPosition.unknown;
                    }
                    Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) TreeInfo.symbol(jCMethodInvocation.getMethodSelect());
                    int indexOf2 = jCMethodInvocation.typeargs.indexOf(jCTree);
                    if (methodSymbol != null) {
                        return methodSymbol.isConstructor() ? TypeAnnotationPosition.constructorInvocationTypeArg(listBuffer.toList(), jCLambda, indexOf2, jCMethodInvocation.pos) : TypeAnnotationPosition.methodInvocationTypeArg(listBuffer.toList(), jCLambda, indexOf2, jCMethodInvocation.pos);
                    }
                    throw new AssertionError((Object) ("could not determine symbol for {" + ((Object) jCMethodInvocation) + VectorFormat.DEFAULT_SUFFIX));
                case 19:
                case 20:
                    List<JCTree> list11 = list.tail;
                    return resolveFrame(list11.head, list11.tail.head, list11, jCLambda, i10, listBuffer.prepend(TypeAnnotationPosition.TypePathEntry.WILDCARD));
                case 21:
                    List<JCTree> list12 = list.tail;
                    return resolveFrame(list12.head, list12.tail.head, list12, jCLambda, i10, listBuffer);
                default:
                    throw new AssertionError((Object) ("Unresolved frame: " + ((Object) jCTree2) + " of kind: " + ((Object) jCTree2.getKind()) + "\n    Looking for tree: " + ((Object) jCTree)));
            }
        }

        private Type rewriteArrayType(Type.ArrayType arrayType, List<Attribute.TypeCompound> list, TypeAnnotationPosition typeAnnotationPosition) {
            Type cloneWithMetadata;
            Type.ArrayType arrayType2 = new Type.ArrayType(arrayType);
            List nil = List.nil();
            Type type = arrayType.elemtype;
            List<TypeAnnotationPosition.TypePathEntry> prepend = nil.prepend(TypeAnnotationPosition.TypePathEntry.ARRAY);
            Type.ArrayType arrayType3 = arrayType2;
            while (type.hasTag(TypeTag.ARRAY)) {
                Type.ArrayType arrayType4 = (Type.ArrayType) type;
                Type.ArrayType arrayType5 = new Type.ArrayType(arrayType4);
                arrayType3.elemtype = arrayType5;
                type = arrayType4.elemtype;
                prepend = prepend.prepend(TypeAnnotationPosition.TypePathEntry.ARRAY);
                arrayType3 = arrayType5;
            }
            if (type.getMetadata() != null) {
                cloneWithMetadata = type.cloneWithMetadata(type.getMetadata().without(TypeMetadata.Entry.Kind.ANNOTATIONS).combine(new TypeMetadata.Annotations(type.getAnnotationMirrors().isEmpty() ? list : list.appendList(type.getAnnotationMirrors()))));
            } else {
                cloneWithMetadata = type.cloneWithMetadata(new TypeMetadata(new TypeMetadata.Annotations(list)));
            }
            arrayType3.elemtype = cloneWithMetadata;
            Iterator<Attribute.TypeCompound> it = list.iterator();
            while (it.hasNext()) {
                Attribute.TypeCompound next = it.next();
                if (next.position == null) {
                    next.position = typeAnnotationPosition;
                }
                next.position.location = prepend;
            }
            return arrayType2;
        }

        private void separateAnnotationsKinds(JCTree jCTree, Type type, Symbol symbol, TypeAnnotationPosition typeAnnotationPosition) {
            List<Attribute.Compound> rawAttributes = symbol.getRawAttributes();
            ListBuffer listBuffer = new ListBuffer();
            ListBuffer listBuffer2 = new ListBuffer();
            ListBuffer listBuffer3 = new ListBuffer();
            Iterator<Attribute.Compound> it = rawAttributes.iterator();
            while (it.hasNext()) {
                Attribute.Compound next = it.next();
                int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeAnnotations$AnnotationType[TypeAnnotations.this.annotationTargetType(next, symbol).ordinal()];
                if (i10 == 1) {
                    listBuffer.append(next);
                } else if (i10 == 2) {
                    listBuffer.append(next);
                    listBuffer2.append(toTypeCompound(next, typeAnnotationPosition));
                } else if (i10 == 3) {
                    Attribute.TypeCompound typeCompound = toTypeCompound(next, typeAnnotationPosition);
                    listBuffer2.append(typeCompound);
                    listBuffer3.append(typeCompound);
                }
            }
            if (listBuffer2.isEmpty()) {
                return;
            }
            symbol.resetAnnotations();
            symbol.setDeclarationAttributes(listBuffer.toList());
            List<Attribute.TypeCompound> list = listBuffer2.toList();
            if (type == null) {
                typeWithAnnotations(jCTree, symbol.getEnclosingElement().asType(), list, list, typeAnnotationPosition);
                symbol.appendUniqueTypeAttributes(list);
                return;
            }
            Type typeWithAnnotations = typeWithAnnotations(jCTree, type, list, listBuffer3.toList(), typeAnnotationPosition);
            if (symbol.getKind() == ElementKind.METHOD) {
                symbol.type.asMethodType().restype = typeWithAnnotations;
            } else if (symbol.getKind() == ElementKind.PARAMETER && this.currentLambda == null) {
                symbol.type = typeWithAnnotations;
                if (symbol.getQualifiedName().equals(TypeAnnotations.this.names._this)) {
                    symbol.owner.type.asMethodType().recvtype = typeWithAnnotations;
                } else {
                    Type.MethodType asMethodType = symbol.owner.type.asMethodType();
                    List list2 = asMethodType.argtypes;
                    ListBuffer listBuffer4 = new ListBuffer();
                    for (List list3 = ((Symbol.MethodSymbol) symbol.owner).params; list3.nonEmpty(); list3 = list3.tail) {
                        if (list3.head == symbol) {
                            listBuffer4.add(typeWithAnnotations);
                        } else {
                            listBuffer4.add(list2.head);
                        }
                        list2 = list2.tail;
                    }
                    asMethodType.argtypes = listBuffer4.toList();
                }
            } else {
                symbol.type = typeWithAnnotations;
            }
            symbol.appendUniqueTypeAttributes(list);
            if (symbol.getKind() == ElementKind.PARAMETER || symbol.getKind() == ElementKind.LOCAL_VARIABLE || symbol.getKind() == ElementKind.RESOURCE_VARIABLE || symbol.getKind() == ElementKind.EXCEPTION_PARAMETER) {
                long flags = symbol.owner.flags();
                if ((TagBits.HasNullTypeAnnotation & flags) == 0) {
                    symbol.owner.appendUniqueTypeAttributes(symbol.getRawTypeAttributes());
                    return;
                }
                Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) symbol.owner.owner;
                if ((flags & 8) != 0) {
                    classSymbol.appendClassInitTypeAttributes(list);
                } else {
                    classSymbol.appendInitTypeAttributes(list);
                }
            }
        }

        private void setTypeAnnotationPos(List<JCTree.JCAnnotation> list, TypeAnnotationPosition typeAnnotationPosition) {
            Iterator<JCTree.JCAnnotation> it = list.iterator();
            while (it.hasNext()) {
                Attribute.Compound compound = it.next().attribute;
                if (compound != null) {
                    ((Attribute.TypeCompound) compound).position = typeAnnotationPosition;
                }
            }
        }

        private Attribute.TypeCompound toTypeCompound(Attribute.Compound compound, TypeAnnotationPosition typeAnnotationPosition) {
            return new Attribute.TypeCompound(compound, typeAnnotationPosition);
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x00b1, code lost:
        
            if (r0.hasTag(org.openjdk.tools.javac.code.TypeTag.NONE) == false) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00b3, code lost:
        
            r9 = r10.size();
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00b7, code lost:
        
            if (r9 == 0) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00ba, code lost:
        
            if (r9 == 1) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00bc, code lost:
        
            r6.this$0.log.error(r7.pos(), "cant.type.annotate.scoping", r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00ce, code lost:
        
            r6.this$0.log.error(r7.pos(), "cant.type.annotate.scoping.1", r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00df, code lost:
        
            return r8;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private Type typeWithAnnotations(JCTree jCTree, Type type, List<Attribute.TypeCompound> list, List<Attribute.TypeCompound> list2, TypeAnnotationPosition typeAnnotationPosition) {
            if (list.isEmpty()) {
                return type;
            }
            if (type.hasTag(TypeTag.ARRAY)) {
                return rewriteArrayType((Type.ArrayType) type, list, typeAnnotationPosition);
            }
            if (type.hasTag(TypeTag.TYPEVAR)) {
                return type.annotatedType(list2);
            }
            if (type.getKind() == TypeKind.UNION) {
                JCTree.JCExpression jCExpression = ((JCTree.JCTypeUnion) jCTree).alternatives.get(0);
                jCExpression.type = typeWithAnnotations(jCExpression, jCExpression.type, list, list2, typeAnnotationPosition);
                return type;
            }
            Element asElement = type.asElement();
            JCTree jCTree2 = jCTree;
            Type type2 = type;
            while (asElement != null && asElement.getKind() != ElementKind.PACKAGE && type2 != null && type2.getKind() != TypeKind.NONE && type2.getKind() != TypeKind.ERROR) {
                Tree.Kind kind = jCTree2.getKind();
                Tree.Kind kind2 = Tree.Kind.MEMBER_SELECT;
                if (kind != kind2 && jCTree2.getKind() != Tree.Kind.PARAMETERIZED_TYPE && jCTree2.getKind() != Tree.Kind.ANNOTATED_TYPE) {
                    break;
                }
                if (jCTree2.getKind() == kind2) {
                    type2 = type2.getEnclosingType();
                    asElement = asElement.getEnclosingElement();
                    jCTree2 = ((JCTree.JCFieldAccess) jCTree2).getExpression();
                } else if (jCTree2.getKind() == Tree.Kind.PARAMETERIZED_TYPE) {
                    jCTree2 = ((JCTree.JCTypeApply) jCTree2).getType();
                } else {
                    jCTree2 = ((JCTree.JCAnnotatedType) jCTree2).getUnderlyingType();
                }
            }
            ListBuffer listBuffer = new ListBuffer();
            Type type3 = type2;
            while (asElement != null && asElement.getKind() != ElementKind.PACKAGE && type3 != null) {
                TypeKind kind3 = type3.getKind();
                TypeKind typeKind = TypeKind.NONE;
                if (kind3 == typeKind || type3.getKind() == TypeKind.ERROR) {
                    break;
                }
                type3 = type3.getEnclosingType();
                asElement = asElement.getEnclosingElement();
                if (type3 != null && type3.getKind() != typeKind) {
                    listBuffer = listBuffer.append(TypeAnnotationPosition.TypePathEntry.INNER_TYPE);
                }
            }
            if (listBuffer.nonEmpty()) {
                TypeAnnotationPosition typeAnnotationPosition2 = list.get(0).position;
                typeAnnotationPosition2.location = typeAnnotationPosition2.location.appendList(listBuffer.toList());
            }
            Type typeWithAnnotations = typeWithAnnotations(type, type2, list);
            jCTree.type = typeWithAnnotations;
            return typeWithAnnotations;
        }

        public JCTree pop() {
            List<JCTree> list = this.frames;
            JCTree jCTree = list.head;
            this.frames = list.tail;
            return jCTree;
        }

        public void push(JCTree jCTree) {
            this.frames = this.frames.prepend(jCTree);
        }

        @Override
        public void scan(JCTree jCTree) {
            push(jCTree);
            try {
                super.scan(jCTree);
            } finally {
                pop();
            }
        }

        public String toString() {
            return super.toString() + ": sigOnly: " + this.sigOnly;
        }

        @Override
        public void visitAnnotatedType(JCTree.JCAnnotatedType jCAnnotatedType) {
            push(jCAnnotatedType);
            findPosition(jCAnnotatedType, jCAnnotatedType, jCAnnotatedType.annotations);
            pop();
            super.visitAnnotatedType(jCAnnotatedType);
        }

        @Override
        public void visitBlock(JCTree.JCBlock jCBlock) {
            if (this.sigOnly) {
                return;
            }
            scan(jCBlock.stats);
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            if (this.isInClass) {
                return;
            }
            this.isInClass = true;
            if (this.sigOnly) {
                scan(jCClassDecl.mods);
                scan(jCClassDecl.typarams);
                scan(jCClassDecl.extending);
                scan(jCClassDecl.implementing);
            }
            scan(jCClassDecl.defs);
        }

        @Override
        public void visitLambda(JCTree.JCLambda jCLambda) {
            JCTree.JCLambda jCLambda2 = this.currentLambda;
            try {
                this.currentLambda = jCLambda;
                Iterator<JCTree.JCVariableDecl> it = jCLambda.params.iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    JCTree.JCVariableDecl next = it.next();
                    if (!next.mods.annotations.isEmpty()) {
                        TypeAnnotationPosition methodParameter = TypeAnnotationPosition.methodParameter(jCLambda, i10, next.vartype.pos);
                        push(next);
                        try {
                            JCTree jCTree = next.vartype;
                            Symbol symbol = next.sym;
                            separateAnnotationsKinds(jCTree, symbol.type, symbol, methodParameter);
                            pop();
                        } catch (Throwable th2) {
                            pop();
                            throw th2;
                        }
                    }
                    i10++;
                }
                scan(jCLambda.body);
                scan(jCLambda.params);
                this.currentLambda = jCLambda2;
            } catch (Throwable th3) {
                this.currentLambda = jCLambda2;
                throw th3;
            }
        }

        @Override
        public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
            if (jCMethodDecl.sym == null) {
                Assert.error("Visiting tree node before memberEnter");
            }
            if (this.sigOnly) {
                if (!jCMethodDecl.mods.annotations.isEmpty()) {
                    if (jCMethodDecl.sym.isConstructor()) {
                        separateAnnotationsKinds(jCMethodDecl, null, jCMethodDecl.sym, TypeAnnotationPosition.methodReturn(jCMethodDecl.pos));
                    } else {
                        separateAnnotationsKinds(jCMethodDecl.restype, jCMethodDecl.sym.type.getReturnType(), jCMethodDecl.sym, TypeAnnotationPosition.methodReturn(jCMethodDecl.restype.pos));
                    }
                }
                JCTree.JCVariableDecl jCVariableDecl = jCMethodDecl.recvparam;
                if (jCVariableDecl != null && jCVariableDecl.sym != null && !jCVariableDecl.mods.annotations.isEmpty()) {
                    TypeAnnotationPosition methodReceiver = TypeAnnotationPosition.methodReceiver(jCMethodDecl.recvparam.vartype.pos);
                    push(jCMethodDecl.recvparam);
                    try {
                        JCTree.JCVariableDecl jCVariableDecl2 = jCMethodDecl.recvparam;
                        JCTree jCTree = jCVariableDecl2.vartype;
                        Symbol symbol = jCVariableDecl2.sym;
                        separateAnnotationsKinds(jCTree, symbol.type, symbol, methodReceiver);
                    } finally {
                    }
                }
                Iterator<JCTree.JCVariableDecl> it = jCMethodDecl.params.iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    JCTree.JCVariableDecl next = it.next();
                    if (!next.mods.annotations.isEmpty()) {
                        TypeAnnotationPosition methodParameter = TypeAnnotationPosition.methodParameter(i10, next.vartype.pos);
                        push(next);
                        try {
                            JCTree jCTree2 = next.vartype;
                            Symbol symbol2 = next.sym;
                            separateAnnotationsKinds(jCTree2, symbol2.type, symbol2, methodParameter);
                        } finally {
                        }
                    }
                    i10++;
                }
            }
            if (!this.sigOnly) {
                scan(jCMethodDecl.defaultValue);
                scan(jCMethodDecl.body);
                return;
            }
            scan(jCMethodDecl.mods);
            scan(jCMethodDecl.restype);
            scan(jCMethodDecl.typarams);
            scan(jCMethodDecl.recvparam);
            scan(jCMethodDecl.params);
            scan(jCMethodDecl.thrown);
        }

        @Override
        public void visitNewArray(JCTree.JCNewArray jCNewArray) {
            findPosition(jCNewArray, jCNewArray, jCNewArray.annotations);
            int size = jCNewArray.dimAnnotations.size();
            ListBuffer listBuffer = new ListBuffer();
            for (int i10 = 0; i10 < size; i10++) {
                ListBuffer listBuffer2 = new ListBuffer();
                if (i10 != 0) {
                    listBuffer = listBuffer.append(TypeAnnotationPosition.TypePathEntry.ARRAY);
                    listBuffer2 = listBuffer2.appendList(listBuffer.toList());
                }
                setTypeAnnotationPos(jCNewArray.dimAnnotations.get(i10), TypeAnnotationPosition.newObj(listBuffer2.toList(), this.currentLambda, jCNewArray.pos));
            }
            JCTree.JCExpression jCExpression = jCNewArray.elemtype;
            ListBuffer append = listBuffer.append(TypeAnnotationPosition.TypePathEntry.ARRAY);
            while (jCExpression != null) {
                if (jCExpression.hasTag(JCTree.Tag.ANNOTATED_TYPE)) {
                    JCTree.JCAnnotatedType jCAnnotatedType = (JCTree.JCAnnotatedType) jCExpression;
                    setTypeAnnotationPos(jCAnnotatedType.annotations, TypeAnnotationPosition.newObj(locateNestedTypes(jCExpression.type, new ListBuffer<>()).toList().prependList(append.toList()), this.currentLambda, jCNewArray.pos));
                    jCExpression = jCAnnotatedType.underlyingType;
                } else if (jCExpression.hasTag(JCTree.Tag.TYPEARRAY)) {
                    append = append.append(TypeAnnotationPosition.TypePathEntry.ARRAY);
                    jCExpression = ((JCTree.JCArrayTypeTree) jCExpression).elemtype;
                } else if (!jCExpression.hasTag(JCTree.Tag.SELECT)) {
                    break;
                } else {
                    jCExpression = ((JCTree.JCFieldAccess) jCExpression).selected;
                }
            }
            scan(jCNewArray.elems);
        }

        @Override
        public void visitNewClass(JCTree.JCNewClass jCNewClass) {
            TypeAnnotationPosition classExtends;
            JCTree.JCClassDecl jCClassDecl = jCNewClass.def;
            if (jCClassDecl != null && !jCClassDecl.mods.annotations.isEmpty()) {
                JCTree.JCClassDecl jCClassDecl2 = jCNewClass.def;
                JCTree.JCExpression jCExpression = jCClassDecl2.extending;
                JCTree.JCExpression jCExpression2 = jCNewClass.clazz;
                if (jCExpression == jCExpression2) {
                    classExtends = TypeAnnotationPosition.classExtends(jCNewClass.pos);
                } else {
                    if (!jCClassDecl2.implementing.contains(jCExpression2)) {
                        throw new AssertionError((Object) ("Could not determine position of tree " + ((Object) jCNewClass)));
                    }
                    classExtends = TypeAnnotationPosition.classExtends(jCClassDecl2.implementing.indexOf(jCNewClass.clazz), jCNewClass.pos);
                }
                Symbol symbol = jCClassDecl2.sym;
                Type type = symbol.type;
                separateAnnotationsKinds(jCClassDecl2, jCNewClass.clazz.type, symbol, classExtends);
                copyNewClassAnnotationsToOwner(jCNewClass);
                jCClassDecl2.sym.type = type;
            }
            scan(jCNewClass.encl);
            scan(jCNewClass.typeargs);
            if (jCNewClass.def == null) {
                scan(jCNewClass.clazz);
            }
            scan(jCNewClass.args);
        }

        @Override
        public void visitTypeParameter(JCTree.JCTypeParameter jCTypeParameter) {
            findPosition(jCTypeParameter, peek2(), jCTypeParameter.annotations);
            super.visitTypeParameter(jCTypeParameter);
        }

        @Override
        public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
            if (!jCVariableDecl.mods.annotations.isEmpty()) {
                Symbol.VarSymbol varSymbol = jCVariableDecl.sym;
                if (varSymbol == null) {
                    Assert.error("Visiting tree node before memberEnter");
                } else if (varSymbol.getKind() != ElementKind.PARAMETER) {
                    if (jCVariableDecl.sym.getKind() == ElementKind.FIELD) {
                        if (this.sigOnly) {
                            TypeAnnotationPosition field = TypeAnnotationPosition.field(jCVariableDecl.pos);
                            JCTree.JCExpression jCExpression = jCVariableDecl.vartype;
                            Symbol.VarSymbol varSymbol2 = jCVariableDecl.sym;
                            separateAnnotationsKinds(jCExpression, varSymbol2.type, varSymbol2, field);
                        }
                    } else if (jCVariableDecl.sym.getKind() == ElementKind.LOCAL_VARIABLE) {
                        TypeAnnotationPosition localVariable = TypeAnnotationPosition.localVariable(this.currentLambda, jCVariableDecl.pos);
                        JCTree.JCExpression jCExpression2 = jCVariableDecl.vartype;
                        Symbol.VarSymbol varSymbol3 = jCVariableDecl.sym;
                        separateAnnotationsKinds(jCExpression2, varSymbol3.type, varSymbol3, localVariable);
                    } else if (jCVariableDecl.sym.getKind() == ElementKind.EXCEPTION_PARAMETER) {
                        TypeAnnotationPosition exceptionParameter = TypeAnnotationPosition.exceptionParameter(this.currentLambda, jCVariableDecl.pos);
                        JCTree.JCExpression jCExpression3 = jCVariableDecl.vartype;
                        Symbol.VarSymbol varSymbol4 = jCVariableDecl.sym;
                        separateAnnotationsKinds(jCExpression3, varSymbol4.type, varSymbol4, exceptionParameter);
                    } else if (jCVariableDecl.sym.getKind() == ElementKind.RESOURCE_VARIABLE) {
                        TypeAnnotationPosition resourceVariable = TypeAnnotationPosition.resourceVariable(this.currentLambda, jCVariableDecl.pos);
                        JCTree.JCExpression jCExpression4 = jCVariableDecl.vartype;
                        Symbol.VarSymbol varSymbol5 = jCVariableDecl.sym;
                        separateAnnotationsKinds(jCExpression4, varSymbol5.type, varSymbol5, resourceVariable);
                    } else if (jCVariableDecl.sym.getKind() != ElementKind.ENUM_CONSTANT) {
                        Assert.error("Unhandled variable kind");
                    }
                }
            }
            scan(jCVariableDecl.mods);
            scan(jCVariableDecl.vartype);
            if (this.sigOnly) {
                return;
            }
            scan(jCVariableDecl.init);
        }

        private Type typeWithAnnotations(Type type, final Type type2, List<Attribute.TypeCompound> list) {
            return (Type) type.accept((Type.Visitor<R, Type.Visitor<Type, List<Attribute.TypeCompound>>>) new Type.Visitor<Type, List<Attribute.TypeCompound>>() {
                @Override
                public Type visitForAll(Type.ForAll forAll, List<Attribute.TypeCompound> list2) {
                    return forAll;
                }

                @Override
                public Type visitMethodType(Type.MethodType methodType, List<Attribute.TypeCompound> list2) {
                    return methodType;
                }

                @Override
                public Type visitPackageType(Type.PackageType packageType, List<Attribute.TypeCompound> list2) {
                    return packageType;
                }

                @Override
                public Type visitUndetVar(Type.UndetVar undetVar, List<Attribute.TypeCompound> list2) {
                    return undetVar;
                }

                @Override
                public Type visitArrayType(Type.ArrayType arrayType, List<Attribute.TypeCompound> list2) {
                    return new Type.ArrayType((Type) arrayType.elemtype.accept((Type.Visitor<R, AnonymousClass1>) this, (AnonymousClass1) list2), arrayType.tsym, arrayType.getMetadata());
                }

                @Override
                public Type visitCapturedType(Type.CapturedType capturedType, List<Attribute.TypeCompound> list2) {
                    return capturedType.annotatedType(list2);
                }

                @Override
                public Type visitClassType(Type.ClassType classType, List<Attribute.TypeCompound> list2) {
                    if (classType != type2 && classType.getEnclosingType() != Type.noType) {
                        Type.ClassType classType2 = new Type.ClassType((Type) classType.getEnclosingType().accept((Type.Visitor<R, AnonymousClass1>) this, (AnonymousClass1) list2), classType.typarams_field, classType.tsym, classType.getMetadata());
                        classType2.all_interfaces_field = classType.all_interfaces_field;
                        classType2.allparams_field = classType.allparams_field;
                        classType2.interfaces_field = classType.interfaces_field;
                        classType2.rank_field = classType.rank_field;
                        classType2.supertype_field = classType.supertype_field;
                        return classType2;
                    }
                    return classType.annotatedType(list2);
                }

                @Override
                public Type visitErrorType(Type.ErrorType errorType, List<Attribute.TypeCompound> list2) {
                    return errorType.annotatedType(list2);
                }

                @Override
                public Type visitModuleType(Type.ModuleType moduleType, List<Attribute.TypeCompound> list2) {
                    return moduleType.annotatedType(list2);
                }

                @Override
                public Type visitType(Type type3, List<Attribute.TypeCompound> list2) {
                    return type3.annotatedType(list2);
                }

                @Override
                public Type visitTypeVar(Type.TypeVar typeVar, List<Attribute.TypeCompound> list2) {
                    return typeVar.annotatedType(list2);
                }

                @Override
                public Type visitWildcardType(Type.WildcardType wildcardType, List<Attribute.TypeCompound> list2) {
                    return wildcardType.annotatedType(list2);
                }
            }, (Type.Visitor<Type, List<Attribute.TypeCompound>>) list);
        }
    }
}
