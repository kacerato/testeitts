package org.openjdk.tools.javac.jvm;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.CharBuffer;
import java.nio.file.ClosedFileSystemException;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.element.NestingKind;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.BoundKind;
import org.openjdk.tools.javac.code.ClassFinder;
import org.openjdk.tools.javac.code.Directive;
import org.openjdk.tools.javac.code.Flags;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.TargetType;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeAnnotationPosition;
import org.openjdk.tools.javac.code.TypeMetadata;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Annotate;
import org.openjdk.tools.javac.file.BaseFileManager;
import org.openjdk.tools.javac.file.PathFileObject;
import org.openjdk.tools.javac.jvm.ClassFile;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Convert;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.javac.util.Pair;

public class ClassReader {
    public static final int INITIAL_BUFFER_SIZE = 65520;
    protected static final Context.Key<ClassReader> classReaderKey = new Context.Key<>();
    protected Set<AttributeKind> CLASS_ATTRIBUTE;
    protected Set<AttributeKind> CLASS_OR_MEMBER_ATTRIBUTE;
    protected Set<AttributeKind> MEMBER_ATTRIBUTE;
    boolean allowModules;
    boolean allowSimplifiedVarargs;
    private final Annotate annotate;
    protected Map<Name, AttributeReader> attributeReaders;
    protected int bp;
    JCDiagnostic.Factory diagFactory;
    private final JavaFileManager fileManager;
    public boolean filling;
    private List<Type> foundTypeVariables;
    boolean haveParameterNameIndices;
    boolean lintClassfile;
    final Log log;
    int majorVersion;
    int minorVersion;
    private List<Type> missingTypeVariables;
    final Names names;
    ParameterAnnotations[] parameterAnnotations;
    int[] parameterNameIndices;
    int[] poolIdx;
    Object[] poolObj;
    public final Profile profile;
    private boolean readingClassAttr;
    CompoundAnnotationProxy repeatable;
    public boolean saveParameterNames;
    boolean sawMethodParameters;
    int siglimit;
    byte[] signature;
    int sigp;
    Symtab syms;
    CompoundAnnotationProxy target;
    Types types;
    protected Scope.WriteableScope typevars;
    boolean verbose;
    public boolean readAllOfClassFile = false;
    private List<InterimUsesDirective> interimUses = List.nil();
    private List<InterimProvidesDirective> interimProvides = List.nil();
    protected JavaFileObject currentClassFile = null;
    protected Symbol currentOwner = null;
    protected Symbol.ModuleSymbol currentModule = null;
    byte[] buf = new byte[65520];
    Set<Name> warnedAttrs = new HashSet();
    boolean sigEnterPhase = false;
    byte[] signatureBuffer = new byte[0];
    int sbp = 0;

    public static class AnonymousClass26 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$TargetType;
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;

        static {
            int[] iArr = new int[TargetType.values().length];
            $SwitchMap$com$sun$tools$javac$code$TargetType = iArr;
            try {
                iArr[TargetType.INSTANCEOF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.NEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CONSTRUCTOR_REFERENCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_REFERENCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.LOCAL_VARIABLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.RESOURCE_VARIABLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.EXCEPTION_PARAMETER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_RECEIVER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CLASS_TYPE_PARAMETER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_TYPE_PARAMETER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CLASS_TYPE_PARAMETER_BOUND.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_TYPE_PARAMETER_BOUND.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CLASS_EXTENDS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.THROWS.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_FORMAL_PARAMETER.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CAST.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_INVOCATION_TYPE_ARGUMENT.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_REFERENCE_TYPE_ARGUMENT.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.METHOD_RETURN.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.FIELD.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TargetType[TargetType.UNKNOWN.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            int[] iArr2 = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr2;
            try {
                iArr2[TypeTag.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CHAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.SHORT.ordinal()] = 4;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.INT.ordinal()] = 5;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.LONG.ordinal()] = 6;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CLASS.ordinal()] = 9;
            } catch (NoSuchFieldError unused32) {
            }
        }
    }

    public class AnnotationCompleter extends AnnotationDeproxy implements Runnable {
        final JavaFileObject classFile;

        final List<CompoundAnnotationProxy> f103246l;
        final Symbol sym;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public AnnotationCompleter(Symbol symbol, List<CompoundAnnotationProxy> list) {
            super(r0.kind == Kinds.Kind.MTH ? r0.enclClass() : (Symbol.ClassSymbol) r0);
            Symbol symbol2 = ClassReader.this.currentOwner;
            if (symbol.kind == Kinds.Kind.TYP) {
                Symbol symbol3 = symbol.owner;
                if (symbol3.kind == Kinds.Kind.MDL) {
                    this.sym = symbol3;
                    this.f103246l = list;
                    this.classFile = ClassReader.this.currentClassFile;
                }
            }
            this.sym = symbol;
            this.f103246l = list;
            this.classFile = ClassReader.this.currentClassFile;
        }

        @Override
        public void run() {
            ClassReader classReader = ClassReader.this;
            JavaFileObject javaFileObject = classReader.currentClassFile;
            try {
                classReader.currentClassFile = this.classFile;
                List<Attribute.Compound> deproxyCompoundList = deproxyCompoundList(this.f103246l);
                Iterator<Attribute.Compound> it = deproxyCompoundList.iterator();
                while (it.hasNext()) {
                    Attribute.Compound next = it.next();
                    Symbol.TypeSymbol typeSymbol = next.type.tsym;
                    ClassReader classReader2 = ClassReader.this;
                    if (typeSymbol == classReader2.syms.deprecatedType.tsym) {
                        this.sym.flags_field |= 18014398509613056L;
                        Attribute member = next.member(classReader2.names.forRemoval);
                        if (member instanceof Attribute.Constant) {
                            Attribute.Constant constant = (Attribute.Constant) member;
                            if (constant.type == ClassReader.this.syms.booleanType && ((Integer) constant.value).intValue() != 0) {
                                this.sym.flags_field |= 36028797018963968L;
                            }
                        }
                    }
                }
                if (this.sym.annotationsPendingCompletion()) {
                    this.sym.setDeclarationAttributes(deproxyCompoundList);
                } else {
                    this.sym.appendAttributes(deproxyCompoundList);
                }
                ClassReader.this.currentClassFile = javaFileObject;
            } catch (Throwable th2) {
                ClassReader.this.currentClassFile = javaFileObject;
                throw th2;
            }
        }

        public String toString() {
            return " ClassReader annotate " + ((Object) this.sym.owner) + "." + ((Object) this.sym) + " with " + ((Object) this.f103246l);
        }
    }

    public class AnnotationDefaultCompleter extends AnnotationDeproxy implements Runnable {
        final JavaFileObject classFile;
        final Symbol.MethodSymbol sym;
        final Attribute value;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public AnnotationDefaultCompleter(Symbol.MethodSymbol methodSymbol, Attribute attribute) {
            super(r0.kind == Kinds.Kind.MTH ? r0.enclClass() : (Symbol.ClassSymbol) r0);
            Symbol symbol = ClassReader.this.currentOwner;
            this.classFile = ClassReader.this.currentClassFile;
            this.sym = methodSymbol;
            this.value = attribute;
        }

        @Override
        public void run() {
            ClassReader classReader = ClassReader.this;
            JavaFileObject javaFileObject = classReader.currentClassFile;
            try {
                Symbol.MethodSymbol methodSymbol = this.sym;
                methodSymbol.defaultValue = null;
                classReader.currentClassFile = this.classFile;
                methodSymbol.defaultValue = deproxy(methodSymbol.type.getReturnType(), this.value);
            } finally {
                ClassReader.this.currentClassFile = javaFileObject;
            }
        }

        public String toString() {
            return " ClassReader store default for " + ((Object) this.sym.owner) + "." + ((Object) this.sym) + " is " + ((Object) this.value);
        }
    }

    public class AnnotationDeproxy implements ProxyVisitor {
        private Symbol.ClassSymbol requestingOwner;
        Attribute result;
        Type type;

        public AnnotationDeproxy(Symbol.ClassSymbol classSymbol) {
            this.requestingOwner = classSymbol;
        }

        public Attribute deproxy(Type type, Attribute attribute) {
            Type type2 = this.type;
            try {
                this.type = type;
                attribute.accept(this);
                return this.result;
            } finally {
                this.type = type2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Attribute.Compound deproxyCompound(CompoundAnnotationProxy compoundAnnotationProxy) {
            Type resolvePossibleProxyType = resolvePossibleProxyType(compoundAnnotationProxy.type);
            ListBuffer listBuffer = new ListBuffer();
            for (List list = compoundAnnotationProxy.values; list.nonEmpty(); list = list.tail) {
                Symbol.MethodSymbol findAccessMethod = findAccessMethod(resolvePossibleProxyType, (Name) ((Pair) list.head).fst);
                listBuffer.append(new Pair(findAccessMethod, deproxy(findAccessMethod.type.getReturnType(), (Attribute) ((Pair) list.head).snd)));
            }
            return new Attribute.Compound(resolvePossibleProxyType, listBuffer.toList());
        }

        public List<Attribute.Compound> deproxyCompoundList(List<CompoundAnnotationProxy> list) {
            ListBuffer listBuffer = new ListBuffer();
            for (List<CompoundAnnotationProxy> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
                listBuffer.append(deproxyCompound(list2.head));
            }
            return listBuffer.toList();
        }

        public Symbol.MethodSymbol findAccessMethod(Type type, Name name) {
            try {
                for (Symbol symbol : type.tsym.members().getSymbolsByName(name)) {
                    if (symbol.kind == Kinds.Kind.MTH && symbol.type.getParameterTypes().length() == 0) {
                        return (Symbol.MethodSymbol) symbol;
                    }
                }
                e = null;
            } catch (Symbol.CompletionFailure e10) {
                e = e10;
            }
            JavaFileObject useSource = ClassReader.this.log.useSource(this.requestingOwner.classfile);
            try {
                ClassReader classReader = ClassReader.this;
                if (classReader.lintClassfile) {
                    if (e == null) {
                        classReader.log.warning("annotation.method.not.found", type, name);
                    } else {
                        classReader.log.warning("annotation.method.not.found.reason", type, name, e.getDetailValue());
                    }
                }
                ClassReader.this.log.useSource(useSource);
                return new Symbol.MethodSymbol(Flags.AnnotationTypeElementMask, name, new Type.MethodType(List.nil(), ClassReader.this.syms.botType, List.nil(), ClassReader.this.syms.methodClass), type.tsym);
            } catch (Throwable th2) {
                ClassReader.this.log.useSource(useSource);
                throw th2;
            }
        }

        public Type resolvePossibleProxyType(Type type) {
            if (!(type instanceof ProxyType)) {
                return type;
            }
            Assert.check(this.requestingOwner.owner.kind == Kinds.Kind.MDL);
            ClassReader classReader = ClassReader.this;
            Symbol.ModuleSymbol moduleSymbol = classReader.currentModule;
            classReader.currentModule = (Symbol.ModuleSymbol) this.requestingOwner.owner;
            try {
                return ((ProxyType) type).resolve();
            } finally {
                ClassReader.this.currentModule = moduleSymbol;
            }
        }

        @Override
        public void visitArray(Attribute.Array array) {
            throw new AssertionError();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitArrayAttributeProxy(ArrayAttributeProxy arrayAttributeProxy) {
            Attribute[] attributeArr = new Attribute[arrayAttributeProxy.values.length()];
            Type elemtype = ClassReader.this.types.elemtype(this.type);
            List list = arrayAttributeProxy.values;
            int i10 = 0;
            while (list.nonEmpty()) {
                attributeArr[i10] = deproxy(elemtype, (Attribute) list.head);
                list = list.tail;
                i10++;
            }
            this.result = new Attribute.Array(this.type, attributeArr);
        }

        @Override
        public void visitClass(Attribute.Class r12) {
            this.result = r12;
        }

        @Override
        public void visitClassAttributeProxy(ClassAttributeProxy classAttributeProxy) {
            this.result = new Attribute.Class(ClassReader.this.types, resolvePossibleProxyType(classAttributeProxy.classType));
        }

        @Override
        public void visitCompound(Attribute.Compound compound) {
            throw new AssertionError();
        }

        @Override
        public void visitCompoundAnnotationProxy(CompoundAnnotationProxy compoundAnnotationProxy) {
            this.result = deproxyCompound(compoundAnnotationProxy);
        }

        @Override
        public void visitConstant(Attribute.Constant constant) {
            this.result = constant;
        }

        @Override
        public void visitEnum(Attribute.Enum r12) {
            throw new AssertionError();
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
        
            r2 = (org.openjdk.tools.javac.code.Symbol.VarSymbol) r2;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void visitEnumAttributeProxy(EnumAttributeProxy enumAttributeProxy) {
            Symbol.VarSymbol varSymbol;
            Symbol.TypeSymbol typeSymbol = resolvePossibleProxyType(enumAttributeProxy.enumType).tsym;
            Symbol.VarSymbol varSymbol2 = null;
            try {
                Iterator<Symbol> it = typeSymbol.members().getSymbolsByName(enumAttributeProxy.enumerator).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        varSymbol = null;
                        break;
                    } else {
                        Symbol next = it.next();
                        if (next.kind == Kinds.Kind.VAR) {
                            break;
                        }
                    }
                }
                e = null;
                varSymbol2 = varSymbol;
            } catch (Symbol.CompletionFailure e10) {
                e = e10;
            }
            if (varSymbol2 != null) {
                this.result = new Attribute.Enum(typeSymbol.type, varSymbol2);
                return;
            }
            if (e != null) {
                ClassReader classReader = ClassReader.this;
                classReader.log.warning("unknown.enum.constant.reason", classReader.currentClassFile, typeSymbol, enumAttributeProxy.enumerator, e.getDiagnostic());
            } else {
                ClassReader classReader2 = ClassReader.this;
                classReader2.log.warning("unknown.enum.constant", classReader2.currentClassFile, typeSymbol, enumAttributeProxy.enumerator);
            }
            this.result = new Attribute.Enum(typeSymbol.type, new Symbol.VarSymbol(0L, enumAttributeProxy.enumerator, ClassReader.this.syms.botType, typeSymbol));
        }

        @Override
        public void visitError(Attribute.Error error) {
            throw new AssertionError();
        }
    }

    public static class ArrayAttributeProxy extends Attribute {
        List<Attribute> values;

        public ArrayAttributeProxy(List<Attribute> list) {
            super(null);
            this.values = list;
        }

        @Override
        public void accept(Attribute.Visitor visitor) {
            ((ProxyVisitor) visitor).visitArrayAttributeProxy(this);
        }

        @Override
        public String toString() {
            return "{" + ((Object) this.values) + VectorFormat.DEFAULT_SUFFIX;
        }
    }

    public enum AttributeKind {
        CLASS,
        MEMBER
    }

    public abstract class AttributeReader {
        protected final Set<AttributeKind> kinds;
        protected final Name name;
        protected final ClassFile.Version version;

        public AttributeReader(Name name, ClassFile.Version version, Set<AttributeKind> set) {
            this.name = name;
            this.version = version;
            this.kinds = set;
        }

        public boolean accepts(AttributeKind attributeKind) {
            if (!this.kinds.contains(attributeKind)) {
                return false;
            }
            ClassReader classReader = ClassReader.this;
            int i10 = classReader.majorVersion;
            ClassFile.Version version = this.version;
            int i11 = version.major;
            if (i10 > i11) {
                return true;
            }
            if (i10 == i11 && classReader.minorVersion >= version.minor) {
                return true;
            }
            if (!classReader.lintClassfile || classReader.warnedAttrs.contains(this.name)) {
                return false;
            }
            ClassReader classReader2 = ClassReader.this;
            JavaFileObject useSource = classReader2.log.useSource(classReader2.currentClassFile);
            try {
                ClassReader.this.log.warning(Lint.LintCategory.CLASSFILE, null, "future.attr", this.name, Integer.valueOf(this.version.major), Integer.valueOf(this.version.minor), Integer.valueOf(ClassReader.this.majorVersion), Integer.valueOf(ClassReader.this.minorVersion));
                ClassReader.this.log.useSource(useSource);
                ClassReader.this.warnedAttrs.add(this.name);
                return false;
            } catch (Throwable th2) {
                ClassReader.this.log.useSource(useSource);
                throw th2;
            }
        }

        public abstract void read(Symbol symbol, int i10);
    }

    public static class ClassAttributeProxy extends Attribute {
        Type classType;

        public ClassAttributeProxy(Type type) {
            super(null);
            this.classType = type;
        }

        @Override
        public void accept(Attribute.Visitor visitor) {
            ((ProxyVisitor) visitor).visitClassAttributeProxy(this);
        }

        @Override
        public String toString() {
            return "/*proxy class*/" + ((Object) this.classType) + ".class";
        }
    }

    public class CompleterDeproxy implements Annotate.AnnotationTypeCompleter {
        Symbol.ClassSymbol proxyOn;
        CompoundAnnotationProxy repeatable;
        CompoundAnnotationProxy target;

        public CompleterDeproxy(Symbol.ClassSymbol classSymbol, CompoundAnnotationProxy compoundAnnotationProxy, CompoundAnnotationProxy compoundAnnotationProxy2) {
            this.proxyOn = classSymbol;
            this.target = compoundAnnotationProxy;
            this.repeatable = compoundAnnotationProxy2;
        }

        @Override
        public void complete(Symbol.ClassSymbol classSymbol) {
            Assert.check(this.proxyOn == classSymbol);
            try {
                Attribute.Compound deproxyCompound = this.target != null ? new AnnotationDeproxy(this.proxyOn).deproxyCompound(this.target) : null;
                Attribute.Compound deproxyCompound2 = this.repeatable != null ? new AnnotationDeproxy(this.proxyOn).deproxyCompound(this.repeatable) : null;
                classSymbol.getAnnotationTypeMetadata().setTarget(deproxyCompound);
                classSymbol.getAnnotationTypeMetadata().setRepeatable(deproxyCompound2);
            } catch (Exception e10) {
                throw new Symbol.CompletionFailure(classSymbol, e10.getMessage());
            }
        }
    }

    public static class CompoundAnnotationProxy extends Attribute {
        final List<Pair<Name, Attribute>> values;

        public CompoundAnnotationProxy(Type type, List<Pair<Name, Attribute>> list) {
            super(type);
            this.values = list;
        }

        @Override
        public void accept(Attribute.Visitor visitor) {
            ((ProxyVisitor) visitor).visitCompoundAnnotationProxy(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("@");
            sb2.append((CharSequence) this.type.tsym.getQualifiedName());
            sb2.append("/*proxy*/{");
            List list = this.values;
            boolean z10 = true;
            while (list.nonEmpty()) {
                Pair pair = (Pair) list.head;
                if (!z10) {
                    sb2.append(DocLint.SEPARATOR);
                }
                sb2.append((CharSequence) pair.fst);
                sb2.append("=");
                sb2.append(pair.snd);
                list = list.tail;
                z10 = false;
            }
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }
    }

    public static class EnumAttributeProxy extends Attribute {
        Type enumType;
        Name enumerator;

        public EnumAttributeProxy(Type type, Name name) {
            super(null);
            this.enumType = type;
            this.enumerator = name;
        }

        @Override
        public void accept(Attribute.Visitor visitor) {
            ((ProxyVisitor) visitor).visitEnumAttributeProxy(this);
        }

        @Override
        public String toString() {
            return "/*proxy enum*/" + ((Object) this.enumType) + "." + ((Object) this.enumerator);
        }
    }

    public static final class InterimProvidesDirective {
        public final List<Name> impls;
        public final Name service;

        public InterimProvidesDirective(Name name, List<Name> list) {
            this.service = name;
            this.impls = list;
        }
    }

    public static final class InterimUsesDirective {
        public final Name service;

        public InterimUsesDirective(Name name) {
            this.service = name;
        }
    }

    public static class ParameterAnnotations {
        List<CompoundAnnotationProxy> proxies;

        public void add(List<CompoundAnnotationProxy> list) {
            List<CompoundAnnotationProxy> list2 = this.proxies;
            if (list2 == null) {
                this.proxies = list;
            } else {
                this.proxies = list2.prependList(list);
            }
        }
    }

    public class ProxyType extends Type {
        private final byte[] content;

        public ProxyType(byte[] bArr) {
            super(ClassReader.this.syms.noSymbol, TypeMetadata.EMPTY);
            this.content = bArr;
        }

        @Override
        public Type cloneWithMetadata(TypeMetadata typeMetadata) {
            throw new UnsupportedOperationException();
        }

        @Override
        public TypeTag getTag() {
            return TypeTag.NONE;
        }

        public Type resolve() {
            ClassReader classReader = ClassReader.this;
            byte[] bArr = this.content;
            return classReader.sigToType(bArr, 0, bArr.length);
        }

        @Override
        public String toString() {
            return "<ProxyType>";
        }
    }

    public interface ProxyVisitor extends Attribute.Visitor {
        void visitArrayAttributeProxy(ArrayAttributeProxy arrayAttributeProxy);

        void visitClassAttributeProxy(ClassAttributeProxy classAttributeProxy);

        void visitCompoundAnnotationProxy(CompoundAnnotationProxy compoundAnnotationProxy);

        void visitEnumAttributeProxy(EnumAttributeProxy enumAttributeProxy);
    }

    public static class SourceFileObject implements JavaFileObject {
        private final Name flatname;
        private final Name name;

        public SourceFileObject(Name name, Name name2) {
            this.name = name;
            this.flatname = name2;
        }

        @Override
        public boolean delete() {
            throw new UnsupportedOperationException();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof SourceFileObject) {
                return this.name.equals(((SourceFileObject) obj).name);
            }
            return false;
        }

        @Override
        public Modifier getAccessLevel() {
            return null;
        }

        @Override
        public JavaFileObject.Kind getKind() {
            return BaseFileManager.getKind(getName());
        }

        @Override
        public long getLastModified() {
            throw new UnsupportedOperationException();
        }

        @Override
        public String getName() {
            return this.name.toString();
        }

        @Override
        public NestingKind getNestingKind() {
            return null;
        }

        public int hashCode() {
            return this.name.hashCode();
        }

        @Override
        public boolean isNameCompatible(String str, JavaFileObject.Kind kind) {
            return true;
        }

        @Override
        public InputStream openInputStream() {
            throw new UnsupportedOperationException();
        }

        @Override
        public OutputStream openOutputStream() {
            throw new UnsupportedOperationException();
        }

        @Override
        public Reader openReader(boolean z10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Writer openWriter() {
            throw new UnsupportedOperationException();
        }

        @Override
        public URI toUri() {
            try {
                return new URI(null, this.name.toString(), null);
            } catch (URISyntaxException e10) {
                throw new PathFileObject.CannotCreateUriError(this.name.toString(), e10);
            }
        }

        @Override
        public CharBuffer getCharContent(boolean z10) {
            throw new UnsupportedOperationException();
        }
    }

    public class TypeAnnotationCompleter extends AnnotationCompleter {
        List<TypeAnnotationProxy> proxies;

        public TypeAnnotationCompleter(Symbol symbol, List<TypeAnnotationProxy> list) {
            super(symbol, List.nil());
            this.proxies = list;
        }

        public List<Attribute.TypeCompound> deproxyTypeCompoundList(List<TypeAnnotationProxy> list) {
            ListBuffer listBuffer = new ListBuffer();
            Iterator<TypeAnnotationProxy> it = list.iterator();
            while (it.hasNext()) {
                TypeAnnotationProxy next = it.next();
                listBuffer.add(new Attribute.TypeCompound(deproxyCompound(next.compound), next.position));
            }
            return listBuffer.toList();
        }

        @Override
        public void run() {
            ClassReader classReader = ClassReader.this;
            JavaFileObject javaFileObject = classReader.currentClassFile;
            try {
                classReader.currentClassFile = this.classFile;
                List<Attribute.TypeCompound> deproxyTypeCompoundList = deproxyTypeCompoundList(this.proxies);
                Symbol symbol = this.sym;
                symbol.setTypeAttributes(deproxyTypeCompoundList.prependList(symbol.getRawTypeAttributes()));
            } finally {
                ClassReader.this.currentClassFile = javaFileObject;
            }
        }
    }

    public static class TypeAnnotationProxy {
        final CompoundAnnotationProxy compound;
        final TypeAnnotationPosition position;

        public TypeAnnotationProxy(CompoundAnnotationProxy compoundAnnotationProxy, TypeAnnotationPosition typeAnnotationPosition) {
            this.compound = compoundAnnotationProxy;
            this.position = typeAnnotationPosition;
        }
    }

    public final class UsesProvidesCompleter implements Symbol.Completer {
        private final Symbol.ModuleSymbol currentModule;
        private final List<InterimProvidesDirective> interimProvidesCopy;
        private final List<InterimUsesDirective> interimUsesCopy;

        public UsesProvidesCompleter(Symbol.ModuleSymbol moduleSymbol, List<InterimUsesDirective> list, List<InterimProvidesDirective> list2) {
            this.currentModule = moduleSymbol;
            this.interimUsesCopy = list;
            this.interimProvidesCopy = list2;
        }

        @Override
        public void complete(Symbol symbol) throws Symbol.CompletionFailure {
            ListBuffer listBuffer = new ListBuffer();
            listBuffer.addAll(this.currentModule.directives);
            ListBuffer listBuffer2 = new ListBuffer();
            Iterator<InterimUsesDirective> it = this.interimUsesCopy.iterator();
            while (it.hasNext()) {
                Directive.UsesDirective usesDirective = new Directive.UsesDirective(ClassReader.this.syms.enterClass(this.currentModule, it.next().service));
                listBuffer2.add(usesDirective);
                listBuffer.add(usesDirective);
            }
            this.currentModule.uses = listBuffer2.toList();
            ListBuffer listBuffer3 = new ListBuffer();
            Iterator<InterimProvidesDirective> it2 = this.interimProvidesCopy.iterator();
            while (it2.hasNext()) {
                InterimProvidesDirective next = it2.next();
                ListBuffer listBuffer4 = new ListBuffer();
                Iterator<Name> it3 = next.impls.iterator();
                while (it3.hasNext()) {
                    listBuffer4.append(ClassReader.this.syms.enterClass(this.currentModule, it3.next()));
                }
                Directive.ProvidesDirective providesDirective = new Directive.ProvidesDirective(ClassReader.this.syms.enterClass(this.currentModule, next.service), listBuffer4.toList());
                listBuffer3.add(providesDirective);
                listBuffer.add(providesDirective);
            }
            this.currentModule.provides = listBuffer3.toList();
            this.currentModule.directives = listBuffer.toList();
        }
    }

    public ClassReader(Context context) {
        AttributeKind attributeKind = AttributeKind.CLASS;
        this.CLASS_ATTRIBUTE = EnumSet.of(attributeKind);
        AttributeKind attributeKind2 = AttributeKind.MEMBER;
        this.MEMBER_ATTRIBUTE = EnumSet.of(attributeKind2);
        this.CLASS_OR_MEMBER_ATTRIBUTE = EnumSet.of(attributeKind, attributeKind2);
        this.attributeReaders = new HashMap();
        this.readingClassAttr = false;
        this.missingTypeVariables = List.nil();
        this.foundTypeVariables = List.nil();
        this.filling = false;
        context.put((Context.Key<Context.Key<ClassReader>>) classReaderKey, (Context.Key<ClassReader>) this);
        this.annotate = Annotate.instance(context);
        this.names = Names.instance(context);
        this.syms = Symtab.instance(context);
        this.types = Types.instance(context);
        JavaFileManager javaFileManager = (JavaFileManager) context.get(JavaFileManager.class);
        this.fileManager = javaFileManager;
        if (javaFileManager == null) {
            throw new AssertionError((Object) "FileManager initialization error");
        }
        this.diagFactory = JCDiagnostic.Factory.instance(context);
        this.log = Log.instance(context);
        Options instance = Options.instance(context);
        this.verbose = instance.isSet(Option.VERBOSE);
        Source instance2 = Source.instance(context);
        this.allowSimplifiedVarargs = instance2.allowSimplifiedVarargs();
        this.allowModules = instance2.allowModules();
        this.saveParameterNames = instance.isSet(Option.PARAMETERS);
        this.profile = Profile.instance(context);
        this.typevars = Scope.WriteableScope.create(this.syms.noSymbol);
        this.lintClassfile = Lint.instance(context).isEnabled(Lint.LintCategory.CLASSFILE);
        initAttributeReaders();
    }

    private List<Type> adjustMethodParams(long j10, List<Type> list) {
        if ((j10 & 17179869184L) != 0) {
            Type last = list.last();
            ListBuffer listBuffer = new ListBuffer();
            Iterator<Type> it = list.iterator();
            while (it.hasNext()) {
                Type next = it.next();
                if (next == last) {
                    next = ((Type.ArrayType) next).makeVarargs();
                }
                listBuffer.append(next);
            }
            list = listBuffer.toList();
        }
        return list.tail;
    }

    private static byte[] ensureCapacity(byte[] bArr, int i10) {
        if (bArr.length > i10) {
            return bArr;
        }
        byte[] bArr2 = new byte[Integer.highestOneBit(i10) << 1];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private void enterMember(Symbol.ClassSymbol classSymbol, Symbol symbol) {
        if ((symbol.flags_field & 2147487744L) != 4096 || symbol.name.startsWith(this.names.lambda)) {
            classSymbol.members_field.enter(symbol);
        }
    }

    private Symbol.MethodSymbol findMethod(ClassFile.NameAndType nameAndType, Scope scope, long j10) {
        if (nameAndType == null) {
            return null;
        }
        Type.MethodType asMethodType = nameAndType.uniqueType.type.asMethodType();
        for (Symbol symbol : scope.getSymbolsByName(nameAndType.name)) {
            if (symbol.kind == Kinds.Kind.MTH && isSameBinaryType(symbol.type.asMethodType(), asMethodType)) {
                return (Symbol.MethodSymbol) symbol;
            }
        }
        if (nameAndType.name != this.names.init || (512 & j10) != 0 || nameAndType.uniqueType.type.getParameterTypes().isEmpty()) {
            return null;
        }
        nameAndType.setType(new Type.MethodType(nameAndType.uniqueType.type.getParameterTypes().tail, nameAndType.uniqueType.type.getReturnType(), nameAndType.uniqueType.type.getThrownTypes(), this.syms.methodClass));
        return findMethod(nameAndType, scope, j10);
    }

    private void initAttributeReaders() {
        Name name = this.names.Code;
        ClassFile.Version version = ClassFile.Version.V45_3;
        AttributeReader attributeReader = new AttributeReader(name, version, this.MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                ClassReader classReader = ClassReader.this;
                if (!classReader.readAllOfClassFile && !classReader.saveParameterNames) {
                    classReader.bp += i10;
                } else {
                    ((Symbol.MethodSymbol) symbol).code = classReader.readCode(symbol);
                }
            }
        };
        AttributeReader attributeReader2 = new AttributeReader(this.names.ConstantValue, version, this.MEMBER_ATTRIBUTE) {
            public void checkType(Symbol symbol, Class<?> cls, Object obj) {
                if (!cls.isInstance(obj)) {
                    throw ClassReader.this.badClassFile("bad.constant.value", obj, symbol, cls.getSimpleName());
                }
            }

            @Override
            public void read(Symbol symbol, int i10) {
                ClassReader classReader = ClassReader.this;
                Object readPool = classReader.readPool(classReader.nextChar());
                if ((symbol.flags() & 16) == 0) {
                    return;
                }
                Symbol.VarSymbol varSymbol = (Symbol.VarSymbol) symbol;
                switch (AnonymousClass26.$SwitchMap$com$sun$tools$javac$code$TypeTag[varSymbol.type.getTag().ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                        checkType(varSymbol, Integer.class, readPool);
                        break;
                    case 6:
                        checkType(varSymbol, Long.class, readPool);
                        break;
                    case 7:
                        checkType(varSymbol, Float.class, readPool);
                        break;
                    case 8:
                        checkType(varSymbol, Double.class, readPool);
                        break;
                    case 9:
                        Assert.check(varSymbol.type.tsym == ClassReader.this.syms.stringType.tsym);
                        checkType(varSymbol, String.class, readPool);
                        break;
                    default:
                        return;
                }
                if ((readPool instanceof Integer) && !varSymbol.type.getTag().checkRange(((Integer) readPool).intValue())) {
                    throw ClassReader.this.badClassFile("bad.constant.range", readPool, varSymbol, varSymbol.type);
                }
                varSymbol.setData(readPool);
            }
        };
        AttributeReader attributeReader3 = new AttributeReader(this.names.Deprecated, version, this.CLASS_OR_MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                Symbol symbol2 = symbol.owner;
                if (symbol2.kind == Kinds.Kind.MDL) {
                    symbol = symbol2;
                }
                symbol.flags_field |= 131072;
            }
        };
        AttributeReader attributeReader4 = new AttributeReader(this.names.Exceptions, version, this.CLASS_OR_MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                char nextChar = ClassReader.this.nextChar();
                List nil = List.nil();
                for (int i11 = 0; i11 < nextChar; i11++) {
                    ClassReader classReader = ClassReader.this;
                    nil = nil.prepend(classReader.readClassSymbol(classReader.nextChar()).type);
                }
                if (symbol.type.getThrownTypes().isEmpty()) {
                    symbol.type.asMethodType().thrown = nil.reverse();
                }
            }
        };
        AttributeReader attributeReader5 = new AttributeReader(this.names.InnerClasses, version, this.CLASS_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) symbol;
                ClassReader classReader = ClassReader.this;
                if (classReader.currentModule.module_info == classSymbol) {
                    classReader.skipInnerClasses();
                } else {
                    classReader.readInnerClasses(classSymbol);
                }
            }
        };
        AttributeReader attributeReader6 = new AttributeReader(this.names.LocalVariableTable, version, this.CLASS_OR_MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                ClassReader classReader = ClassReader.this;
                int i11 = classReader.bp + i10;
                if (classReader.saveParameterNames && !classReader.sawMethodParameters) {
                    char nextChar = classReader.nextChar();
                    for (int i12 = 0; i12 < nextChar; i12++) {
                        char nextChar2 = ClassReader.this.nextChar();
                        ClassReader.this.nextChar();
                        char nextChar3 = ClassReader.this.nextChar();
                        ClassReader.this.nextChar();
                        char nextChar4 = ClassReader.this.nextChar();
                        if (nextChar2 == 0) {
                            int[] iArr = ClassReader.this.parameterNameIndices;
                            if (nextChar4 >= iArr.length) {
                                int max = Math.max(nextChar4 + 1, iArr.length + 8);
                                ClassReader classReader2 = ClassReader.this;
                                classReader2.parameterNameIndices = Arrays.copyOf(classReader2.parameterNameIndices, max);
                            }
                            ClassReader classReader3 = ClassReader.this;
                            classReader3.parameterNameIndices[nextChar4] = nextChar3;
                            classReader3.haveParameterNameIndices = true;
                        }
                    }
                }
                ClassReader.this.bp = i11;
            }
        };
        AttributeReader attributeReader7 = new AttributeReader(this.names.SourceFile, version, this.CLASS_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) symbol;
                ClassReader classReader = ClassReader.this;
                Name readName = classReader.readName(classReader.nextChar());
                classSymbol.sourcefile = new SourceFileObject(readName, classSymbol.flatname);
                String name2 = readName.toString();
                if (classSymbol.owner.kind == Kinds.Kind.PCK && name2.endsWith(".java")) {
                    if (name2.equals(classSymbol.name.toString() + ".java")) {
                        return;
                    }
                    classSymbol.flags_field |= 17592186044416L;
                }
            }
        };
        AttributeReader attributeReader8 = new AttributeReader(this.names.Synthetic, version, this.CLASS_OR_MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                symbol.flags_field |= 4096;
            }
        };
        Name name2 = this.names.EnclosingMethod;
        ClassFile.Version version2 = ClassFile.Version.V49;
        AttributeReader attributeReader9 = new AttributeReader(name2, version2, this.CLASS_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                ClassReader classReader = ClassReader.this;
                int i11 = classReader.bp + i10;
                classReader.readEnclosingMethodAttr(symbol);
                ClassReader.this.bp = i11;
            }
        };
        AttributeReader attributeReader10 = new AttributeReader(this.names.Signature, version2, this.CLASS_OR_MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                if (symbol.kind != Kinds.Kind.TYP) {
                    List<Type> thrownTypes = symbol.type.getThrownTypes();
                    ClassReader classReader = ClassReader.this;
                    Type readType = classReader.readType(classReader.nextChar());
                    symbol.type = readType;
                    if (symbol.kind == Kinds.Kind.MTH && readType.getThrownTypes().isEmpty()) {
                        symbol.type.asMethodType().thrown = thrownTypes;
                        return;
                    }
                    return;
                }
                Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) symbol;
                boolean z10 = true;
                ClassReader.this.readingClassAttr = true;
                try {
                    Type.ClassType classType = (Type.ClassType) classSymbol.type;
                    if (classSymbol != ClassReader.this.currentOwner) {
                        z10 = false;
                    }
                    Assert.check(z10);
                    ClassReader classReader2 = ClassReader.this;
                    classType.typarams_field = classReader2.readTypeParams(classReader2.nextChar());
                    classType.supertype_field = ClassReader.this.sigToType();
                    ListBuffer listBuffer = new ListBuffer();
                    while (true) {
                        ClassReader classReader3 = ClassReader.this;
                        if (classReader3.sigp == classReader3.siglimit) {
                            classType.interfaces_field = listBuffer.toList();
                            ClassReader.this.readingClassAttr = false;
                            return;
                        }
                        listBuffer.append(classReader3.sigToType());
                    }
                } catch (Throwable th2) {
                    ClassReader.this.readingClassAttr = false;
                    throw th2;
                }
            }
        };
        AttributeReader attributeReader11 = new AttributeReader(this.names.AnnotationDefault, version2, this.CLASS_OR_MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                ClassReader.this.attachAnnotationDefault(symbol);
            }
        };
        AttributeReader attributeReader12 = new AttributeReader(this.names.RuntimeInvisibleAnnotations, version2, this.CLASS_OR_MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                ClassReader.this.attachAnnotations(symbol);
            }
        };
        AttributeReader attributeReader13 = new AttributeReader(this.names.RuntimeInvisibleParameterAnnotations, version2, this.CLASS_OR_MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                ClassReader.this.readParameterAnnotations(symbol);
            }
        };
        AttributeReader attributeReader14 = new AttributeReader(this.names.RuntimeVisibleAnnotations, version2, this.CLASS_OR_MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                ClassReader.this.attachAnnotations(symbol);
            }
        };
        AttributeReader attributeReader15 = new AttributeReader(this.names.RuntimeVisibleParameterAnnotations, version2, this.CLASS_OR_MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                ClassReader.this.readParameterAnnotations(symbol);
            }
        };
        AttributeReader attributeReader16 = new AttributeReader(this.names.Annotation, version2, this.CLASS_OR_MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                symbol.flags_field |= 8192;
            }
        };
        AttributeReader attributeReader17 = new AttributeReader(this.names.Bridge, version2, this.MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                symbol.flags_field |= 2147483648L;
            }
        };
        AttributeReader attributeReader18 = new AttributeReader(this.names.Enum, version2, this.CLASS_OR_MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                symbol.flags_field |= 16384;
            }
        };
        AttributeReader attributeReader19 = new AttributeReader(this.names.Varargs, version2, this.CLASS_OR_MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                symbol.flags_field |= 17179869184L;
            }
        };
        Name name3 = this.names.RuntimeVisibleTypeAnnotations;
        ClassFile.Version version3 = ClassFile.Version.V52;
        AttributeReader attributeReader20 = new AttributeReader(name3, version3, this.CLASS_OR_MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                ClassReader.this.attachTypeAnnotations(symbol);
            }
        };
        AttributeReader attributeReader21 = new AttributeReader(this.names.RuntimeInvisibleTypeAnnotations, version3, this.CLASS_OR_MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                ClassReader.this.attachTypeAnnotations(symbol);
            }
        };
        AttributeReader attributeReader22 = new AttributeReader(this.names.MethodParameters, version3, this.MEMBER_ATTRIBUTE) {
            @Override
            public void read(Symbol symbol, int i10) {
                ClassReader classReader = ClassReader.this;
                int i11 = classReader.bp + i10;
                if (classReader.saveParameterNames) {
                    classReader.sawMethodParameters = true;
                    int nextByte = classReader.nextByte();
                    ClassReader classReader2 = ClassReader.this;
                    classReader2.parameterNameIndices = new int[nextByte];
                    classReader2.haveParameterNameIndices = true;
                    int i12 = 0;
                    for (int i13 = 0; i13 < nextByte; i13++) {
                        char nextChar = ClassReader.this.nextChar();
                        if ((ClassReader.this.nextChar() & '\u9000') == 0) {
                            ClassReader.this.parameterNameIndices[i12] = nextChar;
                            i12++;
                        }
                    }
                }
                ClassReader.this.bp = i11;
            }
        };
        Name name4 = this.names.Module;
        ClassFile.Version version4 = ClassFile.Version.V53;
        AttributeReader attributeReader23 = new AttributeReader(name4, version4, this.CLASS_ATTRIBUTE) {
            @Override
            public boolean accepts(AttributeKind attributeKind) {
                return super.accepts(attributeKind) && ClassReader.this.allowModules;
            }

            @Override
            public void read(Symbol symbol, int i10) {
                List list;
                if (symbol.kind == Kinds.Kind.TYP) {
                    Symbol symbol2 = symbol.owner;
                    if (symbol2.kind == Kinds.Kind.MDL) {
                        Symbol.ModuleSymbol moduleSymbol = (Symbol.ModuleSymbol) symbol2;
                        ListBuffer listBuffer = new ListBuffer();
                        ClassReader classReader = ClassReader.this;
                        Name readModuleName = classReader.readModuleName(classReader.nextChar());
                        ClassReader classReader2 = ClassReader.this;
                        Name name5 = classReader2.currentModule.name;
                        if (name5 != readModuleName) {
                            throw classReader2.badClassFile("module.name.mismatch", readModuleName, name5);
                        }
                        moduleSymbol.flags.addAll(classReader2.readModuleFlags(classReader2.nextChar()));
                        ClassReader classReader3 = ClassReader.this;
                        moduleSymbol.version = classReader3.readName(classReader3.nextChar());
                        ListBuffer listBuffer2 = new ListBuffer();
                        char nextChar = ClassReader.this.nextChar();
                        for (int i11 = 0; i11 < nextChar; i11++) {
                            ClassReader classReader4 = ClassReader.this;
                            Symbol.ModuleSymbol enterModule = classReader4.syms.enterModule(classReader4.readModuleName(classReader4.nextChar()));
                            ClassReader classReader5 = ClassReader.this;
                            Set<Directive.RequiresFlag> readRequiresFlags = classReader5.readRequiresFlags(classReader5.nextChar());
                            ClassReader.this.nextChar();
                            listBuffer2.add(new Directive.RequiresDirective(enterModule, readRequiresFlags));
                        }
                        List<Directive.RequiresDirective> list2 = listBuffer2.toList();
                        moduleSymbol.requires = list2;
                        listBuffer.addAll(list2);
                        ListBuffer listBuffer3 = new ListBuffer();
                        char nextChar2 = ClassReader.this.nextChar();
                        int i12 = 0;
                        while (true) {
                            List list3 = null;
                            if (i12 >= nextChar2) {
                                break;
                            }
                            ClassReader classReader6 = ClassReader.this;
                            Name readName = classReader6.readName(classReader6.nextChar());
                            ClassReader classReader7 = ClassReader.this;
                            Symbol.PackageSymbol enterPackage = classReader7.syms.enterPackage(classReader7.currentModule, classReader7.names.fromUtf(ClassFile.internalize(readName)));
                            ClassReader classReader8 = ClassReader.this;
                            Set<Directive.ExportsFlag> readExportsFlags = classReader8.readExportsFlags(classReader8.nextChar());
                            char nextChar3 = ClassReader.this.nextChar();
                            if (nextChar3 != 0) {
                                ListBuffer listBuffer4 = new ListBuffer();
                                for (int i13 = 0; i13 < nextChar3; i13++) {
                                    ClassReader classReader9 = ClassReader.this;
                                    listBuffer4.append(classReader9.syms.enterModule(classReader9.readModuleName(classReader9.nextChar())));
                                }
                                list3 = listBuffer4.toList();
                            }
                            listBuffer3.add(new Directive.ExportsDirective(enterPackage, list3, readExportsFlags));
                            i12++;
                        }
                        List<Directive.ExportsDirective> list4 = listBuffer3.toList();
                        moduleSymbol.exports = list4;
                        listBuffer.addAll(list4);
                        ListBuffer listBuffer5 = new ListBuffer();
                        char nextChar4 = ClassReader.this.nextChar();
                        if (nextChar4 != 0 && moduleSymbol.flags.contains(Symbol.ModuleFlags.OPEN)) {
                            ClassReader classReader10 = ClassReader.this;
                            throw classReader10.badClassFile("module.non.zero.opens", classReader10.currentModule.name);
                        }
                        for (int i14 = 0; i14 < nextChar4; i14++) {
                            ClassReader classReader11 = ClassReader.this;
                            Name readName2 = classReader11.readName(classReader11.nextChar());
                            ClassReader classReader12 = ClassReader.this;
                            Symbol.PackageSymbol enterPackage2 = classReader12.syms.enterPackage(classReader12.currentModule, classReader12.names.fromUtf(ClassFile.internalize(readName2)));
                            ClassReader classReader13 = ClassReader.this;
                            Set<Directive.OpensFlag> readOpensFlags = classReader13.readOpensFlags(classReader13.nextChar());
                            char nextChar5 = ClassReader.this.nextChar();
                            if (nextChar5 == 0) {
                                list = null;
                            } else {
                                ListBuffer listBuffer6 = new ListBuffer();
                                for (int i15 = 0; i15 < nextChar5; i15++) {
                                    ClassReader classReader14 = ClassReader.this;
                                    listBuffer6.append(classReader14.syms.enterModule(classReader14.readModuleName(classReader14.nextChar())));
                                }
                                list = listBuffer6.toList();
                            }
                            listBuffer5.add(new Directive.OpensDirective(enterPackage2, list, readOpensFlags));
                        }
                        List<Directive.OpensDirective> list5 = listBuffer5.toList();
                        moduleSymbol.opens = list5;
                        listBuffer.addAll(list5);
                        moduleSymbol.directives = listBuffer.toList();
                        ListBuffer listBuffer7 = new ListBuffer();
                        char nextChar6 = ClassReader.this.nextChar();
                        for (int i16 = 0; i16 < nextChar6; i16++) {
                            ClassReader classReader15 = ClassReader.this;
                            listBuffer7.add(new InterimUsesDirective(classReader15.readClassName(classReader15.nextChar())));
                        }
                        ClassReader.this.interimUses = listBuffer7.toList();
                        ListBuffer listBuffer8 = new ListBuffer();
                        char nextChar7 = ClassReader.this.nextChar();
                        for (int i17 = 0; i17 < nextChar7; i17++) {
                            ClassReader classReader16 = ClassReader.this;
                            Name readClassName = classReader16.readClassName(classReader16.nextChar());
                            char nextChar8 = ClassReader.this.nextChar();
                            ListBuffer listBuffer9 = new ListBuffer();
                            for (int i18 = 0; i18 < nextChar8; i18++) {
                                ClassReader classReader17 = ClassReader.this;
                                listBuffer9.append(classReader17.readClassName(classReader17.nextChar()));
                                listBuffer8.add(new InterimProvidesDirective(readClassName, listBuffer9.toList()));
                            }
                        }
                        ClassReader.this.interimProvides = listBuffer8.toList();
                    }
                }
            }
        };
        AttributeReader attributeReader24 = new AttributeReader(this.names.ModuleResolution, version4, this.CLASS_ATTRIBUTE) {
            @Override
            public boolean accepts(AttributeKind attributeKind) {
                return super.accepts(attributeKind) && ClassReader.this.allowModules;
            }

            @Override
            public void read(Symbol symbol, int i10) {
                if (symbol.kind == Kinds.Kind.TYP) {
                    Symbol symbol2 = symbol.owner;
                    if (symbol2.kind == Kinds.Kind.MDL) {
                        Set<Symbol.ModuleResolutionFlags> set = ((Symbol.ModuleSymbol) symbol2).resolutionFlags;
                        ClassReader classReader = ClassReader.this;
                        set.addAll(classReader.readModuleResolutionFlags(classReader.nextChar()));
                    }
                }
            }
        };
        AttributeReader[] attributeReaderArr = {attributeReader, attributeReader2, attributeReader3, attributeReader4, attributeReader5, attributeReader6, attributeReader7, attributeReader8, attributeReader9, attributeReader10, attributeReader11, attributeReader12, attributeReader13, attributeReader14, attributeReader15, attributeReader16, attributeReader17, attributeReader18, attributeReader19, attributeReader20, attributeReader21, attributeReader22, attributeReader23, attributeReader24};
        for (int i10 = 0; i10 < 24; i10++) {
            AttributeReader attributeReader25 = attributeReaderArr[i10];
            this.attributeReaders.put(attributeReader25.name, attributeReader25);
        }
    }

    public static ClassReader instance(Context context) {
        ClassReader classReader = (ClassReader) context.get(classReaderKey);
        return classReader == null ? new ClassReader(context) : classReader;
    }

    private static boolean isAsciiDigit(char c10) {
        return '0' <= c10 && c10 <= '9';
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean isSameBinaryType(Type.MethodType methodType, Type.MethodType methodType2) {
        List prepend = this.types.erasure(methodType.getParameterTypes()).prepend(this.types.erasure(methodType.getReturnType()));
        List prepend2 = methodType2.getParameterTypes().prepend(methodType2.getReturnType());
        while (!prepend.isEmpty() && !prepend2.isEmpty()) {
            if (((Type) prepend.head).tsym != ((Type) prepend2.head).tsym) {
                return false;
            }
            prepend = prepend.tail;
            prepend2 = prepend2.tail;
        }
        return prepend.isEmpty() && prepend2.isEmpty();
    }

    private Name parameterName(int i10, List<Name> list) {
        int i11;
        int[] iArr = this.parameterNameIndices;
        if (iArr != null && i10 < iArr.length && (i11 = iArr[i10]) != 0) {
            return readName(i11);
        }
        String str = "arg";
        while (true) {
            Name fromString = this.names.fromString(str + list.size());
            if (!list.contains(fromString)) {
                return fromString;
            }
            str = str + "$";
        }
    }

    private void readClassBuffer(Symbol.ClassSymbol classSymbol) throws IOException {
        if (nextInt() != -889275714) {
            throw badClassFile("illegal.start.of.class.file", new Object[0]);
        }
        this.minorVersion = nextChar();
        this.majorVersion = nextChar();
        int i10 = ClassFile.Version.MAX().minor;
        int i11 = this.majorVersion;
        if (i11 > 53 || (i11 * 1000) + this.minorVersion < (ClassFile.Version.MIN().major * 1000) + ClassFile.Version.MIN().minor) {
            int i12 = this.majorVersion;
            if (i12 != 54) {
                throw badClassFile("wrong.version", Integer.toString(i12), Integer.toString(this.minorVersion), Integer.toString(53), Integer.toString(i10));
            }
            this.log.warning("big.major.version", this.currentClassFile, Integer.valueOf(i12), 53);
        }
        indexPool();
        int length = this.signatureBuffer.length;
        int i13 = this.bp;
        if (length < i13) {
            this.signatureBuffer = new byte[Integer.highestOneBit(i13) << 1];
        }
        readClass(classSymbol);
    }

    private static byte[] readInputStream(byte[] bArr, InputStream inputStream) throws IOException {
        try {
            byte[] ensureCapacity = ensureCapacity(bArr, inputStream.available());
            int read = inputStream.read(ensureCapacity);
            int i10 = 0;
            while (read != -1) {
                i10 += read;
                ensureCapacity = ensureCapacity(ensureCapacity, i10);
                read = inputStream.read(ensureCapacity, i10, ensureCapacity.length - i10);
            }
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
            return ensureCapacity;
        } catch (Throwable th2) {
            try {
                inputStream.close();
            } catch (IOException unused2) {
            }
            throw th2;
        }
    }

    private Name simpleBinaryName(Name name, Name name2) {
        String substring = name.toString().substring(name2.toString().length());
        int i10 = 1;
        if (substring.length() < 1 || substring.charAt(0) != '$') {
            throw badClassFile("bad.enclosing.method", name);
        }
        while (i10 < substring.length() && isAsciiDigit(substring.charAt(i10))) {
            i10++;
        }
        return this.names.fromString(substring.substring(i10));
    }

    public long adjustClassFlags(long j10) {
        if ((32768 & j10) != 0) {
            j10 = (j10 & (-32769)) | 2251799813685248L;
        }
        return j10 & (-33);
    }

    public long adjustFieldFlags(long j10) {
        return j10;
    }

    public long adjustMethodFlags(long j10) {
        if ((64 & j10) != 0) {
            j10 = (j10 & (-65)) | 2147483648L;
        }
        return (128 & j10) != 0 ? (j10 & (-129)) | 17179869184L : j10;
    }

    public void attachAnnotationDefault(Symbol symbol) {
        Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) symbol;
        Attribute readAttributeValue = readAttributeValue();
        methodSymbol.defaultValue = readAttributeValue;
        this.annotate.normal(new AnnotationDefaultCompleter(methodSymbol, readAttributeValue));
    }

    public void attachAnnotations(Symbol symbol) {
        attachAnnotations(symbol, readAnnotations());
    }

    public void attachTypeAnnotations(Symbol symbol) {
        char nextChar = nextChar();
        if (nextChar != 0) {
            ListBuffer listBuffer = new ListBuffer();
            for (int i10 = 0; i10 < nextChar; i10++) {
                listBuffer.append(readTypeAnnotation());
            }
            this.annotate.normal(new TypeAnnotationCompleter(symbol, listBuffer.toList()));
        }
    }

    public ClassFinder.BadClassFile badClassFile(String str, Object... objArr) {
        return new ClassFinder.BadClassFile(this.currentOwner.enclClass(), this.currentClassFile, this.diagFactory.fragment(str, objArr), this.diagFactory);
    }

    public ClassFinder.BadEnclosingMethodAttr badEnclosingMethod(Object... objArr) {
        return new ClassFinder.BadEnclosingMethodAttr(this.currentOwner.enclClass(), this.currentClassFile, this.diagFactory.fragment("bad.enclosing.method", objArr), this.diagFactory);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x007a, code lost:
    
        r8.sbp = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007c, code lost:
    
        return r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Type classSigToType() {
        byte[] bArr = this.signature;
        int i10 = this.sigp;
        if (bArr[i10] != 76) {
            throw badClassFile("bad.class.signature", Convert.utf2string(bArr, i10, 10));
        }
        this.sigp = i10 + 1;
        Type type = Type.noType;
        int i11 = this.sbp;
        while (true) {
            byte[] bArr2 = this.signature;
            int i12 = this.sigp;
            this.sigp = i12 + 1;
            byte b10 = bArr2[i12];
            if (b10 == 46) {
                if (type != Type.noType) {
                    type = new Type.ClassType(type, List.nil(), enterClass(this.names.fromUtf(this.signatureBuffer, i11, this.sbp - i11)));
                }
                byte[] bArr3 = this.signatureBuffer;
                int i13 = this.sbp;
                this.sbp = i13 + 1;
                bArr3[i13] = Opcodes.OPC_fload_2;
            } else if (b10 == 47) {
                byte[] bArr4 = this.signatureBuffer;
                int i14 = this.sbp;
                this.sbp = i14 + 1;
                bArr4[i14] = Opcodes.OPC_iaload;
            } else {
                if (b10 == 59) {
                    Symbol.ClassSymbol enterClass = enterClass(this.names.fromUtf(this.signatureBuffer, i11, this.sbp - i11));
                    try {
                        Type erasure = type == Type.noType ? enterClass.erasure(this.types) : new Type.ClassType(type, List.nil(), enterClass);
                        this.sbp = i11;
                        return erasure;
                    } catch (Throwable th2) {
                        this.sbp = i11;
                        throw th2;
                    }
                }
                if (b10 != 60) {
                    byte[] bArr5 = this.signatureBuffer;
                    int i15 = this.sbp;
                    this.sbp = i15 + 1;
                    bArr5[i15] = b10;
                } else {
                    Type type2 = new Type.ClassType(type, sigToTypes('>'), enterClass(this.names.fromUtf(this.signatureBuffer, i11, this.sbp - i11))) {
                        boolean completed = false;

                        @Override
                        public void setEnclosingType(Type type3) {
                            throw new UnsupportedOperationException();
                        }

                        @Override
                        public Type getEnclosingType() {
                            if (!this.completed) {
                                this.completed = true;
                                this.tsym.complete();
                                Type enclosingType = this.tsym.type.getEnclosingType();
                                Type.JCNoType jCNoType = Type.noType;
                                if (enclosingType != jCNoType) {
                                    List<Type> allparams = super.getEnclosingType().allparams();
                                    List<Type> allparams2 = enclosingType.allparams();
                                    if (allparams2.length() != allparams.length()) {
                                        super.setEnclosingType(ClassReader.this.types.erasure(enclosingType));
                                    } else {
                                        super.setEnclosingType(ClassReader.this.types.subst(enclosingType, allparams2, allparams));
                                    }
                                } else {
                                    super.setEnclosingType(jCNoType);
                                }
                            }
                            return super.getEnclosingType();
                        }
                    };
                    byte[] bArr6 = this.signature;
                    int i16 = this.sigp;
                    int i17 = i16 + 1;
                    this.sigp = i17;
                    byte b11 = bArr6[i16];
                    if (b11 == 46) {
                        byte[] bArr7 = this.signatureBuffer;
                        int i18 = this.sbp;
                        this.sbp = i18 + 1;
                        bArr7[i18] = Opcodes.OPC_fload_2;
                    } else {
                        if (b11 != 59) {
                            throw new AssertionError((int) this.signature[this.sigp - 1]);
                        }
                        if (i17 >= bArr6.length || bArr6[i17] != 46) {
                            break;
                        }
                        int i19 = this.sbp;
                        this.sigp = i17 + (i19 - i11) + 3;
                        byte[] bArr8 = this.signatureBuffer;
                        this.sbp = i19 + 1;
                        bArr8[i19] = Opcodes.OPC_fload_2;
                    }
                    type = type2;
                }
            }
        }
    }

    public Symbol.ClassSymbol enterClass(Name name) {
        return this.syms.enterClass(this.currentModule, name);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void enterTypevars(Symbol symbol, Type type) {
        if (type.getEnclosingType() != null) {
            if (!type.getEnclosingType().hasTag(TypeTag.NONE)) {
                enterTypevars(symbol.owner, type.getEnclosingType());
            }
        } else if (symbol.kind == Kinds.Kind.MTH && !symbol.isStatic()) {
            Symbol symbol2 = symbol.owner;
            enterTypevars(symbol2, symbol2.type);
        }
        for (List typeArguments = type.getTypeArguments(); typeArguments.nonEmpty(); typeArguments = typeArguments.tail) {
            this.typevars.enter(((Type) typeArguments.head).tsym);
        }
    }

    public Type findTypeVar(Name name) {
        Symbol findFirst = this.typevars.findFirst(name);
        if (findFirst != null) {
            return findFirst.type;
        }
        if (!this.readingClassAttr) {
            throw badClassFile("undecl.type.var", name);
        }
        Type.TypeVar typeVar = new Type.TypeVar(name, this.currentOwner, this.syms.botType);
        this.missingTypeVariables = this.missingTypeVariables.prepend(typeVar);
        return typeVar;
    }

    public char getChar(int i10) {
        byte[] bArr = this.buf;
        return (char) (((bArr[i10] & 255) << 8) + (bArr[i10 + 1] & 255));
    }

    public double getDouble(int i10) {
        try {
            return new DataInputStream(new ByteArrayInputStream(this.buf, i10, 8)).readDouble();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    public float getFloat(int i10) {
        try {
            return new DataInputStream(new ByteArrayInputStream(this.buf, i10, 4)).readFloat();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    public int getInt(int i10) {
        byte[] bArr = this.buf;
        return ((bArr[i10] & 255) << 24) + ((bArr[i10 + 1] & 255) << 16) + ((bArr[i10 + 2] & 255) << 8) + (bArr[i10 + 3] & 255);
    }

    public long getLong(int i10) {
        try {
            return new DataInputStream(new ByteArrayInputStream(this.buf, i10, 8)).readLong();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0022. Please report as an issue. */
    public void indexPool() {
        int[] iArr = new int[nextChar()];
        this.poolIdx = iArr;
        this.poolObj = new Object[iArr.length];
        int i10 = 1;
        while (true) {
            int[] iArr2 = this.poolIdx;
            if (i10 >= iArr2.length) {
                return;
            }
            int i11 = i10 + 1;
            int i12 = this.bp;
            iArr2[i10] = i12;
            byte[] bArr = this.buf;
            this.bp = i12 + 1;
            byte b10 = bArr[i12];
            switch (b10) {
                case 1:
                case 2:
                    this.bp += nextChar();
                    i10 = i11;
                case 3:
                case 4:
                case 9:
                case 10:
                case 11:
                case 12:
                case 18:
                    this.bp = i12 + 5;
                    i10 = i11;
                case 5:
                case 6:
                    this.bp = i12 + 9;
                    i10 += 2;
                case 7:
                case 8:
                case 16:
                case 19:
                case 20:
                    this.bp = i12 + 3;
                    i10 = i11;
                case 13:
                case 14:
                case 17:
                default:
                    throw badClassFile("bad.const.pool.tag.at", Byte.toString(b10), Integer.toString(this.bp - 1));
                case 15:
                    this.bp = i12 + 4;
                    i10 = i11;
            }
        }
    }

    public void initParameterNames(Symbol.MethodSymbol methodSymbol) {
        int width = Code.width(methodSymbol.type.getParameterTypes()) + 4;
        int[] iArr = this.parameterNameIndices;
        if (iArr == null || iArr.length < width) {
            this.parameterNameIndices = new int[width];
        } else {
            Arrays.fill(iArr, 0);
        }
        this.haveParameterNameIndices = false;
        this.sawMethodParameters = false;
    }

    public int nextByte() {
        byte[] bArr = this.buf;
        int i10 = this.bp;
        this.bp = i10 + 1;
        return bArr[i10] & 255;
    }

    public char nextChar() {
        byte[] bArr = this.buf;
        int i10 = this.bp;
        int i11 = i10 + 1;
        this.bp = i11;
        int i12 = (bArr[i10] & 255) << 8;
        this.bp = i10 + 2;
        return (char) (i12 + (bArr[i11] & 255));
    }

    public int nextInt() {
        byte[] bArr = this.buf;
        int i10 = this.bp;
        int i11 = i10 + 1;
        this.bp = i11;
        int i12 = (bArr[i10] & 255) << 24;
        int i13 = i10 + 2;
        this.bp = i13;
        int i14 = i12 + ((bArr[i11] & 255) << 16);
        int i15 = i10 + 3;
        this.bp = i15;
        int i16 = i14 + ((bArr[i13] & 255) << 8);
        this.bp = i10 + 4;
        return i16 + (bArr[i15] & 255);
    }

    public List<CompoundAnnotationProxy> readAnnotations() {
        char nextChar = nextChar();
        ListBuffer listBuffer = new ListBuffer();
        for (int i10 = 0; i10 < nextChar; i10++) {
            listBuffer.append(readCompoundAnnotation());
        }
        return listBuffer.toList();
    }

    public Attribute readAttributeValue() {
        byte[] bArr = this.buf;
        int i10 = this.bp;
        this.bp = i10 + 1;
        char c10 = (char) bArr[i10];
        if (c10 == '@') {
            return readCompoundAnnotation();
        }
        if (c10 == 'F') {
            return new Attribute.Constant(this.syms.floatType, readPool(nextChar()));
        }
        if (c10 == 'S') {
            return new Attribute.Constant(this.syms.shortType, readPool(nextChar()));
        }
        if (c10 == 'c') {
            return new ClassAttributeProxy(readTypeOrClassSymbol(nextChar()));
        }
        if (c10 == 'e') {
            return new EnumAttributeProxy(readEnumType(nextChar()), readName(nextChar()));
        }
        if (c10 == 's') {
            return new Attribute.Constant(this.syms.stringType, readPool(nextChar()).toString());
        }
        if (c10 == 'I') {
            return new Attribute.Constant(this.syms.intType, readPool(nextChar()));
        }
        if (c10 == 'J') {
            return new Attribute.Constant(this.syms.longType, readPool(nextChar()));
        }
        if (c10 == 'Z') {
            return new Attribute.Constant(this.syms.booleanType, readPool(nextChar()));
        }
        if (c10 == '[') {
            char nextChar = nextChar();
            ListBuffer listBuffer = new ListBuffer();
            for (int i11 = 0; i11 < nextChar; i11++) {
                listBuffer.append(readAttributeValue());
            }
            return new ArrayAttributeProxy(listBuffer.toList());
        }
        switch (c10) {
            case 'B':
                return new Attribute.Constant(this.syms.byteType, readPool(nextChar()));
            case 'C':
                return new Attribute.Constant(this.syms.charType, readPool(nextChar()));
            case 'D':
                return new Attribute.Constant(this.syms.doubleType, readPool(nextChar()));
            default:
                throw new AssertionError((Object) ("unknown annotation tag '" + c10 + "'"));
        }
    }

    public void readAttrs(Symbol symbol, AttributeKind attributeKind) {
        char nextChar = nextChar();
        for (int i10 = 0; i10 < nextChar; i10++) {
            Name readName = readName(nextChar());
            int nextInt = nextInt();
            AttributeReader attributeReader = this.attributeReaders.get(readName);
            if (attributeReader == null || !attributeReader.accepts(attributeKind)) {
                this.bp += nextInt;
            } else {
                attributeReader.read(symbol, nextInt);
            }
        }
    }

    public void readClass(Symbol.ClassSymbol classSymbol) {
        Object[] objArr;
        Type.ClassType classType = (Type.ClassType) classSymbol.type;
        classSymbol.members_field = Scope.WriteableScope.create(classSymbol);
        this.typevars = this.typevars.dup(this.currentOwner);
        if (classType.getEnclosingType().hasTag(TypeTag.CLASS)) {
            enterTypevars(classSymbol.owner, classType.getEnclosingType());
        }
        long adjustClassFlags = adjustClassFlags(nextChar());
        long j10 = 2251799813685248L & adjustClassFlags;
        if (j10 == 0) {
            if (classSymbol.owner.kind == Kinds.Kind.PCK) {
                classSymbol.flags_field = adjustClassFlags;
            }
            this.currentModule = classSymbol.packge().modle;
            Symbol.ClassSymbol readClassSymbol = readClassSymbol(nextChar());
            if (classSymbol != readClassSymbol) {
                throw badClassFile("class.file.wrong.class", readClassSymbol.flatname);
            }
        } else {
            int i10 = this.majorVersion;
            if (i10 < ClassFile.Version.V53.major) {
                throw badClassFile("anachronistic.module.info", Integer.toString(i10), Integer.toString(this.minorVersion));
            }
            classSymbol.flags_field = adjustClassFlags;
            this.currentModule = (Symbol.ModuleSymbol) classSymbol.owner;
            nextChar();
        }
        int i11 = this.bp;
        nextChar();
        this.bp += nextChar() * 2;
        char nextChar = nextChar();
        for (int i12 = 0; i12 < nextChar; i12++) {
            skipMember();
        }
        char nextChar2 = nextChar();
        for (int i13 = 0; i13 < nextChar2; i13++) {
            skipMember();
        }
        readClassAttrs(classSymbol);
        if (this.readAllOfClassFile) {
            int i14 = 1;
            while (true) {
                objArr = this.poolObj;
                if (i14 >= objArr.length) {
                    break;
                }
                readPool(i14);
                i14++;
            }
            classSymbol.pool = new Pool(objArr.length, objArr, this.types);
        }
        this.bp = i11;
        char nextChar3 = nextChar();
        if (j10 != 0 && nextChar3 > 0) {
            throw badClassFile("module.info.invalid.super.class", new Object[0]);
        }
        if (classType.supertype_field == null) {
            classType.supertype_field = nextChar3 == 0 ? Type.noType : readClassSymbol(nextChar3).erasure(this.types);
        }
        char nextChar4 = nextChar();
        List nil = List.nil();
        for (int i15 = 0; i15 < nextChar4; i15++) {
            nil = nil.prepend(readClassSymbol(nextChar()).erasure(this.types));
        }
        if (classType.interfaces_field == null) {
            classType.interfaces_field = nil.reverse();
        }
        Assert.check(nextChar == nextChar());
        for (int i16 = 0; i16 < nextChar; i16++) {
            enterMember(classSymbol, readField());
        }
        Assert.check(nextChar2 == nextChar());
        for (int i17 = 0; i17 < nextChar2; i17++) {
            enterMember(classSymbol, readMethod());
        }
        this.typevars = this.typevars.leave();
    }

    public void readClassAttrs(Symbol.ClassSymbol classSymbol) {
        readAttrs(classSymbol, AttributeKind.CLASS);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void readClassFile(Symbol.ClassSymbol classSymbol) {
        this.currentOwner = classSymbol;
        this.currentClassFile = classSymbol.classfile;
        this.warnedAttrs.clear();
        this.filling = true;
        this.target = null;
        this.repeatable = null;
        try {
            try {
                this.bp = 0;
                this.buf = readInputStream(this.buf, classSymbol.classfile.openInputStream());
                readClassBuffer(classSymbol);
                if (!this.missingTypeVariables.isEmpty() && !this.foundTypeVariables.isEmpty()) {
                    List<Type> list = this.missingTypeVariables;
                    List<Type> list2 = this.foundTypeVariables;
                    this.missingTypeVariables = List.nil();
                    this.foundTypeVariables = List.nil();
                    this.interimUses = List.nil();
                    this.interimProvides = List.nil();
                    this.filling = false;
                    Type.ClassType classType = (Type.ClassType) this.currentOwner.type;
                    classType.supertype_field = this.types.subst(classType.supertype_field, list, list2);
                    classType.interfaces_field = this.types.subst(classType.interfaces_field, list, list2);
                    List substBounds = this.types.substBounds(classType.typarams_field, list, list2);
                    classType.typarams_field = substBounds;
                    while (substBounds.nonEmpty()) {
                        A a10 = substBounds.head;
                        ((Type) a10).tsym.type = (Type) a10;
                        substBounds = substBounds.tail;
                    }
                } else if (this.missingTypeVariables.isEmpty() != this.foundTypeVariables.isEmpty()) {
                    throw badClassFile("undecl.type.var", this.missingTypeVariables.head.tsym.name);
                }
                if ((classSymbol.flags_field & 8192) != 0) {
                    classSymbol.setAnnotationTypeMetadata(new Annotate.AnnotationTypeMetadata(classSymbol, new CompleterDeproxy(classSymbol, this.target, this.repeatable)));
                } else {
                    classSymbol.setAnnotationTypeMetadata(Annotate.AnnotationTypeMetadata.notAnAnnotationType());
                }
                if (classSymbol == this.currentModule.module_info) {
                    if (!this.interimUses.nonEmpty() && !this.interimProvides.nonEmpty()) {
                        this.currentModule.uses = List.nil();
                        this.currentModule.provides = List.nil();
                    }
                    Assert.check(this.currentModule.isCompleted());
                    this.currentModule.usesProvidesCompleter = new UsesProvidesCompleter(this.currentModule, this.interimUses, this.interimProvides);
                }
                this.interimUses = List.nil();
                this.interimProvides = List.nil();
                this.missingTypeVariables = List.nil();
                this.foundTypeVariables = List.nil();
                this.filling = false;
            } catch (IOException e10) {
                e = e10;
                throw badClassFile("unable.to.access.file", e.toString());
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw badClassFile("bad.class.file", classSymbol.flatname);
            } catch (ClosedFileSystemException e11) {
                e = e11;
                throw badClassFile("unable.to.access.file", e.toString());
            }
        } catch (Throwable th2) {
            this.interimUses = List.nil();
            this.interimProvides = List.nil();
            this.missingTypeVariables = List.nil();
            this.foundTypeVariables = List.nil();
            this.filling = false;
            throw th2;
        }
    }

    public Name readClassName(int i10) {
        int[] iArr = this.poolIdx;
        int i11 = iArr[i10];
        if (i11 == 0) {
            return null;
        }
        if (this.buf[i11] != 7) {
            throw badClassFile("bad.const.pool.entry", this.currentClassFile.toString(), "CONSTANT_Class_info", Integer.valueOf(i10));
        }
        int i12 = iArr[getChar(i11 + 1)];
        char c10 = getChar(i12 + 1);
        int i13 = i12 + 3;
        byte[] bArr = this.buf;
        if (bArr[i13] == 91 || bArr[(i13 + c10) - 1] == 59) {
            throw badClassFile("wrong class name", new Object[0]);
        }
        return this.names.fromUtf(ClassFile.internalize(bArr, i13, c10));
    }

    public Object readClassOrType(int i10) {
        int i11 = this.poolIdx[i10];
        char c10 = getChar(i11 + 1);
        int i12 = i11 + 3;
        byte[] bArr = this.buf;
        Assert.check(bArr[i12] == 91 || bArr[(i12 + c10) - 1] != 59);
        byte[] bArr2 = this.buf;
        return (bArr2[i12] == 91 || bArr2[(i12 + c10) - 1] == 59) ? sigToType(bArr2, i12, c10) : enterClass(this.names.fromUtf(ClassFile.internalize(bArr2, i12, c10)));
    }

    public Symbol.ClassSymbol readClassSymbol(int i10) {
        Object readPool = readPool(i10);
        if (readPool == null || (readPool instanceof Symbol.ClassSymbol)) {
            return (Symbol.ClassSymbol) readPool;
        }
        throw badClassFile("bad.const.pool.entry", this.currentClassFile.toString(), "CONSTANT_Class_info", Integer.valueOf(i10));
    }

    public Code readCode(Symbol symbol) {
        nextChar();
        nextChar();
        this.bp += nextInt();
        this.bp += nextChar() * '\b';
        readMemberAttrs(symbol);
        return null;
    }

    public CompoundAnnotationProxy readCompoundAnnotation() {
        Type readTypeOrClassSymbol;
        if (this.currentModule.module_info == this.currentOwner) {
            int i10 = this.poolIdx[nextChar()];
            int i11 = i10 + 3;
            readTypeOrClassSymbol = new ProxyType(Arrays.copyOfRange(this.buf, i11, getChar(i10 + 1) + i11));
        } else {
            readTypeOrClassSymbol = readTypeOrClassSymbol(nextChar());
        }
        char nextChar = nextChar();
        ListBuffer listBuffer = new ListBuffer();
        for (int i12 = 0; i12 < nextChar; i12++) {
            listBuffer.append(new Pair(readName(nextChar()), readAttributeValue()));
        }
        return new CompoundAnnotationProxy(readTypeOrClassSymbol, listBuffer.toList());
    }

    public void readEnclosingMethodAttr(Symbol symbol) {
        symbol.owner.members().remove(symbol);
        Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) symbol;
        Symbol.ClassSymbol readClassSymbol = readClassSymbol(nextChar());
        ClassFile.NameAndType readNameAndType = readNameAndType(nextChar());
        Scope scope = readClassSymbol.members_field;
        if (scope == null) {
            throw badClassFile("bad.enclosing.class", classSymbol, readClassSymbol);
        }
        Symbol.MethodSymbol findMethod = findMethod(readNameAndType, scope, classSymbol.flags());
        if (readNameAndType != null && findMethod == null) {
            throw badEnclosingMethod(classSymbol);
        }
        Name simpleBinaryName = simpleBinaryName(classSymbol.flatname, readClassSymbol.flatname);
        classSymbol.name = simpleBinaryName;
        classSymbol.owner = findMethod != null ? findMethod : readClassSymbol;
        if (simpleBinaryName.isEmpty()) {
            classSymbol.fullname = this.names.empty;
        } else {
            classSymbol.fullname = Symbol.TypeSymbol.formFullName(classSymbol.name, classSymbol.owner);
        }
        if (findMethod != null) {
            ((Type.ClassType) symbol.type).setEnclosingType(findMethod.type);
        } else if ((classSymbol.flags_field & 8) == 0) {
            ((Type.ClassType) symbol.type).setEnclosingType(readClassSymbol.type);
        } else {
            ((Type.ClassType) symbol.type).setEnclosingType(Type.noType);
        }
        enterTypevars(classSymbol, classSymbol.type);
        if (this.missingTypeVariables.isEmpty()) {
            this.foundTypeVariables = List.nil();
            return;
        }
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = this.missingTypeVariables.iterator();
        while (it.hasNext()) {
            listBuffer.append(findTypeVar(it.next().tsym.name));
        }
        this.foundTypeVariables = listBuffer.toList();
    }

    public Type readEnumType(int i10) {
        int i11 = this.poolIdx[i10];
        return this.buf[(i11 + getChar(i11 + 1)) + 2] != 59 ? enterClass(readName(i10)).type : readTypeToProxy(i10);
    }

    public Set<Directive.ExportsFlag> readExportsFlags(int i10) {
        EnumSet noneOf = EnumSet.noneOf(Directive.ExportsFlag.class);
        for (Directive.ExportsFlag exportsFlag : Directive.ExportsFlag.values()) {
            if ((exportsFlag.value & i10) != 0) {
                noneOf.add(exportsFlag);
            }
        }
        return noneOf;
    }

    public Symbol.VarSymbol readField() {
        Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(adjustFieldFlags(nextChar()), readName(nextChar()), readType(nextChar()), this.currentOwner);
        readMemberAttrs(varSymbol);
        return varSymbol;
    }

    public void readInnerClasses(Symbol.ClassSymbol classSymbol) {
        char nextChar = nextChar();
        for (int i10 = 0; i10 < nextChar; i10++) {
            nextChar();
            Symbol.ClassSymbol readClassSymbol = readClassSymbol(nextChar());
            Name readName = readName(nextChar());
            if (readName == null) {
                readName = this.names.empty;
            }
            long adjustClassFlags = adjustClassFlags(nextChar());
            if (readClassSymbol != null) {
                Names names = this.names;
                if (readName == names.empty) {
                    readName = names.one;
                }
                Symbol.ClassSymbol enterClass = enterClass(readName, readClassSymbol);
                if ((8 & adjustClassFlags) == 0) {
                    ((Type.ClassType) enterClass.type).setEnclosingType(readClassSymbol.type);
                    Type type = enterClass.erasure_field;
                    if (type != null) {
                        ((Type.ClassType) type).setEnclosingType(this.types.erasure(readClassSymbol.type));
                    }
                }
                if (classSymbol == readClassSymbol) {
                    enterClass.flags_field = adjustClassFlags;
                    enterMember(classSymbol, enterClass);
                }
            }
        }
    }

    public void readMemberAttrs(Symbol symbol) {
        readAttrs(symbol, AttributeKind.MEMBER);
    }

    public Symbol.MethodSymbol readMethod() {
        Type last;
        long adjustMethodFlags = adjustMethodFlags(nextChar());
        Name readName = readName(nextChar());
        Type readType = readType(nextChar());
        if (this.currentOwner.isInterface() && (1024 & adjustMethodFlags) == 0 && !readName.equals(this.names.clinit)) {
            int i10 = this.majorVersion;
            ClassFile.Version version = ClassFile.Version.V52;
            int i11 = version.major;
            if (i10 <= i11 && (i10 != i11 || this.minorVersion < version.minor)) {
                throw badClassFile((adjustMethodFlags & 8) == 0 ? "invalid.default.interface" : "invalid.static.interface", Integer.toString(i10), Integer.toString(this.minorVersion));
            }
            if ((10 & adjustMethodFlags) == 0) {
                this.currentOwner.flags_field |= 8796093022208L;
                adjustMethodFlags |= 8796093023232L;
            }
        }
        if (readName == this.names.init && this.currentOwner.hasOuterInstance()) {
            boolean includes = this.currentOwner.owner.members().includes(this.currentOwner, Scope.LookupKind.NON_RECURSIVE);
            if (!this.currentOwner.name.isEmpty() && includes) {
                readType = new Type.MethodType(adjustMethodParams(adjustMethodFlags, readType.getParameterTypes()), readType.getReturnType(), readType.getThrownTypes(), this.syms.methodClass);
            }
        }
        Symbol.MethodSymbol methodSymbol = new Symbol.MethodSymbol(adjustMethodFlags, readName, readType, this.currentOwner);
        if (this.types.isSignaturePolymorphic(methodSymbol)) {
            methodSymbol.flags_field |= 70368744177664L;
        }
        if (this.saveParameterNames) {
            initParameterNames(methodSymbol);
        }
        Symbol symbol = this.currentOwner;
        this.currentOwner = methodSymbol;
        try {
            readMemberAttrs(methodSymbol);
            this.currentOwner = symbol;
            setParameters(methodSymbol, readType);
            if ((adjustMethodFlags & 17179869184L) == 0 || ((last = readType.getParameterTypes().last()) != null && last.hasTag(TypeTag.ARRAY))) {
                return methodSymbol;
            }
            methodSymbol.flags_field &= -17179869185L;
            throw badClassFile("malformed.vararg.method", methodSymbol);
        } catch (Throwable th2) {
            this.currentOwner = symbol;
            throw th2;
        }
    }

    public Set<Symbol.ModuleFlags> readModuleFlags(int i10) {
        EnumSet noneOf = EnumSet.noneOf(Symbol.ModuleFlags.class);
        for (Symbol.ModuleFlags moduleFlags : Symbol.ModuleFlags.values()) {
            if ((moduleFlags.value & i10) != 0) {
                noneOf.add(moduleFlags);
            }
        }
        return noneOf;
    }

    public Name readModuleName(int i10) {
        return readName(i10);
    }

    public Set<Symbol.ModuleResolutionFlags> readModuleResolutionFlags(int i10) {
        EnumSet noneOf = EnumSet.noneOf(Symbol.ModuleResolutionFlags.class);
        for (Symbol.ModuleResolutionFlags moduleResolutionFlags : Symbol.ModuleResolutionFlags.values()) {
            if ((moduleResolutionFlags.value & i10) != 0) {
                noneOf.add(moduleResolutionFlags);
            }
        }
        return noneOf;
    }

    public Name readName(int i10) {
        Object readPool = readPool(i10);
        if (readPool == null || (readPool instanceof Name)) {
            return (Name) readPool;
        }
        throw badClassFile("bad.const.pool.entry", this.currentClassFile.toString(), "CONSTANT_Utf8_info or CONSTANT_String_info", Integer.valueOf(i10));
    }

    public ClassFile.NameAndType readNameAndType(int i10) {
        Object readPool = readPool(i10);
        if (readPool == null || (readPool instanceof ClassFile.NameAndType)) {
            return (ClassFile.NameAndType) readPool;
        }
        throw badClassFile("bad.const.pool.entry", this.currentClassFile.toString(), "CONSTANT_NameAndType_info", Integer.valueOf(i10));
    }

    public Set<Directive.OpensFlag> readOpensFlags(int i10) {
        EnumSet noneOf = EnumSet.noneOf(Directive.OpensFlag.class);
        for (Directive.OpensFlag opensFlag : Directive.OpensFlag.values()) {
            if ((opensFlag.value & i10) != 0) {
                noneOf.add(opensFlag);
            }
        }
        return noneOf;
    }

    public void readParameterAnnotations(Symbol symbol) {
        byte[] bArr = this.buf;
        int i10 = this.bp;
        this.bp = i10 + 1;
        int i11 = bArr[i10] & 255;
        ParameterAnnotations[] parameterAnnotationsArr = this.parameterAnnotations;
        if (parameterAnnotationsArr == null) {
            this.parameterAnnotations = new ParameterAnnotations[i11];
        } else if (parameterAnnotationsArr.length != i11) {
            throw badClassFile("bad.runtime.invisible.param.annotations", symbol);
        }
        for (int i12 = 0; i12 < i11; i12++) {
            ParameterAnnotations[] parameterAnnotationsArr2 = this.parameterAnnotations;
            if (parameterAnnotationsArr2[i12] == null) {
                parameterAnnotationsArr2[i12] = new ParameterAnnotations();
            }
            this.parameterAnnotations[i12].add(readAnnotations());
        }
    }

    public Object readPool(int i10) {
        Object[] objArr = this.poolObj;
        Object obj = objArr[i10];
        if (obj != null) {
            return obj;
        }
        int i11 = this.poolIdx[i10];
        if (i11 == 0) {
            return null;
        }
        byte[] bArr = this.buf;
        byte b10 = bArr[i11];
        switch (b10) {
            case 1:
                objArr[i10] = this.names.fromUtf(bArr, i11 + 3, getChar(i11 + 1));
                break;
            case 2:
                throw badClassFile("unicode.str.not.supported", new Object[0]);
            case 3:
                objArr[i10] = Integer.valueOf(getInt(i11 + 1));
                break;
            case 4:
                objArr[i10] = Float.valueOf(getFloat(i11 + 1));
                break;
            case 5:
                objArr[i10] = Long.valueOf(getLong(i11 + 1));
                break;
            case 6:
                objArr[i10] = Double.valueOf(getDouble(i11 + 1));
                break;
            case 7:
                objArr[i10] = readClassOrType(getChar(i11 + 1));
                break;
            case 8:
                objArr[i10] = readName(getChar(i11 + 1)).toString();
                break;
            case 9:
                Symbol.ClassSymbol readClassSymbol = readClassSymbol(getChar(i11 + 1));
                ClassFile.NameAndType readNameAndType = readNameAndType(getChar(i11 + 3));
                this.poolObj[i10] = new Symbol.VarSymbol(0L, readNameAndType.name, readNameAndType.uniqueType.type, readClassSymbol);
                break;
            case 10:
            case 11:
                Symbol.ClassSymbol readClassSymbol2 = readClassSymbol(getChar(i11 + 1));
                ClassFile.NameAndType readNameAndType2 = readNameAndType(getChar(i11 + 3));
                this.poolObj[i10] = new Symbol.MethodSymbol(0L, readNameAndType2.name, readNameAndType2.uniqueType.type, readClassSymbol2);
                break;
            case 12:
                objArr[i10] = new ClassFile.NameAndType(readName(getChar(i11 + 1)), readType(getChar(i11 + 3)), this.types);
                break;
            case 13:
            case 14:
            case 17:
            default:
                throw badClassFile("bad.const.pool.tag", Byte.toString(b10));
            case 15:
                skipBytes(4);
                break;
            case 16:
                skipBytes(3);
                break;
            case 18:
                skipBytes(5);
                break;
            case 19:
            case 20:
                objArr[i10] = readName(getChar(i11 + 1));
                break;
        }
        return this.poolObj[i10];
    }

    public TypeAnnotationPosition readPosition() {
        int nextByte = nextByte();
        if (!TargetType.isValidTargetTypeValue(nextByte)) {
            throw badClassFile("bad.type.annotation.value", String.format("0x%02X", Integer.valueOf(nextByte)));
        }
        TargetType fromTargetTypeValue = TargetType.fromTargetTypeValue(nextByte);
        int i10 = 0;
        switch (AnonymousClass26.$SwitchMap$com$sun$tools$javac$code$TargetType[fromTargetTypeValue.ordinal()]) {
            case 1:
                char nextChar = nextChar();
                TypeAnnotationPosition instanceOf = TypeAnnotationPosition.instanceOf(readTypePath());
                instanceOf.offset = nextChar;
                return instanceOf;
            case 2:
                char nextChar2 = nextChar();
                TypeAnnotationPosition newObj = TypeAnnotationPosition.newObj(readTypePath());
                newObj.offset = nextChar2;
                return newObj;
            case 3:
                char nextChar3 = nextChar();
                TypeAnnotationPosition constructorRef = TypeAnnotationPosition.constructorRef(readTypePath());
                constructorRef.offset = nextChar3;
                return constructorRef;
            case 4:
                char nextChar4 = nextChar();
                TypeAnnotationPosition methodRef = TypeAnnotationPosition.methodRef(readTypePath());
                methodRef.offset = nextChar4;
                return methodRef;
            case 5:
                int nextChar5 = nextChar();
                int[] iArr = new int[nextChar5];
                int[] iArr2 = new int[nextChar5];
                int[] iArr3 = new int[nextChar5];
                while (i10 < nextChar5) {
                    iArr[i10] = nextChar();
                    iArr2[i10] = nextChar();
                    iArr3[i10] = nextChar();
                    i10++;
                }
                TypeAnnotationPosition localVariable = TypeAnnotationPosition.localVariable(readTypePath());
                localVariable.lvarOffset = iArr;
                localVariable.lvarLength = iArr2;
                localVariable.lvarIndex = iArr3;
                return localVariable;
            case 6:
                int nextChar6 = nextChar();
                int[] iArr4 = new int[nextChar6];
                int[] iArr5 = new int[nextChar6];
                int[] iArr6 = new int[nextChar6];
                while (i10 < nextChar6) {
                    iArr4[i10] = nextChar();
                    iArr5[i10] = nextChar();
                    iArr6[i10] = nextChar();
                    i10++;
                }
                TypeAnnotationPosition resourceVariable = TypeAnnotationPosition.resourceVariable(readTypePath());
                resourceVariable.lvarOffset = iArr4;
                resourceVariable.lvarLength = iArr5;
                resourceVariable.lvarIndex = iArr6;
                return resourceVariable;
            case 7:
                char nextChar7 = nextChar();
                TypeAnnotationPosition exceptionParameter = TypeAnnotationPosition.exceptionParameter(readTypePath());
                exceptionParameter.setExceptionIndex(nextChar7);
                return exceptionParameter;
            case 8:
                return TypeAnnotationPosition.methodReceiver(readTypePath());
            case 9:
                return TypeAnnotationPosition.typeParameter(readTypePath(), nextByte());
            case 10:
                return TypeAnnotationPosition.methodTypeParameter(readTypePath(), nextByte());
            case 11:
                return TypeAnnotationPosition.typeParameterBound(readTypePath(), nextByte(), nextByte());
            case 12:
                return TypeAnnotationPosition.methodTypeParameterBound(readTypePath(), nextByte(), nextByte());
            case 13:
                return TypeAnnotationPosition.classExtends(readTypePath(), nextChar());
            case 14:
                return TypeAnnotationPosition.methodThrows(readTypePath(), nextChar());
            case 15:
                return TypeAnnotationPosition.methodParameter(readTypePath(), nextByte());
            case 16:
                char nextChar8 = nextChar();
                TypeAnnotationPosition typeCast = TypeAnnotationPosition.typeCast(readTypePath(), nextByte());
                typeCast.offset = nextChar8;
                return typeCast;
            case 17:
                char nextChar9 = nextChar();
                TypeAnnotationPosition constructorInvocationTypeArg = TypeAnnotationPosition.constructorInvocationTypeArg(readTypePath(), nextByte());
                constructorInvocationTypeArg.offset = nextChar9;
                return constructorInvocationTypeArg;
            case 18:
                char nextChar10 = nextChar();
                TypeAnnotationPosition methodInvocationTypeArg = TypeAnnotationPosition.methodInvocationTypeArg(readTypePath(), nextByte());
                methodInvocationTypeArg.offset = nextChar10;
                return methodInvocationTypeArg;
            case 19:
                char nextChar11 = nextChar();
                TypeAnnotationPosition constructorRefTypeArg = TypeAnnotationPosition.constructorRefTypeArg(readTypePath(), nextByte());
                constructorRefTypeArg.offset = nextChar11;
                return constructorRefTypeArg;
            case 20:
                char nextChar12 = nextChar();
                TypeAnnotationPosition methodRefTypeArg = TypeAnnotationPosition.methodRefTypeArg(readTypePath(), nextByte());
                methodRefTypeArg.offset = nextChar12;
                return methodRefTypeArg;
            case 21:
                return TypeAnnotationPosition.methodReturn(readTypePath());
            case 22:
                return TypeAnnotationPosition.field(readTypePath());
            case 23:
                throw new AssertionError((Object) "jvm.ClassReader: UNKNOWN target type should never occur!");
            default:
                throw new AssertionError((Object) ("jvm.ClassReader: Unknown target type for position: " + ((Object) fromTargetTypeValue)));
        }
    }

    public Set<Directive.RequiresFlag> readRequiresFlags(int i10) {
        EnumSet noneOf = EnumSet.noneOf(Directive.RequiresFlag.class);
        for (Directive.RequiresFlag requiresFlag : Directive.RequiresFlag.values()) {
            if ((requiresFlag.value & i10) != 0) {
                noneOf.add(requiresFlag);
            }
        }
        return noneOf;
    }

    public Type readType(int i10) {
        int i11 = this.poolIdx[i10];
        return sigToType(this.buf, i11 + 3, getChar(i11 + 1));
    }

    public TypeAnnotationProxy readTypeAnnotation() {
        return new TypeAnnotationProxy(readCompoundAnnotation(), readPosition());
    }

    public Type readTypeOrClassSymbol(int i10) {
        return this.buf[this.poolIdx[i10]] == 7 ? readClassSymbol(i10).type : readTypeToProxy(i10);
    }

    public List<Type> readTypeParams(int i10) {
        int i11 = this.poolIdx[i10];
        return sigToTypeParams(this.buf, i11 + 3, getChar(i11 + 1));
    }

    public List<TypeAnnotationPosition.TypePathEntry> readTypePath() {
        int nextByte = nextByte();
        ListBuffer listBuffer = new ListBuffer();
        for (int i10 = 0; i10 < nextByte * 2; i10++) {
            listBuffer = listBuffer.append(Integer.valueOf(nextByte()));
        }
        return TypeAnnotationPosition.getTypePathFromBinary(listBuffer.toList());
    }

    public Type readTypeToProxy(int i10) {
        if (this.currentModule.module_info != this.currentOwner) {
            return readType(i10);
        }
        int i11 = this.poolIdx[i10];
        int i12 = i11 + 3;
        return new ProxyType(Arrays.copyOfRange(this.buf, i12, getChar(i11 + 1) + i12));
    }

    public void setParameters(Symbol.MethodSymbol methodSymbol, Type type) {
        int i10;
        ParameterAnnotations parameterAnnotations;
        List<CompoundAnnotationProxy> list;
        int i11 = 0;
        if (this.sawMethodParameters) {
            i10 = 0;
        } else {
            i10 = (methodSymbol.flags() & 8) == 0 ? 1 : 0;
            if (methodSymbol.name == this.names.init && this.currentOwner.hasOuterInstance() && !this.currentOwner.name.isEmpty()) {
                i10++;
            }
            if (methodSymbol.type != type) {
                i10 += Code.width(type.getParameterTypes()) - Code.width(methodSymbol.type.getParameterTypes());
            }
        }
        List<Name> nil = List.nil();
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = methodSymbol.type.getParameterTypes().iterator();
        while (it.hasNext()) {
            Type next = it.next();
            Name parameterName = parameterName(i10, nil);
            nil = nil.prepend(parameterName);
            Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(8589934592L, parameterName, next, methodSymbol);
            listBuffer.append(varSymbol);
            ParameterAnnotations[] parameterAnnotationsArr = this.parameterAnnotations;
            if (parameterAnnotationsArr != null && (parameterAnnotations = parameterAnnotationsArr[i11]) != null && (list = parameterAnnotations.proxies) != null && !list.isEmpty()) {
                this.annotate.normal(new AnnotationCompleter(varSymbol, parameterAnnotations.proxies));
            }
            i10 += this.sawMethodParameters ? 1 : Code.width(next);
            i11++;
        }
        ParameterAnnotations[] parameterAnnotationsArr2 = this.parameterAnnotations;
        if (parameterAnnotationsArr2 != null && parameterAnnotationsArr2.length != i11) {
            throw badClassFile("bad.runtime.invisible.param.annotations", methodSymbol);
        }
        Assert.checkNull(methodSymbol.params);
        methodSymbol.params = listBuffer.toList();
        this.parameterAnnotations = null;
        this.parameterNameIndices = null;
    }

    public Type sigToType(byte[] bArr, int i10, int i11) {
        this.signature = bArr;
        this.sigp = i10;
        this.siglimit = i10 + i11;
        return sigToType();
    }

    public Type sigToTypeParam() {
        byte[] bArr;
        int i10;
        Type.TypeVar typeVar;
        boolean z10;
        int i11 = this.sigp;
        while (true) {
            bArr = this.signature;
            i10 = this.sigp;
            if (bArr[i10] == 58) {
                break;
            }
            this.sigp = i10 + 1;
        }
        Name fromUtf = this.names.fromUtf(bArr, i11, i10 - i11);
        if (this.sigEnterPhase) {
            typeVar = new Type.TypeVar(fromUtf, this.currentOwner, this.syms.botType);
            this.typevars.enter(typeVar.tsym);
        } else {
            typeVar = (Type.TypeVar) findTypeVar(fromUtf);
        }
        List nil = List.nil();
        byte[] bArr2 = this.signature;
        int i12 = this.sigp;
        if (bArr2[i12] == 58 && bArr2[i12 + 1] == 58) {
            z10 = true;
            this.sigp = i12 + 1;
        } else {
            z10 = false;
        }
        while (true) {
            byte[] bArr3 = this.signature;
            int i13 = this.sigp;
            if (bArr3[i13] != 58) {
                break;
            }
            this.sigp = i13 + 1;
            nil = nil.prepend(sigToType());
        }
        if (!this.sigEnterPhase) {
            this.types.setBounds(typeVar, nil.reverse(), z10);
        }
        return typeVar;
    }

    public List<Type> sigToTypeParams(byte[] bArr, int i10, int i11) {
        this.signature = bArr;
        this.sigp = i10;
        this.siglimit = i10 + i11;
        return sigToTypeParams();
    }

    public List<Type> sigToTypes(char c10) {
        List of2 = List.of(null);
        List list = of2;
        while (true) {
            byte[] bArr = this.signature;
            int i10 = this.sigp;
            if (bArr[i10] == c10) {
                this.sigp = i10 + 1;
                return of2.tail;
            }
            list = list.setTail(List.of(sigToType()));
        }
    }

    public void skipBytes(int i10) {
        this.bp += i10;
    }

    public void skipInnerClasses() {
        char nextChar = nextChar();
        for (int i10 = 0; i10 < nextChar; i10++) {
            nextChar();
            nextChar();
            nextChar();
            nextChar();
        }
    }

    public void skipMember() {
        this.bp += 6;
        char nextChar = nextChar();
        for (int i10 = 0; i10 < nextChar; i10++) {
            this.bp += 2;
            this.bp += nextInt();
        }
    }

    public void attachAnnotations(Symbol symbol, List<CompoundAnnotationProxy> list) {
        if (list.isEmpty()) {
            return;
        }
        ListBuffer listBuffer = new ListBuffer();
        Iterator<CompoundAnnotationProxy> it = list.iterator();
        while (it.hasNext()) {
            CompoundAnnotationProxy next = it.next();
            Symbol.TypeSymbol typeSymbol = next.type.tsym;
            Symtab symtab = this.syms;
            if (typeSymbol == symtab.proprietaryType.tsym) {
                symbol.flags_field |= 274877906944L;
            } else if (typeSymbol == symtab.profileType.tsym) {
                if (this.profile != Profile.DEFAULT) {
                    Iterator<Pair<Name, Attribute>> it2 = next.values.iterator();
                    while (it2.hasNext()) {
                        Pair<Name, Attribute> next2 = it2.next();
                        if (next2.fst == this.names.value) {
                            Attribute attribute = next2.snd;
                            if (attribute instanceof Attribute.Constant) {
                                Attribute.Constant constant = (Attribute.Constant) attribute;
                                if (constant.type == this.syms.intType && ((Integer) constant.value).intValue() > this.profile.value) {
                                    symbol.flags_field |= 35184372088832L;
                                }
                            }
                        }
                    }
                }
            } else {
                if (typeSymbol == symtab.annotationTargetType.tsym) {
                    this.target = next;
                } else if (typeSymbol == symtab.repeatableType.tsym) {
                    this.repeatable = next;
                } else if (typeSymbol == symtab.deprecatedType.tsym) {
                    symbol.flags_field |= 18014398509613056L;
                    Iterator<Pair<Name, Attribute>> it3 = next.values.iterator();
                    while (it3.hasNext()) {
                        Pair<Name, Attribute> next3 = it3.next();
                        if (next3.fst == this.names.forRemoval) {
                            Attribute attribute2 = next3.snd;
                            if (attribute2 instanceof Attribute.Constant) {
                                Attribute.Constant constant2 = (Attribute.Constant) attribute2;
                                if (constant2.type == this.syms.booleanType && ((Integer) constant2.value).intValue() != 0) {
                                    symbol.flags_field |= 36028797018963968L;
                                }
                            }
                        }
                    }
                }
                listBuffer.append(next);
            }
        }
        this.annotate.normal(new AnnotationCompleter(symbol, listBuffer.toList()));
    }

    public Symbol.ClassSymbol enterClass(Name name, Symbol.TypeSymbol typeSymbol) {
        return this.syms.enterClass(this.currentModule, name, typeSymbol);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Type sigToType() {
        byte[] bArr;
        int i10;
        byte[] bArr2 = this.signature;
        int i11 = this.sigp;
        char c10 = (char) bArr2[i11];
        if (c10 == '(') {
            this.sigp = i11 + 1;
            List<Type> sigToTypes = sigToTypes(')');
            Type sigToType = sigToType();
            List nil = List.nil();
            while (true) {
                byte[] bArr3 = this.signature;
                int i12 = this.sigp;
                if (bArr3[i12] != 94) {
                    break;
                }
                this.sigp = i12 + 1;
                nil = nil.prepend(sigToType());
            }
            for (List list = nil; list.nonEmpty(); list = list.tail) {
                if (((Type) list.head).hasTag(TypeTag.TYPEVAR)) {
                    ((Type) list.head).tsym.flags_field |= 140737488355328L;
                }
            }
            return new Type.MethodType(sigToTypes, sigToType, nil.reverse(), this.syms.methodClass);
        }
        if (c10 == '-') {
            this.sigp = i11 + 1;
            return new Type.WildcardType(sigToType(), BoundKind.SUPER, this.syms.boundClass);
        }
        if (c10 == '<') {
            this.typevars = this.typevars.dup(this.currentOwner);
            Type.ForAll forAll = new Type.ForAll(sigToTypeParams(), sigToType());
            this.typevars = this.typevars.leave();
            return forAll;
        }
        if (c10 == 'F') {
            this.sigp = i11 + 1;
            return this.syms.floatType;
        }
        if (c10 == 'L') {
            Type classSigToType = classSigToType();
            int i13 = this.sigp;
            if (i13 >= this.siglimit || this.signature[i13] != 46) {
                return classSigToType;
            }
            throw badClassFile("deprecated inner class signature syntax (please recompile from source)", new Object[0]);
        }
        if (c10 == 'V') {
            this.sigp = i11 + 1;
            return this.syms.voidType;
        }
        if (c10 == '*') {
            this.sigp = i11 + 1;
            Symtab symtab = this.syms;
            return new Type.WildcardType(symtab.objectType, BoundKind.UNBOUND, symtab.boundClass);
        }
        if (c10 == '+') {
            this.sigp = i11 + 1;
            return new Type.WildcardType(sigToType(), BoundKind.EXTENDS, this.syms.boundClass);
        }
        if (c10 == 'I') {
            this.sigp = i11 + 1;
            return this.syms.intType;
        }
        if (c10 == 'J') {
            this.sigp = i11 + 1;
            return this.syms.longType;
        }
        if (c10 == 'S') {
            this.sigp = i11 + 1;
            return this.syms.shortType;
        }
        if (c10 == 'T') {
            int i14 = i11 + 1;
            this.sigp = i14;
            while (true) {
                bArr = this.signature;
                i10 = this.sigp;
                if (bArr[i10] == 59) {
                    break;
                }
                this.sigp = i10 + 1;
            }
            this.sigp = i10 + 1;
            return this.sigEnterPhase ? Type.noType : findTypeVar(this.names.fromUtf(bArr, i14, i10 - i14));
        }
        if (c10 == 'Z') {
            this.sigp = i11 + 1;
            return this.syms.booleanType;
        }
        if (c10 != '[') {
            switch (c10) {
                case 'B':
                    this.sigp = i11 + 1;
                    return this.syms.byteType;
                case 'C':
                    this.sigp = i11 + 1;
                    return this.syms.charType;
                case 'D':
                    this.sigp = i11 + 1;
                    return this.syms.doubleType;
                default:
                    throw badClassFile("bad.signature", Convert.utf2string(bArr2, i11, 10));
            }
        }
        this.sigp = i11 + 1;
        return new Type.ArrayType(sigToType(), this.syms.arrayClass);
    }

    public List<Type> sigToTypeParams() {
        int i10;
        List nil = List.nil();
        byte[] bArr = this.signature;
        int i11 = this.sigp;
        if (bArr[i11] == 60) {
            int i12 = i11 + 1;
            this.sigp = i12;
            this.sigEnterPhase = true;
            while (this.signature[this.sigp] != 62) {
                nil = nil.prepend(sigToTypeParam());
            }
            this.sigEnterPhase = false;
            this.sigp = i12;
            while (true) {
                byte[] bArr2 = this.signature;
                i10 = this.sigp;
                if (bArr2[i10] == 62) {
                    break;
                }
                sigToTypeParam();
            }
            this.sigp = i10 + 1;
        }
        return nil.reverse();
    }
}
