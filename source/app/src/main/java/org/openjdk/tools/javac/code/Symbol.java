package org.openjdk.tools.javac.code;

import android.provider.MediaStore;
import java.lang.annotation.Annotation;
import java.lang.annotation.Inherited;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.openjdk.javax.lang.model.element.AnnotationValue;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ElementKind;
import org.openjdk.javax.lang.model.element.ElementVisitor;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.element.ModuleElement;
import org.openjdk.javax.lang.model.element.NestingKind;
import org.openjdk.javax.lang.model.element.PackageElement;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.element.TypeParameterElement;
import org.openjdk.javax.lang.model.element.VariableElement;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.ClassFinder;
import org.openjdk.tools.javac.code.Directive;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.comp.Annotate;
import org.openjdk.tools.javac.comp.Attr;
import org.openjdk.tools.javac.comp.AttrContext;
import org.openjdk.tools.javac.comp.Env;
import org.openjdk.tools.javac.jvm.Code;
import org.openjdk.tools.javac.jvm.Pool;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Constants;
import org.openjdk.tools.javac.util.Filter;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;

public abstract class Symbol extends AnnoConstruct implements Element {
    public Completer completer = Completer.NULL_COMPLETER;
    public Type erasure_field = null;
    public long flags_field;
    public Kinds.Kind kind;
    protected SymbolMetadata metadata;
    public Name name;
    public Symbol owner;
    public Type type;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;
        static final int[] $SwitchMap$javax$lang$model$element$ElementKind;

        static {
            int[] iArr = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr;
            try {
                iArr[JCTree.Tag.PREINC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PREDEC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.POSTINC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.POSTDEC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ElementKind.values().length];
            $SwitchMap$javax$lang$model$element$ElementKind = iArr2;
            try {
                iArr2[ElementKind.LOCAL_VARIABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.PACKAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.PARAMETER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.RESOURCE_VARIABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.EXCEPTION_PARAMETER.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public static class ClassSymbol extends TypeSymbol implements TypeElement {
        private Annotate.AnnotationTypeMetadata annotationTypeMetadata;
        public JavaFileObject classfile;
        public Name flatname;
        public Name fullname;
        public Scope.WriteableScope members_field;
        public Pool pool;
        public JavaFileObject sourcefile;
        public List<ClassSymbol> trans_local;

        public ClassSymbol(long j10, Name name, Type type, Symbol symbol) {
            super(Kinds.Kind.TYP, j10, name, type, symbol);
            this.members_field = null;
            this.fullname = TypeSymbol.formFullName(name, symbol);
            this.flatname = TypeSymbol.formFlatName(name, symbol);
            this.sourcefile = null;
            this.classfile = null;
            this.pool = null;
            this.annotationTypeMetadata = Annotate.AnnotationTypeMetadata.notAnAnnotationType();
        }

        private ClassSymbol getSuperClassToSearchForAnnotations() {
            Type superclass = getSuperclass();
            if (!superclass.hasTag(TypeTag.CLASS) || superclass.isErroneous()) {
                return null;
            }
            return (ClassSymbol) superclass.tsym;
        }

        @Override
        public <R, P> R accept(ElementVisitor<R, P> elementVisitor, P p10) {
            return elementVisitor.visitType(this, p10);
        }

        public String className() {
            return this.name.isEmpty() ? Log.getLocalizedString("anonymous.class", this.flatname) : this.fullname.toString();
        }

        public void clearAnnotationMetadata() {
            this.metadata = null;
            this.annotationTypeMetadata = Annotate.AnnotationTypeMetadata.notAnAnnotationType();
        }

        @Override
        public void complete() throws CompletionFailure {
            try {
                super.complete();
            } catch (CompletionFailure e10) {
                this.flags_field |= 9;
                this.type = new Type.ErrorType(this, Type.noType);
                throw e10;
            }
        }

        @Override
        public Type erasure(Types types) {
            if (this.erasure_field == null) {
                this.erasure_field = new Type.ClassType(types.erasure(this.type.getEnclosingType()), List.nil(), this, this.type.getMetadata());
            }
            return this.erasure_field;
        }

        @Override
        public long flags() {
            complete();
            return this.flags_field;
        }

        @Override
        public Name flatName() {
            return this.flatname;
        }

        @Override
        public Annotate.AnnotationTypeMetadata getAnnotationTypeMetadata() {
            return this.annotationTypeMetadata;
        }

        @Override
        public <A extends Annotation> Attribute.Compound getAttribute(Class<A> cls) {
            Attribute.Compound attribute = super.getAttribute(cls);
            boolean isAnnotationPresent = cls.isAnnotationPresent(Inherited.class);
            if (attribute != null || !isAnnotationPresent) {
                return attribute;
            }
            ClassSymbol superClassToSearchForAnnotations = getSuperClassToSearchForAnnotations();
            if (superClassToSearchForAnnotations == null) {
                return null;
            }
            return superClassToSearchForAnnotations.getAttribute(cls);
        }

        @Override
        public <A extends Annotation> A[] getInheritedAnnotations(Class<A> cls) {
            ClassSymbol superClassToSearchForAnnotations = getSuperClassToSearchForAnnotations();
            return superClassToSearchForAnnotations == null ? (A[]) super.getInheritedAnnotations(cls) : (A[]) superClassToSearchForAnnotations.getAnnotationsByType(cls);
        }

        @Override
        public ElementKind getKind() {
            long flags = flags();
            return (8192 & flags) != 0 ? ElementKind.ANNOTATION_TYPE : (512 & flags) != 0 ? ElementKind.INTERFACE : (flags & 16384) != 0 ? ElementKind.ENUM : ElementKind.CLASS;
        }

        @Override
        public Set<Modifier> getModifiers() {
            return Flags.asModifierSet(flags() & (-8796093022209L));
        }

        @Override
        public NestingKind getNestingKind() {
            complete();
            return this.owner.kind == Kinds.Kind.PCK ? NestingKind.TOP_LEVEL : this.name.isEmpty() ? NestingKind.ANONYMOUS : this.owner.kind == Kinds.Kind.MTH ? NestingKind.LOCAL : NestingKind.MEMBER;
        }

        @Override
        public List<Attribute.Compound> getRawAttributes() {
            complete();
            return super.getRawAttributes();
        }

        @Override
        public List<Attribute.TypeCompound> getRawTypeAttributes() {
            complete();
            return super.getRawTypeAttributes();
        }

        @Override
        public java.util.List getTypeParameters() {
            return super.getTypeParameters();
        }

        @Override
        public boolean isAnnotationType() {
            return (this.flags_field & 8192) != 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean isSubClass(Symbol symbol, Types types) {
            if (this == symbol) {
                return true;
            }
            if ((symbol.flags() & 512) == 0) {
                Type type = this.type;
                while (type.hasTag(TypeTag.CLASS)) {
                    if (type.tsym == symbol) {
                        return true;
                    }
                    type = types.supertype(type);
                }
                return false;
            }
            Type type2 = this.type;
            while (type2.hasTag(TypeTag.CLASS)) {
                for (List interfaces = types.interfaces(type2); interfaces.nonEmpty(); interfaces = interfaces.tail) {
                    if (((Type) interfaces.head).tsym.isSubClass(symbol, types)) {
                        return true;
                    }
                }
                type2 = types.supertype(type2);
            }
            return false;
        }

        public void markAbstractIfNeeded(Types types) {
            if (types.enter.getEnv(this) == null || (flags() & 16384) == 0 || types.supertype(this.type).tsym != types.syms.enumSym || (flags() & 1040) != 0 || types.firstUnimplementedAbstract(this) == null) {
                return;
            }
            this.flags_field |= 1024;
        }

        @Override
        public Scope.WriteableScope members() {
            complete();
            return this.members_field;
        }

        public void reset() {
            this.kind = Kinds.Kind.TYP;
            this.erasure_field = null;
            this.members_field = null;
            this.flags_field = 0L;
            Type type = this.type;
            if (type instanceof Type.ClassType) {
                Type.ClassType classType = (Type.ClassType) type;
                classType.setEnclosingType(Type.noType);
                classType.rank_field = -1;
                classType.typarams_field = null;
                classType.allparams_field = null;
                classType.supertype_field = null;
                classType.interfaces_field = null;
                classType.all_interfaces_field = null;
            }
            clearAnnotationMetadata();
        }

        public void setAnnotationTypeMetadata(Annotate.AnnotationTypeMetadata annotationTypeMetadata) {
            Assert.checkNonNull(annotationTypeMetadata);
            Assert.check(!this.annotationTypeMetadata.isMetadataForAnnotationType());
            this.annotationTypeMetadata = annotationTypeMetadata;
        }

        @Override
        public String toString() {
            return className();
        }

        @Override
        public <R, P> R accept(Visitor<R, P> visitor, P p10) {
            return visitor.visitClassSymbol(this, p10);
        }

        @Override
        public List<Type> getInterfaces() {
            complete();
            Type type = this.type;
            if (type instanceof Type.ClassType) {
                Type.ClassType classType = (Type.ClassType) type;
                if (classType.interfaces_field == null) {
                    classType.interfaces_field = List.nil();
                }
                List<Type> list = classType.all_interfaces_field;
                if (list != null) {
                    return Type.getModelTypes(list);
                }
                return classType.interfaces_field;
            }
            return List.nil();
        }

        @Override
        public Name getQualifiedName() {
            return this.fullname;
        }

        @Override
        public Type getSuperclass() {
            complete();
            Type type = this.type;
            if (type instanceof Type.ClassType) {
                Type.ClassType classType = (Type.ClassType) type;
                if (classType.supertype_field == null) {
                    classType.supertype_field = Type.noType;
                }
                return classType.isInterface() ? Type.noType : classType.supertype_field.getModelType();
            }
            return Type.noType;
        }

        public ClassSymbol(long j10, Name name, Symbol symbol) {
            this(j10, name, new Type.ClassType(Type.noType, null, null), symbol);
            this.type.tsym = this;
        }
    }

    public interface Completer {
        public static final Completer NULL_COMPLETER = new Completer() {
            @Override
            public void complete(Symbol symbol) {
            }

            @Override
            public boolean isTerminal() {
                return true;
            }
        };

        void complete(Symbol symbol) throws CompletionFailure;

        default boolean isTerminal() {
            return false;
        }
    }

    public static class CompletionFailure extends RuntimeException {
        private static final long serialVersionUID = 0;
        public JCDiagnostic diag;

        @Deprecated
        public String errmsg;
        public Symbol sym;

        public CompletionFailure(Symbol symbol, String str) {
            this.sym = symbol;
            this.errmsg = str;
        }

        public Object getDetailValue() {
            JCDiagnostic jCDiagnostic = this.diag;
            return jCDiagnostic != null ? jCDiagnostic : this.errmsg;
        }

        public JCDiagnostic getDiagnostic() {
            return this.diag;
        }

        @Override
        public String getMessage() {
            JCDiagnostic jCDiagnostic = this.diag;
            return jCDiagnostic != null ? jCDiagnostic.getMessage(null) : this.errmsg;
        }

        @Override
        public CompletionFailure initCause(Throwable th2) {
            super.initCause(th2);
            return this;
        }

        public CompletionFailure(Symbol symbol, JCDiagnostic jCDiagnostic) {
            this.sym = symbol;
            this.diag = jCDiagnostic;
        }
    }

    public static class DelegatedSymbol<T extends Symbol> extends Symbol {
        protected T other;

        public DelegatedSymbol(T t10) {
            super(t10.kind, t10.flags_field, t10.name, t10.type, t10.owner);
            this.other = t10;
        }

        @Override
        public <R, P> R accept(ElementVisitor<R, P> elementVisitor, P p10) {
            return (R) this.other.accept(elementVisitor, p10);
        }

        @Override
        public Symbol asMemberOf(Type type, Types types) {
            return this.other.asMemberOf(type, types);
        }

        @Override
        public TypeMirror asType() {
            return super.asType();
        }

        @Override
        public Symbol baseSymbol() {
            return this.other;
        }

        @Override
        public void complete() throws CompletionFailure {
            this.other.complete();
        }

        @Override
        public ClassSymbol enclClass() {
            return this.other.enclClass();
        }

        @Override
        public Type erasure(Types types) {
            return this.other.erasure(types);
        }

        @Override
        public Type externalType(Types types) {
            return this.other.externalType(types);
        }

        @Override
        public Name flatName() {
            return this.other.flatName();
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        @Override
        public Element getEnclosingElement() {
            return super.getEnclosingElement();
        }

        @Override
        public Name getQualifiedName() {
            return this.other.getQualifiedName();
        }

        @Override
        public org.openjdk.javax.lang.model.element.Name getSimpleName() {
            return super.getSimpleName();
        }

        public T getUnderlyingSymbol() {
            return this.other;
        }

        @Override
        public boolean hasOuterInstance() {
            return this.other.hasOuterInstance();
        }

        @Override
        public boolean isConstructor() {
            return this.other.isConstructor();
        }

        @Override
        public boolean isEnclosedBy(ClassSymbol classSymbol) {
            return this.other.isEnclosedBy(classSymbol);
        }

        @Override
        public boolean isInheritedIn(Symbol symbol, Types types) {
            return this.other.isInheritedIn(symbol, types);
        }

        @Override
        public boolean isInner() {
            return this.other.isInner();
        }

        @Override
        public boolean isLocal() {
            return this.other.isLocal();
        }

        @Override
        public boolean isMemberOf(TypeSymbol typeSymbol, Types types) {
            return this.other.isMemberOf(typeSymbol, types);
        }

        @Override
        public boolean isSubClass(Symbol symbol, Types types) {
            return this.other.isSubClass(symbol, types);
        }

        @Override
        public Symbol location() {
            return this.other.location();
        }

        @Override
        public Scope.WriteableScope members() {
            return this.other.members();
        }

        @Override
        public ClassSymbol outermostClass() {
            return this.other.outermostClass();
        }

        @Override
        public PackageSymbol packge() {
            return this.other.packge();
        }

        @Override
        public String toString() {
            return this.other.toString();
        }

        @Override
        public <R, P> R accept(Visitor<R, P> visitor, P p10) {
            return visitor.visitSymbol(this.other, p10);
        }

        @Override
        public Symbol location(Type type, Types types) {
            return this.other.location(type, types);
        }
    }

    public static class DynamicMethodSymbol extends MethodSymbol {
        public Symbol bsm;
        public int bsmKind;
        public Object[] staticArgs;

        public DynamicMethodSymbol(Name name, Symbol symbol, int i10, MethodSymbol methodSymbol, Type type, Object[] objArr) {
            super(0L, name, type, symbol);
            this.bsm = methodSymbol;
            this.bsmKind = i10;
            this.staticArgs = objArr;
        }

        @Override
        public boolean isDynamic() {
            return true;
        }
    }

    public static class MethodSymbol extends Symbol implements ExecutableElement {
        public static final Filter<Symbol> implementation_filter = new Filter() {
            @Override
            public final boolean accepts(Object obj) {
                boolean lambda$static$0;
                lambda$static$0 = Symbol.MethodSymbol.lambda$static$0((Symbol) obj);
                return lambda$static$0;
            }
        };
        public List<VarSymbol> capturedLocals;
        public Code code;
        public Attribute defaultValue;
        public List<VarSymbol> extraParams;
        public List<VarSymbol> params;

        public MethodSymbol(long j10, Name name, Type type, Symbol symbol) {
            super(Kinds.Kind.MTH, j10, name, type, symbol);
            this.code = null;
            this.extraParams = List.nil();
            this.capturedLocals = List.nil();
            this.params = null;
            this.defaultValue = null;
            if (symbol.type.hasTag(TypeTag.TYPEVAR)) {
                Assert.error(((Object) symbol) + "." + ((Object) name));
            }
        }

        private boolean isOverridableIn(TypeSymbol typeSymbol) {
            int i10 = (int) (this.flags_field & 7);
            return i10 != 0 ? i10 != 1 ? i10 == 4 && (typeSymbol.flags() & 512) == 0 : !this.owner.isInterface() || (this.flags_field & 8) == 0 : packge() == typeSymbol.packge() && (typeSymbol.flags() & 512) == 0;
        }

        public static boolean lambda$static$0(Symbol symbol) {
            return symbol.kind == Kinds.Kind.MTH && (symbol.flags() & 4096) == 0;
        }

        @Override
        public <R, P> R accept(ElementVisitor<R, P> elementVisitor, P p10) {
            return elementVisitor.visitExecutable(this, p10);
        }

        @Override
        public Symbol asMemberOf(Type type, Types types) {
            return new MethodSymbol(this.flags_field, this.name, types.memberType(type, this), this.owner);
        }

        @Override
        public TypeMirror asType() {
            return super.asType();
        }

        public MethodSymbol binaryImplementation(ClassSymbol classSymbol, Types types) {
            TypeSymbol typeSymbol = classSymbol;
            while (typeSymbol != null) {
                for (Symbol symbol : typeSymbol.members().getSymbolsByName(this.name)) {
                    if (symbol.kind == Kinds.Kind.MTH) {
                        MethodSymbol methodSymbol = (MethodSymbol) symbol;
                        if (methodSymbol.binaryOverrides(this, classSymbol, types)) {
                            return methodSymbol;
                        }
                    }
                }
                typeSymbol = types.supertype(typeSymbol.type).tsym;
            }
            return null;
        }

        public boolean binaryOverrides(Symbol symbol, TypeSymbol typeSymbol, Types types) {
            if (isConstructor() || symbol.kind != Kinds.Kind.MTH) {
                return false;
            }
            if (this == symbol) {
                return true;
            }
            MethodSymbol methodSymbol = (MethodSymbol) symbol;
            if (methodSymbol.isOverridableIn((TypeSymbol) this.owner) && types.asSuper(this.owner.type, methodSymbol.owner) != null && types.isSameType(erasure(types), methodSymbol.erasure(types))) {
                return true;
            }
            return (flags() & 1024) == 0 && methodSymbol.isOverridableIn(typeSymbol) && isMemberOf(typeSymbol, types) && types.isSameType(erasure(types), methodSymbol.erasure(types));
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        @Override
        public Element getEnclosingElement() {
            return super.getEnclosingElement();
        }

        @Override
        public ElementKind getKind() {
            Name name = this.name;
            Names names = name.table.names;
            return name == names.init ? ElementKind.CONSTRUCTOR : name == names.clinit ? ElementKind.STATIC_INIT : (flags() & TagBits.HasNullTypeAnnotation) != 0 ? isStatic() ? ElementKind.STATIC_INIT : ElementKind.INSTANCE_INIT : ElementKind.METHOD;
        }

        @Override
        public Set<Modifier> getModifiers() {
            long flags = flags();
            if ((8796093022208L & flags) != 0) {
                flags &= -1025;
            }
            return Flags.asModifierSet(flags);
        }

        @Override
        public org.openjdk.javax.lang.model.element.Name getSimpleName() {
            return super.getSimpleName();
        }

        @Override
        public java.util.List getTypeParameters() {
            return super.getTypeParameters();
        }

        public MethodSymbol implementation(TypeSymbol typeSymbol, Types types, boolean z10) {
            return implementation(typeSymbol, types, z10, implementation_filter);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Symbol implemented(TypeSymbol typeSymbol, Types types) {
            Symbol symbol = null;
            for (List interfaces = types.interfaces(typeSymbol.type); symbol == null && interfaces.nonEmpty(); interfaces = interfaces.tail) {
                TypeSymbol typeSymbol2 = ((Type) interfaces.head).tsym;
                Symbol implementedIn = implementedIn(typeSymbol2, types);
                symbol = implementedIn == null ? implemented(typeSymbol2, types) : implementedIn;
            }
            return symbol;
        }

        public Symbol implementedIn(TypeSymbol typeSymbol, Types types) {
            Symbol symbol = null;
            for (Symbol symbol2 : typeSymbol.members().getSymbolsByName(this.name)) {
                if (overrides(symbol2, (TypeSymbol) this.owner, types, true) && types.isSameType(this.type.getReturnType(), types.memberType(this.owner.type, symbol2).getReturnType())) {
                    symbol = symbol2;
                }
            }
            return symbol;
        }

        @Override
        public boolean isDefault() {
            return (flags() & 8796093022208L) != 0;
        }

        public boolean isDynamic() {
            return false;
        }

        @Override
        public boolean isInheritedIn(Symbol symbol, Types types) {
            return ((int) (this.flags_field & 7)) != 1 ? super.isInheritedIn(symbol, types) : !this.owner.isInterface() || symbol == this.owner || (this.flags_field & 8) == 0;
        }

        public boolean isLambdaMethod() {
            return (flags() & 562949953421312L) == 562949953421312L;
        }

        public boolean isStaticOrInstanceInit() {
            return getKind() == ElementKind.STATIC_INIT || getKind() == ElementKind.INSTANCE_INIT;
        }

        @Override
        public boolean isVarArgs() {
            return (flags() & 17179869184L) != 0;
        }

        @Override
        public boolean overrides(Symbol symbol, TypeSymbol typeSymbol, Types types, boolean z10) {
            return overrides(symbol, typeSymbol, types, z10, true);
        }

        public List<VarSymbol> params() {
            this.owner.complete();
            if (this.params == null) {
                ListBuffer listBuffer = new ListBuffer();
                Iterator<Type> it = this.type.getParameterTypes().iterator();
                while (it.hasNext()) {
                    listBuffer.append(new VarSymbol(8589934592L, this.name.table.fromString("arg0"), it.next(), this));
                }
                this.params = listBuffer.toList();
            }
            Assert.checkNonNull(this.params);
            return this.params;
        }

        @Override
        public String toString() {
            if ((flags() & TagBits.HasNullTypeAnnotation) != 0) {
                return this.owner.name.toString();
            }
            Name name = this.name;
            String name2 = name == name.table.names.init ? this.owner.name.toString() : name.toString();
            Type type = this.type;
            if (type == null) {
                return name2;
            }
            if (type.hasTag(TypeTag.FORALL)) {
                name2 = "<" + ((Object) ((Type.ForAll) this.type).getTypeArguments()) + ">" + name2;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(name2);
            sb2.append("(");
            sb2.append(this.type.argtypes((flags() & 17179869184L) != 0));
            sb2.append(")");
            return sb2.toString();
        }

        @Override
        public <R, P> R accept(Visitor<R, P> visitor, P p10) {
            return visitor.visitMethodSymbol(this, p10);
        }

        @Override
        public MethodSymbol clone(Symbol symbol) {
            MethodSymbol methodSymbol = new MethodSymbol(this.flags_field, this.name, this.type, symbol) {
                @Override
                public TypeMirror asType() {
                    return super.asType();
                }

                @Override
                public Symbol baseSymbol() {
                    return MethodSymbol.this;
                }

                @Override
                public Symbol clone(Symbol symbol2) {
                    return super.clone(symbol2);
                }

                @Override
                public java.util.List getAnnotationMirrors() {
                    return super.getAnnotationMirrors();
                }

                @Override
                public AnnotationValue getDefaultValue() {
                    return super.getDefaultValue();
                }

                @Override
                public Element getEnclosingElement() {
                    return super.getEnclosingElement();
                }

                @Override
                public java.util.List getParameters() {
                    return super.getParameters();
                }

                @Override
                public TypeMirror getReceiverType() {
                    return super.getReceiverType();
                }

                @Override
                public TypeMirror getReturnType() {
                    return super.getReturnType();
                }

                @Override
                public org.openjdk.javax.lang.model.element.Name getSimpleName() {
                    return super.getSimpleName();
                }

                @Override
                public java.util.List getThrownTypes() {
                    return super.getThrownTypes();
                }

                @Override
                public java.util.List getTypeParameters() {
                    return super.getTypeParameters();
                }
            };
            methodSymbol.code = this.code;
            return methodSymbol;
        }

        @Override
        public Attribute getDefaultValue() {
            return this.defaultValue;
        }

        @Override
        public List<VarSymbol> getParameters() {
            return params();
        }

        @Override
        public Type getReceiverType() {
            return asType().getReceiverType();
        }

        @Override
        public Type getReturnType() {
            return asType().getReturnType();
        }

        @Override
        public List<Type> getThrownTypes() {
            return asType().getThrownTypes();
        }

        public MethodSymbol implementation(TypeSymbol typeSymbol, Types types, boolean z10, Filter<Symbol> filter) {
            MethodSymbol implementation = types.implementation(this, typeSymbol, z10, filter);
            if (implementation != null) {
                return implementation;
            }
            if (!types.isDerivedRaw(typeSymbol.type) || typeSymbol.isInterface()) {
                return null;
            }
            return implementation(types.supertype(typeSymbol.type).tsym, types, z10);
        }

        public boolean overrides(Symbol symbol, TypeSymbol typeSymbol, Types types, boolean z10, boolean z11) {
            if (isConstructor() || symbol.kind != Kinds.Kind.MTH) {
                return false;
            }
            if (this == symbol) {
                return true;
            }
            MethodSymbol methodSymbol = (MethodSymbol) symbol;
            if (methodSymbol.isOverridableIn((TypeSymbol) this.owner) && types.asSuper(this.owner.type, methodSymbol.owner) != null) {
                Type memberType = types.memberType(this.owner.type, this);
                Type memberType2 = types.memberType(this.owner.type, methodSymbol);
                if (types.isSubSignature(memberType, memberType2) && (!z10 || types.returnTypeSubstitutable(memberType, memberType2))) {
                    return true;
                }
            }
            if ((flags() & 1024) != 0 && z11) {
                return false;
            }
            if (((methodSymbol.flags() & 1024) == 0 && (methodSymbol.flags() & 8796093022208L) == 0) || !methodSymbol.isOverridableIn(typeSymbol) || !isMemberOf(typeSymbol, types)) {
                return false;
            }
            Type memberType3 = types.memberType(typeSymbol.type, this);
            Type memberType4 = types.memberType(typeSymbol.type, methodSymbol);
            if (types.isSubSignature(memberType3, memberType4)) {
                return !z10 || types.resultSubtype(memberType3, memberType4, types.noWarnings);
            }
            return false;
        }
    }

    public enum ModuleFlags {
        OPEN(32),
        SYNTHETIC(4096),
        MANDATED(32768);

        public final int value;

        ModuleFlags(int i10) {
            this.value = i10;
        }

        public static int value(Set<ModuleFlags> set) {
            Iterator<ModuleFlags> it = set.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                i10 |= it.next().value;
            }
            return i10;
        }
    }

    public enum ModuleResolutionFlags {
        DO_NOT_RESOLVE_BY_DEFAULT(1),
        WARN_DEPRECATED(2),
        WARN_DEPRECATED_REMOVAL(4),
        WARN_INCUBATING(8);

        public final int value;

        ModuleResolutionFlags(int i10) {
            this.value = i10;
        }

        public static int value(Set<ModuleResolutionFlags> set) {
            Iterator<ModuleResolutionFlags> it = set.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                i10 |= it.next().value;
            }
            return i10;
        }
    }

    public static class ModuleSymbol extends TypeSymbol implements ModuleElement {
        public JavaFileManager.Location classLocation;
        public List<Directive> directives;
        public List<Symbol> enclosedPackages;
        public List<Directive.ExportsDirective> exports;
        public final Set<ModuleFlags> flags;
        public ClassSymbol module_info;
        public List<Directive.OpensDirective> opens;
        public JavaFileManager.Location patchLocation;
        public JavaFileManager.Location patchOutputLocation;
        public List<Directive.ProvidesDirective> provides;
        public Set<ModuleSymbol> readModules;
        public List<Directive.RequiresDirective> requires;
        public final Set<ModuleResolutionFlags> resolutionFlags;
        public JavaFileManager.Location sourceLocation;
        public PackageSymbol unnamedPackage;
        public List<Directive.UsesDirective> uses;
        public Completer usesProvidesCompleter;
        public Name version;
        public Map<Name, PackageSymbol> visiblePackages;

        public ModuleSymbol(Name name, Symbol symbol) {
            super(Kinds.Kind.MDL, 0L, name, null, symbol);
            this.enclosedPackages = List.nil();
            this.usesProvidesCompleter = Completer.NULL_COMPLETER;
            this.flags = EnumSet.noneOf(ModuleFlags.class);
            this.resolutionFlags = EnumSet.noneOf(ModuleResolutionFlags.class);
            Assert.checkNonNull(name);
            this.type = new Type.ModuleType(this);
        }

        public static ModuleSymbol create(Name name, Name name2) {
            ModuleSymbol moduleSymbol = new ModuleSymbol(name, null);
            ClassSymbol classSymbol = new ClassSymbol(2251799813685248L, name2, moduleSymbol);
            Name formFullName = TypeSymbol.formFullName(name2, moduleSymbol);
            classSymbol.fullname = formFullName;
            classSymbol.flatname = formFullName;
            classSymbol.members_field = Scope.WriteableScope.create(classSymbol);
            moduleSymbol.module_info = classSymbol;
            return moduleSymbol;
        }

        public static boolean lambda$getEnclosedElements$0(Symbol symbol) {
            return symbol.kind == Kinds.Kind.TYP;
        }

        @Override
        public <R, P> R accept(ElementVisitor<R, P> elementVisitor, P p10) {
            return elementVisitor.visitModule(this, p10);
        }

        public void completeUsesProvides() {
            Completer completer = this.usesProvidesCompleter;
            Completer completer2 = Completer.NULL_COMPLETER;
            if (completer != completer2) {
                this.usesProvidesCompleter = completer2;
                completer.complete(this);
            }
        }

        @Override
        public java.util.List<ModuleElement.Directive> getDirectives() {
            complete();
            completeUsesProvides();
            return Collections.unmodifiableList(this.directives);
        }

        @Override
        public ElementKind getKind() {
            return ElementKind.MODULE;
        }

        @Override
        public org.openjdk.javax.lang.model.element.Name getQualifiedName() {
            return super.getQualifiedName();
        }

        @Override
        public boolean isDeprecated() {
            return hasDeprecatedAnnotation();
        }

        public boolean isNoModule() {
            return false;
        }

        @Override
        public boolean isOpen() {
            return this.flags.contains(ModuleFlags.OPEN);
        }

        @Override
        public boolean isUnnamed() {
            return this.name.isEmpty() && this.owner == null;
        }

        @Override
        public ClassSymbol outermostClass() {
            return null;
        }

        public void reset() {
            this.directives = null;
            this.requires = null;
            this.exports = null;
            this.provides = null;
            this.uses = null;
            this.visiblePackages = null;
        }

        @Override
        public String toString() {
            Name name = this.name;
            return name == null ? MediaStore.UNKNOWN_STRING : name.isEmpty() ? "<unnamed>" : String.valueOf(this.name);
        }

        @Override
        public List<Symbol> getEnclosedElements() {
            List<Symbol> nil = List.nil();
            Iterator<Symbol> it = this.enclosedPackages.iterator();
            while (it.hasNext()) {
                Symbol next = it.next();
                if (next.members().anyMatch(new Filter() {
                    @Override
                    public final boolean accepts(Object obj) {
                        boolean lambda$getEnclosedElements$0;
                        lambda$getEnclosedElements$0 = Symbol.ModuleSymbol.lambda$getEnclosedElements$0((Symbol) obj);
                        return lambda$getEnclosedElements$0;
                    }
                })) {
                    nil = nil.prepend(next);
                }
            }
            return nil;
        }

        @Override
        public Name getSimpleName() {
            Name qualifiedName = getQualifiedName();
            int lastIndexOf = qualifiedName.lastIndexOf(Opcodes.OPC_iaload);
            return lastIndexOf == -1 ? qualifiedName : qualifiedName.subName(lastIndexOf + 1, qualifiedName.length());
        }
    }

    public static class OperatorSymbol extends MethodSymbol {
        private int accessCode;
        public int opcode;

        /* JADX WARN: Enum visitor error
        jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'UNKNOWN' uses external variables
        	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
        	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
        	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
        	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
        	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
        	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
         */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        public static final class AccessCode {
            private static final AccessCode[] $VALUES;
            public static final AccessCode ASSIGN;
            public static final AccessCode DEREF;
            public static final AccessCode FIRSTASGOP;
            public static final AccessCode POSTDEC;
            public static final AccessCode POSTINC;
            public static final AccessCode PREDEC;
            public static final AccessCode PREINC;
            public static final AccessCode UNKNOWN;
            public static final int numberOfAccessCodes;
            public final int code;
            public final JCTree.Tag tag;

            static {
                JCTree.Tag tag = JCTree.Tag.NO_TAG;
                AccessCode accessCode = new AccessCode("UNKNOWN", 0, -1, tag);
                UNKNOWN = accessCode;
                AccessCode accessCode2 = new AccessCode("DEREF", 1, 0, tag);
                DEREF = accessCode2;
                AccessCode accessCode3 = new AccessCode("ASSIGN", 2, 2, JCTree.Tag.ASSIGN);
                ASSIGN = accessCode3;
                AccessCode accessCode4 = new AccessCode("PREINC", 3, 4, JCTree.Tag.PREINC);
                PREINC = accessCode4;
                AccessCode accessCode5 = new AccessCode("PREDEC", 4, 6, JCTree.Tag.PREDEC);
                PREDEC = accessCode5;
                AccessCode accessCode6 = new AccessCode("POSTINC", 5, 8, JCTree.Tag.POSTINC);
                POSTINC = accessCode6;
                AccessCode accessCode7 = new AccessCode("POSTDEC", 6, 10, JCTree.Tag.POSTDEC);
                POSTDEC = accessCode7;
                AccessCode accessCode8 = new AccessCode("FIRSTASGOP", 7, 12, tag);
                FIRSTASGOP = accessCode8;
                $VALUES = new AccessCode[]{accessCode, accessCode2, accessCode3, accessCode4, accessCode5, accessCode6, accessCode7, accessCode8};
                numberOfAccessCodes = accessCode8.code + 86;
            }

            private AccessCode(String str, int i10, int i11, JCTree.Tag tag) {
                this.code = i11;
                this.tag = tag;
            }

            public static int from(JCTree.Tag tag, int i10) {
                int i11;
                int i12;
                int i13 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[tag.ordinal()];
                if (i13 == 1) {
                    return PREINC.code;
                }
                if (i13 == 2) {
                    return PREDEC.code;
                }
                if (i13 == 3) {
                    return POSTINC.code;
                }
                if (i13 == 4) {
                    return POSTDEC.code;
                }
                if (96 <= i10 && i10 <= 131) {
                    i11 = (i10 - 96) * 2;
                    i12 = FIRSTASGOP.code;
                } else {
                    if (i10 == 256) {
                        return FIRSTASGOP.code + 72;
                    }
                    if (270 > i10 || i10 > 275) {
                        return -1;
                    }
                    i11 = (i10 - 233) * 2;
                    i12 = FIRSTASGOP.code;
                }
                return i11 + i12;
            }

            public static AccessCode getFromCode(int i10) {
                for (AccessCode accessCode : values()) {
                    if (accessCode.code == i10) {
                        return accessCode;
                    }
                }
                return UNKNOWN;
            }

            public static AccessCode valueOf(String str) {
                return (AccessCode) Enum.valueOf(AccessCode.class, str);
            }

            public static AccessCode[] values() {
                return (AccessCode[]) $VALUES.clone();
            }
        }

        public OperatorSymbol(Name name, Type type, int i10, Symbol symbol) {
            super(9L, name, type, symbol);
            this.accessCode = Integer.MIN_VALUE;
            this.opcode = i10;
        }

        @Override
        public <R, P> R accept(Visitor<R, P> visitor, P p10) {
            return visitor.visitOperatorSymbol(this, p10);
        }

        public int getAccessCode(JCTree.Tag tag) {
            if (this.accessCode != Integer.MIN_VALUE && !tag.isIncOrDecUnaryOp()) {
                return this.accessCode;
            }
            int from = AccessCode.from(tag, this.opcode);
            this.accessCode = from;
            return from;
        }
    }

    public static class PackageSymbol extends TypeSymbol implements PackageElement {
        public Name fullname;
        public Scope.WriteableScope members_field;
        public ModuleSymbol modle;
        public ClassSymbol package_info;
        public JavaFileObject sourcefile;

        public PackageSymbol(Name name, Type type, Symbol symbol) {
            super(Kinds.Kind.PCK, 0L, name, type, symbol);
            this.members_field = null;
            this.fullname = TypeSymbol.formFullName(name, symbol);
        }

        private void mergeAttributes() {
            if (this.metadata != null || this.package_info.metadata == null) {
                return;
            }
            SymbolMetadata symbolMetadata = new SymbolMetadata(this);
            this.metadata = symbolMetadata;
            symbolMetadata.setAttributes(this.package_info.metadata);
        }

        @Override
        public <R, P> R accept(ElementVisitor<R, P> elementVisitor, P p10) {
            return elementVisitor.visitPackage(this, p10);
        }

        @Override
        public boolean exists() {
            return (this.flags_field & 8388608) != 0;
        }

        @Override
        public long flags() {
            complete();
            return this.flags_field;
        }

        @Override
        public ElementKind getKind() {
            return ElementKind.PACKAGE;
        }

        @Override
        public List<Attribute.Compound> getRawAttributes() {
            complete();
            ClassSymbol classSymbol = this.package_info;
            if (classSymbol != null) {
                classSymbol.complete();
                mergeAttributes();
            }
            return super.getRawAttributes();
        }

        @Override
        public boolean isUnnamed() {
            return this.name.isEmpty() && this.owner != null;
        }

        @Override
        public Scope.WriteableScope members() {
            complete();
            return this.members_field;
        }

        public void reset() {
            this.metadata = null;
        }

        @Override
        public String toString() {
            return this.fullname.toString();
        }

        @Override
        public <R, P> R accept(Visitor<R, P> visitor, P p10) {
            return visitor.visitPackageSymbol(this, p10);
        }

        @Override
        public Symbol getEnclosingElement() {
            ModuleSymbol moduleSymbol = this.modle;
            if (moduleSymbol == null || moduleSymbol.isNoModule()) {
                return null;
            }
            return this.modle;
        }

        @Override
        public Name getQualifiedName() {
            return this.fullname;
        }

        public PackageSymbol(Name name, Symbol symbol) {
            this(name, null, symbol);
            this.type = new Type.PackageType(this);
        }
    }

    public static abstract class TypeSymbol extends Symbol {
        public TypeSymbol(Kinds.Kind kind, long j10, Name name, Type type, Symbol symbol) {
            super(kind, j10, name, type, symbol);
        }

        public static Name formFlatName(Name name, Symbol symbol) {
            if (symbol == null || symbol.kind.matches(Kinds.KindSelector.VAL_MTH)) {
                return name;
            }
            Kinds.Kind kind = symbol.kind;
            Kinds.Kind kind2 = Kinds.Kind.TYP;
            if (kind == kind2 && symbol.type.hasTag(TypeTag.TYPEVAR)) {
                return name;
            }
            char c10 = symbol.kind == kind2 ? '$' : '.';
            Name flatName = symbol.flatName();
            return (flatName == null || flatName == flatName.table.names.empty) ? name : flatName.append(c10, name);
        }

        public static Name formFullName(Name name, Symbol symbol) {
            Name qualifiedName;
            if (symbol == null) {
                return name;
            }
            Kinds.Kind kind = symbol.kind;
            return ((kind != Kinds.Kind.ERR && (kind.matches(Kinds.KindSelector.VAL_MTH) || (symbol.kind == Kinds.Kind.TYP && symbol.type.hasTag(TypeTag.TYPEVAR)))) || (qualifiedName = symbol.getQualifiedName()) == null || qualifiedName == qualifiedName.table.names.empty) ? name : qualifiedName.append('.', name);
        }

        @Override
        public <R, P> R accept(Visitor<R, P> visitor, P p10) {
            return visitor.visitTypeSymbol(this, p10);
        }

        @Override
        public TypeMirror asType() {
            return super.asType();
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        public Annotate.AnnotationTypeMetadata getAnnotationTypeMetadata() {
            Assert.error("Only on ClassSymbol");
            return null;
        }

        @Override
        public java.util.List<Symbol> getEnclosedElements() {
            List nil = List.nil();
            if (this.kind == Kinds.Kind.TYP && this.type.hasTag(TypeTag.TYPEVAR)) {
                return nil;
            }
            for (Symbol symbol : members().getSymbols(Scope.LookupKind.NON_RECURSIVE)) {
                if (symbol != null) {
                    try {
                        if ((symbol.flags() & 4096) == 0 && symbol.owner == this) {
                            nil = nil.prepend(symbol);
                        }
                    } catch (ClassFinder.BadEnclosingMethodAttr unused) {
                    }
                }
            }
            return nil;
        }

        @Override
        public Element getEnclosingElement() {
            return super.getEnclosingElement();
        }

        @Override
        public org.openjdk.javax.lang.model.element.Name getSimpleName() {
            return super.getSimpleName();
        }

        public boolean isAnnotationType() {
            return false;
        }

        public final boolean precedes(TypeSymbol typeSymbol, Types types) {
            if (this == typeSymbol) {
                return false;
            }
            if (this.type.hasTag(typeSymbol.type.getTag())) {
                if (this.type.hasTag(TypeTag.CLASS)) {
                    return types.rank(typeSymbol.type) < types.rank(this.type) || (types.rank(typeSymbol.type) == types.rank(this.type) && typeSymbol.getQualifiedName().compareTo(getQualifiedName()) < 0);
                }
                if (this.type.hasTag(TypeTag.TYPEVAR)) {
                    return types.isSubtype(this.type, typeSymbol.type);
                }
            }
            return this.type.hasTag(TypeTag.TYPEVAR);
        }
    }

    public static class TypeVariableSymbol extends TypeSymbol implements TypeParameterElement {
        public TypeVariableSymbol(long j10, Name name, Type type, Symbol symbol) {
            super(Kinds.Kind.TYP, j10, name, type, symbol);
        }

        @Override
        public <R, P> R accept(ElementVisitor<R, P> elementVisitor, P p10) {
            return elementVisitor.visitTypeParameter(this, p10);
        }

        @Override
        public <A extends Annotation> Attribute.Compound getAttribute(Class<A> cls) {
            String name = cls.getName();
            List<Attribute.TypeCompound> rawTypeAttributes = this.owner.getRawTypeAttributes();
            int indexOf = this.owner.getTypeParameters().indexOf(this);
            Iterator<Attribute.TypeCompound> it = rawTypeAttributes.iterator();
            while (it.hasNext()) {
                Attribute.TypeCompound next = it.next();
                if (isCurrentSymbolsAnnotation(next, indexOf) && name.contentEquals(next.type.tsym.flatName())) {
                    return next;
                }
            }
            return null;
        }

        @Override
        public ElementKind getKind() {
            return ElementKind.TYPE_PARAMETER;
        }

        public boolean isCurrentSymbolsAnnotation(Attribute.TypeCompound typeCompound, int i10) {
            TypeAnnotationPosition typeAnnotationPosition = typeCompound.position;
            TargetType targetType = typeAnnotationPosition.type;
            return (targetType == TargetType.CLASS_TYPE_PARAMETER || targetType == TargetType.METHOD_TYPE_PARAMETER) && typeAnnotationPosition.parameter_index == i10;
        }

        @Override
        public List<Attribute.Compound> getAnnotationMirrors() {
            List<Attribute.TypeCompound> rawTypeAttributes = this.owner.getRawTypeAttributes();
            int indexOf = this.owner.getTypeParameters().indexOf(this);
            List nil = List.nil();
            Iterator<Attribute.TypeCompound> it = rawTypeAttributes.iterator();
            while (it.hasNext()) {
                Attribute.TypeCompound next = it.next();
                if (isCurrentSymbolsAnnotation(next, indexOf)) {
                    nil = nil.prepend(next);
                }
            }
            return nil.reverse();
        }

        @Override
        public List<Type> getBounds() {
            Type upperBound = ((Type.TypeVar) this.type).getUpperBound();
            if (!upperBound.isCompound()) {
                return List.of(upperBound);
            }
            Type.ClassType classType = (Type.ClassType) upperBound;
            if (!classType.tsym.erasure_field.isInterface()) {
                return classType.interfaces_field.prepend(classType.supertype_field);
            }
            return classType.interfaces_field;
        }

        @Override
        public Symbol getGenericElement() {
            return this.owner;
        }
    }

    public static class VarSymbol extends Symbol implements VariableElement {
        public int adr;
        private Object data;
        public int pos;

        public VarSymbol(long j10, Name name, Type type, Symbol symbol) {
            super(Kinds.Kind.VAR, j10, name, type, symbol);
            this.pos = -1;
            this.adr = -1;
        }

        public Object lambda$setLazyConstValue$0(Attr attr, Env env, JCTree.JCVariableDecl jCVariableDecl) throws Exception {
            return attr.attribLazyConstantValue(env, jCVariableDecl, this.type);
        }

        @Override
        public <R, P> R accept(ElementVisitor<R, P> elementVisitor, P p10) {
            return elementVisitor.visitVariable(this, p10);
        }

        @Override
        public Symbol asMemberOf(Type type, Types types) {
            return new VarSymbol(this.flags_field, this.name, types.memberType(type, this), this.owner);
        }

        @Override
        public TypeMirror asType() {
            return super.asType();
        }

        @Override
        public java.util.List getAnnotationMirrors() {
            return super.getAnnotationMirrors();
        }

        public Object getConstValue() {
            Object obj = this.data;
            if (obj == ElementKind.EXCEPTION_PARAMETER || obj == ElementKind.RESOURCE_VARIABLE) {
                return null;
            }
            if (obj instanceof Callable) {
                Callable callable = (Callable) obj;
                this.data = null;
                try {
                    this.data = callable.call();
                } catch (Exception e10) {
                    throw new AssertionError(e10);
                }
            }
            return this.data;
        }

        @Override
        public Object getConstantValue() {
            return Constants.decode(getConstValue(), this.type);
        }

        @Override
        public Element getEnclosingElement() {
            return super.getEnclosingElement();
        }

        @Override
        public ElementKind getKind() {
            long flags = flags();
            if ((8589934592L & flags) != 0) {
                return isExceptionParameter() ? ElementKind.EXCEPTION_PARAMETER : ElementKind.PARAMETER;
            }
            if ((flags & 16384) != 0) {
                return ElementKind.ENUM_CONSTANT;
            }
            Kinds.Kind kind = this.owner.kind;
            return (kind == Kinds.Kind.TYP || kind == Kinds.Kind.ERR) ? ElementKind.FIELD : isResourceVariable() ? ElementKind.RESOURCE_VARIABLE : ElementKind.LOCAL_VARIABLE;
        }

        @Override
        public org.openjdk.javax.lang.model.element.Name getSimpleName() {
            return super.getSimpleName();
        }

        public boolean isExceptionParameter() {
            return this.data == ElementKind.EXCEPTION_PARAMETER;
        }

        public boolean isResourceVariable() {
            return this.data == ElementKind.RESOURCE_VARIABLE;
        }

        public void setData(Object obj) {
            Assert.check(!(obj instanceof Env), this);
            this.data = obj;
        }

        public void setLazyConstValue(final Env<AttrContext> env, final Attr attr, final JCTree.JCVariableDecl jCVariableDecl) {
            setData(new Callable() {
                @Override
                public final Object call() {
                    Object lambda$setLazyConstValue$0;
                    lambda$setLazyConstValue$0 = Symbol.VarSymbol.this.lambda$setLazyConstValue$0(attr, env, jCVariableDecl);
                    return lambda$setLazyConstValue$0;
                }
            });
        }

        @Override
        public String toString() {
            return this.name.toString();
        }

        @Override
        public <R, P> R accept(Visitor<R, P> visitor, P p10) {
            return visitor.visitVarSymbol(this, p10);
        }

        @Override
        public VarSymbol clone(Symbol symbol) {
            VarSymbol varSymbol = new VarSymbol(this.flags_field, this.name, this.type, symbol) {
                @Override
                public TypeMirror asType() {
                    return super.asType();
                }

                @Override
                public Symbol baseSymbol() {
                    return VarSymbol.this;
                }

                @Override
                public Symbol clone(Symbol symbol2) {
                    return super.clone(symbol2);
                }

                @Override
                public java.util.List getAnnotationMirrors() {
                    return super.getAnnotationMirrors();
                }

                @Override
                public Element getEnclosingElement() {
                    return super.getEnclosingElement();
                }

                @Override
                public org.openjdk.javax.lang.model.element.Name getSimpleName() {
                    return super.getSimpleName();
                }
            };
            varSymbol.pos = this.pos;
            varSymbol.adr = this.adr;
            varSymbol.data = this.data;
            return varSymbol;
        }
    }

    public interface Visitor<R, P> {
        R visitClassSymbol(ClassSymbol classSymbol, P p10);

        R visitMethodSymbol(MethodSymbol methodSymbol, P p10);

        R visitOperatorSymbol(OperatorSymbol operatorSymbol, P p10);

        R visitPackageSymbol(PackageSymbol packageSymbol, P p10);

        R visitSymbol(Symbol symbol, P p10);

        R visitTypeSymbol(TypeSymbol typeSymbol, P p10);

        R visitVarSymbol(VarSymbol varSymbol, P p10);
    }

    public Symbol(Kinds.Kind kind, long j10, Name name, Type type, Symbol symbol) {
        this.kind = kind;
        this.flags_field = j10;
        this.type = type;
        this.owner = symbol;
        this.name = name;
    }

    private boolean hiddenIn(ClassSymbol classSymbol, Types types) {
        Symbol hiddenInInternal = hiddenInInternal(classSymbol, types);
        Assert.check(hiddenInInternal != null, "the result of hiddenInInternal() can't be null");
        return hiddenInInternal != this;
    }

    private Symbol hiddenInInternal(ClassSymbol classSymbol, Types types) {
        if (classSymbol == this.owner) {
            return this;
        }
        for (Symbol symbol : classSymbol.members().getSymbolsByName(this.name)) {
            Kinds.Kind kind = symbol.kind;
            Kinds.Kind kind2 = this.kind;
            if (kind == kind2 && (kind2 != Kinds.Kind.MTH || ((symbol.flags() & 8) != 0 && types.isSubSignature(symbol.type, this.type)))) {
                return symbol;
            }
        }
        Iterator<Type> it = types.interfaces(classSymbol.type).prepend(types.supertype(classSymbol.type)).iterator();
        Symbol symbol2 = null;
        while (it.hasNext()) {
            Type next = it.next();
            if (next != null && next.hasTag(TypeTag.CLASS)) {
                Symbol hiddenInInternal = hiddenInInternal((ClassSymbol) next.tsym, types);
                if (hiddenInInternal == this) {
                    return this;
                }
                if (hiddenInInternal != null) {
                    symbol2 = hiddenInInternal;
                }
            }
        }
        return symbol2;
    }

    private SymbolMetadata initedMetadata() {
        if (this.metadata == null) {
            this.metadata = new SymbolMetadata(this);
        }
        return this.metadata;
    }

    public <R, P> R accept(Visitor<R, P> visitor, P p10) {
        return visitor.visitSymbol(this, p10);
    }

    public boolean annotationsPendingCompletion() {
        SymbolMetadata symbolMetadata = this.metadata;
        if (symbolMetadata == null) {
            return false;
        }
        return symbolMetadata.pendingCompletion();
    }

    public void appendAttributes(List<Attribute.Compound> list) {
        if (list.nonEmpty()) {
            initedMetadata().append(list);
        }
    }

    public void appendClassInitTypeAttributes(List<Attribute.TypeCompound> list) {
        if (list.nonEmpty()) {
            initedMetadata().appendClassInitTypeAttributes(list);
        }
    }

    public void appendInitTypeAttributes(List<Attribute.TypeCompound> list) {
        if (list.nonEmpty()) {
            initedMetadata().appendInitTypeAttributes(list);
        }
    }

    public void appendUniqueTypeAttributes(List<Attribute.TypeCompound> list) {
        if (list.nonEmpty()) {
            initedMetadata().appendUniqueTypes(list);
        }
    }

    public Symbol asMemberOf(Type type, Types types) {
        throw new AssertionError();
    }

    public Attribute.Compound attribute(Symbol symbol) {
        Iterator<Attribute.Compound> it = getRawAttributes().iterator();
        while (it.hasNext()) {
            Attribute.Compound next = it.next();
            if (next.type.tsym == symbol) {
                return next;
            }
        }
        return null;
    }

    public Symbol baseSymbol() {
        return this;
    }

    public Symbol clone(Symbol symbol) {
        throw new AssertionError();
    }

    public void complete() throws CompletionFailure {
        Completer completer = this.completer;
        Completer completer2 = Completer.NULL_COMPLETER;
        if (completer != completer2) {
            this.completer = completer2;
            completer.complete(this);
        }
    }

    public ClassSymbol enclClass() {
        Symbol symbol = this;
        while (symbol != null && (!symbol.kind.matches(Kinds.KindSelector.TYP) || !symbol.type.hasTag(TypeTag.CLASS))) {
            symbol = symbol.owner;
        }
        return (ClassSymbol) symbol;
    }

    public Type erasure(Types types) {
        if (this.erasure_field == null) {
            this.erasure_field = types.erasure(this.type);
        }
        return this.erasure_field;
    }

    public boolean exists() {
        return true;
    }

    public Type externalType(Types types) {
        Type erasure = erasure(types);
        Name name = this.name;
        if (name != name.table.names.init || !this.owner.hasOuterInstance()) {
            return erasure;
        }
        return new Type.MethodType(erasure.getParameterTypes().prepend(types.erasure(this.owner.type.getEnclosingType())), erasure.getReturnType(), erasure.getThrownTypes(), erasure.tsym);
    }

    public long flags() {
        return this.flags_field;
    }

    public Name flatName() {
        return getQualifiedName();
    }

    public List<Attribute.TypeCompound> getClassInitTypeAttributes() {
        SymbolMetadata symbolMetadata = this.metadata;
        return symbolMetadata == null ? List.nil() : symbolMetadata.getClassInitTypeAttributes();
    }

    public List<Attribute.Compound> getDeclarationAttributes() {
        SymbolMetadata symbolMetadata = this.metadata;
        return symbolMetadata == null ? List.nil() : symbolMetadata.getDeclarationAttributes();
    }

    @Override
    public java.util.List<Symbol> getEnclosedElements() {
        return List.nil();
    }

    public List<Attribute.TypeCompound> getInitTypeAttributes() {
        SymbolMetadata symbolMetadata = this.metadata;
        return symbolMetadata == null ? List.nil() : symbolMetadata.getInitTypeAttributes();
    }

    @Override
    public ElementKind getKind() {
        return ElementKind.OTHER;
    }

    public SymbolMetadata getMetadata() {
        return this.metadata;
    }

    @Override
    public Set<Modifier> getModifiers() {
        return Flags.asModifierSet(flags());
    }

    public Name getQualifiedName() {
        return this.name;
    }

    public List<Attribute.Compound> getRawAttributes() {
        SymbolMetadata symbolMetadata = this.metadata;
        return symbolMetadata == null ? List.nil() : symbolMetadata.getDeclarationAttributes();
    }

    public List<Attribute.TypeCompound> getRawTypeAttributes() {
        SymbolMetadata symbolMetadata = this.metadata;
        return symbolMetadata == null ? List.nil() : symbolMetadata.getTypeAttributes();
    }

    public List<TypeVariableSymbol> getTypeParameters() {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = this.type.getTypeArguments().iterator();
        while (it.hasNext()) {
            Type next = it.next();
            Assert.check(next.tsym.getKind() == ElementKind.TYPE_PARAMETER);
            listBuffer.append((TypeVariableSymbol) next.tsym);
        }
        return listBuffer.toList();
    }

    public boolean hasAnnotations() {
        SymbolMetadata symbolMetadata = this.metadata;
        return (symbolMetadata == null || symbolMetadata.isEmpty()) ? false : true;
    }

    public boolean hasDeprecatedAnnotation() {
        return (this.flags_field & 18014398509481984L) != 0;
    }

    public boolean hasOuterInstance() {
        return this.type.getEnclosingType().hasTag(TypeTag.CLASS) && (flags() & 4194816) == 0;
    }

    public boolean hasTypeAnnotations() {
        SymbolMetadata symbolMetadata = this.metadata;
        return (symbolMetadata == null || symbolMetadata.isTypesEmpty()) ? false : true;
    }

    public boolean isAnonymous() {
        return this.name.isEmpty();
    }

    public boolean isCompleted() {
        return this.completer.isTerminal();
    }

    public boolean isConstructor() {
        Name name = this.name;
        return name == name.table.names.init;
    }

    public boolean isDeprecatableViaAnnotation() {
        int i10 = AnonymousClass1.$SwitchMap$javax$lang$model$element$ElementKind[getKind().ordinal()];
        return (i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5) ? false : true;
    }

    public boolean isDeprecated() {
        return (this.flags_field & 131072) != 0;
    }

    public boolean isDeprecatedForRemoval() {
        return (this.flags_field & 36028797018963968L) != 0;
    }

    public boolean isEnclosedBy(ClassSymbol classSymbol) {
        for (Symbol symbol = this; symbol.kind != Kinds.Kind.PCK; symbol = symbol.owner) {
            if (symbol == classSymbol) {
                return true;
            }
        }
        return false;
    }

    public boolean isEnum() {
        return (flags() & 16384) != 0;
    }

    public boolean isInheritedIn(Symbol symbol, Types types) {
        int i10 = (int) (this.flags_field & 7);
        if (i10 != 0) {
            return i10 != 2 ? i10 != 4 || (symbol.flags() & 512) == 0 : this.owner == symbol;
        }
        PackageSymbol packge = packge();
        Symbol symbol2 = symbol;
        while (symbol2 != null && symbol2 != this.owner) {
            while (symbol2.type.hasTag(TypeTag.TYPEVAR)) {
                symbol2 = symbol2.type.getUpperBound().tsym;
            }
            if (symbol2.type.isErroneous()) {
                return true;
            }
            if ((symbol2.flags() & 16777216) == 0 && symbol2.packge() != packge) {
                return false;
            }
            symbol2 = types.supertype(symbol2.type).tsym;
        }
        return (symbol.flags() & 512) == 0;
    }

    public boolean isInner() {
        return this.kind == Kinds.Kind.TYP && this.type.getEnclosingType().hasTag(TypeTag.CLASS);
    }

    public boolean isInterface() {
        return (flags() & 512) != 0;
    }

    public boolean isLocal() {
        if (!this.owner.kind.matches(Kinds.KindSelector.VAL_MTH)) {
            Symbol symbol = this.owner;
            if (symbol.kind != Kinds.Kind.TYP || !symbol.isLocal()) {
                return false;
            }
        }
        return true;
    }

    public boolean isMemberOf(TypeSymbol typeSymbol, Types types) {
        Symbol symbol = this.owner;
        return symbol == typeSymbol || (typeSymbol.isSubClass(symbol, types) && isInheritedIn(typeSymbol, types) && !hiddenIn((ClassSymbol) typeSymbol, types));
    }

    public boolean isPrivate() {
        return (this.flags_field & 7) == 2;
    }

    public boolean isStatic() {
        if ((flags() & 8) == 0) {
            if ((this.owner.flags() & 512) != 0 && this.kind != Kinds.Kind.MTH) {
                Name name = this.name;
                if (name != name.table.names._this) {
                }
            }
            return false;
        }
        return true;
    }

    public boolean isSubClass(Symbol symbol, Types types) {
        throw new AssertionError((Object) ("isSubClass " + ((Object) this)));
    }

    public Symbol location() {
        Kinds.Kind kind;
        Name name = this.owner.name;
        if (name == null) {
            return null;
        }
        if (!name.isEmpty() || (this.owner.flags() & TagBits.HasNullTypeAnnotation) != 0 || (kind = this.owner.kind) == Kinds.Kind.PCK || kind == Kinds.Kind.TYP) {
            return this.owner;
        }
        return null;
    }

    public Scope.WriteableScope members() {
        return null;
    }

    public ClassSymbol outermostClass() {
        Symbol symbol = null;
        for (Symbol symbol2 = this; symbol2.kind != Kinds.Kind.PCK; symbol2 = symbol2.owner) {
            symbol = symbol2;
        }
        return (ClassSymbol) symbol;
    }

    public boolean overrides(Symbol symbol, TypeSymbol typeSymbol, Types types, boolean z10) {
        return false;
    }

    public PackageSymbol packge() {
        Symbol symbol = this;
        while (symbol.kind != Kinds.Kind.PCK) {
            symbol = symbol.owner;
        }
        return (PackageSymbol) symbol;
    }

    public void prependAttributes(List<Attribute.Compound> list) {
        if (list.nonEmpty()) {
            initedMetadata().prepend(list);
        }
    }

    public void resetAnnotations() {
        initedMetadata().reset();
    }

    public void setAttributes(Symbol symbol) {
        if (this.metadata == null && symbol.metadata == null) {
            return;
        }
        initedMetadata().setAttributes(symbol.metadata);
    }

    public void setClassInitTypeAttributes(List<Attribute.TypeCompound> list) {
        initedMetadata().setClassInitTypeAttributes(list);
    }

    public void setDeclarationAttributes(List<Attribute.Compound> list) {
        if (this.metadata != null || list.nonEmpty()) {
            initedMetadata().setDeclarationAttributes(list);
        }
    }

    public void setInitTypeAttributes(List<Attribute.TypeCompound> list) {
        initedMetadata().setInitTypeAttributes(list);
    }

    public void setTypeAttributes(List<Attribute.TypeCompound> list) {
        if (this.metadata != null || list.nonEmpty()) {
            if (this.metadata == null) {
                this.metadata = new SymbolMetadata(this);
            }
            this.metadata.setTypeAttributes(list);
        }
    }

    public String toString() {
        return this.name.toString();
    }

    @Override
    public Type asType() {
        return this.type;
    }

    @Override
    public List<Attribute.Compound> getAnnotationMirrors() {
        return getRawAttributes();
    }

    @Override
    public Symbol getEnclosingElement() {
        return this.owner;
    }

    @Override
    public Name getSimpleName() {
        return this.name;
    }

    public Symbol location(Type type, Types types) {
        Type asOuterSuper;
        Name name = this.owner.name;
        if (name != null && !name.isEmpty()) {
            if (this.owner.type.hasTag(TypeTag.CLASS) && (asOuterSuper = types.asOuterSuper(type, this.owner)) != null) {
                return asOuterSuper.tsym;
            }
            return this.owner;
        }
        return location();
    }
}
