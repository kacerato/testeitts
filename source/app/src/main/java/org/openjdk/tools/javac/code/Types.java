package org.openjdk.tools.javac.code;

import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collector;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeMetadata;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.AttrContext;
import org.openjdk.tools.javac.comp.Check;
import org.openjdk.tools.javac.comp.Enter;
import org.openjdk.tools.javac.comp.Env;
import org.openjdk.tools.javac.jvm.ClassFile;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Filter;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.JavacMessages;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Warner;

public class Types {
    final boolean allowDefaultMethods;
    final boolean allowObjectToPrimitiveCast;
    final Name capturedName;
    final Check chk;
    JCDiagnostic.Factory diags;
    final Enter enter;
    private final FunctionDescriptorLookupError functionDescriptorLookupError;
    final boolean mapCapturesToBounds;
    final JavacMessages messages;
    final Names names;
    public final Warner noWarnings;
    final Symtab syms;
    protected static final Context.Key<Types> typesKey = new Context.Key<>();
    private static final TypeMapping<Void> newInstanceFun = new TypeMapping<Void>() {
        @Override
        public Type.TypeVar visitTypeVar(Type.TypeVar typeVar, Void r52) {
            return new Type.TypeVar(typeVar.tsym, typeVar.getUpperBound(), typeVar.getLowerBound(), typeVar.getMetadata());
        }
    };
    private static final HashCodeVisitor hashCodeVisitor = new HashCodeVisitor();
    private static final HashCodeVisitor hashCodeStrictVisitor = new HashCodeVisitor() {
        @Override
        public Integer visitTypeVar(Type.TypeVar typeVar, Void r22) {
            return Integer.valueOf(System.identityHashCode(typeVar));
        }
    };
    List<Warner> warnStack = List.nil();
    private final UnaryVisitor<Boolean> isUnbounded = new UnaryVisitor<Boolean>() {
        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Boolean visitClassType(Type.ClassType classType, Void r72) {
            List allparams = classType.tsym.type.allparams();
            List allparams2 = classType.allparams();
            while (allparams.nonEmpty()) {
                Symtab symtab = Types.this.syms;
                if (!Types.this.containsType((Type) allparams2.head, new Type.WildcardType(symtab.objectType, BoundKind.UNBOUND, symtab.boundClass, (Type.TypeVar) allparams.head))) {
                    return Boolean.FALSE;
                }
                allparams = allparams.tail;
                allparams2 = allparams2.tail;
            }
            return Boolean.TRUE;
        }

        @Override
        public Boolean visitType(Type type, Void r22) {
            return Boolean.TRUE;
        }
    };
    private final SimpleVisitor<Type, Symbol> asSub = new SimpleVisitor<Type, Symbol>() {
        @Override
        public Type visitErrorType(Type.ErrorType errorType, Symbol symbol) {
            return errorType;
        }

        @Override
        public Type visitType(Type type, Symbol symbol) {
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Type visitClassType(Type.ClassType classType, Symbol symbol) {
            Symbol.TypeSymbol typeSymbol = classType.tsym;
            if (typeSymbol == symbol) {
                return classType;
            }
            Type asSuper = Types.this.asSuper(symbol.type, typeSymbol);
            if (asSuper == null) {
                return null;
            }
            ListBuffer<Type> listBuffer = new ListBuffer<>();
            ListBuffer<Type> listBuffer2 = new ListBuffer<>();
            try {
                Types.this.adapt(asSuper, classType, listBuffer, listBuffer2);
                Type subst = Types.this.subst(symbol.type, listBuffer.toList(), listBuffer2.toList());
                if (!Types.this.isSubtype(subst, classType)) {
                    return null;
                }
                ListBuffer listBuffer3 = new ListBuffer();
                for (List allparams = symbol.type.allparams(); allparams.nonEmpty(); allparams = allparams.tail) {
                    if (subst.contains((Type) allparams.head) && !classType.contains((Type) allparams.head)) {
                        listBuffer3.append(allparams.head);
                    }
                }
                if (!listBuffer3.nonEmpty()) {
                    return subst;
                }
                if (classType.isRaw()) {
                    return Types.this.erasure(subst);
                }
                List<Type> list = listBuffer3.toList();
                ListBuffer listBuffer4 = new ListBuffer();
                for (List list2 = list; list2.nonEmpty(); list2 = list2.tail) {
                    Symtab symtab = Types.this.syms;
                    listBuffer4.append(new Type.WildcardType(symtab.objectType, BoundKind.UNBOUND, symtab.boundClass, (Type.TypeVar) list2.head));
                }
                return Types.this.subst(subst, list, listBuffer4.toList());
            } catch (AdaptFailure unused) {
                return null;
            }
        }
    };
    private DescriptorCache descCache = new DescriptorCache();
    private Filter<Symbol> bridgeFilter = new Filter<Symbol>() {
        @Override
        public boolean accepts(Symbol symbol) {
            if (symbol.kind == Kinds.Kind.MTH) {
                Name name = symbol.name;
                Names names = Types.this.names;
                if (name != names.init && name != names.clinit && (symbol.flags() & 4096) == 0) {
                    return true;
                }
            }
            return false;
        }
    };
    private TypeRelation isSubtype = new TypeRelation() {
        private Set<TypePair> cache = new HashSet();

        private boolean containsTypeRecursive(Type type, Type type2) {
            TypePair typePair = new TypePair(Types.this, type, type2);
            if (!this.cache.add(typePair)) {
                return Types.this.containsType(type.getTypeArguments(), rewriteSupers(type2).getTypeArguments());
            }
            try {
                return Types.this.containsType(type.getTypeArguments(), type2.getTypeArguments());
            } finally {
                this.cache.remove(typePair);
            }
        }

        private Type rewriteSupers(Type type) {
            Type.WildcardType wildcardType;
            if (!type.isParameterized()) {
                return type;
            }
            ListBuffer listBuffer = new ListBuffer();
            ListBuffer listBuffer2 = new ListBuffer();
            Types.this.adaptSelf(type, listBuffer, listBuffer2);
            if (listBuffer.isEmpty()) {
                return type;
            }
            ListBuffer listBuffer3 = new ListBuffer();
            Iterator it = listBuffer2.toList().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Type type2 = (Type) it.next();
                Type rewriteSupers = rewriteSupers(type2);
                if (rewriteSupers.isSuperBound() && !rewriteSupers.isExtendsBound()) {
                    Symtab symtab = Types.this.syms;
                    wildcardType = new Type.WildcardType(symtab.objectType, BoundKind.UNBOUND, symtab.boundClass, rewriteSupers.getMetadata());
                } else if (rewriteSupers != type2) {
                    wildcardType = new Type.WildcardType(Types.this.wildUpperBound(rewriteSupers), BoundKind.EXTENDS, Types.this.syms.boundClass, rewriteSupers.getMetadata());
                } else {
                    listBuffer3.append(rewriteSupers);
                }
                rewriteSupers = wildcardType;
                z10 = true;
                listBuffer3.append(rewriteSupers);
            }
            return z10 ? Types.this.subst(type.tsym.type, listBuffer.toList(), listBuffer3.toList()) : type;
        }

        @Override
        public Boolean visitArrayType(Type.ArrayType arrayType, Type type) {
            if (type.hasTag(TypeTag.ARRAY)) {
                if (arrayType.elemtype.isPrimitive()) {
                    Types types = Types.this;
                    return Boolean.valueOf(types.isSameType(arrayType.elemtype, types.elemtype(type)));
                }
                Types types2 = Types.this;
                return Boolean.valueOf(types2.isSubtypeNoCapture(arrayType.elemtype, types2.elemtype(type)));
            }
            if (type.hasTag(TypeTag.CLASS)) {
                Name qualifiedName = type.tsym.getQualifiedName();
                Names names = Types.this.names;
                return Boolean.valueOf(qualifiedName == names.java_lang_Object || qualifiedName == names.java_lang_Cloneable || qualifiedName == names.java_io_Serializable);
            }
            return Boolean.FALSE;
        }

        @Override
        public Boolean visitClassType(Type.ClassType classType, Type type) {
            Type asSuper = Types.this.asSuper(classType, type.tsym);
            if (asSuper == null) {
                return Boolean.FALSE;
            }
            if (asSuper.hasTag(TypeTag.CLASS)) {
                return Boolean.valueOf(asSuper.tsym == type.tsym && (!type.isParameterized() || containsTypeRecursive(type, asSuper)) && Types.this.isSubtypeNoCapture(asSuper.getEnclosingType(), type.getEnclosingType()));
            }
            return Boolean.valueOf(Types.this.isSubtypeNoCapture(asSuper, type));
        }

        @Override
        public Boolean visitErrorType(Type.ErrorType errorType, Type type) {
            return Boolean.TRUE;
        }

        @Override
        public Boolean visitType(Type type, Type type2) {
            switch (AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()]) {
                case 3:
                    return Boolean.valueOf(!type2.hasTag(TypeTag.CHAR) && type.getTag().isSubRangeOf(type2.getTag()));
                case 4:
                    return Boolean.valueOf(!type2.hasTag(TypeTag.SHORT) && type.getTag().isSubRangeOf(type2.getTag()));
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    return Boolean.valueOf(type.getTag().isSubRangeOf(type2.getTag()));
                case 10:
                case 11:
                    return Boolean.valueOf(type.hasTag(type2.getTag()));
                case 12:
                    return Boolean.valueOf(Types.this.isSubtypeNoCapture(type.getUpperBound(), type2));
                case 13:
                    if (!type2.hasTag(TypeTag.BOT) && !type2.hasTag(TypeTag.CLASS) && !type2.hasTag(TypeTag.ARRAY) && !type2.hasTag(TypeTag.TYPEVAR)) {
                        r1 = false;
                    }
                    return Boolean.valueOf(r1);
                case 14:
                case 15:
                    return Boolean.FALSE;
                default:
                    throw new AssertionError((Object) ("isSubtype " + ((Object) type.getTag())));
            }
        }

        @Override
        public Boolean visitUndetVar(Type.UndetVar undetVar, Type type) {
            if (undetVar != type && undetVar.qtype != type && !type.hasTag(TypeTag.ERROR) && !type.hasTag(TypeTag.UNKNOWN)) {
                if (type.hasTag(TypeTag.BOT)) {
                    return Boolean.FALSE;
                }
                undetVar.addBound(Type.UndetVar.InferenceBound.UPPER, type, Types.this);
                return Boolean.TRUE;
            }
            return Boolean.TRUE;
        }
    };
    TypeRelation isSameTypeLoose = new LooseSameTypeVisitor();
    TypeRelation isSameTypeStrict = new SameTypeVisitor() {
        @Override
        public boolean containsTypes(List<Type> list, List<Type> list2) {
            return Types.this.isSameTypes(list, list2, true);
        }

        @Override
        public boolean sameTypeVars(Type.TypeVar typeVar, Type.TypeVar typeVar2) {
            return typeVar == typeVar2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
        
            if (r2.this$0.isSameType(r3.type, r4.type, true) != false) goto L12;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Boolean visitWildcardType(Type.WildcardType wildcardType, Type type) {
            if (!type.hasTag(TypeTag.WILDCARD)) {
                return Boolean.FALSE;
            }
            Type.WildcardType wildcardType2 = (Type.WildcardType) type;
            boolean z10 = wildcardType.kind == wildcardType2.kind;
            return Boolean.valueOf(z10);
        }
    };
    private TypeRelation containsType = new TypeRelation() {
        @Override
        public Boolean visitErrorType(Type.ErrorType errorType, Type type) {
            return Boolean.TRUE;
        }

        @Override
        public Boolean visitType(Type type, Type type2) {
            if (type2.isPartial()) {
                return Boolean.valueOf(Types.this.containedBy(type2, type));
            }
            return Boolean.valueOf(Types.this.isSameType(type, type2));
        }

        @Override
        public Boolean visitUndetVar(Type.UndetVar undetVar, Type type) {
            if (!type.hasTag(TypeTag.WILDCARD)) {
                return Boolean.valueOf(Types.this.isSameType(undetVar, type));
            }
            return Boolean.FALSE;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
        
            if (r0.isSubtypeNoCapture(r0.wildLowerBound(r4), r3.this$0.wildLowerBound(r5)) != false) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0052, code lost:
        
            r4 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x004f, code lost:
        
            if (r0.isSubtypeNoCapture(r0.wildUpperBound(r5), r3.this$0.wildUpperBound(r4)) != false) goto L20;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Boolean visitWildcardType(Type.WildcardType wildcardType, Type type) {
            if (type.isPartial()) {
                return Boolean.valueOf(Types.this.containedBy(type, wildcardType));
            }
            if (!Types.this.isSameWildcard(wildcardType, type) && !Types.this.isCaptureOf(type, wildcardType)) {
                if (!wildcardType.isExtendsBound()) {
                    Types types = Types.this;
                }
                if (!wildcardType.isSuperBound()) {
                    Types types2 = Types.this;
                }
            }
            boolean z10 = true;
            return Boolean.valueOf(z10);
        }
    };
    private TypeRelation isCastable = new TypeRelation() {
        public boolean visitCompoundType(Type.ClassType classType, Type type, boolean z10) {
            Types types = Types.this;
            Warner warner = types.noWarnings;
            Iterator<Type> it = types.directSupertypes(classType).iterator();
            while (it.hasNext()) {
                Type next = it.next();
                warner.clear();
                Types types2 = Types.this;
                if (z10) {
                    if (!types2.isCastable(type, next, warner)) {
                        return false;
                    }
                } else if (!types2.isCastable(next, type, warner)) {
                    return false;
                }
            }
            Lint.LintCategory lintCategory = Lint.LintCategory.UNCHECKED;
            if (!warner.hasLint(lintCategory)) {
                return true;
            }
            Types.this.warnStack.head.warn(lintCategory);
            return true;
        }

        @Override
        public Boolean visitArrayType(Type.ArrayType arrayType, Type type) {
            int i10 = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()];
            if (i10 == 1) {
                if (!Types.this.elemtype(arrayType).isPrimitive() && !Types.this.elemtype(type).isPrimitive()) {
                    return visit(Types.this.elemtype(arrayType), Types.this.elemtype(type));
                }
                return Boolean.valueOf(Types.this.elemtype(arrayType).hasTag(Types.this.elemtype(type).getTag()));
            }
            if (i10 == 2) {
                return Boolean.valueOf(Types.this.isSubtype(arrayType, type));
            }
            if (i10 != 12) {
                if (i10 != 13 && i10 != 16) {
                    return Boolean.FALSE;
                }
                return Boolean.TRUE;
            }
            Types types = Types.this;
            if (types.isCastable(type, arrayType, types.noWarnings)) {
                Types.this.warnStack.head.warn(Lint.LintCategory.UNCHECKED);
                return Boolean.TRUE;
            }
            return Boolean.FALSE;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Boolean visitClassType(Type.ClassType classType, Type type) {
            boolean visitCompoundType;
            boolean sideCastFinal;
            boolean sideCastFinal2;
            if (!type.hasTag(TypeTag.ERROR) && !type.hasTag(TypeTag.BOT)) {
                if (type.hasTag(TypeTag.TYPEVAR)) {
                    if (Types.this.isCastable(classType, type.getUpperBound(), Types.this.noWarnings)) {
                        Types.this.warnStack.head.warn(Lint.LintCategory.UNCHECKED);
                        return Boolean.TRUE;
                    }
                    return Boolean.FALSE;
                }
                if (!classType.isCompound() && !type.isCompound()) {
                    TypeTag typeTag = TypeTag.CLASS;
                    if (type.hasTag(typeTag) || type.hasTag(TypeTag.ARRAY)) {
                        Types types = Types.this;
                        boolean isSubtype = types.isSubtype(types.erasure(classType), Types.this.erasure(type));
                        if (!isSubtype) {
                            Types types2 = Types.this;
                            if (!types2.isSubtype(types2.erasure(type), Types.this.erasure(classType))) {
                                if (type.hasTag(typeTag)) {
                                    if ((type.tsym.flags() & 512) != 0) {
                                        if ((classType.tsym.flags() & 16) == 0) {
                                            Types types3 = Types.this;
                                            sideCastFinal2 = types3.sideCast(classType, type, types3.warnStack.head);
                                        } else {
                                            Types types4 = Types.this;
                                            sideCastFinal2 = types4.sideCastFinal(classType, type, types4.warnStack.head);
                                        }
                                        return Boolean.valueOf(sideCastFinal2);
                                    }
                                    if ((classType.tsym.flags() & 512) != 0) {
                                        if ((type.tsym.flags() & 16) == 0) {
                                            Types types5 = Types.this;
                                            sideCastFinal = types5.sideCast(classType, type, types5.warnStack.head);
                                        } else {
                                            Types types6 = Types.this;
                                            sideCastFinal = types6.sideCastFinal(classType, type, types6.warnStack.head);
                                        }
                                        return Boolean.valueOf(sideCastFinal);
                                    }
                                    return Boolean.FALSE;
                                }
                            }
                        }
                        if (!isSubtype && type.hasTag(TypeTag.ARRAY)) {
                            if (!Types.this.isReifiable(type)) {
                                Types.this.warnStack.head.warn(Lint.LintCategory.UNCHECKED);
                            }
                            return Boolean.TRUE;
                        }
                        if (type.isRaw()) {
                            return Boolean.TRUE;
                        }
                        if (classType.isRaw()) {
                            if (!Types.this.isUnbounded(type)) {
                                Types.this.warnStack.head.warn(Lint.LintCategory.UNCHECKED);
                            }
                            return Boolean.TRUE;
                        }
                        Type.ClassType classType2 = isSubtype ? classType : type;
                        if (isSubtype) {
                            classType = type;
                        }
                        Type rewriteQuantifiers = Types.this.rewriteQuantifiers(classType2, true, false);
                        Type rewriteQuantifiers2 = Types.this.rewriteQuantifiers(classType2, false, false);
                        Type rewriteQuantifiers3 = Types.this.rewriteQuantifiers(classType, true, false);
                        Type asSub = Types.this.asSub(Types.this.rewriteQuantifiers(classType, false, false), rewriteQuantifiers2.tsym);
                        Type asSub2 = asSub == null ? null : Types.this.asSub(rewriteQuantifiers3, rewriteQuantifiers.tsym);
                        if (asSub2 == null) {
                            rewriteQuantifiers = Types.this.rewriteQuantifiers(classType2, true, true);
                            rewriteQuantifiers2 = Types.this.rewriteQuantifiers(classType2, false, true);
                            Type rewriteQuantifiers4 = Types.this.rewriteQuantifiers(classType, true, true);
                            asSub = Types.this.asSub(Types.this.rewriteQuantifiers(classType, false, true), rewriteQuantifiers2.tsym);
                            asSub2 = asSub != null ? Types.this.asSub(rewriteQuantifiers4, rewriteQuantifiers.tsym) : null;
                        }
                        if (asSub2 != null) {
                            Symbol.TypeSymbol typeSymbol = classType2.tsym;
                            if (typeSymbol != asSub2.tsym || typeSymbol != asSub.tsym) {
                                Assert.error(((Object) classType2.tsym) + " != " + ((Object) asSub2.tsym) + " != " + ((Object) asSub.tsym));
                            }
                            if (!Types.this.disjointTypes(rewriteQuantifiers.allparams(), asSub2.allparams()) && !Types.this.disjointTypes(rewriteQuantifiers.allparams(), asSub.allparams()) && !Types.this.disjointTypes(rewriteQuantifiers2.allparams(), asSub2.allparams()) && !Types.this.disjointTypes(rewriteQuantifiers2.allparams(), asSub.allparams())) {
                                Types types7 = Types.this;
                                if (!isSubtype ? types7.giveWarning(classType, classType2) : types7.giveWarning(classType2, classType)) {
                                    Types.this.warnStack.head.warn(Lint.LintCategory.UNCHECKED);
                                }
                                return Boolean.TRUE;
                            }
                        }
                        if (Types.this.isReifiable(type)) {
                            return Boolean.valueOf(Types.this.isSubtypeUnchecked(classType2, classType));
                        }
                        Types types8 = Types.this;
                        return Boolean.valueOf(types8.isSubtypeUnchecked(classType2, classType, types8.warnStack.head));
                    }
                    return Boolean.FALSE;
                }
                if (!classType.isCompound()) {
                    visitCompoundType = visitCompoundType((Type.ClassType) type, classType, true);
                } else {
                    visitCompoundType = visitCompoundType(classType, type, false);
                }
                return Boolean.valueOf(visitCompoundType);
            }
            return Boolean.TRUE;
        }

        @Override
        public Boolean visitErrorType(Type.ErrorType errorType, Type type) {
            return Boolean.TRUE;
        }

        @Override
        public Boolean visitType(Type type, Type type2) {
            if (type2.hasTag(TypeTag.ERROR)) {
                return Boolean.TRUE;
            }
            switch (AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()]) {
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    return Boolean.valueOf(type2.isNumeric());
                case 10:
                    return Boolean.valueOf(type2.hasTag(TypeTag.BOOLEAN));
                case 11:
                    return Boolean.FALSE;
                case 12:
                default:
                    throw new AssertionError();
                case 13:
                    return Boolean.valueOf(Types.this.isSubtype(type, type2));
            }
        }

        @Override
        public Boolean visitTypeVar(Type.TypeVar typeVar, Type type) {
            int i10 = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()];
            if (i10 != 12) {
                if (i10 != 13 && i10 != 16) {
                    Types types = Types.this;
                    return Boolean.valueOf(types.isCastable(typeVar.bound, type, types.warnStack.head));
                }
                return Boolean.TRUE;
            }
            if (Types.this.isSubtype(typeVar, type)) {
                return Boolean.TRUE;
            }
            Types types2 = Types.this;
            if (types2.isCastable(typeVar.bound, type, types2.noWarnings)) {
                Types.this.warnStack.head.warn(Lint.LintCategory.UNCHECKED);
                return Boolean.TRUE;
            }
            return Boolean.FALSE;
        }

        @Override
        public Boolean visitWildcardType(Type.WildcardType wildcardType, Type type) {
            Types types = Types.this;
            return Boolean.valueOf(types.isCastable(types.wildUpperBound(wildcardType), type, Types.this.warnStack.head));
        }
    };
    private TypeRelation disjointType = new TypeRelation() {
        private Set<TypePair> cache = new HashSet();

        private boolean isCastableRecursive(Type type, Type type2) {
            TypePair typePair = new TypePair(Types.this, type, type2);
            if (!this.cache.add(typePair)) {
                return true;
            }
            try {
                return Types.this.isCastable(type, type2);
            } finally {
                this.cache.remove(typePair);
            }
        }

        private boolean notSoftSubtypeRecursive(Type type, Type type2) {
            TypePair typePair = new TypePair(Types.this, type, type2);
            if (!this.cache.add(typePair)) {
                return false;
            }
            try {
                return Types.this.notSoftSubtype(type, type2);
            } finally {
                this.cache.remove(typePair);
            }
        }

        @Override
        public Boolean visitType(Type type, Type type2) {
            if (type2.hasTag(TypeTag.WILDCARD)) {
                return visit(type2, type);
            }
            return Boolean.valueOf(notSoftSubtypeRecursive(type, type2) || notSoftSubtypeRecursive(type2, type));
        }

        @Override
        public Boolean visitWildcardType(Type.WildcardType wildcardType, Type type) {
            if (wildcardType.isUnbound()) {
                return Boolean.FALSE;
            }
            if (!type.hasTag(TypeTag.WILDCARD)) {
                if (wildcardType.isExtendsBound()) {
                    return Boolean.valueOf(notSoftSubtypeRecursive(type, wildcardType.type));
                }
                return Boolean.valueOf(notSoftSubtypeRecursive(wildcardType.type, type));
            }
            if (type.isUnbound()) {
                return Boolean.FALSE;
            }
            if (wildcardType.isExtendsBound()) {
                if (type.isExtendsBound()) {
                    return Boolean.valueOf(!isCastableRecursive(wildcardType.type, Types.this.wildUpperBound(type)));
                }
                if (type.isSuperBound()) {
                    return Boolean.valueOf(notSoftSubtypeRecursive(Types.this.wildLowerBound(type), wildcardType.type));
                }
            } else if (wildcardType.isSuperBound() && type.isExtendsBound()) {
                return Boolean.valueOf(notSoftSubtypeRecursive(wildcardType.type, Types.this.wildUpperBound(type)));
            }
            return Boolean.FALSE;
        }
    };
    private final TypeMapping<Void> cvarLowerBoundMapping = new TypeMapping<Void>() {
        @Override
        public Type visitCapturedType(Type.CapturedType capturedType, Void r22) {
            return Types.this.cvarLowerBound(capturedType);
        }
    };
    private UnaryVisitor<Boolean> isReifiable = new UnaryVisitor<Boolean>() {
        @Override
        public Boolean visitArrayType(Type.ArrayType arrayType, Void r22) {
            return visit(arrayType.elemtype);
        }

        @Override
        public Boolean visitClassType(Type.ClassType classType, Void r22) {
            if (classType.isCompound()) {
                return Boolean.FALSE;
            }
            if (!classType.isParameterized()) {
                return Boolean.TRUE;
            }
            Iterator<Type> it = classType.allparams().iterator();
            while (it.hasNext()) {
                if (!it.next().isUnbound()) {
                    return Boolean.FALSE;
                }
            }
            return Boolean.TRUE;
        }

        @Override
        public Boolean visitType(Type type, Void r22) {
            return Boolean.TRUE;
        }

        @Override
        public Boolean visitTypeVar(Type.TypeVar typeVar, Void r22) {
            return Boolean.FALSE;
        }
    };
    private TypeMapping<Void> elemTypeFun = new TypeMapping<Void>() {
        @Override
        public Type visitArrayType(Type.ArrayType arrayType, Void r22) {
            return arrayType.elemtype;
        }

        @Override
        public Type visitTypeVar(Type.TypeVar typeVar, Void r32) {
            return visit(Types.this.skipTypeVars(typeVar, false));
        }
    };
    private SimpleVisitor<Type, Symbol> asSuper = new SimpleVisitor<Type, Symbol>() {
        @Override
        public Type visitErrorType(Type.ErrorType errorType, Symbol symbol) {
            return errorType;
        }

        @Override
        public Type visitType(Type type, Symbol symbol) {
            return null;
        }

        @Override
        public Type visitArrayType(Type.ArrayType arrayType, Symbol symbol) {
            if (Types.this.isSubtype(arrayType, symbol.type)) {
                return symbol.type;
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Type visitClassType(Type.ClassType classType, Symbol symbol) {
            Type asSuper;
            Type asSuper2;
            if (classType.tsym == symbol) {
                return classType;
            }
            Type supertype = Types.this.supertype(classType);
            if ((supertype.hasTag(TypeTag.CLASS) || supertype.hasTag(TypeTag.TYPEVAR)) && (asSuper = Types.this.asSuper(supertype, symbol)) != null) {
                return asSuper;
            }
            if ((symbol.flags() & 512) == 0) {
                return null;
            }
            for (List interfaces = Types.this.interfaces(classType); interfaces.nonEmpty(); interfaces = interfaces.tail) {
                if (!((Type) interfaces.head).hasTag(TypeTag.ERROR) && (asSuper2 = Types.this.asSuper((Type) interfaces.head, symbol)) != null) {
                    return asSuper2;
                }
            }
            return null;
        }

        @Override
        public Type visitTypeVar(Type.TypeVar typeVar, Symbol symbol) {
            return typeVar.tsym == symbol ? typeVar : Types.this.asSuper(typeVar.bound, symbol);
        }
    };
    private SimpleVisitor<Type, Symbol> memberType = new SimpleVisitor<Type, Symbol>() {
        @Override
        public Type visitErrorType(Type.ErrorType errorType, Symbol symbol) {
            return errorType;
        }

        @Override
        public Type visitClassType(Type.ClassType classType, Symbol symbol) {
            Symbol symbol2 = symbol.owner;
            if ((symbol.flags() & 8) == 0 && symbol2.type.isParameterized()) {
                Type asOuterSuper = Types.this.asOuterSuper(classType, symbol2);
                if (classType.isCompound()) {
                    asOuterSuper = Types.this.capture(asOuterSuper);
                }
                if (asOuterSuper != null) {
                    List<Type> allparams = symbol2.type.allparams();
                    List<Type> allparams2 = asOuterSuper.allparams();
                    if (allparams.nonEmpty()) {
                        if (allparams2.isEmpty()) {
                            return Types.this.erasure(symbol.type);
                        }
                        return Types.this.subst(symbol.type, allparams, allparams2);
                    }
                }
            }
            return symbol.type;
        }

        @Override
        public Type visitType(Type type, Symbol symbol) {
            return symbol.type;
        }

        @Override
        public Type visitTypeVar(Type.TypeVar typeVar, Symbol symbol) {
            return Types.this.memberType(typeVar.bound, symbol);
        }

        @Override
        public Type visitWildcardType(Type.WildcardType wildcardType, Symbol symbol) {
            Types types = Types.this;
            return types.memberType(types.wildUpperBound(wildcardType), symbol);
        }
    };
    private TypeMapping<Boolean> erasure = new Type.StructuralTypeMapping<Boolean>() {
        private Type combineMetadata(Type type, Type type2) {
            if (type2.getMetadata() == TypeMetadata.EMPTY) {
                return type;
            }
            switch (AnonymousClass25.$SwitchMap$javax$lang$model$type$TypeKind[type.getKind().ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    return type;
                default:
                    return type.cloneWithMetadata(type.getMetadata().without(TypeMetadata.Entry.Kind.ANNOTATIONS));
            }
        }

        @Override
        public Type visitTypeVar(Type.TypeVar typeVar, Boolean bool) {
            return combineMetadata(Types.this.erasure(typeVar.bound, bool.booleanValue()), typeVar);
        }

        @Override
        public Type visitClassType(Type.ClassType classType, Boolean bool) {
            Type erasure = classType.tsym.erasure(Types.this);
            if (bool.booleanValue()) {
                return new Type.ErasedClassType(erasure.getEnclosingType(), erasure.tsym, classType.getMetadata().without(TypeMetadata.Entry.Kind.ANNOTATIONS));
            }
            return combineMetadata(erasure, classType);
        }

        @Override
        public Type visitType(Type type, Boolean bool) {
            return type.isPrimitive() ? type : combineMetadata(type, type);
        }

        @Override
        public Type visitWildcardType(Type.WildcardType wildcardType, Boolean bool) {
            Types types = Types.this;
            return combineMetadata(types.erasure(types.wildUpperBound(wildcardType), bool.booleanValue()), wildcardType);
        }
    };
    private UnaryVisitor<Type> supertype = new UnaryVisitor<Type>() {
        @Override
        public Type visitArrayType(Type.ArrayType arrayType, Void r42) {
            if (!arrayType.elemtype.isPrimitive()) {
                Types types = Types.this;
                if (!types.isSameType(arrayType.elemtype, types.syms.objectType)) {
                    return new Type.ArrayType(Types.this.supertype(arrayType.elemtype), arrayType.tsym);
                }
            }
            return Types.this.arraySuperType();
        }

        @Override
        public Type visitClassType(Type.ClassType classType, Void r52) {
            if (classType.supertype_field == null) {
                Type superclass = ((Symbol.ClassSymbol) classType.tsym).getSuperclass();
                if (classType.isInterface()) {
                    superclass = ((Type.ClassType) classType.tsym.type).supertype_field;
                }
                if (classType.supertype_field == null) {
                    List<Type> allparams = Types.this.classBound(classType).allparams();
                    List<Type> allparams2 = classType.tsym.type.allparams();
                    if (classType.hasErasedSupertypes()) {
                        classType.supertype_field = Types.this.erasureRecursive(superclass);
                    } else if (allparams2.nonEmpty()) {
                        classType.supertype_field = Types.this.subst(superclass, allparams2, allparams);
                    } else {
                        classType.supertype_field = superclass;
                    }
                }
            }
            return classType.supertype_field;
        }

        @Override
        public Type visitErrorType(Type.ErrorType errorType, Void r22) {
            return Type.noType;
        }

        @Override
        public Type visitType(Type type, Void r22) {
            return Type.noType;
        }

        @Override
        public Type visitTypeVar(Type.TypeVar typeVar, Void r32) {
            if (!typeVar.bound.hasTag(TypeTag.TYPEVAR) && (typeVar.bound.isCompound() || typeVar.bound.isInterface())) {
                return Types.this.supertype(typeVar.bound);
            }
            return typeVar.bound;
        }
    };
    private UnaryVisitor<List<Type>> interfaces = new UnaryVisitor<List<Type>>() {
        @Override
        public List<Type> visitClassType(Type.ClassType classType, Void r52) {
            if (classType.interfaces_field == null) {
                List<Type> interfaces = ((Symbol.ClassSymbol) classType.tsym).getInterfaces();
                if (classType.interfaces_field == null) {
                    Assert.check(classType != classType.tsym.type, classType);
                    List<Type> allparams = classType.allparams();
                    List<Type> allparams2 = classType.tsym.type.allparams();
                    if (classType.hasErasedSupertypes()) {
                        classType.interfaces_field = Types.this.erasureRecursive(interfaces);
                    } else if (allparams2.nonEmpty()) {
                        classType.interfaces_field = Types.this.subst(interfaces, allparams2, allparams);
                    } else {
                        classType.interfaces_field = interfaces;
                    }
                }
            }
            return classType.interfaces_field;
        }

        @Override
        public List<Type> visitType(Type type, Void r22) {
            return List.nil();
        }

        @Override
        public List<Type> visitTypeVar(Type.TypeVar typeVar, Void r22) {
            if (typeVar.bound.isCompound()) {
                return Types.this.interfaces(typeVar.bound);
            }
            if (typeVar.bound.isInterface()) {
                return List.of(typeVar.bound);
            }
            return List.nil();
        }
    };
    private final UnaryVisitor<List<Type>> directSupertypes = new UnaryVisitor<List<Type>>() {
        @Override
        public List<Type> visitType(Type type, Void r32) {
            if (!type.isIntersection()) {
                Type supertype = Types.this.supertype(type);
                if (supertype != Type.noType && supertype != type && supertype != null) {
                    return Types.this.interfaces(type).prepend(supertype);
                }
                return Types.this.interfaces(type);
            }
            return ((Type.IntersectionClassType) type).getExplicitComponents();
        }
    };
    Map<Type, Boolean> isDerivedRawCache = new HashMap();
    private UnaryVisitor<Type> classBound = new UnaryVisitor<Type>() {
        @Override
        public Type visitErrorType(Type.ErrorType errorType, Void r22) {
            return errorType;
        }

        @Override
        public Type visitType(Type type, Void r22) {
            return type;
        }

        @Override
        public Type visitClassType(Type.ClassType classType, Void r52) {
            Type classBound = Types.this.classBound(classType.getEnclosingType());
            return classBound != classType.getEnclosingType() ? new Type.ClassType(classBound, classType.getTypeArguments(), classType.tsym, classType.getMetadata()) : classType;
        }

        @Override
        public Type visitTypeVar(Type.TypeVar typeVar, Void r22) {
            Types types = Types.this;
            return types.classBound(types.supertype(typeVar));
        }
    };
    private ImplementationCache implCache = new ImplementationCache();
    private MembersClosureCache membersCache = new MembersClosureCache();
    public CandidatesCache candidatesCache = new CandidatesCache();
    TypeRelation hasSameArgs_strict = new HasSameArgs(true);
    TypeRelation hasSameArgs_nonstrict = new HasSameArgs(false);
    private final MapVisitor<List<Type>> methodWithParameters = new MapVisitor<List<Type>>() {
        @Override
        public Type visitForAll(Type.ForAll forAll, List<Type> list) {
            return new Type.ForAll(forAll.tvars, (Type) forAll.qtype.accept((Type.Visitor<R, AnonymousClass21>) this, (AnonymousClass21) list));
        }

        @Override
        public Type visitMethodType(Type.MethodType methodType, List<Type> list) {
            return new Type.MethodType(list, methodType.restype, methodType.thrown, methodType.tsym);
        }

        @Override
        public Type visitType(Type type, List<Type> list) {
            throw new IllegalArgumentException("Not a method type: " + ((Object) type));
        }
    };
    private final MapVisitor<List<Type>> methodWithThrown = new MapVisitor<List<Type>>() {
        @Override
        public Type visitForAll(Type.ForAll forAll, List<Type> list) {
            return new Type.ForAll(forAll.tvars, (Type) forAll.qtype.accept((Type.Visitor<R, AnonymousClass22>) this, (AnonymousClass22) list));
        }

        @Override
        public Type visitMethodType(Type.MethodType methodType, List<Type> list) {
            return new Type.MethodType(methodType.argtypes, methodType.restype, list, methodType.tsym);
        }

        @Override
        public Type visitType(Type type, List<Type> list) {
            throw new IllegalArgumentException("Not a method type: " + ((Object) type));
        }
    };
    private final MapVisitor<Type> methodWithReturn = new MapVisitor<Type>() {
        @Override
        public Type visitForAll(final Type.ForAll forAll, Type type) {
            return new Type.ForAll(forAll.tvars, (Type) forAll.qtype.accept((Type.Visitor<R, AnonymousClass23>) this, (AnonymousClass23) type)) {
                @Override
                public Type baseType() {
                    return forAll;
                }
            };
        }

        @Override
        public Type visitMethodType(final Type.MethodType methodType, Type type) {
            return new Type.MethodType(methodType.argtypes, type, methodType.thrown, methodType.tsym) {
                @Override
                public Type baseType() {
                    return methodType;
                }
            };
        }

        @Override
        public Type visitType(Type type, Type type2) {
            throw new IllegalArgumentException("Not a method type: " + ((Object) type));
        }
    };
    private Map<Type, List<Type>> closureCache = new HashMap();
    BiPredicate<Type, Type> basicClosureSkip = new BiPredicate() {
        @Override
        public final boolean test(Object obj, Object obj2) {
            boolean lambda$new$3;
            lambda$new$3 = Types.lambda$new$3((Type) obj, (Type) obj2);
            return lambda$new$3;
        }
    };
    Set<TypePair> mergeCache = new HashSet();
    private Type arraySuperType = null;

    public static class AnonymousClass25 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$BoundKind;
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;
        static final int[] $SwitchMap$javax$lang$model$type$TypeKind;

        static {
            int[] iArr = new int[TypeKind.values().length];
            $SwitchMap$javax$lang$model$type$TypeKind = iArr;
            try {
                iArr[TypeKind.OTHER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.UNION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.INTERSECTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.PACKAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.EXECUTABLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.NONE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.VOID.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr2;
            try {
                iArr2[TypeTag.ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CHAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.SHORT.ordinal()] = 5;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.INT.ordinal()] = 6;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.DOUBLE.ordinal()] = 9;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BOOLEAN.ordinal()] = 10;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.VOID.ordinal()] = 11;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.TYPEVAR.ordinal()] = 12;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BOT.ordinal()] = 13;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.WILDCARD.ordinal()] = 14;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.NONE.ordinal()] = 15;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.ERROR.ordinal()] = 16;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.UNDETVAR.ordinal()] = 17;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.FORALL.ordinal()] = 18;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.METHOD.ordinal()] = 19;
            } catch (NoSuchFieldError unused27) {
            }
            int[] iArr3 = new int[BoundKind.values().length];
            $SwitchMap$com$sun$tools$javac$code$BoundKind = iArr3;
            try {
                iArr3[BoundKind.UNBOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$BoundKind[BoundKind.EXTENDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$BoundKind[BoundKind.SUPER.ordinal()] = 3;
            } catch (NoSuchFieldError unused30) {
            }
        }
    }

    public static class AdaptFailure extends RuntimeException {
        static final long serialVersionUID = -7490231548272701566L;
    }

    public class Adapter extends SimpleVisitor<Void, Type> {
        ListBuffer<Type> from;
        ListBuffer<Type> to;
        private Set<TypePair> cache = new HashSet();
        Map<Symbol, Type> mapping = new HashMap();

        public Adapter(ListBuffer<Type> listBuffer, ListBuffer<Type> listBuffer2) {
            this.from = listBuffer;
            this.to = listBuffer2;
        }

        private void adaptRecursive(Type type, Type type2) {
            TypePair typePair = new TypePair(Types.this, type, type2);
            if (this.cache.add(typePair)) {
                try {
                    visit(type, type2);
                } finally {
                    this.cache.remove(typePair);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3, types: [A, org.openjdk.tools.javac.code.Type] */
        public void adapt(Type type, Type type2) throws AdaptFailure {
            visit(type, type2);
            List list = this.from.toList();
            List list2 = this.to.toList();
            while (!list.isEmpty()) {
                Type type3 = this.mapping.get(((Type) list.head).tsym);
                if (list2.head != type3) {
                    list2.head = type3;
                }
                list = list.tail;
                list2 = list2.tail;
            }
        }

        @Override
        public Void visitType(Type type, Type type2) {
            return null;
        }

        @Override
        public Void visitArrayType(Type.ArrayType arrayType, Type type) throws AdaptFailure {
            if (!type.hasTag(TypeTag.ARRAY)) {
                return null;
            }
            adaptRecursive(Types.this.elemtype(arrayType), Types.this.elemtype(type));
            return null;
        }

        @Override
        public Void visitClassType(Type.ClassType classType, Type type) throws AdaptFailure {
            if (!type.hasTag(TypeTag.CLASS)) {
                return null;
            }
            adaptRecursive(classType.allparams(), type.allparams());
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0047, code lost:
        
            if (r1.isSubtype(r1.wildUpperBound(r0), r4.this$0.wildUpperBound(r6)) != false) goto L20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0028, code lost:
        
            if (r1.isSubtype(r1.wildLowerBound(r0), r4.this$0.wildLowerBound(r6)) != false) goto L24;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Void visitTypeVar(Type.TypeVar typeVar, Type type) throws AdaptFailure {
            Type type2 = this.mapping.get(typeVar.tsym);
            if (type2 != null) {
                if (type2.isSuperBound() && type.isSuperBound()) {
                    Types types = Types.this;
                } else {
                    if (type2.isExtendsBound() && type.isExtendsBound()) {
                        Types types2 = Types.this;
                    } else if (!Types.this.isSameType(type2, type)) {
                        throw new AdaptFailure();
                    }
                    type = type2;
                }
            } else {
                this.from.append(typeVar);
                this.to.append(type);
            }
            this.mapping.put(typeVar.tsym, type);
            return null;
        }

        @Override
        public Void visitWildcardType(Type.WildcardType wildcardType, Type type) throws AdaptFailure {
            if (wildcardType.isExtendsBound()) {
                adaptRecursive(Types.this.wildUpperBound(wildcardType), Types.this.wildUpperBound(type));
                return null;
            }
            if (!wildcardType.isSuperBound()) {
                return null;
            }
            adaptRecursive(Types.this.wildLowerBound(wildcardType), Types.this.wildLowerBound(type));
            return null;
        }

        private void adaptRecursive(List<Type> list, List<Type> list2) {
            int length = list.length();
            int length2 = list2.length();
            List<Type> list3 = list;
            List<Type> list4 = list2;
            if (length == length2) {
                while (list3.nonEmpty()) {
                    adaptRecursive(list3.head, list4.head);
                    list3 = list3.tail;
                    list4 = list4.tail;
                }
            }
        }
    }

    public class CandidatesCache {
        public Map<Entry, List<Symbol.MethodSymbol>> cache = new WeakHashMap();

        public class Entry {
            Symbol.MethodSymbol msym;
            Type site;

            public Entry(Type type, Symbol.MethodSymbol methodSymbol) {
                this.site = type;
                this.msym = methodSymbol;
            }

            public boolean equals(Object obj) {
                if (!(obj instanceof Entry)) {
                    return false;
                }
                Entry entry = (Entry) obj;
                return entry.msym == this.msym && Types.this.isSameType(this.site, entry.site);
            }

            public int hashCode() {
                return Types.this.hashCode(this.site) & (~this.msym.hashCode());
            }
        }

        public CandidatesCache() {
        }

        public List<Symbol.MethodSymbol> get(Entry entry) {
            return this.cache.get(entry);
        }

        public void put(Entry entry, List<Symbol.MethodSymbol> list) {
            this.cache.put(entry, list);
        }
    }

    public class ClosureHolder {
        List<Type> closure = List.nil();
        final boolean minClosure;
        final BiPredicate<Type, Type> shouldSkip;

        public ClosureHolder(boolean z10, BiPredicate<Type, Type> biPredicate) {
            this.minClosure = z10;
            this.shouldSkip = biPredicate;
        }

        public void add(Type type) {
            this.closure = Types.this.insert(this.closure, type, this.shouldSkip);
        }

        public List<Type> closure() {
            return this.minClosure ? Types.this.closureMin(this.closure) : this.closure;
        }

        public ClosureHolder merge(ClosureHolder closureHolder) {
            this.closure = Types.this.union(this.closure, closureHolder.closure, this.shouldSkip);
            return this;
        }
    }

    public static abstract class DefaultSymbolVisitor<R, S> implements Symbol.Visitor<R, S> {
        public final R visit(Symbol symbol, S s10) {
            return (R) symbol.accept(this, (DefaultSymbolVisitor<R, S>) s10);
        }

        @Override
        public R visitClassSymbol(Symbol.ClassSymbol classSymbol, S s10) {
            return visitSymbol(classSymbol, s10);
        }

        @Override
        public R visitMethodSymbol(Symbol.MethodSymbol methodSymbol, S s10) {
            return visitSymbol(methodSymbol, s10);
        }

        @Override
        public R visitOperatorSymbol(Symbol.OperatorSymbol operatorSymbol, S s10) {
            return visitSymbol(operatorSymbol, s10);
        }

        @Override
        public R visitPackageSymbol(Symbol.PackageSymbol packageSymbol, S s10) {
            return visitSymbol(packageSymbol, s10);
        }

        @Override
        public R visitTypeSymbol(Symbol.TypeSymbol typeSymbol, S s10) {
            return visitSymbol(typeSymbol, s10);
        }

        @Override
        public R visitVarSymbol(Symbol.VarSymbol varSymbol, S s10) {
            return visitSymbol(varSymbol, s10);
        }
    }

    public static abstract class DefaultTypeVisitor<R, S> implements Type.Visitor<R, S> {
        public final R visit(Type type, S s10) {
            return (R) type.accept(this, (DefaultTypeVisitor<R, S>) s10);
        }

        @Override
        public R visitArrayType(Type.ArrayType arrayType, S s10) {
            return visitType(arrayType, s10);
        }

        @Override
        public R visitCapturedType(Type.CapturedType capturedType, S s10) {
            return visitType(capturedType, s10);
        }

        @Override
        public R visitClassType(Type.ClassType classType, S s10) {
            return visitType(classType, s10);
        }

        @Override
        public R visitErrorType(Type.ErrorType errorType, S s10) {
            return visitType(errorType, s10);
        }

        @Override
        public R visitForAll(Type.ForAll forAll, S s10) {
            return visitType(forAll, s10);
        }

        @Override
        public R visitMethodType(Type.MethodType methodType, S s10) {
            return visitType(methodType, s10);
        }

        @Override
        public R visitModuleType(Type.ModuleType moduleType, S s10) {
            return visitType(moduleType, s10);
        }

        @Override
        public R visitPackageType(Type.PackageType packageType, S s10) {
            return visitType(packageType, s10);
        }

        @Override
        public R visitTypeVar(Type.TypeVar typeVar, S s10) {
            return visitType(typeVar, s10);
        }

        @Override
        public R visitUndetVar(Type.UndetVar undetVar, S s10) {
            return visitType(undetVar, s10);
        }

        @Override
        public R visitWildcardType(Type.WildcardType wildcardType, S s10) {
            return visitType(wildcardType, s10);
        }
    }

    public class DescriptorCache {
        private WeakHashMap<Symbol.TypeSymbol, Entry> _map = new WeakHashMap<>();

        public class Entry {
            final FunctionDescriptor cachedDescRes;
            final int prevMark;

            public Entry(FunctionDescriptor functionDescriptor, int i10) {
                this.cachedDescRes = functionDescriptor;
                this.prevMark = i10;
            }

            public boolean matches(int i10) {
                return this.prevMark == i10;
            }
        }

        public class FunctionDescriptor {
            Symbol descSym;

            public FunctionDescriptor(Symbol symbol) {
                this.descSym = symbol;
            }

            public Symbol getSymbol() {
                return this.descSym;
            }

            public Type getType(Type type) {
                Type removeWildcards = Types.this.removeWildcards(type);
                if (Types.this.chk.checkValidGenericType(removeWildcards)) {
                    return Types.this.memberType(removeWildcards, this.descSym);
                }
                DescriptorCache descriptorCache = DescriptorCache.this;
                throw descriptorCache.failure(Types.this.diags.fragment("no.suitable.functional.intf.inst", removeWildcards));
            }
        }

        public DescriptorCache() {
        }

        public boolean lambda$findDescriptorInternal$0(Symbol symbol, Symbol symbol2) {
            return symbol2.owner.isSubClass(symbol.enclClass(), Types.this);
        }

        public Type lambda$findDescriptorInternal$1(Symbol.TypeSymbol typeSymbol, Symbol symbol) {
            return Types.this.memberType(typeSymbol.type, symbol);
        }

        public boolean lambda$findDescriptorInternal$2(Type type, Type type2) {
            return Types.this.isSubSignature(type2, type);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [org.openjdk.tools.javac.code.Types$DescriptorCache$1] */
        public AnonymousClass1 lambda$mergeDescriptors$3(final Symbol symbol) {
            return new FunctionDescriptor(symbol.baseSymbol()) {
                @Override
                public Type getType(Type type) {
                    return Types.this.createMethodTypeWithThrown(Types.this.memberType(type, getSymbol()), symbol.type.getThrownTypes());
                }
            };
        }

        private FunctionDescriptor mergeDescriptors(Symbol.TypeSymbol typeSymbol, List<Symbol> list) {
            return (FunctionDescriptor) Types.this.mergeAbstracts(list, typeSymbol.type, false).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Types.DescriptorCache.AnonymousClass1 lambda$mergeDescriptors$3;
                    lambda$mergeDescriptors$3 = Types.DescriptorCache.this.lambda$mergeDescriptors$3((Symbol) obj);
                    return lambda$mergeDescriptors$3;
                }
            }).orElse(null);
        }

        public FunctionDescriptorLookupError failure(String str, Object... objArr) {
            return failure(Types.this.diags.fragment(str, objArr));
        }

        public FunctionDescriptor findDescriptorInternal(final Symbol.TypeSymbol typeSymbol, Scope.CompoundScope compoundScope) throws FunctionDescriptorLookupError {
            if (!typeSymbol.isInterface() || (typeSymbol.flags() & 8192) != 0) {
                throw failure("not.a.functional.intf", typeSymbol);
            }
            ListBuffer listBuffer = new ListBuffer();
            for (final Symbol symbol : compoundScope.getSymbols(new DescriptorFilter(typeSymbol))) {
                final Type memberType = Types.this.memberType(typeSymbol.type, symbol);
                if (!listBuffer.isEmpty()) {
                    if (symbol.name == ((Symbol) listBuffer.first()).name) {
                        Types types = Types.this;
                        if (types.overrideEquivalent(memberType, types.memberType(typeSymbol.type, (Symbol) listBuffer.first()))) {
                            if (!listBuffer.stream().filter(new Predicate() {
                                @Override
                                public final boolean test(Object obj) {
                                    boolean lambda$findDescriptorInternal$0;
                                    lambda$findDescriptorInternal$0 = Types.DescriptorCache.this.lambda$findDescriptorInternal$0(symbol, (Symbol) obj);
                                    return lambda$findDescriptorInternal$0;
                                }
                            }).map(new Function() {
                                @Override
                                public final Object apply(Object obj) {
                                    Type lambda$findDescriptorInternal$1;
                                    lambda$findDescriptorInternal$1 = Types.DescriptorCache.this.lambda$findDescriptorInternal$1(typeSymbol, (Symbol) obj);
                                    return lambda$findDescriptorInternal$1;
                                }
                            }).anyMatch(new Predicate() {
                                @Override
                                public final boolean test(Object obj) {
                                    boolean lambda$findDescriptorInternal$2;
                                    lambda$findDescriptorInternal$2 = Types.DescriptorCache.this.lambda$findDescriptorInternal$2(memberType, (Type) obj);
                                    return lambda$findDescriptorInternal$2;
                                }
                            })) {
                                listBuffer.append(symbol);
                            }
                        }
                    }
                    throw failure("not.a.functional.intf.1", typeSymbol, Types.this.diags.fragment("incompatible.abstracts", Kinds.kindName(typeSymbol), typeSymbol));
                }
                listBuffer.append(symbol);
            }
            if (listBuffer.isEmpty()) {
                throw failure("not.a.functional.intf.1", typeSymbol, Types.this.diags.fragment("no.abstracts", Kinds.kindName(typeSymbol), typeSymbol));
            }
            if (listBuffer.size() == 1) {
                return new FunctionDescriptor((Symbol) listBuffer.first());
            }
            FunctionDescriptor mergeDescriptors = mergeDescriptors(typeSymbol, listBuffer.toList());
            if (mergeDescriptors != null) {
                return mergeDescriptors;
            }
            ListBuffer listBuffer2 = new ListBuffer();
            Iterator it = listBuffer.iterator();
            while (it.hasNext()) {
                Symbol symbol2 = (Symbol) it.next();
                listBuffer2.append(Types.this.diags.fragment(symbol2.type.getThrownTypes().nonEmpty() ? "descriptor.throws" : "descriptor", symbol2.name, symbol2.type.getParameterTypes(), symbol2.type.getReturnType(), symbol2.type.getThrownTypes()));
            }
            throw failure(new JCDiagnostic.MultilineDiagnostic(Types.this.diags.fragment("incompatible.descs.in.functional.intf", Kinds.kindName(typeSymbol), typeSymbol), listBuffer2.toList()));
        }

        public FunctionDescriptor get(Symbol.TypeSymbol typeSymbol) throws FunctionDescriptorLookupError {
            Entry entry = this._map.get(typeSymbol);
            Scope.CompoundScope membersClosure = Types.this.membersClosure(typeSymbol.type, false);
            if (entry != null && entry.matches(membersClosure.getMark())) {
                return entry.cachedDescRes;
            }
            FunctionDescriptor findDescriptorInternal = findDescriptorInternal(typeSymbol, membersClosure);
            this._map.put(typeSymbol, new Entry(findDescriptorInternal, membersClosure.getMark()));
            return findDescriptorInternal;
        }

        public FunctionDescriptorLookupError failure(JCDiagnostic jCDiagnostic) {
            return Types.this.functionDescriptorLookupError.setMessage(jCDiagnostic);
        }
    }

    public class DescriptorFilter implements Filter<Symbol> {
        Symbol.TypeSymbol origin;

        public DescriptorFilter(Symbol.TypeSymbol typeSymbol) {
            this.origin = typeSymbol;
        }

        @Override
        public boolean accepts(Symbol symbol) {
            return symbol.kind == Kinds.Kind.MTH && (symbol.flags() & 8796093023232L) == 1024 && !Types.this.overridesObjectMethod(this.origin, symbol) && (Types.this.interfaceCandidates(this.origin.type, (Symbol.MethodSymbol) symbol).head.flags() & 8796093022208L) == 0;
        }
    }

    public static class FunctionDescriptorLookupError extends RuntimeException {
        private static final long serialVersionUID = 0;
        JCDiagnostic diagnostic = null;

        public JCDiagnostic getDiagnostic() {
            return this.diagnostic;
        }

        public FunctionDescriptorLookupError setMessage(JCDiagnostic jCDiagnostic) {
            this.diagnostic = jCDiagnostic;
            return this;
        }
    }

    public class HasSameArgs extends TypeRelation {
        boolean strict;

        public HasSameArgs(boolean z10) {
            this.strict = z10;
        }

        @Override
        public Boolean visitErrorType(Type.ErrorType errorType, Type type) {
            return Boolean.FALSE;
        }

        @Override
        public Boolean visitForAll(Type.ForAll forAll, Type type) {
            if (!type.hasTag(TypeTag.FORALL)) {
                return Boolean.valueOf(this.strict ? false : visitMethodType(forAll.asMethodType(), type).booleanValue());
            }
            Type.ForAll forAll2 = (Type.ForAll) type;
            if (Types.this.hasSameBounds(forAll, forAll2) && visit(forAll.qtype, Types.this.subst(forAll2.qtype, forAll2.tvars, forAll.tvars)).booleanValue()) {
                r1 = true;
            }
            return Boolean.valueOf(r1);
        }

        @Override
        public Boolean visitMethodType(Type.MethodType methodType, Type type) {
            return Boolean.valueOf(type.hasTag(TypeTag.METHOD) && Types.this.containsTypeEquivalent(methodType.argtypes, type.getParameterTypes()));
        }

        @Override
        public Boolean visitType(Type type, Type type2) {
            throw new AssertionError();
        }
    }

    public static class HashCodeVisitor extends UnaryVisitor<Integer> {
        private HashCodeVisitor() {
        }

        @Override
        public Integer visitArrayType(Type.ArrayType arrayType, Void r22) {
            return Integer.valueOf(visit(arrayType.elemtype).intValue() + 12);
        }

        @Override
        public Integer visitClassType(Type.ClassType classType, Void r32) {
            int intValue = (visit(classType.getEnclosingType()).intValue() * 127) + classType.tsym.flatName().hashCode();
            Iterator<Type> it = classType.getTypeArguments().iterator();
            while (it.hasNext()) {
                intValue = (intValue * 127) + visit(it.next()).intValue();
            }
            return Integer.valueOf(intValue);
        }

        @Override
        public Integer visitErrorType(Type.ErrorType errorType, Void r22) {
            return 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Integer visitMethodType(Type.MethodType methodType, Void r42) {
            int ordinal = TypeTag.METHOD.ordinal();
            for (List list = methodType.argtypes; list.tail != null; list = list.tail) {
                ordinal = (ordinal << 5) + visit((Type) list.head).intValue();
            }
            return Integer.valueOf((ordinal << 5) + visit(methodType.restype).intValue());
        }

        @Override
        public Integer visitType(Type type, Void r22) {
            return Integer.valueOf(type.getTag().ordinal());
        }

        @Override
        public Integer visitTypeVar(Type.TypeVar typeVar, Void r22) {
            return Integer.valueOf(System.identityHashCode(typeVar));
        }

        @Override
        public Integer visitUndetVar(Type.UndetVar undetVar, Void r22) {
            return Integer.valueOf(System.identityHashCode(undetVar));
        }

        @Override
        public Integer visitWildcardType(Type.WildcardType wildcardType, Void r22) {
            int hashCode = wildcardType.kind.hashCode();
            Type type = wildcardType.type;
            if (type != null) {
                hashCode = (hashCode * 127) + visit(type).intValue();
            }
            return Integer.valueOf(hashCode);
        }
    }

    public class ImplementationCache {
        private WeakHashMap<Symbol.MethodSymbol, SoftReference<Map<Symbol.TypeSymbol, Entry>>> _map = new WeakHashMap<>();

        public class Entry {
            final Symbol.MethodSymbol cachedImpl;
            final boolean checkResult;
            final Filter<Symbol> implFilter;
            final int prevMark;

            public Entry(Symbol.MethodSymbol methodSymbol, Filter<Symbol> filter, boolean z10, int i10) {
                this.cachedImpl = methodSymbol;
                this.implFilter = filter;
                this.checkResult = z10;
                this.prevMark = i10;
            }

            public boolean matches(Filter<Symbol> filter, boolean z10, int i10) {
                return this.implFilter == filter && this.checkResult == z10 && this.prevMark == i10;
            }
        }

        public ImplementationCache() {
        }

        private Symbol.MethodSymbol implementationInternal(Symbol.MethodSymbol methodSymbol, Symbol.TypeSymbol typeSymbol, boolean z10, Filter<Symbol> filter) {
            Type type = typeSymbol.type;
            while (true) {
                Symbol symbol = null;
                if (!type.hasTag(TypeTag.CLASS) && !type.hasTag(TypeTag.TYPEVAR)) {
                    return null;
                }
                Type skipTypeVars = Types.this.skipTypeVars(type, false);
                Iterator<Symbol> it = skipTypeVars.tsym.members().getSymbolsByName(methodSymbol.name, filter).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Symbol next = it.next();
                    if (next != null && next.overrides(methodSymbol, typeSymbol, Types.this, z10)) {
                        if ((next.flags() & 1024) == 0) {
                            symbol = next;
                            break;
                        }
                        symbol = next;
                    }
                }
                if (symbol != null) {
                    return (Symbol.MethodSymbol) symbol;
                }
                type = Types.this.supertype(skipTypeVars);
            }
        }

        public Symbol.MethodSymbol get(Symbol.MethodSymbol methodSymbol, Symbol.TypeSymbol typeSymbol, boolean z10, Filter<Symbol> filter) {
            SoftReference<Map<Symbol.TypeSymbol, Entry>> softReference = this._map.get(methodSymbol);
            Map<Symbol.TypeSymbol, Entry> map = softReference != null ? softReference.get() : null;
            if (map == null) {
                map = new HashMap<>();
                this._map.put(methodSymbol, new SoftReference<>(map));
            }
            Entry entry = map.get(typeSymbol);
            Scope.CompoundScope membersClosure = Types.this.membersClosure(typeSymbol.type, true);
            if (entry != null && entry.matches(filter, z10, membersClosure.getMark())) {
                return entry.cachedImpl;
            }
            Symbol.MethodSymbol implementationInternal = implementationInternal(methodSymbol, typeSymbol, z10, filter);
            map.put(typeSymbol, new Entry(implementationInternal, filter, z10, membersClosure.getMark()));
            return implementationInternal;
        }
    }

    public class LooseSameTypeVisitor extends SameTypeVisitor {
        private Set<TypePair> cache;

        private LooseSameTypeVisitor() {
            super();
            this.cache = new HashSet();
        }

        private boolean checkSameBounds(Type.TypeVar typeVar, Type.TypeVar typeVar2) {
            TypePair typePair = new TypePair(typeVar, typeVar2, true);
            if (!this.cache.add(typePair)) {
                return false;
            }
            try {
                return visit(typeVar.getUpperBound(), typeVar2.getUpperBound()).booleanValue();
            } finally {
                this.cache.remove(typePair);
            }
        }

        @Override
        public boolean containsTypes(List<Type> list, List<Type> list2) {
            return Types.this.containsTypeEquivalent(list, list2);
        }

        @Override
        public boolean sameTypeVars(Type.TypeVar typeVar, Type.TypeVar typeVar2) {
            return typeVar.tsym == typeVar2.tsym && checkSameBounds(typeVar, typeVar2);
        }
    }

    public static class MapVisitor<S> extends DefaultTypeVisitor<Type, S> {
        public final Type visit(Type type) {
            return (Type) type.accept(this, (MapVisitor<S>) null);
        }

        @Override
        public Type visitType(Type type, S s10) {
            return type;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object visitType(Type type, Object obj) {
            return visitType(type, (Type) obj);
        }
    }

    public class MembersClosureCache extends SimpleVisitor<Scope.CompoundScope, Void> {
        Scope.CompoundScope nilScope;
        private Map<Symbol.TypeSymbol, Scope.CompoundScope> _map = new HashMap();
        Set<Symbol.TypeSymbol> seenTypes = new HashSet();

        public class MembersScope extends Scope.CompoundScope {
            Scope.CompoundScope scope;

            public MembersScope(Scope.CompoundScope compoundScope) {
                super(compoundScope.owner);
                this.scope = compoundScope;
            }

            public static boolean lambda$combine$0(Filter filter, Symbol symbol) {
                return !symbol.owner.isInterface() && (filter == null || filter.accepts(symbol));
            }

            public Filter<Symbol> combine(final Filter<Symbol> filter) {
                return new Filter() {
                    @Override
                    public final boolean accepts(Object obj) {
                        boolean lambda$combine$0;
                        lambda$combine$0 = Types.MembersClosureCache.MembersScope.lambda$combine$0(Filter.this, (Symbol) obj);
                        return lambda$combine$0;
                    }
                };
            }

            @Override
            public int getMark() {
                return this.scope.getMark();
            }

            @Override
            public Iterable<Symbol> getSymbols(Filter<Symbol> filter, Scope.LookupKind lookupKind) {
                return this.scope.getSymbols(combine(filter), lookupKind);
            }

            @Override
            public Iterable<Symbol> getSymbolsByName(Name name, Filter<Symbol> filter, Scope.LookupKind lookupKind) {
                return this.scope.getSymbolsByName(name, combine(filter), lookupKind);
            }
        }

        public MembersClosureCache() {
        }

        @Override
        public Scope.CompoundScope visitClassType(Type.ClassType classType, Void r62) {
            if (!this.seenTypes.add(classType.tsym)) {
                return new Scope.CompoundScope(classType.tsym);
            }
            try {
                this.seenTypes.add(classType.tsym);
                Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) classType.tsym;
                Scope.CompoundScope compoundScope = this._map.get(classSymbol);
                if (compoundScope == null) {
                    compoundScope = new Scope.CompoundScope(classSymbol);
                    Iterator<Type> it = Types.this.interfaces(classType).iterator();
                    while (it.hasNext()) {
                        compoundScope.prependSubScope(visit(it.next(), null));
                    }
                    compoundScope.prependSubScope(visit(Types.this.supertype(classType), null));
                    compoundScope.prependSubScope(classSymbol.members());
                    this._map.put(classSymbol, compoundScope);
                }
                this.seenTypes.remove(classType.tsym);
                return compoundScope;
            } catch (Throwable th2) {
                this.seenTypes.remove(classType.tsym);
                throw th2;
            }
        }

        @Override
        public Scope.CompoundScope visitType(Type type, Void r22) {
            if (this.nilScope == null) {
                this.nilScope = new Scope.CompoundScope(Types.this.syms.noSymbol);
            }
            return this.nilScope;
        }

        @Override
        public Scope.CompoundScope visitTypeVar(Type.TypeVar typeVar, Void r22) {
            return visit(typeVar.getUpperBound(), null);
        }
    }

    public class MethodFilter implements Filter<Symbol> {
        Symbol msym;
        Type site;

        public MethodFilter(Symbol symbol, Type type) {
            this.msym = symbol;
            this.site = type;
        }

        @Override
        public boolean accepts(Symbol symbol) {
            if (symbol.kind == Kinds.Kind.MTH && symbol.name == this.msym.name && (symbol.flags() & 4096) == 0 && symbol.isInheritedIn(this.site.tsym, Types.this)) {
                Types types = Types.this;
                if (types.overrideEquivalent(types.memberType(this.site, symbol), Types.this.memberType(this.site, this.msym))) {
                    return true;
                }
            }
            return false;
        }
    }

    public enum MostSpecificReturnCheck {
        BASIC {
            @Override
            public boolean test(Type type, Type type2, Types types) {
                List<Type> typeArguments = type.getTypeArguments();
                List<Type> typeArguments2 = type2.getTypeArguments();
                Type returnType = type.getReturnType();
                Type subst = types.subst(type2.getReturnType(), typeArguments2, typeArguments);
                return types.isSameType(returnType, subst) || !(returnType.isPrimitive() || subst.isPrimitive() || !types.isSubtype(returnType, subst));
            }
        },
        RTS {
            @Override
            public boolean test(Type type, Type type2, Types types) {
                return types.returnTypeSubstitutable(type, type2);
            }
        };

        public abstract boolean test(Type type, Type type2, Types types);
    }

    public class Rewriter extends UnaryVisitor<Type> {
        boolean high;
        boolean rewriteTypeVars;

        public Rewriter(boolean z10, boolean z11) {
            this.high = z10;
            this.rewriteTypeVars = z11;
        }

        private Type rewriteAsWildcardType(Type type, Type.TypeVar typeVar, BoundKind boundKind) {
            int i10 = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$BoundKind[boundKind.ordinal()];
            if (i10 == 1) {
                Types types = Types.this;
                return types.makeExtendsWildcard(types.syms.objectType, typeVar);
            }
            if (i10 == 2) {
                if (this.high) {
                    return Types.this.makeExtendsWildcard(B(type), typeVar);
                }
                Types types2 = Types.this;
                return types2.makeExtendsWildcard(types2.syms.objectType, typeVar);
            }
            if (i10 == 3) {
                if (!this.high) {
                    return Types.this.makeSuperWildcard(B(type), typeVar);
                }
                Types types3 = Types.this;
                return types3.makeSuperWildcard(types3.syms.botType, typeVar);
            }
            Assert.error("Invalid bound kind " + ((Object) boundKind));
            return null;
        }

        public Type B(Type type) {
            while (type.hasTag(TypeTag.WILDCARD)) {
                Type.WildcardType wildcardType = (Type.WildcardType) type;
                type = this.high ? wildcardType.getExtendsBound() : wildcardType.getSuperBound();
                if (type == null) {
                    type = this.high ? Types.this.syms.objectType : Types.this.syms.botType;
                }
            }
            return type;
        }

        @Override
        public Type visitType(Type type, Void r22) {
            return type;
        }

        @Override
        public Type visitCapturedType(Type.CapturedType capturedType, Void r32) {
            Type visit;
            Type type = capturedType.wildcard.type;
            if (type.contains(capturedType)) {
                visit = Types.this.erasure(type);
            } else {
                visit = visit(type);
            }
            Type visit2 = visit(visit);
            Type.WildcardType wildcardType = capturedType.wildcard;
            return rewriteAsWildcardType(visit2, wildcardType.bound, wildcardType.kind);
        }

        @Override
        public Type visitClassType(Type.ClassType classType, Void r62) {
            ListBuffer listBuffer = new ListBuffer();
            Iterator<Type> it = classType.allparams().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Type next = it.next();
                Type visit = visit(next);
                if (next != visit) {
                    z10 = true;
                }
                listBuffer.append(visit);
            }
            if (!z10) {
                return classType;
            }
            Types types = Types.this;
            Type type = classType.tsym.type;
            return types.subst(type, type.allparams(), listBuffer.toList());
        }

        @Override
        public Type visitTypeVar(Type.TypeVar typeVar, Void r32) {
            Type visit;
            if (!this.rewriteTypeVars) {
                return typeVar;
            }
            if (typeVar.bound.contains(typeVar)) {
                visit = Types.this.erasure(typeVar.bound);
            } else {
                visit = visit(typeVar.bound);
            }
            return rewriteAsWildcardType(visit, typeVar, BoundKind.EXTENDS);
        }

        @Override
        public Type visitWildcardType(Type.WildcardType wildcardType, Void r32) {
            Type visit = visit(wildcardType.type);
            return wildcardType.type == visit ? wildcardType : rewriteAsWildcardType(visit, wildcardType.bound, wildcardType.kind);
        }
    }

    public abstract class SameTypeVisitor extends TypeRelation {
        public SameTypeVisitor() {
        }

        public abstract boolean containsTypes(List<Type> list, List<Type> list2);

        public abstract boolean sameTypeVars(Type.TypeVar typeVar, Type.TypeVar typeVar2);

        @Override
        public Boolean visitArrayType(Type.ArrayType arrayType, Type type) {
            boolean z10;
            if (arrayType == type) {
                return Boolean.TRUE;
            }
            if (type.isPartial()) {
                return visit(type, arrayType);
            }
            if (type.hasTag(TypeTag.ARRAY)) {
                Types types = Types.this;
                if (types.containsTypeEquivalent(arrayType.elemtype, types.elemtype(type))) {
                    z10 = true;
                    return Boolean.valueOf(z10);
                }
            }
            z10 = false;
            return Boolean.valueOf(z10);
        }

        @Override
        public Boolean visitClassType(Type.ClassType classType, Type type) {
            if (classType == type) {
                return Boolean.TRUE;
            }
            if (type.isPartial()) {
                return visit(type, classType);
            }
            boolean z10 = false;
            if (type.isSuperBound() && !type.isExtendsBound()) {
                if (visit(classType, Types.this.wildUpperBound(type)).booleanValue() && visit(classType, Types.this.wildLowerBound(type)).booleanValue()) {
                    z10 = true;
                }
                return Boolean.valueOf(z10);
            }
            if (classType.isCompound() && type.isCompound()) {
                if (!visit(Types.this.supertype(classType), Types.this.supertype(type)).booleanValue()) {
                    return Boolean.FALSE;
                }
                HashMap hashMap = new HashMap();
                Iterator<Type> it = Types.this.interfaces(classType).iterator();
                while (it.hasNext()) {
                    Type next = it.next();
                    if (!hashMap.containsKey(next)) {
                        hashMap.put(next.tsym, next);
                    } else {
                        throw new AssertionError((Object) "Malformed intersection");
                    }
                }
                Iterator<Type> it2 = Types.this.interfaces(type).iterator();
                while (it2.hasNext()) {
                    Type next2 = it2.next();
                    if (!hashMap.containsKey(next2.tsym)) {
                        return Boolean.FALSE;
                    }
                    if (!visit((Type) hashMap.remove(next2.tsym), next2).booleanValue()) {
                        return Boolean.FALSE;
                    }
                }
                return Boolean.valueOf(hashMap.isEmpty());
            }
            if (classType.tsym == type.tsym && visit(classType.getEnclosingType(), type.getEnclosingType()).booleanValue() && containsTypes(classType.getTypeArguments(), type.getTypeArguments())) {
                z10 = true;
            }
            return Boolean.valueOf(z10);
        }

        @Override
        public Boolean visitErrorType(Type.ErrorType errorType, Type type) {
            return Boolean.TRUE;
        }

        @Override
        public Boolean visitForAll(Type.ForAll forAll, Type type) {
            if (!type.hasTag(TypeTag.FORALL)) {
                return Boolean.FALSE;
            }
            Type.ForAll forAll2 = (Type.ForAll) type;
            return Boolean.valueOf(Types.this.hasSameBounds(forAll, forAll2) && visit(forAll.qtype, Types.this.subst(forAll2.qtype, forAll2.tvars, forAll.tvars)).booleanValue());
        }

        @Override
        public Boolean visitMethodType(Type.MethodType methodType, Type type) {
            return Boolean.valueOf(Types.this.hasSameArgs(methodType, type) && visit(methodType.getReturnType(), type.getReturnType()).booleanValue());
        }

        @Override
        public Boolean visitPackageType(Type.PackageType packageType, Type type) {
            return Boolean.valueOf(packageType == type);
        }

        @Override
        public Boolean visitType(Type type, Type type2) {
            if (type.equalsIgnoreMetadata(type2)) {
                return Boolean.TRUE;
            }
            if (type2.isPartial()) {
                return visit(type2, type);
            }
            switch (AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()]) {
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 13:
                case 15:
                    return Boolean.valueOf(type.hasTag(type2.getTag()));
                case 12:
                    if (type2.hasTag(TypeTag.TYPEVAR)) {
                        return Boolean.valueOf(sameTypeVars((Type.TypeVar) type, (Type.TypeVar) type2));
                    }
                    return Boolean.valueOf(type2.isSuperBound() && !type2.isExtendsBound() && visit(type, Types.this.wildUpperBound(type2)).booleanValue());
                case 14:
                default:
                    throw new AssertionError((Object) ("isSameType " + ((Object) type.getTag())));
            }
        }

        @Override
        public Boolean visitUndetVar(Type.UndetVar undetVar, Type type) {
            if (type.hasTag(TypeTag.WILDCARD)) {
                return Boolean.FALSE;
            }
            if (undetVar != type && undetVar.qtype != type && !type.hasTag(TypeTag.ERROR) && !type.hasTag(TypeTag.UNKNOWN)) {
                undetVar.addBound(Type.UndetVar.InferenceBound.EQ, type, Types.this);
                return Boolean.TRUE;
            }
            return Boolean.TRUE;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
        
            if (r3.this$0.isSameType(r4.type, r0.type, true) != false) goto L16;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Boolean visitWildcardType(Type.WildcardType wildcardType, Type type) {
            if (!type.hasTag(TypeTag.WILDCARD)) {
                return Boolean.FALSE;
            }
            Type.WildcardType wildcardType2 = (Type.WildcardType) type;
            boolean z10 = wildcardType.kind == wildcardType2.kind || (wildcardType.isExtendsBound() && type.isExtendsBound());
            return Boolean.valueOf(z10);
        }
    }

    public static abstract class SimpleVisitor<R, S> extends DefaultTypeVisitor<R, S> {
        @Override
        public R visitCapturedType(Type.CapturedType capturedType, S s10) {
            return visitTypeVar(capturedType, s10);
        }

        @Override
        public R visitForAll(Type.ForAll forAll, S s10) {
            return visit(forAll.qtype, s10);
        }

        @Override
        public R visitUndetVar(Type.UndetVar undetVar, S s10) {
            return visit(undetVar.qtype, s10);
        }
    }

    public class Subst extends Type.StructuralTypeMapping<Void> {
        List<Type> from;
        List<Type> to;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v0, types: [org.openjdk.tools.javac.util.List<org.openjdk.tools.javac.code.Type>, org.openjdk.tools.javac.util.List] */
        /* JADX WARN: Type inference failed for: r4v1, types: [org.openjdk.tools.javac.util.List<org.openjdk.tools.javac.code.Type>, org.openjdk.tools.javac.util.List] */
        /* JADX WARN: Type inference failed for: r4v2, types: [org.openjdk.tools.javac.util.List<A>] */
        public Subst(List<Type> list, List<Type> list2) {
            int length = list.length();
            int length2 = list2.length();
            List<Type> list3 = list;
            while (length > length2) {
                length--;
                list3 = list3.tail;
            }
            while (length < length2) {
                length2--;
                list2 = list2.tail;
            }
            this.from = list3;
            this.to = list2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Type visitTypeVar(Type.TypeVar typeVar, Void r42) {
            List list = this.from;
            List list2 = this.to;
            while (list.nonEmpty()) {
                if (typeVar.equalsIgnoreMetadata((Type) list.head)) {
                    return ((Type) list2.head).withTypeVar(typeVar);
                }
                list = list.tail;
                list2 = list2.tail;
            }
            return typeVar;
        }

        @Override
        public Type visitClassType(Type.ClassType classType, Void r42) {
            if (!classType.isCompound()) {
                return super.visitClassType(classType, (Type.ClassType) r42);
            }
            Type visit = visit(Types.this.supertype(classType));
            List<Type> visit2 = visit(Types.this.interfaces(classType), (List<Type>) r42);
            return (visit == Types.this.supertype(classType) && visit2 == Types.this.interfaces(classType)) ? classType : Types.this.makeIntersectionType(visit2.prepend(visit));
        }

        @Override
        public Type visitForAll(Type.ForAll forAll, Void r52) {
            if (Type.containsAny(this.to, forAll.tvars)) {
                List<Type> newInstances = Types.this.newInstances(forAll.tvars);
                forAll = new Type.ForAll(newInstances, Types.this.subst(forAll.qtype, forAll.tvars, newInstances));
            }
            List<Type> substBounds = Types.this.substBounds(forAll.tvars, this.from, this.to);
            Type visit = visit(forAll.qtype);
            List<Type> list = forAll.tvars;
            if (substBounds == list && visit == forAll.qtype) {
                return forAll;
            }
            if (substBounds == list) {
                return new Type.ForAll(substBounds, visit) {
                    @Override
                    public boolean needsStripping() {
                        return true;
                    }
                };
            }
            return new Type.ForAll(substBounds, Types.this.subst(visit, forAll.tvars, substBounds)) {
                @Override
                public boolean needsStripping() {
                    return true;
                }
            };
        }

        @Override
        public Type visitWildcardType(Type.WildcardType wildcardType, Void r32) {
            Type.WildcardType wildcardType2 = (Type.WildcardType) super.visitWildcardType(wildcardType, (Type.WildcardType) r32);
            if (wildcardType2 != wildcardType && wildcardType.isExtendsBound() && wildcardType2.type.isExtendsBound()) {
                wildcardType2.type = Types.this.wildUpperBound(wildcardType2.type);
            }
            return wildcardType2;
        }
    }

    public static class TypeMapping<S> extends MapVisitor<S> implements Function<Type, Type> {
        /* JADX WARN: Multi-variable type inference failed */
        public Type lambda$visit$0(Object obj, Type type) {
            return visit(type, (Type) obj);
        }

        public List<Type> visit(List<Type> list, final S s10) {
            return list.map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Type lambda$visit$0;
                    lambda$visit$0 = Types.TypeMapping.this.lambda$visit$0(s10, (Type) obj);
                    return lambda$visit$0;
                }
            });
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object visitCapturedType(Type.CapturedType capturedType, Object obj) {
            return visitCapturedType(capturedType, (Type.CapturedType) obj);
        }

        @Override
        public Type apply(Type type) {
            return visit(type);
        }

        @Override
        public Type visitCapturedType(Type.CapturedType capturedType, S s10) {
            return visitTypeVar(capturedType, s10);
        }
    }

    public class TypePair {
        boolean strict;

        final Type f102924t1;

        final Type f102925t2;

        public TypePair(Types types, Type type, Type type2) {
            this(type, type2, false);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof TypePair)) {
                return false;
            }
            TypePair typePair = (TypePair) obj;
            return Types.this.isSameType(this.f102924t1, typePair.f102924t1, this.strict) && Types.this.isSameType(this.f102925t2, typePair.f102925t2, this.strict);
        }

        public int hashCode() {
            return (Types.this.hashCode(this.f102924t1) * 127) + Types.this.hashCode(this.f102925t2);
        }

        public TypePair(Type type, Type type2, boolean z10) {
            this.f102924t1 = type;
            this.f102925t2 = type2;
            this.strict = z10;
        }
    }

    public static abstract class TypeRelation extends SimpleVisitor<Boolean, Type> {
    }

    public static abstract class UnaryVisitor<R> extends SimpleVisitor<R, Void> {
        public final R visit(Type type) {
            return (R) type.accept(this, (UnaryVisitor<R>) null);
        }
    }

    public static class UniqueType {
        public final Type type;
        final Types types;

        public UniqueType(Type type, Types types) {
            this.type = type;
            this.types = types;
        }

        public boolean equals(Object obj) {
            return (obj instanceof UniqueType) && this.types.isSameType(this.type, ((UniqueType) obj).type);
        }

        public int hashCode() {
            return this.types.hashCode(this.type);
        }

        public String toString() {
            return this.type.toString();
        }
    }

    public Types(Context context) {
        context.put((Context.Key<Context.Key<Types>>) typesKey, (Context.Key<Types>) this);
        this.syms = Symtab.instance(context);
        Names instance = Names.instance(context);
        this.names = instance;
        Source instance2 = Source.instance(context);
        this.allowObjectToPrimitiveCast = instance2.allowObjectToPrimitiveCast();
        this.allowDefaultMethods = instance2.allowDefaultMethods();
        this.mapCapturesToBounds = instance2.mapCapturesToBounds();
        this.chk = Check.instance(context);
        this.enter = Enter.instance(context);
        this.capturedName = instance.fromString("<captured wildcard>");
        this.messages = JavacMessages.instance(context);
        this.diags = JCDiagnostic.Factory.instance(context);
        this.functionDescriptorLookupError = new FunctionDescriptorLookupError();
        this.noWarnings = new Warner(null);
    }

    public void adaptSelf(Type type, ListBuffer<Type> listBuffer, ListBuffer<Type> listBuffer2) {
        try {
            adapt(type.tsym.type, type, listBuffer, listBuffer2);
        } catch (AdaptFailure e10) {
            throw new AssertionError(e10);
        }
    }

    private void appendTyparamString(Type.TypeVar typeVar, StringBuilder sb2) {
        sb2.append((Object) typeVar);
        Type type = typeVar.bound;
        if (type == null || type.tsym.getQualifiedName() == this.names.java_lang_Object) {
            return;
        }
        sb2.append(" extends ");
        Type type2 = typeVar.bound;
        if (!type2.isCompound()) {
            sb2.append((Object) type2);
            return;
        }
        if ((erasure(typeVar).tsym.flags() & 512) == 0) {
            sb2.append(supertype(typeVar));
            Iterator<Type> it = interfaces(typeVar).iterator();
            while (it.hasNext()) {
                Object obj = (Type) it.next();
                sb2.append('&');
                sb2.append(obj);
            }
            return;
        }
        Iterator<Type> it2 = interfaces(typeVar).iterator();
        boolean z10 = true;
        while (it2.hasNext()) {
            Object obj2 = (Type) it2.next();
            if (!z10) {
                sb2.append('&');
            }
            sb2.append(obj2);
            z10 = false;
        }
    }

    public Type arraySuperType() {
        if (this.arraySuperType == null) {
            synchronized (this) {
                try {
                    if (this.arraySuperType == null) {
                        Symtab symtab = this.syms;
                        this.arraySuperType = makeIntersectionType(List.of(symtab.serializableType, symtab.cloneableType), true);
                    }
                } finally {
                }
            }
        }
        return this.arraySuperType;
    }

    private void checkUnsafeVarargsConversion(Type type, Type type2, Warner warner) {
        if (!type.hasTag(TypeTag.ARRAY) || isReifiable(type)) {
            return;
        }
        Type.ArrayType arrayType = (Type.ArrayType) type;
        int i10 = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$TypeTag[type2.getTag().ordinal()];
        boolean z10 = false;
        if (i10 == 1) {
            z10 = (!arrayType.isVarargs() || ((Type.ArrayType) type2).isVarargs() || isReifiable(arrayType)) ? false : true;
        } else if (i10 == 2) {
            z10 = arrayType.isVarargs();
        }
        if (z10) {
            warner.warn(Lint.LintCategory.VARARGS);
        }
    }

    public List<Type> closureMin(List<Type> list) {
        ListBuffer listBuffer = new ListBuffer();
        ListBuffer listBuffer2 = new ListBuffer();
        HashSet hashSet = new HashSet();
        for (List<Type> list2 = list; !list2.isEmpty(); list2 = list2.tail) {
            Type type = list2.head;
            boolean contains = hashSet.contains(type);
            boolean z10 = !contains;
            if (!contains && type.hasTag(TypeTag.TYPEVAR)) {
                Iterator<Type> it = list2.tail.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (isSubtypeNoCapture(it.next(), type)) {
                        z10 = false;
                        break;
                    }
                }
            }
            if (z10) {
                if (type.isInterface()) {
                    listBuffer2.append(type);
                } else {
                    listBuffer.append(type);
                }
                Iterator<Type> it2 = list2.tail.iterator();
                while (it2.hasNext()) {
                    Type next = it2.next();
                    if (isSubtypeNoCapture(type, next)) {
                        hashSet.add(next);
                    }
                }
            }
        }
        return listBuffer.appendList(listBuffer2).toList();
    }

    private Type compoundMin(List<Type> list) {
        if (list.isEmpty()) {
            return this.syms.objectType;
        }
        List<Type> closureMin = closureMin(list);
        if (closureMin.isEmpty()) {
            return null;
        }
        return closureMin.tail.isEmpty() ? closureMin.head : makeIntersectionType(closureMin);
    }

    private boolean eraseNotNeeded(Type type) {
        return type.isPrimitive() || this.syms.stringType.tsym == type.tsym;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Symbol.MethodSymbol firstUnimplementedAbstractImpl(Symbol.ClassSymbol classSymbol, Symbol.ClassSymbol classSymbol2) {
        Symbol.MethodSymbol methodSymbol;
        Symbol.MethodSymbol methodSymbol2 = null;
        if (classSymbol2 == classSymbol || (classSymbol2.flags() & 1536) != 0) {
            for (Symbol symbol : classSymbol2.members().getSymbols(Scope.LookupKind.NON_RECURSIVE)) {
                if (symbol.kind == Kinds.Kind.MTH && (symbol.flags() & 8796093023234L) == 1024) {
                    Symbol.MethodSymbol methodSymbol3 = (Symbol.MethodSymbol) symbol;
                    Symbol.MethodSymbol implementation = methodSymbol3.implementation(classSymbol, this, true);
                    if ((implementation == null || implementation == methodSymbol3) && this.allowDefaultMethods && (methodSymbol = interfaceCandidates(classSymbol.type, methodSymbol3).head) != null && methodSymbol.overrides(methodSymbol3, classSymbol, this, true)) {
                        implementation = methodSymbol;
                    }
                    if (implementation == null || implementation == methodSymbol3) {
                        methodSymbol2 = methodSymbol3;
                        break;
                    }
                }
            }
            if (methodSymbol2 == null) {
                Type supertype = supertype(classSymbol2.type);
                if (supertype.hasTag(TypeTag.CLASS)) {
                    methodSymbol2 = firstUnimplementedAbstractImpl(classSymbol, (Symbol.ClassSymbol) supertype.tsym);
                }
            }
            for (List interfaces = interfaces(classSymbol2.type); methodSymbol2 == null && interfaces.nonEmpty(); interfaces = interfaces.tail) {
                methodSymbol2 = firstUnimplementedAbstractImpl(classSymbol, (Symbol.ClassSymbol) ((Type) interfaces.head).tsym);
            }
        }
        return methodSymbol2;
    }

    public boolean giveWarning(Type type, Type type2) {
        Iterator<Type> it = (type2.isCompound() ? directSupertypes(type2) : List.of(type2)).iterator();
        while (it.hasNext()) {
            Type next = it.next();
            Type asSub = asSub(type, next.tsym);
            if (next.isParameterized() && !isUnbounded(next) && !isSubtype(type, next) && (asSub == null || !containsType(next.allparams(), asSub.allparams()))) {
                return true;
            }
        }
        return false;
    }

    private Type glbFlattened(List<Type> list, Type type) {
        List<Type> closureMin = closureMin(list);
        if (closureMin.isEmpty()) {
            return this.syms.objectType;
        }
        if (closureMin.tail.isEmpty()) {
            return closureMin.head;
        }
        List<Type> nil = List.nil();
        List<Type> nil2 = List.nil();
        Iterator<Type> it = closureMin.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Type next = it.next();
            if (!next.isInterface()) {
                i10++;
                Type cvarLowerBound = cvarLowerBound(next);
                if (next != cvarLowerBound && !cvarLowerBound.hasTag(TypeTag.BOT)) {
                    nil = nil.append(next);
                    nil2 = nil2.append(cvarLowerBound);
                }
            }
        }
        return i10 > 1 ? nil2.isEmpty() ? createErrorType(type) : glb(closureMin.diff(nil).appendList(nil2)) : makeIntersectionType(closureMin);
    }

    public static Types instance(Context context) {
        Types types = (Types) context.get(typesKey);
        return types == null ? new Types(context) : types;
    }

    private boolean isSubtypeUncheckedInternal(Type type, Type type2, boolean z10, Warner warner) {
        Type asSuper;
        TypeTag typeTag = TypeTag.ARRAY;
        if (type.hasTag(typeTag) && type2.hasTag(typeTag)) {
            return ((Type.ArrayType) type).elemtype.isPrimitive() ? isSameType(elemtype(type), elemtype(type2)) : isSubtypeUncheckedInternal(elemtype(type), elemtype(type2), false, warner);
        }
        if (isSubtype(type, type2, z10)) {
            return true;
        }
        if (type.hasTag(TypeTag.TYPEVAR)) {
            return isSubtypeUncheckedInternal(type.getUpperBound(), type2, false, warner);
        }
        if (type2.isRaw() || (asSuper = asSuper(type, type2.tsym)) == null || !asSuper.isRaw()) {
            return false;
        }
        if (isReifiable(type2)) {
            warner.silentWarn(Lint.LintCategory.UNCHECKED);
        } else {
            warner.warn(Lint.LintCategory.UNCHECKED);
        }
        return true;
    }

    public ClosureHolder lambda$closureCollector$2(boolean z10, BiPredicate biPredicate) {
        return new ClosureHolder(z10, biPredicate);
    }

    public static String lambda$membersClosure$1(Type type) {
        return "type " + ((Object) type);
    }

    public static boolean lambda$new$3(Type type, Type type2) {
        return type.tsym == type2.tsym;
    }

    public static boolean lambda$removeWildcards$0(Type type) {
        return type.hasTag(TypeTag.WILDCARD);
    }

    public Type.WildcardType makeExtendsWildcard(Type type, Type.TypeVar typeVar) {
        if (type != this.syms.objectType) {
            return new Type.WildcardType(type, BoundKind.EXTENDS, this.syms.boundClass, typeVar);
        }
        Symtab symtab = this.syms;
        return new Type.WildcardType(symtab.objectType, BoundKind.UNBOUND, symtab.boundClass, typeVar);
    }

    public Type.WildcardType makeSuperWildcard(Type type, Type.TypeVar typeVar) {
        if (!type.hasTag(TypeTag.BOT)) {
            return new Type.WildcardType(type, BoundKind.SUPER, this.syms.boundClass, typeVar);
        }
        Symtab symtab = this.syms;
        return new Type.WildcardType(symtab.objectType, BoundKind.UNBOUND, symtab.boundClass, typeVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Type merge(Type type, Type type2) {
        Type.WildcardType wildcardType;
        Type.ClassType classType = (Type.ClassType) type;
        List typeArguments = classType.getTypeArguments();
        List typeArguments2 = ((Type.ClassType) type2).getTypeArguments();
        ListBuffer listBuffer = new ListBuffer();
        List typeArguments3 = classType.tsym.type.getTypeArguments();
        while (typeArguments.nonEmpty() && typeArguments2.nonEmpty() && typeArguments3.nonEmpty()) {
            if (containsType((Type) typeArguments.head, (Type) typeArguments2.head)) {
                listBuffer.append(typeArguments.head);
            } else if (containsType((Type) typeArguments2.head, (Type) typeArguments.head)) {
                listBuffer.append(typeArguments2.head);
            } else {
                TypePair typePair = new TypePair(this, type, type2);
                if (this.mergeCache.add(typePair)) {
                    wildcardType = new Type.WildcardType(lub(wildUpperBound((Type) typeArguments.head), wildUpperBound((Type) typeArguments2.head)), BoundKind.EXTENDS, this.syms.boundClass);
                    this.mergeCache.remove(typePair);
                } else {
                    Symtab symtab = this.syms;
                    wildcardType = new Type.WildcardType(symtab.objectType, BoundKind.UNBOUND, symtab.boundClass);
                }
                listBuffer.append(wildcardType.withTypeVar((Type) typeArguments3.head));
            }
            typeArguments = typeArguments.tail;
            typeArguments2 = typeArguments2.tail;
            typeArguments3 = typeArguments3.tail;
        }
        Assert.check(typeArguments.isEmpty() && typeArguments2.isEmpty() && typeArguments3.isEmpty());
        return new Type.ClassType(classType.getEnclosingType(), listBuffer.toList(), classType.tsym);
    }

    private boolean pendingBridges(Symbol.ClassSymbol classSymbol, Symbol.TypeSymbol typeSymbol) {
        JavaFileObject javaFileObject = classSymbol.classfile;
        if (javaFileObject != null && javaFileObject.getKind() == JavaFileObject.Kind.CLASS && this.enter.getEnv(classSymbol) == null) {
            return false;
        }
        if (classSymbol == typeSymbol) {
            return true;
        }
        Iterator<Type> it = interfaces(classSymbol.type).iterator();
        while (it.hasNext()) {
            if (pendingBridges((Symbol.ClassSymbol) it.next().tsym, typeSymbol)) {
                return true;
            }
        }
        return false;
    }

    private Type relaxBound(Type type) {
        return type.hasTag(TypeTag.TYPEVAR) ? rewriteQuantifiers(skipTypeVars(type, false), true, true) : type;
    }

    public Type rewriteQuantifiers(Type type, boolean z10, boolean z11) {
        return new Rewriter(z10, z11).visit(type);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean sideCast(Type type, Type type2, Warner warner) {
        boolean z10;
        if ((type2.tsym.flags() & 512) == 0) {
            Assert.check((512 & type.tsym.flags()) != 0);
            z10 = true;
        } else {
            z10 = false;
            type2 = type;
            type = type2;
        }
        List superClosure = superClosure(type, erasure(type2));
        boolean isEmpty = superClosure.isEmpty();
        while (superClosure.nonEmpty()) {
            Type asSuper = asSuper(type2, ((Type) superClosure.head).tsym);
            Type type3 = (Type) superClosure.head;
            if (disjointTypes(asSuper.getTypeArguments(), type3.getTypeArguments())) {
                return false;
            }
            isEmpty = isEmpty || (!z10 ? !giveWarning(asSuper, type3) : !giveWarning(type3, asSuper));
            superClosure = superClosure.tail;
        }
        if (isEmpty) {
            if (z10) {
                type = type2;
            }
            if (!isReifiable(type)) {
                warner.warn(Lint.LintCategory.UNCHECKED);
            }
        }
        return true;
    }

    public boolean sideCastFinal(Type type, Type type2, Warner warner) {
        Type type3;
        boolean z10;
        if ((type2.tsym.flags() & 512) == 0) {
            Assert.check((512 & type.tsym.flags()) != 0);
            type3 = type;
            type = type2;
            z10 = true;
        } else {
            type3 = type2;
            z10 = false;
        }
        Assert.check((type.tsym.flags() & 16) != 0);
        Type asSuper = asSuper(type, type3.tsym);
        if (asSuper == null || disjointTypes(asSuper.getTypeArguments(), type3.getTypeArguments())) {
            return false;
        }
        if (!isReifiable(type2) && (!z10 ? giveWarning(asSuper, type3) : giveWarning(type3, asSuper))) {
            warner.warn(Lint.LintCategory.UNCHECKED);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private List<Type> superClosure(Type type, Type type2) {
        List<Type> nil = List.nil();
        for (List interfaces = interfaces(type); interfaces.nonEmpty(); interfaces = interfaces.tail) {
            nil = isSubtype(type2, erasure((Type) interfaces.head)) ? insert(nil, (Type) interfaces.head) : union(nil, superClosure((Type) interfaces.head, type2));
        }
        return nil;
    }

    private String typaramsString(List<Type> list) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('<');
        Iterator<Type> it = list.iterator();
        boolean z10 = true;
        while (it.hasNext()) {
            Type next = it.next();
            if (!z10) {
                sb2.append(", ");
            }
            appendTyparamString((Type.TypeVar) next, sb2);
            z10 = false;
        }
        sb2.append('>');
        return sb2.toString();
    }

    public void adapt(Type type, Type type2, ListBuffer<Type> listBuffer, ListBuffer<Type> listBuffer2) throws AdaptFailure {
        new Adapter(listBuffer, listBuffer2).adapt(type, type2);
    }

    public Type asEnclosingSuper(Type type, Symbol symbol) {
        TypeTag typeTag;
        int i10 = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()];
        if (i10 == 1) {
            if (isSubtype(type, symbol.type)) {
                return symbol.type;
            }
            return null;
        }
        if (i10 != 2) {
            if (i10 == 12) {
                return asSuper(type, symbol);
            }
            if (i10 != 16) {
                return null;
            }
            return type;
        }
        do {
            Type asSuper = asSuper(type, symbol);
            if (asSuper != null) {
                return asSuper;
            }
            Type enclosingType = type.getEnclosingType();
            typeTag = TypeTag.CLASS;
            type = enclosingType.hasTag(typeTag) ? enclosingType : type.tsym.owner.enclClass() != null ? type.tsym.owner.enclClass().type : Type.noType;
        } while (type.hasTag(typeTag));
        return null;
    }

    public Type asOuterSuper(Type type, Symbol symbol) {
        int i10 = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()];
        if (i10 == 1) {
            if (isSubtype(type, symbol.type)) {
                return symbol.type;
            }
            return null;
        }
        if (i10 != 2) {
            if (i10 == 12) {
                return asSuper(type, symbol);
            }
            if (i10 != 16) {
                return null;
            }
            return type;
        }
        do {
            Type asSuper = asSuper(type, symbol);
            if (asSuper != null) {
                return asSuper;
            }
            type = type.getEnclosingType();
        } while (type.hasTag(TypeTag.CLASS));
        return null;
    }

    public Type asSub(Type type, Symbol symbol) {
        return this.asSub.visit(type, symbol);
    }

    public Type asSuper(Type type, Symbol symbol) {
        Type type2 = symbol.type;
        Type type3 = this.syms.objectType;
        return type2 == type3 ? type3 : this.asSuper.visit(type, symbol);
    }

    public Symbol.ClassSymbol boxedClass(Type type) {
        Symtab symtab = this.syms;
        return symtab.enterClass(symtab.java_base, symtab.boxedName[type.getTag().ordinal()]);
    }

    public Type boxedTypeOrType(Type type) {
        return type.isPrimitive() ? boxedClass(type).type : type;
    }

    public List<Type> capture(List<Type> list) {
        List nil = List.nil();
        Iterator<Type> it = list.iterator();
        while (it.hasNext()) {
            nil = nil.prepend(capture(it.next()));
        }
        return nil.reverse();
    }

    public Type classBound(Type type) {
        return this.classBound.visit(type);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<Type> closure(Type type) {
        List<Type> list = this.closureCache.get(type);
        if (list == null) {
            Type supertype = supertype(type);
            list = !type.isCompound() ? supertype.hasTag(TypeTag.CLASS) ? insert(closure(supertype), type) : supertype.hasTag(TypeTag.TYPEVAR) ? closure(supertype).prepend(type) : List.of(type) : closure(supertype(type));
            for (List interfaces = interfaces(type); interfaces.nonEmpty(); interfaces = interfaces.tail) {
                list = union(list, closure((Type) interfaces.head));
            }
            this.closureCache.put(type, list);
        }
        return list;
    }

    public Collector<Type, ClosureHolder, List<Type>> closureCollector(final boolean z10, final BiPredicate<Type, Type> biPredicate) {
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                Types.ClosureHolder lambda$closureCollector$2;
                lambda$closureCollector$2 = Types.this.lambda$closureCollector$2(z10, biPredicate);
                return lambda$closureCollector$2;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((Types.ClosureHolder) obj).add((Type) obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((Types.ClosureHolder) obj).merge((Types.ClosureHolder) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((Types.ClosureHolder) obj).closure();
            }
        }, new Collector.Characteristics[0]);
    }

    public boolean containedBy(Type type, Type type2) {
        int i10 = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()];
        if (i10 == 16) {
            return true;
        }
        if (i10 != 17) {
            return containsType(type2, type);
        }
        if (!type2.hasTag(TypeTag.WILDCARD)) {
            return isSameType(type, type2);
        }
        Type.UndetVar undetVar = (Type.UndetVar) type;
        int i11 = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$BoundKind[((Type.WildcardType) type2).kind.ordinal()];
        if (i11 == 2) {
            undetVar.addBound(Type.UndetVar.InferenceBound.UPPER, wildUpperBound(type2), this);
        } else if (i11 == 3) {
            undetVar.addBound(Type.UndetVar.InferenceBound.LOWER, wildLowerBound(type2), this);
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r3 = r3;
        r4 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean containsType(List<Type> list, List<Type> list2) {
        List<Type> list3;
        List<Type> list4;
        while (list4.nonEmpty() && list3.nonEmpty() && containsType(list4.head, list3.head)) {
            list4 = list4.tail;
            list3 = list3.tail;
        }
        return list4.isEmpty() && list3.isEmpty();
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r3 = r3;
        r4 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean containsTypeEquivalent(List<Type> list, List<Type> list2) {
        List<Type> list3;
        List<Type> list4;
        while (list4.nonEmpty() && list3.nonEmpty() && containsTypeEquivalent(list4.head, list3.head)) {
            list4 = list4.tail;
            list3 = list3.tail;
        }
        return list4.isEmpty() && list3.isEmpty();
    }

    public boolean covariantReturnType(Type type, Type type2, Warner warner) {
        return isSameType(type, type2) || !(type.isPrimitive() || type2.isPrimitive() || !isAssignable(type, type2, warner));
    }

    public Type createErrorType(Type type) {
        return new Type.ErrorType(type, this.syms.errSymbol);
    }

    public Type createMethodTypeWithParameters(Type type, List<Type> list) {
        return (Type) type.accept((Type.Visitor<R, MapVisitor<List<Type>>>) this.methodWithParameters, (MapVisitor<List<Type>>) list);
    }

    public Type createMethodTypeWithReturn(Type type, Type type2) {
        return (Type) type.accept(this.methodWithReturn, (MapVisitor<Type>) type2);
    }

    public Type createMethodTypeWithThrown(Type type, List<Type> list) {
        return (Type) type.accept((Type.Visitor<R, MapVisitor<List<Type>>>) this.methodWithThrown, (MapVisitor<List<Type>>) list);
    }

    public Type cvarLowerBound(Type type) {
        return (type.hasTag(TypeTag.TYPEVAR) && ((Type.TypeVar) type).isCaptured()) ? cvarLowerBound(type.getLowerBound()) : type;
    }

    public List<Type> cvarLowerBounds(List<Type> list) {
        return list.map(this.cvarLowerBoundMapping);
    }

    public Type cvarUpperBound(Type type) {
        if (!type.hasTag(TypeTag.TYPEVAR)) {
            return type;
        }
        Type.TypeVar typeVar = (Type.TypeVar) type;
        return typeVar.isCaptured() ? cvarUpperBound(typeVar.bound) : typeVar;
    }

    public int dimensions(Type type) {
        int i10 = 0;
        while (type.hasTag(TypeTag.ARRAY)) {
            i10++;
            type = elemtype(type);
        }
        return i10;
    }

    public List<Type> directSupertypes(Type type) {
        return this.directSupertypes.visit(type);
    }

    public boolean disjointType(Type type, Type type2) {
        return this.disjointType.visit(type, type2).booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r3 = r3;
        r4 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean disjointTypes(List<Type> list, List<Type> list2) {
        List<Type> list3;
        for (List<Type> list4 = list2; list3.tail != null && list4.tail != null; list4 = list4.tail) {
            if (disjointType(list3.head, list4.head)) {
                return true;
            }
            list3 = list3.tail;
        }
        return false;
    }

    public Type elemtype(Type type) {
        int i10 = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()];
        if (i10 == 1) {
            return ((Type.ArrayType) type).elemtype;
        }
        if (i10 == 14) {
            return elemtype(wildUpperBound(type));
        }
        if (i10 == 16) {
            return type;
        }
        if (i10 != 18) {
            return null;
        }
        return elemtype(((Type.ForAll) type).qtype);
    }

    public Type elemtypeOrType(Type type) {
        Type elemtype = elemtype(type);
        return elemtype != null ? elemtype : type;
    }

    public List<Type> erasedSupertypes(Type type) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = closure(type).iterator();
        while (it.hasNext()) {
            Type next = it.next();
            if (next.hasTag(TypeTag.TYPEVAR)) {
                listBuffer.append(next);
            } else {
                listBuffer.append(erasure(next));
            }
        }
        return listBuffer.toList();
    }

    public Type erasure(Type type) {
        return eraseNotNeeded(type) ? type : erasure(type, false);
    }

    public Type erasureRecursive(Type type) {
        return erasure(type, true);
    }

    public Symbol findDescriptorSymbol(Symbol.TypeSymbol typeSymbol) throws FunctionDescriptorLookupError {
        return this.descCache.get(typeSymbol).getSymbol();
    }

    public Type findDescriptorType(Type type) throws FunctionDescriptorLookupError {
        return this.descCache.get(type.tsym).getType(type);
    }

    public Symbol.MethodSymbol firstUnimplementedAbstract(Symbol.ClassSymbol classSymbol) {
        try {
            return firstUnimplementedAbstractImpl(classSymbol, classSymbol);
        } catch (Symbol.CompletionFailure e10) {
            this.chk.completionError(this.enter.getEnv(classSymbol).tree.pos(), e10);
            return null;
        }
    }

    public List<Type> freshTypeVariables(List<Type> list) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = list.iterator();
        while (it.hasNext()) {
            Type next = it.next();
            if (next.hasTag(TypeTag.WILDCARD)) {
                Type.WildcardType wildcardType = (Type.WildcardType) next;
                Type extendsBound = wildcardType.getExtendsBound();
                if (extendsBound == null) {
                    extendsBound = this.syms.objectType;
                }
                Name name = this.capturedName;
                Symtab symtab = this.syms;
                listBuffer.append(new Type.CapturedType(name, symtab.noSymbol, extendsBound, symtab.botType, wildcardType));
            } else {
                listBuffer.append(next);
            }
        }
        return listBuffer.toList();
    }

    public List<Symbol> functionalInterfaceBridges(Symbol.TypeSymbol typeSymbol) {
        Assert.check(isFunctionalInterface(typeSymbol));
        Symbol findDescriptorSymbol = findDescriptorSymbol(typeSymbol);
        Scope.CompoundScope membersClosure = membersClosure(typeSymbol.type, false);
        ListBuffer listBuffer = new ListBuffer();
        for (Symbol symbol : membersClosure.getSymbolsByName(findDescriptorSymbol.name, this.bridgeFilter)) {
            if (symbol != findDescriptorSymbol && findDescriptorSymbol.overrides(symbol, typeSymbol, this, false)) {
                Iterator it = listBuffer.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        listBuffer.add(symbol);
                        break;
                    }
                    Symbol symbol2 = (Symbol) it.next();
                    if (!isSameType(symbol2.erasure(this), symbol.erasure(this)) && (!symbol2.overrides(symbol, typeSymbol, this, false) || (!pendingBridges((Symbol.ClassSymbol) typeSymbol, symbol2.enclClass()) && ((Symbol.MethodSymbol) symbol).binaryImplementation((Symbol.ClassSymbol) symbol2.owner, this) == null))) {
                    }
                }
            }
        }
        return listBuffer.toList();
    }

    public List<Type> getBounds(Type.TypeVar typeVar) {
        return typeVar.bound.hasTag(TypeTag.NONE) ? List.nil() : (typeVar.bound.isErroneous() || !typeVar.bound.isCompound()) ? List.of(typeVar.bound) : (erasure(typeVar).tsym.flags() & 512) == 0 ? interfaces(typeVar).prepend(supertype(typeVar)) : interfaces(typeVar);
    }

    public Attribute.RetentionPolicy getRetention(Attribute.Compound compound) {
        return getRetention(compound.type.tsym);
    }

    public Type glb(List<Type> list) {
        Type type = list.head;
        Iterator<Type> it = list.tail.iterator();
        while (it.hasNext()) {
            Type next = it.next();
            if (type.isErroneous()) {
                return type;
            }
            type = glb(type, next);
        }
        return type;
    }

    public boolean hasSameArgs(Type type, Type type2) {
        return hasSameArgs(type, type2, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean hasSameBounds(Type.ForAll forAll, Type.ForAll forAll2) {
        List list = forAll.tvars;
        List list2 = forAll2.tvars;
        while (list.nonEmpty() && list2.nonEmpty() && isSameType(((Type) list.head).getUpperBound(), subst(((Type) list2.head).getUpperBound(), forAll2.tvars, forAll.tvars))) {
            list = list.tail;
            list2 = list2.tail;
        }
        return list.isEmpty() && list2.isEmpty();
    }

    public int hashCode(Type type) {
        return hashCode(type, false);
    }

    public Symbol.MethodSymbol implementation(Symbol.MethodSymbol methodSymbol, Symbol.TypeSymbol typeSymbol, boolean z10, Filter<Symbol> filter) {
        return this.implCache.get(methodSymbol, typeSymbol, z10, filter);
    }

    public List<Type> insert(List<Type> list, Type type, BiPredicate<Type, Type> biPredicate) {
        if (list.isEmpty()) {
            return list.prepend(type);
        }
        if (biPredicate.test(type, list.head)) {
            return list;
        }
        if (type.tsym.precedes(list.head.tsym, this)) {
            return list.prepend(type);
        }
        return insert(list.tail, type, biPredicate).prepend(list.head);
    }

    public List<Symbol.MethodSymbol> interfaceCandidates(Type type, Symbol.MethodSymbol methodSymbol) {
        CandidatesCache candidatesCache = this.candidatesCache;
        candidatesCache.getClass();
        CandidatesCache.Entry entry = new CandidatesCache.Entry(type, methodSymbol);
        List<Symbol.MethodSymbol> list = this.candidatesCache.get(entry);
        if (list != null) {
            return list;
        }
        MethodFilter methodFilter = new MethodFilter(methodSymbol, type);
        List<Symbol.MethodSymbol> nil = List.nil();
        for (Symbol symbol : membersClosure(type, false).getSymbols(methodFilter)) {
            if (!type.tsym.isInterface() && !symbol.owner.isInterface()) {
                return List.of((Symbol.MethodSymbol) symbol);
            }
            if (!nil.contains(symbol)) {
                nil = nil.prepend((Symbol.MethodSymbol) symbol);
            }
        }
        List<Symbol.MethodSymbol> prune = prune(nil);
        this.candidatesCache.put(entry, prune);
        return prune;
    }

    public List<Type> interfaces(Type type) {
        return this.interfaces.visit(type);
    }

    public List<Type> intersect(List<Type> list, List<Type> list2) {
        if (list == list2) {
            return list;
        }
        if (list.isEmpty() || list2.isEmpty()) {
            return List.nil();
        }
        if (list.head.tsym.precedes(list2.head.tsym, this)) {
            return intersect(list.tail, list2);
        }
        if (list2.head.tsym.precedes(list.head.tsym, this)) {
            return intersect(list, list2.tail);
        }
        if (isSameType(list.head, list2.head)) {
            return intersect(list.tail, list2.tail).prepend(list.head);
        }
        Type type = list.head;
        if (type.tsym == list2.head.tsym) {
            TypeTag typeTag = TypeTag.CLASS;
            if (type.hasTag(typeTag) && list2.head.hasTag(typeTag)) {
                if (list.head.isParameterized() && list2.head.isParameterized()) {
                    return intersect(list.tail, list2.tail).prepend(merge(list.head, list2.head));
                }
                if (list.head.isRaw() || list2.head.isRaw()) {
                    return intersect(list.tail, list2.tail).prepend(erasure(list.head));
                }
            }
        }
        return intersect(list.tail, list2.tail);
    }

    public boolean isArray(Type type) {
        while (type.hasTag(TypeTag.WILDCARD)) {
            type = wildUpperBound(type);
        }
        return type.hasTag(TypeTag.ARRAY);
    }

    public boolean isAssignable(Type type, Type type2) {
        return isAssignable(type, type2, this.noWarnings);
    }

    public boolean isCaptureOf(Type type, Type.WildcardType wildcardType) {
        if (type.hasTag(TypeTag.TYPEVAR) && ((Type.TypeVar) type).isCaptured()) {
            return isSameWildcard(wildcardType, ((Type.CapturedType) type).wildcard);
        }
        return false;
    }

    public boolean isCastable(Type type, Type type2) {
        return isCastable(type, type2, this.noWarnings);
    }

    public boolean isConvertible(Type type, Type type2, Warner warner) {
        if (type.hasTag(TypeTag.ERROR)) {
            return true;
        }
        boolean isPrimitive = type.isPrimitive();
        if (isPrimitive == type2.isPrimitive()) {
            return isSubtypeUnchecked(type, type2, warner);
        }
        TypeTag typeTag = TypeTag.UNDETVAR;
        boolean hasTag = type.hasTag(typeTag);
        boolean hasTag2 = type2.hasTag(typeTag);
        if (hasTag || hasTag2) {
            if (hasTag) {
                return isSubtype(type, boxedTypeOrType(type2));
            }
            return isSubtype(boxedTypeOrType(type), type2);
        }
        if (isPrimitive) {
            return isSubtype(boxedClass(type).type, type2);
        }
        return isSubtype(unboxedType(type), type2);
    }

    public boolean isDerivedRaw(Type type) {
        Boolean bool = this.isDerivedRawCache.get(type);
        if (bool == null) {
            bool = Boolean.valueOf(isDerivedRawInternal(type));
            this.isDerivedRawCache.put(type, bool);
        }
        return bool.booleanValue();
    }

    public boolean isDerivedRawInternal(Type type) {
        if (type.isErroneous()) {
            return false;
        }
        return type.isRaw() || (supertype(type) != Type.noType && isDerivedRaw(supertype(type))) || isDerivedRaw(interfaces(type));
    }

    public boolean isDirectSuperInterface(Symbol.TypeSymbol typeSymbol, Symbol.TypeSymbol typeSymbol2) {
        Iterator<Type> it = interfaces(typeSymbol2.type).iterator();
        while (it.hasNext()) {
            if (typeSymbol == it.next().tsym) {
                return true;
            }
        }
        return false;
    }

    public boolean isFunctionalInterface(Symbol.TypeSymbol typeSymbol) {
        try {
            findDescriptorSymbol(typeSymbol);
            return true;
        } catch (FunctionDescriptorLookupError unused) {
            return false;
        }
    }

    public boolean isReifiable(Type type) {
        return this.isReifiable.visit(type).booleanValue();
    }

    public boolean isSameType(Type type, Type type2) {
        return isSameType(type, type2, false);
    }

    public boolean isSameTypes(List<Type> list, List<Type> list2) {
        return isSameTypes(list, list2, false);
    }

    public boolean isSameWildcard(Type.WildcardType wildcardType, Type type) {
        if (!type.hasTag(TypeTag.WILDCARD)) {
            return false;
        }
        Type.WildcardType wildcardType2 = (Type.WildcardType) type;
        return wildcardType2.kind == wildcardType.kind && wildcardType2.type == wildcardType.type;
    }

    public boolean isSignaturePolymorphic(Symbol.MethodSymbol methodSymbol) {
        List<Type> parameterTypes = methodSymbol.type.getParameterTypes();
        if ((methodSymbol.flags_field & 256) != 0) {
            Symbol symbol = methodSymbol.owner;
            Symtab symtab = this.syms;
            if ((symbol == symtab.methodHandleType.tsym || symbol == symtab.varHandleType.tsym) && parameterTypes.length() == 1 && parameterTypes.head.hasTag(TypeTag.ARRAY) && ((Type.ArrayType) parameterTypes.head).elemtype.tsym == this.syms.objectType.tsym) {
                return true;
            }
        }
        return false;
    }

    public boolean isSubSignature(Type type, Type type2) {
        return isSubSignature(type, type2, true);
    }

    public final boolean isSubtype(Type type, Type type2) {
        return isSubtype(type, type2, true);
    }

    public final boolean isSubtypeNoCapture(Type type, Type type2) {
        return isSubtype(type, type2, false);
    }

    public boolean isSubtypeUnchecked(Type type, Type type2) {
        return isSubtypeUnchecked(type, type2, this.noWarnings);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r3 = r3;
        r4 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isSubtypes(List<Type> list, List<Type> list2) {
        List<Type> list3;
        List<Type> list4;
        while (list4.tail != null && list3.tail != null && isSubtype(list4.head, list3.head)) {
            list4 = list4.tail;
            list3 = list3.tail;
        }
        return list4.tail == null && list3.tail == null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r3 = r3;
        r4 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isSubtypesUnchecked(List<Type> list, List<Type> list2, Warner warner) {
        List<Type> list3;
        List<Type> list4;
        while (list4.tail != null && list3.tail != null && isSubtypeUnchecked(list4.head, list3.head, warner)) {
            list4 = list4.tail;
            list3 = list3.tail;
        }
        return list4.tail == null && list3.tail == null;
    }

    public boolean isSuperType(Type type, Type type2) {
        int i10 = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()];
        if (i10 != 16) {
            if (i10 != 17) {
                return isSubtype(type2, type);
            }
            Type.UndetVar undetVar = (Type.UndetVar) type;
            if (type != type2 && undetVar.qtype != type2 && !type2.hasTag(TypeTag.ERROR) && !type2.hasTag(TypeTag.BOT)) {
                undetVar.addBound(Type.UndetVar.InferenceBound.LOWER, type2, this);
            }
        }
        return true;
    }

    public boolean isUnbounded(Type type) {
        return this.isUnbounded.visit(type).booleanValue();
    }

    public Type lub(List<Type> list) {
        return lub((Type[]) list.toArray(new Type[list.length()]));
    }

    public Type.ArrayType makeArrayType(Type type) {
        if (type.hasTag(TypeTag.VOID) || type.hasTag(TypeTag.PACKAGE)) {
            Assert.error("Type t must not be a VOID or PACKAGE type, " + type.toString());
        }
        return new Type.ArrayType(type, this.syms.arrayClass);
    }

    public Symbol.ClassSymbol makeFunctionalInterfaceClass(Env<AttrContext> env, Name name, List<Type> list, long j10) {
        if (list.isEmpty()) {
            return null;
        }
        Symbol findDescriptorSymbol = findDescriptorSymbol(list.head.tsym);
        Type findDescriptorType = findDescriptorType(list.head);
        Symbol.ClassSymbol classSymbol = new Symbol.ClassSymbol(j10, name, env.enclClass.sym.outermostClass());
        classSymbol.completer = Symbol.Completer.NULL_COMPLETER;
        classSymbol.members_field = Scope.WriteableScope.create(classSymbol);
        classSymbol.members_field.enter(new Symbol.MethodSymbol(findDescriptorSymbol.flags(), findDescriptorSymbol.name, findDescriptorType, classSymbol));
        Type.ClassType classType = new Type.ClassType(Type.noType, List.nil(), classSymbol);
        classType.supertype_field = this.syms.objectType;
        classType.interfaces_field = list;
        classSymbol.type = classType;
        classSymbol.sourcefile = ((Symbol.ClassSymbol) classSymbol.owner).sourcefile;
        return classSymbol;
    }

    public Type.IntersectionClassType makeIntersectionType(List<Type> list) {
        return makeIntersectionType(list, list.head.tsym.isInterface());
    }

    public Type memberType(Type type, Symbol symbol) {
        return (symbol.flags() & 8) != 0 ? symbol.type : this.memberType.visit(type, symbol);
    }

    public Scope.CompoundScope membersClosure(final Type type, boolean z10) {
        Scope.CompoundScope visit = this.membersCache.visit(type, null);
        Assert.checkNonNull(visit, (Supplier<String>) new Supplier() {
            @Override
            public final Object get() {
                String lambda$membersClosure$1;
                lambda$membersClosure$1 = Types.lambda$membersClosure$1(Type.this);
                return lambda$membersClosure$1;
            }
        });
        if (!z10) {
            return visit;
        }
        MembersClosureCache membersClosureCache = this.membersCache;
        membersClosureCache.getClass();
        return new MembersClosureCache.MembersScope(visit);
    }

    public Optional<Symbol> mergeAbstracts(List<Symbol> list, Type type, boolean z10) {
        List<Type> parameterTypes = list.head.erasure(this).getParameterTypes();
        Iterator<Symbol> it = list.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            Symbol next = it.next();
            if ((next.flags() & 1024) == 0 || (z10 && !isSameTypes(parameterTypes, next.erasure(this).getParameterTypes()))) {
                return Optional.empty();
            }
            if (next.type.hasTag(TypeTag.FORALL)) {
                z11 = true;
            }
        }
        for (MostSpecificReturnCheck mostSpecificReturnCheck : MostSpecificReturnCheck.values()) {
            Iterator<Symbol> it2 = list.iterator();
            while (it2.hasNext()) {
                final Symbol next2 = it2.next();
                Type memberType = memberType(type, next2);
                List<Type> thrownTypes = memberType.getThrownTypes();
                Iterator<Symbol> it3 = list.iterator();
                while (it3.hasNext()) {
                    Symbol next3 = it3.next();
                    if (next2 != next3) {
                        Type memberType2 = memberType(type, next3);
                        if (isSubSignature(memberType, memberType2) && mostSpecificReturnCheck.test(memberType, memberType2, this)) {
                            List<Type> thrownTypes2 = memberType2.getThrownTypes();
                            TypeTag typeTag = TypeTag.FORALL;
                            if (!memberType.hasTag(typeTag) && z11) {
                                thrownTypes2 = erasure(thrownTypes2);
                            } else if (memberType.hasTag(typeTag)) {
                                Assert.check(memberType2.hasTag(typeTag));
                                thrownTypes2 = subst(thrownTypes2, memberType2.getTypeArguments(), memberType.getTypeArguments());
                            }
                            thrownTypes = this.chk.intersect(thrownTypes, thrownTypes2);
                        }
                    }
                }
                return thrownTypes == memberType.getThrownTypes() ? Optional.of(next2) : Optional.of(new Symbol.MethodSymbol(next2.flags(), next2.name, createMethodTypeWithThrown(next2.type, thrownTypes), next2.owner) {
                    @Override
                    public Symbol baseSymbol() {
                        return next2;
                    }
                });
            }
        }
        return Optional.empty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<Type> newInstances(List<Type> list) {
        List<Type> map = list.map(newInstanceFun);
        for (List list2 = map; list2.nonEmpty(); list2 = list2.tail) {
            Type.TypeVar typeVar = (Type.TypeVar) list2.head;
            typeVar.bound = subst(typeVar.bound, list, map);
        }
        return map;
    }

    public void newRound() {
        this.descCache._map.clear();
        this.isDerivedRawCache.clear();
        this.implCache._map.clear();
        this.membersCache._map.clear();
        this.closureCache.clear();
    }

    public boolean notSoftSubtype(Type type, Type type2) {
        if (type == type2) {
            return false;
        }
        if (type.hasTag(TypeTag.TYPEVAR)) {
            return !isCastable(((Type.TypeVar) type).bound, relaxBound(type2), this.noWarnings);
        }
        if (!type2.hasTag(TypeTag.WILDCARD)) {
            type2 = cvarUpperBound(type2);
        }
        return !isSubtype(type, relaxBound(type2));
    }

    public boolean overrideEquivalent(Type type, Type type2) {
        return hasSameArgs(type, type2) || hasSameArgs(type, erasure(type2)) || hasSameArgs(erasure(type), type2);
    }

    public boolean overridesObjectMethod(Symbol.TypeSymbol typeSymbol, Symbol symbol) {
        Iterator<Symbol> it = this.syms.objectType.tsym.members().getSymbolsByName(symbol.name).iterator();
        while (it.hasNext()) {
            if (symbol.overrides(it.next(), typeSymbol, this, true)) {
                return true;
            }
        }
        return false;
    }

    public List<Symbol.MethodSymbol> prune(List<Symbol.MethodSymbol> list) {
        Symbol symbol;
        Symbol symbol2;
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Symbol.MethodSymbol> it = list.iterator();
        while (it.hasNext()) {
            Symbol.MethodSymbol next = it.next();
            Iterator<Symbol.MethodSymbol> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    listBuffer.append(next);
                    break;
                }
                Symbol.MethodSymbol next2 = it2.next();
                if (next != next2 && (symbol = next2.owner) != (symbol2 = next.owner) && asSuper(symbol.type, symbol2) != null) {
                    break;
                }
            }
        }
        return listBuffer.toList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int rank(Type type) {
        int i10 = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()];
        if (i10 == 2) {
            Type.ClassType classType = (Type.ClassType) type;
            if (classType.rank_field < 0) {
                if (classType.tsym.getQualifiedName() == this.names.java_lang_Object) {
                    classType.rank_field = 0;
                } else {
                    int rank = rank(supertype(classType));
                    for (List interfaces = interfaces(classType); interfaces.nonEmpty(); interfaces = interfaces.tail) {
                        if (rank((Type) interfaces.head) > rank) {
                            rank = rank((Type) interfaces.head);
                        }
                    }
                    classType.rank_field = rank + 1;
                }
            }
            return classType.rank_field;
        }
        if (i10 != 12) {
            if (i10 == 15 || i10 == 16) {
                return 0;
            }
            throw new AssertionError();
        }
        Type.TypeVar typeVar = (Type.TypeVar) type;
        if (typeVar.rank_field < 0) {
            int rank2 = rank(supertype(typeVar));
            for (List interfaces2 = interfaces(typeVar); interfaces2.nonEmpty(); interfaces2 = interfaces2.tail) {
                if (rank((Type) interfaces2.head) > rank2) {
                    rank2 = rank((Type) interfaces2.head);
                }
            }
            typeVar.rank_field = rank2 + 1;
        }
        return typeVar.rank_field;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Type removeWildcards(Type type) {
        if (!type.getTypeArguments().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$removeWildcards$0;
                lambda$removeWildcards$0 = Types.lambda$removeWildcards$0((Type) obj);
                return lambda$removeWildcards$0;
            }
        })) {
            return type;
        }
        List typeArguments = type.getTypeArguments();
        List<Type> typeArguments2 = type.tsym.type.getTypeArguments();
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = typeArguments2.iterator();
        while (it.hasNext()) {
            Type next = it.next();
            Type type2 = (Type) typeArguments.head;
            Type upperBound = next.getUpperBound();
            if (((Type) typeArguments.head).hasTag(TypeTag.WILDCARD)) {
                Type.WildcardType wildcardType = (Type.WildcardType) type2;
                if (upperBound.containsAny(typeArguments2)) {
                    listBuffer.add(wildcardType.type);
                } else {
                    int i10 = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$BoundKind[wildcardType.kind.ordinal()];
                    if (i10 == 1) {
                        listBuffer.add(upperBound);
                    } else if (i10 == 2) {
                        listBuffer.add(glb(upperBound, wildcardType.type));
                    } else if (i10 != 3) {
                        Assert.error("Cannot get here!");
                    } else {
                        listBuffer.add(wildcardType.type);
                    }
                }
            } else {
                listBuffer.add(type2);
            }
            typeArguments = typeArguments.tail;
        }
        return subst(type.tsym.type, typeArguments2, listBuffer.toList());
    }

    public boolean resultSubtype(Type type, Type type2, Warner warner) {
        List<Type> typeArguments = type.getTypeArguments();
        return covariantReturnType(type.getReturnType(), subst(type2.getReturnType(), type2.getTypeArguments(), typeArguments), warner);
    }

    public boolean returnTypeSubstitutable(Type type, Type type2) {
        if (hasSameArgs(type, type2)) {
            return resultSubtype(type, type2, this.noWarnings);
        }
        return covariantReturnType(type.getReturnType(), erasure(type2.getReturnType()), this.noWarnings);
    }

    public void setBounds(Type.TypeVar typeVar, List<Type> list) {
        setBounds(typeVar, list, list.head.tsym.isInterface());
    }

    public Type skipTypeVars(Type type, boolean z10) {
        while (type.hasTag(TypeTag.TYPEVAR)) {
            type = type.getUpperBound();
        }
        return z10 ? capture(type) : type;
    }

    public List<Type> subst(List<Type> list, List<Type> list2, List<Type> list3) {
        return list.map(new Subst(list2, list3));
    }

    public Type.TypeVar substBound(Type.TypeVar typeVar, List<Type> list, List<Type> list2) {
        Type subst = subst(typeVar.bound, list, list2);
        if (subst == typeVar.bound) {
            return typeVar;
        }
        Type.TypeVar typeVar2 = new Type.TypeVar(typeVar.tsym, null, this.syms.botType, typeVar.getMetadata());
        typeVar2.bound = subst(subst, List.of(typeVar), List.of(typeVar2));
        return typeVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v5, types: [A, org.openjdk.tools.javac.code.Type] */
    public List<Type> substBounds(List<Type> list, List<Type> list2, List<Type> list3) {
        if (list.isEmpty()) {
            return list;
        }
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = list.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            Type.TypeVar typeVar = (Type.TypeVar) it.next();
            Type subst = subst(typeVar.bound, list2, list3);
            if (subst != typeVar.bound) {
                z10 = true;
            }
            listBuffer.append(subst);
        }
        if (!z10) {
            return list;
        }
        ListBuffer listBuffer2 = new ListBuffer();
        Iterator<Type> it2 = list.iterator();
        while (it2.hasNext()) {
            Type next = it2.next();
            listBuffer2.append(new Type.TypeVar(next.tsym, null, this.syms.botType, next.getMetadata()));
        }
        List<Type> list4 = listBuffer2.toList();
        for (List list5 = listBuffer.toList(); !list5.isEmpty(); list5 = list5.tail) {
            list5.head = subst((Type) list5.head, list, list4);
        }
        List list6 = listBuffer.toList();
        Iterator it3 = listBuffer2.toList().iterator();
        while (it3.hasNext()) {
            ((Type.TypeVar) ((Type) it3.next())).bound = (Type) list6.head;
            list6 = list6.tail;
        }
        return listBuffer2.toList();
    }

    public Type supertype(Type type) {
        return this.supertype.visit(type);
    }

    public String toString(Type type, Locale locale) {
        return Printer.createStandardPrinter(this.messages).visit(type, locale);
    }

    public Type unboxedType(Type type) {
        int i10 = 0;
        while (true) {
            Symtab symtab = this.syms;
            Name[] nameArr = symtab.boxedName;
            if (i10 >= nameArr.length) {
                return Type.noType;
            }
            Name name = nameArr[i10];
            if (name != null && asSuper(type, symtab.enterClass(symtab.java_base, name)) != null) {
                return this.syms.typeOfTag[i10];
            }
            i10++;
        }
    }

    public Type unboxedTypeOrType(Type type) {
        Type unboxedType = unboxedType(type);
        return unboxedType.hasTag(TypeTag.NONE) ? type : unboxedType;
    }

    public List<Type> union(List<Type> list, List<Type> list2, BiPredicate<Type, Type> biPredicate) {
        if (list.isEmpty()) {
            return list2;
        }
        if (list2.isEmpty()) {
            return list;
        }
        if (biPredicate.test(list.head, list2.head)) {
            return union(list.tail, list2.tail, biPredicate).prepend(list.head);
        }
        if (list.head.tsym.precedes(list2.head.tsym, this)) {
            return union(list.tail, list2, biPredicate).prepend(list.head);
        }
        if (list2.head.tsym.precedes(list.head.tsym, this)) {
            return union(list, list2.tail, biPredicate).prepend(list2.head);
        }
        return union(list.tail, list2, biPredicate).prepend(list.head);
    }

    public Type wildLowerBound(Type type) {
        if (!type.hasTag(TypeTag.WILDCARD)) {
            return type;
        }
        Type.WildcardType wildcardType = (Type.WildcardType) type;
        return wildcardType.isExtendsBound() ? this.syms.botType : wildLowerBound(wildcardType.type);
    }

    public Type wildUpperBound(Type type) {
        if (!type.hasTag(TypeTag.WILDCARD)) {
            return type;
        }
        Type.WildcardType wildcardType = (Type.WildcardType) type;
        if (!wildcardType.isSuperBound()) {
            return wildUpperBound(wildcardType.type);
        }
        Type.TypeVar typeVar = wildcardType.bound;
        return typeVar == null ? this.syms.objectType : typeVar.bound;
    }

    public Type erasure(Type type, boolean z10) {
        return type.isPrimitive() ? type : this.erasure.visit(type, (Type) Boolean.valueOf(z10));
    }

    public Type createErrorType(Symbol.ClassSymbol classSymbol, Type type) {
        return new Type.ErrorType(classSymbol, type);
    }

    public List<Type> erasureRecursive(List<Type> list) {
        return this.erasure.visit(list, (List<Type>) Boolean.TRUE);
    }

    public Attribute.RetentionPolicy getRetention(Symbol.TypeSymbol typeSymbol) {
        Attribute member;
        Attribute.RetentionPolicy retentionPolicy = Attribute.RetentionPolicy.CLASS;
        Attribute.Compound attribute = typeSymbol.attribute(this.syms.retentionType.tsym);
        if (attribute == null || (member = attribute.member(this.names.value)) == null || !(member instanceof Attribute.Enum)) {
            return retentionPolicy;
        }
        Name name = ((Attribute.Enum) member).value.name;
        Names names = this.names;
        return name == names.SOURCE ? Attribute.RetentionPolicy.SOURCE : (name != names.CLASS && name == names.RUNTIME) ? Attribute.RetentionPolicy.RUNTIME : retentionPolicy;
    }

    public boolean hasSameArgs(Type type, Type type2, boolean z10) {
        return hasSameArgs(type, type2, z10 ? this.hasSameArgs_strict : this.hasSameArgs_nonstrict);
    }

    public int hashCode(Type type, boolean z10) {
        if (z10) {
            return hashCodeStrictVisitor.visit(type).intValue();
        }
        return hashCodeVisitor.visit(type).intValue();
    }

    public boolean isAssignable(Type type, Type type2, Warner warner) {
        if (type.hasTag(TypeTag.ERROR)) {
            return true;
        }
        if (type.getTag().isSubRangeOf(TypeTag.INT) && type.constValue() != null) {
            int intValue = ((Number) type.constValue()).intValue();
            int[] iArr = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$TypeTag;
            int i10 = iArr[type2.getTag().ordinal()];
            if (i10 != 2) {
                if ((i10 == 3 || i10 == 4 || i10 == 5 || i10 == 6) && type2.getTag().checkRange(intValue)) {
                    return true;
                }
            } else {
                int i11 = iArr[unboxedType(type2).getTag().ordinal()];
                if (i11 == 3 || i11 == 4 || i11 == 5) {
                    return isAssignable(type, unboxedType(type2), warner);
                }
            }
        }
        return isConvertible(type, type2, warner);
    }

    public boolean isCastable(Type type, Type type2, Warner warner) {
        if (type == type2) {
            return true;
        }
        if (type.isPrimitive() != type2.isPrimitive()) {
            Type skipTypeVars = skipTypeVars(type, false);
            if (isConvertible(skipTypeVars, type2, warner)) {
                return true;
            }
            return this.allowObjectToPrimitiveCast && type2.isPrimitive() && isSubtype(boxedClass(type2).type, skipTypeVars);
        }
        List<Warner> list = this.warnStack;
        if (warner != list.head) {
            try {
                this.warnStack = list.prepend(warner);
                checkUnsafeVarargsConversion(type, type2, warner);
                return this.isCastable.visit(type, type2).booleanValue();
            } finally {
                this.warnStack = this.warnStack.tail;
            }
        }
        return this.isCastable.visit(type, type2).booleanValue();
    }

    public boolean isFunctionalInterface(Type type) {
        try {
            findDescriptorType(type);
            return true;
        } catch (FunctionDescriptorLookupError unused) {
            return false;
        }
    }

    public boolean isSameType(Type type, Type type2, boolean z10) {
        if (z10) {
            return this.isSameTypeStrict.visit(type, type2).booleanValue();
        }
        return this.isSameTypeLoose.visit(type, type2).booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r3 = r3;
        r4 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isSameTypes(List<Type> list, List<Type> list2, boolean z10) {
        List<Type> list3;
        List<Type> list4;
        while (list4.tail != null && list3.tail != null && isSameType(list4.head, list3.head, z10)) {
            list4 = list4.tail;
            list3 = list3.tail;
        }
        return list4.tail == null && list3.tail == null;
    }

    public boolean isSubSignature(Type type, Type type2, boolean z10) {
        return hasSameArgs(type, type2, z10) || hasSameArgs(type, erasure(type2), z10);
    }

    public boolean isSubtype(Type type, Type type2, boolean z10) {
        Type cvarLowerBound;
        if (type.equalsIgnoreMetadata(type2)) {
            return true;
        }
        if (type2.isPartial()) {
            return isSuperType(type2, type);
        }
        if (type2.isCompound()) {
            Iterator<Type> it = interfaces(type2).prepend(supertype(type2)).iterator();
            while (it.hasNext()) {
                if (!isSubtype(type, it.next(), z10)) {
                    return false;
                }
            }
            return true;
        }
        if (!type.hasTag(TypeTag.UNDETVAR) && !type.isCompound() && type2 != (cvarLowerBound = cvarLowerBound(wildLowerBound(type2))) && !cvarLowerBound.hasTag(TypeTag.BOT)) {
            if (z10) {
                type = capture(type);
            }
            return isSubtype(type, cvarLowerBound, false);
        }
        TypeRelation typeRelation = this.isSubtype;
        if (z10) {
            type = capture(type);
        }
        return typeRelation.visit(type, type2).booleanValue();
    }

    public boolean isSubtypeUnchecked(Type type, Type type2, Warner warner) {
        boolean isSubtypeUncheckedInternal = isSubtypeUncheckedInternal(type, type2, true, warner);
        if (isSubtypeUncheckedInternal) {
            checkUnsafeVarargsConversion(type, type2, warner);
        }
        return isSubtypeUncheckedInternal;
    }

    public Type lub(Type... typeArr) {
        int[] iArr = new int[typeArr.length];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i10 >= typeArr.length) {
                if (i11 == 0) {
                    return this.syms.botType;
                }
                if (i11 == 1) {
                    Type[] typeArr2 = new Type[typeArr.length];
                    for (int i12 = 0; i12 < typeArr.length; i12++) {
                        Type apply = this.elemTypeFun.apply(typeArr[i12]);
                        typeArr2[i12] = apply;
                        if (apply.isPrimitive()) {
                            Type type = typeArr[0];
                            for (int i13 = 1; i13 < typeArr.length; i13++) {
                                if (!isSameType(type, typeArr[i13])) {
                                    return arraySuperType();
                                }
                            }
                            return type;
                        }
                    }
                    return new Type.ArrayType(lub(typeArr2), this.syms.arrayClass);
                }
                if (i11 != 2) {
                    List<Type> of2 = List.of(arraySuperType());
                    for (int i14 = 0; i14 < typeArr.length; i14++) {
                        if (iArr[i14] != 1) {
                            of2 = of2.prepend(typeArr[i14]);
                        }
                    }
                    return lub(of2);
                }
                int i15 = 0;
                for (Type type2 : typeArr) {
                    if (type2.hasTag(TypeTag.CLASS) || type2.hasTag(TypeTag.TYPEVAR)) {
                        break;
                    }
                    i15++;
                }
                Assert.check(i15 < typeArr.length);
                List<Type> erasedSupertypes = erasedSupertypes(typeArr[i15]);
                int i16 = i15 + 1;
                for (int i17 = i16; i17 < typeArr.length; i17++) {
                    Type type3 = typeArr[i17];
                    if (type3.hasTag(TypeTag.CLASS) || type3.hasTag(TypeTag.TYPEVAR)) {
                        erasedSupertypes = intersect(erasedSupertypes, erasedSupertypes(type3));
                    }
                }
                List<Type> closureMin = closureMin(erasedSupertypes);
                List<Type> nil = List.nil();
                Iterator<Type> it = closureMin.iterator();
                while (it.hasNext()) {
                    Type next = it.next();
                    List<Type> of3 = List.of(asSuper(typeArr[i15], next.tsym));
                    for (int i18 = i16; i18 < typeArr.length; i18++) {
                        Type asSuper = asSuper(typeArr[i18], next.tsym);
                        of3 = intersect(of3, asSuper != null ? List.of(asSuper) : List.nil());
                    }
                    nil = nil.appendList(of3);
                }
                return compoundMin(nil);
            }
            Type type4 = typeArr[i10];
            int i19 = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$TypeTag[type4.getTag().ordinal()];
            if (i19 != 1) {
                if (i19 != 2) {
                    if (i19 != 12) {
                        iArr[i10] = 0;
                        if (type4.isPrimitive()) {
                            return this.syms.errType;
                        }
                        i10++;
                        i11 = i11;
                    }
                    do {
                        type4 = type4.getUpperBound();
                    } while (type4.hasTag(TypeTag.TYPEVAR));
                    if (type4.hasTag(TypeTag.ARRAY)) {
                        iArr[i10] = 1;
                    } else {
                        iArr[i10] = 2;
                    }
                } else {
                    iArr[i10] = 2;
                }
                i11 = (i11 == true ? 1 : 0) | 2;
                i10++;
                i11 = i11;
            } else {
                iArr[i10] = 1;
            }
            i11 = (i11 == true ? 1 : 0) | 1;
            i10++;
            i11 = i11;
        }
    }

    public Type.IntersectionClassType makeIntersectionType(List<Type> list, boolean z10) {
        Assert.check(list.nonEmpty());
        Type type = list.head;
        if (z10) {
            list = list.prepend(this.syms.objectType);
        }
        Symbol.ClassSymbol classSymbol = new Symbol.ClassSymbol(1090524161L, Type.moreInfo ? this.names.fromString(list.toString()) : this.names.empty, null, this.syms.noSymbol);
        Type.IntersectionClassType intersectionClassType = new Type.IntersectionClassType(list, classSymbol, z10);
        classSymbol.type = intersectionClassType;
        classSymbol.erasure_field = list.head.hasTag(TypeTag.TYPEVAR) ? this.syms.objectType : erasure(type);
        classSymbol.members_field = Scope.WriteableScope.create(classSymbol);
        return intersectionClassType;
    }

    public void setBounds(Type.TypeVar typeVar, List<Type> list, boolean z10) {
        typeVar.bound = list.tail.isEmpty() ? list.head : makeIntersectionType(list, z10);
        typeVar.rank_field = -1;
    }

    public Type subst(Type type, List<Type> list, List<Type> list2) {
        return type.map(new Subst(list, list2));
    }

    public String toString(Symbol symbol, Locale locale) {
        return Printer.createStandardPrinter(this.messages).visit(symbol, locale);
    }

    private boolean hasSameArgs(Type type, Type type2, TypeRelation typeRelation) {
        return typeRelation.visit(type, type2).booleanValue();
    }

    public Type createErrorType(Name name, Symbol.TypeSymbol typeSymbol, Type type) {
        return new Type.ErrorType(name, typeSymbol, type);
    }

    @Deprecated
    public String toString(Type type) {
        if (type.hasTag(TypeTag.FORALL)) {
            Type.ForAll forAll = (Type.ForAll) type;
            return typaramsString(forAll.tvars) + ((Object) forAll.qtype);
        }
        return "" + ((Object) type);
    }

    public List<Type> erasure(List<Type> list) {
        return this.erasure.visit(list, (List<Type>) Boolean.FALSE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r3 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isSubtypeUnchecked(Type type, List<Type> list, Warner warner) {
        for (List<Type> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            if (!isSubtypeUnchecked(type, list2.head, warner)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v16, types: [A, org.openjdk.tools.javac.code.Type] */
    public Type capture(Type type) {
        Type capture;
        if (!type.hasTag(TypeTag.CLASS)) {
            return type;
        }
        if (type.getEnclosingType() != Type.noType && (capture = capture(type.getEnclosingType())) != type.getEnclosingType()) {
            type = subst(memberType(capture, type.tsym), type.tsym.type.getTypeArguments(), type.getTypeArguments());
        }
        Type.ClassType classType = (Type.ClassType) type;
        if (classType.isRaw() || !classType.isParameterized()) {
            return classType;
        }
        List<Type> typeArguments = ((Type.ClassType) classType.asElement().asType()).getTypeArguments();
        List typeArguments2 = classType.getTypeArguments();
        List<Type> freshTypeVariables = freshTypeVariables(typeArguments2);
        List list = typeArguments;
        List list2 = freshTypeVariables;
        boolean z10 = false;
        while (!list.isEmpty() && !typeArguments2.isEmpty() && !list2.isEmpty()) {
            A a10 = list2.head;
            A a11 = typeArguments2.head;
            if (a10 != a11) {
                Type.WildcardType wildcardType = (Type.WildcardType) a11;
                Type upperBound = ((Type) list.head).getUpperBound();
                Type.CapturedType capturedType = (Type.CapturedType) list2.head;
                if (upperBound == null) {
                    upperBound = this.syms.objectType;
                }
                int i10 = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$BoundKind[wildcardType.kind.ordinal()];
                if (i10 == 1) {
                    capturedType.bound = subst(upperBound, typeArguments, freshTypeVariables);
                    capturedType.lower = this.syms.botType;
                } else if (i10 == 2) {
                    capturedType.bound = glb(wildcardType.getExtendsBound(), subst(upperBound, typeArguments, freshTypeVariables));
                    capturedType.lower = this.syms.botType;
                } else if (i10 == 3) {
                    capturedType.bound = subst(upperBound, typeArguments, freshTypeVariables);
                    capturedType.lower = wildcardType.getSuperBound();
                }
                Type type2 = capturedType.bound;
                TypeTag typeTag = TypeTag.UNDETVAR;
                Type type3 = type2.hasTag(typeTag) ? ((Type.UndetVar) capturedType.bound).qtype : capturedType.bound;
                Type type4 = capturedType.lower.hasTag(typeTag) ? ((Type.UndetVar) capturedType.lower).qtype : capturedType.lower;
                Type type5 = capturedType.bound;
                TypeTag typeTag2 = TypeTag.ERROR;
                if (!type5.hasTag(typeTag2) && !capturedType.lower.hasTag(typeTag2) && isSameType(type3, type4, false)) {
                    list2.head = capturedType.bound;
                }
                z10 = true;
            }
            list = list.tail;
            typeArguments2 = typeArguments2.tail;
            list2 = list2.tail;
        }
        if (list.isEmpty() && typeArguments2.isEmpty() && list2.isEmpty()) {
            return z10 ? new Type.ClassType(classType.getEnclosingType(), freshTypeVariables, classType.tsym, classType.getMetadata()) : type;
        }
        return erasure(type);
    }

    public Type glb(Type type, Type type2) {
        if (type2 == null) {
            return type;
        }
        if (type.isPrimitive() || type2.isPrimitive()) {
            return this.syms.errType;
        }
        return isSubtypeNoCapture(type, type2) ? type : isSubtypeNoCapture(type2, type) ? type2 : glbFlattened(union(closure(type), closure(type2)), type);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r2 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isDerivedRaw(List<Type> list) {
        List<Type> list2;
        while (list2.nonEmpty() && !isDerivedRaw(list2.head)) {
            list2 = list2.tail;
        }
        return list2.nonEmpty();
    }

    public boolean containsTypeEquivalent(Type type, Type type2) {
        return isSameType(type, type2) || (containsType(type, type2) && containsType(type2, type));
    }

    public boolean containsType(Type type, Type type2) {
        return this.containsType.visit(type, type2).booleanValue();
    }

    public boolean returnTypeSubstitutable(Type type, Type type2, Type type3, Warner warner) {
        if (isSameType(type.getReturnType(), type3)) {
            return true;
        }
        if (type.getReturnType().isPrimitive() || type3.isPrimitive()) {
            return false;
        }
        if (hasSameArgs(type, type2)) {
            return covariantReturnType(type.getReturnType(), type3, warner);
        }
        if (isSubtypeUnchecked(type.getReturnType(), type3, warner)) {
            return true;
        }
        if (!isSubtype(type.getReturnType(), erasure(type3))) {
            return false;
        }
        warner.warn(Lint.LintCategory.UNCHECKED);
        return true;
    }

    public List<Type> insert(List<Type> list, Type type) {
        return insert(list, type, this.basicClosureSkip);
    }

    public List<Type> union(List<Type> list, List<Type> list2) {
        return union(list, list2, this.basicClosureSkip);
    }

    public boolean isConvertible(Type type, Type type2) {
        return isConvertible(type, type2, this.noWarnings);
    }

    public static abstract class SignatureGenerator {
        private final Types types;

        public SignatureGenerator(Types types) {
            this.types = types;
        }

        public abstract void append(char c10);

        public abstract void append(Name name);

        public abstract void append(byte[] bArr);

        public void assembleClassSig(Type type) {
            Type.ClassType classType = (Type.ClassType) type;
            Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) classType.tsym;
            classReference(classSymbol);
            Type enclosingType = classType.getEnclosingType();
            if (enclosingType.allparams().nonEmpty()) {
                boolean z10 = classSymbol.owner.kind == Kinds.Kind.MTH || classSymbol.name == this.types.names.empty;
                if (z10) {
                    enclosingType = this.types.erasure(enclosingType);
                }
                assembleClassSig(enclosingType);
                append(z10 ? '$' : '.');
                Assert.check(classSymbol.flatname.startsWith(classSymbol.owner.enclClass().flatname));
                append(z10 ? classSymbol.flatname.subName(classSymbol.owner.enclClass().flatname.getByteLength() + 1, classSymbol.flatname.getByteLength()) : classSymbol.name);
            } else {
                append(ClassFile.externalize(classSymbol.flatname));
            }
            if (classType.getTypeArguments().nonEmpty()) {
                append('<');
                assembleSig(classType.getTypeArguments());
                append('>');
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void assembleParamsSig(List<Type> list) {
            append('<');
            for (List<Type> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
                Type.TypeVar typeVar = (Type.TypeVar) list2.head;
                append(typeVar.tsym.name);
                List bounds = this.types.getBounds(typeVar);
                if ((((Type) bounds.head).tsym.flags() & 512) != 0) {
                    append(':');
                }
                while (bounds.nonEmpty()) {
                    append(':');
                    assembleSig((Type) bounds.head);
                    bounds = bounds.tail;
                }
            }
            append('>');
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void assembleSig(Type type) {
            int i10 = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()];
            if (i10 == 14) {
                Type.WildcardType wildcardType = (Type.WildcardType) type;
                int i11 = AnonymousClass25.$SwitchMap$com$sun$tools$javac$code$BoundKind[wildcardType.kind.ordinal()];
                if (i11 == 1) {
                    append('*');
                    return;
                }
                if (i11 != 2) {
                    if (i11 == 3) {
                        append('-');
                        assembleSig(wildcardType.type);
                        return;
                    }
                    throw new AssertionError(wildcardType.kind);
                }
                append('+');
                assembleSig(wildcardType.type);
                return;
            }
            if (i10 == 18) {
                Type.ForAll forAll = (Type.ForAll) type;
                assembleParamsSig(forAll.tvars);
                assembleSig(forAll.qtype);
                return;
            }
            if (i10 != 19) {
                switch (i10) {
                    case 1:
                        append('[');
                        assembleSig(((Type.ArrayType) type).elemtype);
                        return;
                    case 2:
                        append('L');
                        assembleClassSig(type);
                        append(';');
                        return;
                    case 3:
                        append('B');
                        return;
                    case 4:
                        append('C');
                        return;
                    case 5:
                        append('S');
                        return;
                    case 6:
                        append('I');
                        return;
                    case 7:
                        append('J');
                        return;
                    case 8:
                        append('F');
                        return;
                    case 9:
                        append('D');
                        return;
                    case 10:
                        append('Z');
                        return;
                    case 11:
                        append('V');
                        return;
                    case 12:
                        append('T');
                        append(type.tsym.name);
                        append(';');
                        return;
                    default:
                        throw new AssertionError((Object) ("typeSig " + ((Object) type.getTag())));
                }
            }
            Type.MethodType methodType = (Type.MethodType) type;
            append('(');
            assembleSig(methodType.argtypes);
            append(')');
            assembleSig(methodType.restype);
            if (hasTypeVar(methodType.thrown)) {
                for (List list = methodType.thrown; list.nonEmpty(); list = list.tail) {
                    append('^');
                    assembleSig((Type) list.head);
                }
            }
        }

        public void classReference(Symbol.ClassSymbol classSymbol) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        
            r3 = r3;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean hasTypeVar(List<Type> list) {
            for (List<Type> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
                if (list2.head.hasTag(TypeTag.TYPEVAR)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        
            r2 = r2;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void assembleSig(List<Type> list) {
            for (List<Type> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
                assembleSig(list2.head);
            }
        }
    }
}
