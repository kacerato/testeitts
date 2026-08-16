package org.openjdk.tools.javac.code;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import org.openjdk.javax.lang.model.element.ElementVisitor;
import org.openjdk.tools.javac.code.Directive;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.comp.Modules;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Convert;
import org.openjdk.tools.javac.util.Iterators;
import org.openjdk.tools.javac.util.JavacMessages;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;

public class Symtab {
    public final Type annotationTargetType;
    public final Type annotationType;
    public final Symbol.ClassSymbol arrayClass;
    public final Symbol.MethodSymbol arrayCloneMethod;
    public final Type arraysType;
    public final Type assertionErrorType;
    public final Symbol.MethodSymbol autoCloseableClose;
    public final Type autoCloseableType;
    public final Type.JCPrimitiveType booleanType;
    public final Type botType;
    public final Symbol.ClassSymbol boundClass;
    public final Name[] boxedName;
    public final Type.JCPrimitiveType byteType;
    public final Type.JCPrimitiveType charType;
    public final Type classLoaderType;
    public final Type classNotFoundExceptionType;
    public final Type classType;
    private final Map<Name, Map<Symbol.ModuleSymbol, Symbol.ClassSymbol>> classes;
    public final Type cloneNotSupportedExceptionType;
    public final Type cloneableType;
    public final Type collectionsType;
    public final Type comparableType;
    public final Type comparatorType;
    public final Type deprecatedType;
    public final Type documentedType;
    public final Type.JCPrimitiveType doubleType;
    public final Type elementTypeType;
    public final Symbol.MethodSymbol enumFinalFinalize;
    public final Symbol.TypeSymbol enumSym;
    public final Symbol.ModuleSymbol errModule;
    public final Symbol.ClassSymbol errSymbol;
    public final Type errType;
    public final Type errorType;
    public final Type exceptionType;
    public final Type.JCPrimitiveType floatType;
    public final Type functionalInterfaceType;
    public final Type illegalArgumentExceptionType;
    public final Type inheritedType;
    private final Symbol.Completer initialCompleter;
    public final Type.JCPrimitiveType intType;
    public final Type interruptedExceptionType;
    public final Type iterableType;
    public final Type iteratorType;
    public final Symbol.ModuleSymbol java_base;
    public final Type lambdaMetafactory;
    public final Symbol.VarSymbol lengthVar;
    public final Type listType;
    public final Type.JCPrimitiveType longType;
    private final JavacMessages messages;
    public final Symbol.ClassSymbol methodClass;
    public final Type methodHandleLookupType;
    public final Type methodHandleType;
    public final Type methodTypeType;
    private final Symbol.Completer moduleCompleter;
    private final Map<Name, Symbol.ModuleSymbol> modules;
    private final Names names;
    public final Type nativeHeaderType;
    public final Type noClassDefFoundErrorType;
    public final Symbol.ModuleSymbol noModule;
    public final Type noSuchFieldErrorType;
    public final Symbol.TypeSymbol noSymbol;
    public final Type objectType;
    public final Type objectsType;
    public final Type overrideType;
    private final Map<Name, Map<Symbol.ModuleSymbol, Symbol.PackageSymbol>> packages;
    public final Symbol.ClassSymbol predefClass;
    public final Type profileType;
    public final Type proprietaryType;
    public final Type repeatableType;
    public final Type retentionType;
    public final Symbol.PackageSymbol rootPackage;
    public final Type runtimeExceptionType;
    public final Type serializableType;
    public final Type serializedLambdaType;
    public final Type.JCPrimitiveType shortType;
    public final Type stringBufferType;
    public final Type stringBuilderType;
    public final Type stringConcatFactory;
    public final Type stringType;
    public final Type supplierType;
    public final Type suppressWarningsType;
    public final Type systemType;
    public final Type throwableType;
    public final Type trustMeType;
    public final Type[] typeOfTag;
    public final Symbol.ClassSymbol unknownSymbol;
    public final Type unknownType;
    public final Symbol.ModuleSymbol unnamedModule;
    public final Type varHandleType;
    public final Type.JCVoidType voidType;
    protected static final Context.Key<Symtab> symtabKey = new Context.Key<>();
    private static final Map<Symbol.ModuleSymbol, Symbol.ClassSymbol> EMPTY = new HashMap();

    public Symtab(Context context) throws Symbol.CompletionFailure {
        Symbol.ModuleSymbol moduleSymbol;
        Type.JCPrimitiveType jCPrimitiveType = new Type.JCPrimitiveType(TypeTag.BYTE, null);
        this.byteType = jCPrimitiveType;
        Type.JCPrimitiveType jCPrimitiveType2 = new Type.JCPrimitiveType(TypeTag.CHAR, null);
        this.charType = jCPrimitiveType2;
        Type.JCPrimitiveType jCPrimitiveType3 = new Type.JCPrimitiveType(TypeTag.SHORT, null);
        this.shortType = jCPrimitiveType3;
        Type.JCPrimitiveType jCPrimitiveType4 = new Type.JCPrimitiveType(TypeTag.INT, null);
        this.intType = jCPrimitiveType4;
        Type.JCPrimitiveType jCPrimitiveType5 = new Type.JCPrimitiveType(TypeTag.LONG, null);
        this.longType = jCPrimitiveType5;
        Type.JCPrimitiveType jCPrimitiveType6 = new Type.JCPrimitiveType(TypeTag.FLOAT, null);
        this.floatType = jCPrimitiveType6;
        Type.JCPrimitiveType jCPrimitiveType7 = new Type.JCPrimitiveType(TypeTag.DOUBLE, null);
        this.doubleType = jCPrimitiveType7;
        Type.JCPrimitiveType jCPrimitiveType8 = new Type.JCPrimitiveType(TypeTag.BOOLEAN, null);
        this.booleanType = jCPrimitiveType8;
        Type bottomType = new Type.BottomType();
        this.botType = bottomType;
        Type.JCVoidType jCVoidType = new Type.JCVoidType();
        this.voidType = jCVoidType;
        this.typeOfTag = new Type[TypeTag.getTypeTagCount()];
        this.boxedName = new Name[TypeTag.getTypeTagCount()];
        this.classes = new HashMap();
        this.packages = new HashMap();
        this.modules = new LinkedHashMap();
        context.put((Context.Key<Context.Key<Symtab>>) symtabKey, (Context.Key<Symtab>) this);
        Names instance = Names.instance(context);
        this.names = instance;
        Type unknownType = new Type.UnknownType();
        this.unknownType = unknownType;
        this.messages = JavacMessages.instance(context);
        Symbol.PackageSymbol packageSymbol = new Symbol.PackageSymbol(instance.empty, null);
        this.rootPackage = packageSymbol;
        Symbol.ModuleSymbol moduleSymbol2 = new Symbol.ModuleSymbol(instance.empty, null) {
            {
                this.directives = List.nil();
                this.exports = List.nil();
                this.provides = List.nil();
                this.uses = List.nil();
                this.requires = List.of(new Directive.RequiresDirective(Symtab.this.enterModule(Symtab.this.names.java_base), EnumSet.of(Directive.RequiresFlag.MANDATED)));
            }

            @Override
            public String toString() {
                return Symtab.this.messages.getLocalizedString("compiler.misc.unnamed.module", new Object[0]);
            }
        };
        this.unnamedModule = moduleSymbol2;
        addRootPackageFor(moduleSymbol2);
        moduleSymbol2.enclosedPackages = moduleSymbol2.enclosedPackages.prepend(moduleSymbol2.unnamedPackage);
        Symbol symbol = null;
        Symbol.ModuleSymbol moduleSymbol3 = new Symbol.ModuleSymbol(instance.empty, symbol) {
            {
                this.directives = List.nil();
                this.exports = List.nil();
                this.provides = List.nil();
                this.uses = List.nil();
                this.requires = List.of(new Directive.RequiresDirective(Symtab.this.enterModule(Symtab.this.names.java_base), EnumSet.of(Directive.RequiresFlag.MANDATED)));
            }
        };
        this.errModule = moduleSymbol3;
        addRootPackageFor(moduleSymbol3);
        Symbol.ModuleSymbol moduleSymbol4 = new Symbol.ModuleSymbol(instance.empty, symbol) {
            @Override
            public boolean isNoModule() {
                return true;
            }
        };
        this.noModule = moduleSymbol4;
        addRootPackageFor(moduleSymbol4);
        Kinds.Kind kind = Kinds.Kind.NIL;
        Name name = instance.empty;
        Type.JCNoType jCNoType = Type.noType;
        Symbol.TypeSymbol typeSymbol = new Symbol.TypeSymbol(kind, 0L, name, jCNoType, packageSymbol) {
            @Override
            public <R, P> R accept(ElementVisitor<R, P> elementVisitor, P p10) {
                return elementVisitor.visitUnknown(this, p10);
            }
        };
        this.noSymbol = typeSymbol;
        Symbol.ClassSymbol classSymbol = new Symbol.ClassSymbol(1073741833L, instance.any, null, packageSymbol);
        this.errSymbol = classSymbol;
        Type errorType = new Type.ErrorType(classSymbol, jCNoType);
        this.errType = errorType;
        Symbol.ClassSymbol classSymbol2 = new Symbol.ClassSymbol(1073741833L, instance.fromString("<any?>"), null, packageSymbol);
        this.unknownSymbol = classSymbol2;
        classSymbol2.members_field = new Scope.ErrorScope(classSymbol2);
        classSymbol2.type = unknownType;
        initType(jCPrimitiveType, "byte", "Byte");
        initType(jCPrimitiveType3, "short", "Short");
        initType(jCPrimitiveType2, "char", "Character");
        initType(jCPrimitiveType4, "int", "Integer");
        initType(jCPrimitiveType5, "long", "Long");
        initType(jCPrimitiveType6, TypedValues.Custom.S_FLOAT, SerializableShaderEntry.f81148b);
        initType(jCPrimitiveType7, "double", "Double");
        initType(jCPrimitiveType8, TypedValues.Custom.S_BOOLEAN, "Boolean");
        initType(jCVoidType, "void", "Void");
        initType(bottomType, "<nulltype>");
        initType(errorType, classSymbol);
        initType(unknownType, classSymbol2);
        Symbol.ClassSymbol classSymbol3 = new Symbol.ClassSymbol(1073741825L, instance.Array, typeSymbol);
        this.arrayClass = classSymbol3;
        Symbol.ClassSymbol classSymbol4 = new Symbol.ClassSymbol(1073741825L, instance.Bound, typeSymbol);
        this.boundClass = classSymbol4;
        classSymbol4.members_field = new Scope.ErrorScope(classSymbol4);
        Symbol.ClassSymbol classSymbol5 = new Symbol.ClassSymbol(1073741825L, instance.Method, typeSymbol);
        this.methodClass = classSymbol5;
        classSymbol5.members_field = new Scope.ErrorScope(classSymbol4);
        Symbol.ClassSymbol classSymbol6 = new Symbol.ClassSymbol(1073741825L, instance.empty, packageSymbol);
        this.predefClass = classSymbol6;
        Scope.WriteableScope create = Scope.WriteableScope.create(classSymbol6);
        classSymbol6.members_field = create;
        this.initialCompleter = ClassFinder.instance(context).getCompleter();
        packageSymbol.members_field = Scope.WriteableScope.create(packageSymbol);
        create.enter(jCPrimitiveType.tsym);
        create.enter(jCPrimitiveType3.tsym);
        create.enter(jCPrimitiveType2.tsym);
        create.enter(jCPrimitiveType4.tsym);
        create.enter(jCPrimitiveType5.tsym);
        create.enter(jCPrimitiveType6.tsym);
        create.enter(jCPrimitiveType7.tsym);
        create.enter(jCPrimitiveType8.tsym);
        create.enter(errorType.tsym);
        create.enter(classSymbol);
        if (Source.instance(context).allowModules()) {
            Symbol.ModuleSymbol enterModule = enterModule(instance.java_base);
            this.java_base = enterModule;
            enterModule.completer = Symbol.Completer.NULL_COMPLETER;
            enterModule.visiblePackages = Collections.emptyMap();
            moduleSymbol = moduleSymbol4;
        } else {
            moduleSymbol = moduleSymbol4;
            this.java_base = moduleSymbol;
        }
        final Symbol.Completer completer = Modules.instance(context).getCompleter();
        this.moduleCompleter = completer;
        Type enterClass = enterClass("java.lang.Object");
        this.objectType = enterClass;
        this.objectsType = enterClass("java.util.Objects");
        this.classType = enterClass("java.lang.Class");
        this.stringType = enterClass("java.lang.String");
        this.stringBufferType = enterClass("java.lang.StringBuffer");
        this.stringBuilderType = enterClass("java.lang.StringBuilder");
        Type enterClass2 = enterClass("java.lang.Cloneable");
        this.cloneableType = enterClass2;
        this.throwableType = enterClass("java.lang.Throwable");
        Type enterClass3 = enterClass("java.io.Serializable");
        this.serializableType = enterClass3;
        Type enterClass4 = enterClass("java.lang.invoke.SerializedLambda");
        this.serializedLambdaType = enterClass4;
        this.varHandleType = enterClass("java.lang.invoke.VarHandle");
        this.methodHandleType = enterClass("java.lang.invoke.MethodHandle");
        this.methodHandleLookupType = enterClass("java.lang.invoke.MethodHandles$Lookup");
        this.methodTypeType = enterClass("java.lang.invoke.MethodType");
        this.errorType = enterClass("java.lang.Error");
        this.illegalArgumentExceptionType = enterClass("java.lang.IllegalArgumentException");
        this.interruptedExceptionType = enterClass("java.lang.InterruptedException");
        Type enterClass5 = enterClass("java.lang.Exception");
        this.exceptionType = enterClass5;
        this.runtimeExceptionType = enterClass("java.lang.RuntimeException");
        this.classNotFoundExceptionType = enterClass("java.lang.ClassNotFoundException");
        this.noClassDefFoundErrorType = enterClass("java.lang.NoClassDefFoundError");
        this.noSuchFieldErrorType = enterClass("java.lang.NoSuchFieldError");
        this.assertionErrorType = enterClass("java.lang.AssertionError");
        this.cloneNotSupportedExceptionType = enterClass("java.lang.CloneNotSupportedException");
        this.annotationType = enterClass("java.lang.annotation.Annotation");
        this.classLoaderType = enterClass("java.lang.ClassLoader");
        Symbol.ClassSymbol enterClass6 = enterClass(this.java_base, instance.java_lang_Enum);
        this.enumSym = enterClass6;
        Symbol.ModuleSymbol moduleSymbol5 = moduleSymbol;
        this.enumFinalFinalize = new Symbol.MethodSymbol(137438953492L, instance.finalize, new Type.MethodType(List.nil(), jCVoidType, List.nil(), classSymbol5), enterClass6);
        this.listType = enterClass("java.util.List");
        this.collectionsType = enterClass("java.util.Collections");
        this.comparableType = enterClass("java.lang.Comparable");
        this.comparatorType = enterClass("java.util.Comparator");
        this.arraysType = enterClass("java.util.Arrays");
        this.iterableType = enterClass("java.lang.Iterable");
        this.iteratorType = enterClass("java.util.Iterator");
        this.annotationTargetType = enterClass("java.lang.annotation.Target");
        this.overrideType = enterClass("java.lang.Override");
        this.retentionType = enterClass("java.lang.annotation.Retention");
        this.deprecatedType = enterClass("java.lang.Deprecated");
        this.suppressWarningsType = enterClass("java.lang.SuppressWarnings");
        this.supplierType = enterClass("java.util.function.Supplier");
        this.inheritedType = enterClass("java.lang.annotation.Inherited");
        this.repeatableType = enterClass("java.lang.annotation.Repeatable");
        this.documentedType = enterClass("java.lang.annotation.Documented");
        this.elementTypeType = enterClass("java.lang.annotation.ElementType");
        this.systemType = enterClass("java.lang.System");
        Type enterClass7 = enterClass("java.lang.AutoCloseable");
        this.autoCloseableType = enterClass7;
        this.autoCloseableClose = new Symbol.MethodSymbol(1L, instance.close, new Type.MethodType(List.nil(), jCVoidType, List.of(enterClass5), classSymbol5), enterClass7.tsym);
        this.trustMeType = enterClass("java.lang.SafeVarargs");
        this.nativeHeaderType = enterClass("java.lang.annotation.Native");
        Type enterClass8 = enterClass("java.lang.invoke.LambdaMetafactory");
        this.lambdaMetafactory = enterClass8;
        Type enterClass9 = enterClass("java.lang.invoke.StringConcatFactory");
        this.stringConcatFactory = enterClass9;
        this.functionalInterfaceType = enterClass("java.lang.FunctionalInterface");
        synthesizeEmptyInterfaceIfMissing(enterClass7);
        synthesizeEmptyInterfaceIfMissing(enterClass2);
        synthesizeEmptyInterfaceIfMissing(enterClass3);
        synthesizeEmptyInterfaceIfMissing(enterClass8);
        synthesizeEmptyInterfaceIfMissing(enterClass4);
        synthesizeEmptyInterfaceIfMissing(enterClass9);
        synthesizeBoxTypeIfMissing(jCPrimitiveType7);
        synthesizeBoxTypeIfMissing(jCPrimitiveType6);
        synthesizeBoxTypeIfMissing(jCVoidType);
        this.proprietaryType = enterSyntheticAnnotation("sun.Proprietary+Annotation");
        Type enterSyntheticAnnotation = enterSyntheticAnnotation("jdk.Profile+Annotation");
        this.profileType = enterSyntheticAnnotation;
        enterSyntheticAnnotation.tsym.members().enter(new Symbol.MethodSymbol(Flags.AnnotationTypeElementMask, instance.value, jCPrimitiveType4, enterSyntheticAnnotation.tsym));
        Type.ClassType classType = (Type.ClassType) classSymbol3.type;
        classType.supertype_field = enterClass;
        classType.interfaces_field = List.of(enterClass2, enterClass3);
        classSymbol3.members_field = Scope.WriteableScope.create(classSymbol3);
        Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(17L, instance.length, jCPrimitiveType4, classSymbol3);
        this.lengthVar = varSymbol;
        classSymbol3.members().enter(varSymbol);
        Symbol.MethodSymbol methodSymbol = new Symbol.MethodSymbol(1L, instance.clone, new Type.MethodType(List.nil(), enterClass, List.nil(), classSymbol5), classSymbol3);
        this.arrayCloneMethod = methodSymbol;
        classSymbol3.members().enter(methodSymbol);
        Symbol.ModuleSymbol moduleSymbol6 = this.java_base;
        if (moduleSymbol6 != moduleSymbol5) {
            completer.getClass();
            moduleSymbol6.completer = new Symbol.Completer() {
                @Override
                public final void complete(Symbol symbol2) {
                    Symbol.Completer.this.complete(symbol2);
                }
            };
        }
    }

    private void addRootPackageFor(Symbol.ModuleSymbol moduleSymbol) {
        doEnterPackage(moduleSymbol, this.rootPackage);
        Symbol.PackageSymbol packageSymbol = new Symbol.PackageSymbol(this.names.empty, this.rootPackage) {
            @Override
            public String toString() {
                return Symtab.this.messages.getLocalizedString("compiler.misc.unnamed.package", new Object[0]);
            }
        };
        packageSymbol.modle = moduleSymbol;
        packageSymbol.completer = new Symbol.Completer() {
            @Override
            public final void complete(Symbol symbol) {
                Symtab.this.lambda$addRootPackageFor$7(symbol);
            }
        };
        moduleSymbol.unnamedPackage = packageSymbol;
    }

    private void doEnterClass(Symbol.ModuleSymbol moduleSymbol, Symbol.ClassSymbol classSymbol) {
        this.classes.computeIfAbsent(classSymbol.flatname, new Function() {
            @Override
            public final Object apply(Object obj) {
                Map lambda$doEnterClass$4;
                lambda$doEnterClass$4 = Symtab.lambda$doEnterClass$4((Name) obj);
                return lambda$doEnterClass$4;
            }
        }).put(moduleSymbol, classSymbol);
    }

    private void doEnterPackage(Symbol.ModuleSymbol moduleSymbol, Symbol.PackageSymbol packageSymbol) {
        this.packages.computeIfAbsent(packageSymbol.fullname, new Function() {
            @Override
            public final Object apply(Object obj) {
                Map lambda$doEnterPackage$6;
                lambda$doEnterPackage$6 = Symtab.lambda$doEnterPackage$6((Name) obj);
                return lambda$doEnterPackage$6;
            }
        }).put(moduleSymbol, packageSymbol);
        moduleSymbol.enclosedPackages = moduleSymbol.enclosedPackages.prepend(packageSymbol);
    }

    private Type enterClass(String str) {
        return enterClass(this.java_base, this.names.fromString(str)).type;
    }

    private Type enterSyntheticAnnotation(String str) {
        Type.ClassType classType = (Type.ClassType) enterClass(this.java_base, this.names.fromString(str)).type;
        Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) classType.tsym;
        classSymbol.completer = Symbol.Completer.NULL_COMPLETER;
        classSymbol.flags_field = 1073750529L;
        classSymbol.erasure_field = classType;
        classSymbol.members_field = Scope.WriteableScope.create(classSymbol);
        classType.typarams_field = List.nil();
        classType.allparams_field = List.nil();
        classType.supertype_field = this.annotationType;
        classType.interfaces_field = List.nil();
        return classType;
    }

    public static Symtab instance(Context context) {
        Symtab symtab = (Symtab) context.get(symtabKey);
        return symtab == null ? new Symtab(context) : symtab;
    }

    public void lambda$addRootPackageFor$7(Symbol symbol) throws Symbol.CompletionFailure {
        this.initialCompleter.complete(symbol);
    }

    public static Map lambda$doEnterClass$4(Name name) {
        return new HashMap();
    }

    public static Map lambda$doEnterPackage$6(Name name) {
        return new HashMap();
    }

    public void lambda$enterModule$8(Symbol symbol) throws Symbol.CompletionFailure {
        this.moduleCompleter.complete(symbol);
    }

    public static String lambda$enterPackage$5(Symbol.ModuleSymbol moduleSymbol) {
        return "rootPackage missing!; currModule: " + ((Object) moduleSymbol);
    }

    public Iterator lambda$getAllClasses$3() {
        return Iterators.createCompoundIterator(this.classes.values(), new Function() {
            @Override
            public final Object apply(Object obj) {
                Iterator lambda$null$2;
                lambda$null$2 = Symtab.lambda$null$2((Map) obj);
                return lambda$null$2;
            }
        });
    }

    public boolean lambda$lookupPackage$1(Symbol.ModuleSymbol moduleSymbol) {
        return moduleSymbol == this.unnamedModule;
    }

    public static Iterator lambda$null$2(Map map) {
        return map.values().iterator();
    }

    public Symbol.ClassSymbol defineClass(Name name, Symbol symbol) {
        Symbol.ClassSymbol classSymbol = new Symbol.ClassSymbol(0L, name, symbol);
        classSymbol.completer = this.initialCompleter;
        return classSymbol;
    }

    public Symbol.ModuleSymbol enterModule(Name name) {
        Symbol.ModuleSymbol moduleSymbol = this.modules.get(name);
        if (moduleSymbol != null) {
            return moduleSymbol;
        }
        Symbol.ModuleSymbol create = Symbol.ModuleSymbol.create(name, this.names.module_info);
        addRootPackageFor(create);
        create.completer = new Symbol.Completer() {
            @Override
            public final void complete(Symbol symbol) {
                Symtab.this.lambda$enterModule$8(symbol);
            }
        };
        this.modules.put(name, create);
        return create;
    }

    public Symbol.PackageSymbol enterPackage(final Symbol.ModuleSymbol moduleSymbol, Name name) {
        Assert.checkNonNull(moduleSymbol);
        Symbol.PackageSymbol packageSymbol = getPackage(moduleSymbol, name);
        if (packageSymbol != null) {
            return packageSymbol;
        }
        Assert.check(!name.isEmpty(), (Supplier<String>) new Supplier() {
            @Override
            public final Object get() {
                String lambda$enterPackage$5;
                lambda$enterPackage$5 = Symtab.lambda$enterPackage$5(Symbol.ModuleSymbol.this);
                return lambda$enterPackage$5;
            }
        });
        Symbol.PackageSymbol packageSymbol2 = new Symbol.PackageSymbol(Convert.shortName(name), enterPackage(moduleSymbol, Convert.packagePart(name)));
        packageSymbol2.completer = this.initialCompleter;
        packageSymbol2.modle = moduleSymbol;
        doEnterPackage(moduleSymbol, packageSymbol2);
        return packageSymbol2;
    }

    public Iterable<Symbol.ClassSymbol> getAllClasses() {
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                Iterator lambda$getAllClasses$3;
                lambda$getAllClasses$3 = Symtab.this.lambda$getAllClasses$3();
                return lambda$getAllClasses$3;
            }
        };
    }

    public Collection<Symbol.ModuleSymbol> getAllModules() {
        return this.modules.values();
    }

    public Symbol.ClassSymbol getClass(Symbol.ModuleSymbol moduleSymbol, final Name name) {
        name.getClass();
        Assert.checkNonNull(moduleSymbol, (Supplier<String>) new Supplier() {
            @Override
            public final Object get() {
                return Name.this.toString();
            }
        });
        return this.classes.getOrDefault(name, Collections.emptyMap()).get(moduleSymbol);
    }

    public Iterable<Symbol.ClassSymbol> getClassesForName(Name name) {
        return this.classes.getOrDefault(name, Collections.emptyMap()).values();
    }

    public Symbol.ModuleSymbol getModule(Name name) {
        return this.modules.get(name);
    }

    public Symbol.PackageSymbol getPackage(Symbol.ModuleSymbol moduleSymbol, Name name) {
        return this.packages.getOrDefault(name, Collections.emptyMap()).get(moduleSymbol);
    }

    public Iterable<Symbol.PackageSymbol> getPackagesForName(Name name) {
        return this.packages.getOrDefault(name, Collections.emptyMap()).values();
    }

    public Symbol.ModuleSymbol inferModule(Name name) {
        if (name.isEmpty()) {
            Symbol.ModuleSymbol moduleSymbol = this.java_base;
            Symbol.ModuleSymbol moduleSymbol2 = this.noModule;
            return moduleSymbol == moduleSymbol2 ? moduleSymbol2 : this.unnamedModule;
        }
        Map<Symbol.ModuleSymbol, Symbol.PackageSymbol> map = this.packages.get(name);
        if (map == null) {
            return null;
        }
        Symbol.ModuleSymbol moduleSymbol3 = null;
        for (Map.Entry<Symbol.ModuleSymbol, Symbol.PackageSymbol> entry : map.entrySet()) {
            if (!entry.getValue().members().isEmpty()) {
                if (moduleSymbol3 != null) {
                    return null;
                }
                moduleSymbol3 = entry.getKey();
            }
        }
        return moduleSymbol3;
    }

    public void initType(Type type, Symbol.ClassSymbol classSymbol) {
        type.tsym = classSymbol;
        this.typeOfTag[type.getTag().ordinal()] = type;
    }

    public List<Symbol.ModuleSymbol> listPackageModules(Name name) {
        if (name.isEmpty()) {
            return List.nil();
        }
        List<Symbol.ModuleSymbol> nil = List.nil();
        Map<Symbol.ModuleSymbol, Symbol.PackageSymbol> map = this.packages.get(name);
        if (map != null) {
            for (Map.Entry<Symbol.ModuleSymbol, Symbol.PackageSymbol> entry : map.entrySet()) {
                if (!entry.getValue().members().isEmpty()) {
                    nil = nil.prepend(entry.getKey());
                }
            }
        }
        return nil;
    }

    public Symbol.PackageSymbol lookupPackage(Symbol.ModuleSymbol moduleSymbol, Name name) {
        Assert.checkNonNull(moduleSymbol);
        if (name.isEmpty()) {
            return moduleSymbol.unnamedPackage;
        }
        if (moduleSymbol == this.noModule) {
            return enterPackage(moduleSymbol, name);
        }
        moduleSymbol.complete();
        Symbol.PackageSymbol packageSymbol = moduleSymbol.visiblePackages.get(name);
        if (packageSymbol != null) {
            return packageSymbol;
        }
        Symbol.PackageSymbol packageSymbol2 = getPackage(moduleSymbol, name);
        if (packageSymbol2 != null && packageSymbol2.exists()) {
            return packageSymbol2;
        }
        List<Directive.RequiresDirective> list = moduleSymbol.requires;
        if (list == null || !list.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Symbol.ModuleSymbol moduleSymbol2;
                moduleSymbol2 = ((Directive.RequiresDirective) obj).module;
                return moduleSymbol2;
            }
        }).anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$lookupPackage$1;
                lambda$lookupPackage$1 = Symtab.this.lambda$lookupPackage$1((Symbol.ModuleSymbol) obj);
                return lambda$lookupPackage$1;
            }
        })) {
            return enterPackage(moduleSymbol, name);
        }
        Symbol.PackageSymbol packageSymbol3 = getPackage(this.unnamedModule, name);
        if (packageSymbol3 != null && packageSymbol3.exists()) {
            moduleSymbol.visiblePackages.put(packageSymbol3.fullname, packageSymbol3);
            return packageSymbol3;
        }
        Symbol.PackageSymbol enterPackage = enterPackage(moduleSymbol, name);
        enterPackage.complete();
        if (enterPackage.exists()) {
            return enterPackage;
        }
        Symbol.PackageSymbol enterPackage2 = enterPackage(this.unnamedModule, name);
        enterPackage2.complete();
        if (!enterPackage2.exists()) {
            return enterPackage;
        }
        moduleSymbol.visiblePackages.put(enterPackage2.fullname, enterPackage2);
        return enterPackage2;
    }

    public boolean packageExists(Symbol.ModuleSymbol moduleSymbol, Name name) {
        Assert.checkNonNull(moduleSymbol);
        return lookupPackage(moduleSymbol, name).exists();
    }

    public void removeClass(Symbol.ModuleSymbol moduleSymbol, Name name) {
        this.classes.getOrDefault(name, EMPTY).remove(moduleSymbol);
    }

    public void synthesizeBoxTypeIfMissing(final Type type) {
        Symbol.ClassSymbol enterClass = enterClass(this.java_base, this.boxedName[type.getTag().ordinal()]);
        final Symbol.Completer completer = enterClass.completer;
        enterClass.completer = new Symbol.Completer() {
            @Override
            public void complete(Symbol symbol) throws Symbol.CompletionFailure {
                try {
                    completer.complete(symbol);
                } catch (Symbol.CompletionFailure unused) {
                    symbol.flags_field |= 1;
                    ((Type.ClassType) symbol.type).supertype_field = Symtab.this.objectType;
                    symbol.members().enter(new Symbol.MethodSymbol(9L, Symtab.this.names.valueOf, new Type.MethodType(List.of(type), symbol.type, List.nil(), Symtab.this.methodClass), symbol));
                    symbol.members().enter(new Symbol.MethodSymbol(1L, type.tsym.name.append(Symtab.this.names.Value), new Type.MethodType(List.nil(), type, List.nil(), Symtab.this.methodClass), symbol));
                }
            }

            @Override
            public boolean isTerminal() {
                return completer.isTerminal();
            }
        };
    }

    public void synthesizeEmptyInterfaceIfMissing(Type type) {
        Symbol.TypeSymbol typeSymbol = type.tsym;
        final Symbol.Completer completer = typeSymbol.completer;
        typeSymbol.completer = new Symbol.Completer() {
            @Override
            public void complete(Symbol symbol) throws Symbol.CompletionFailure {
                try {
                    completer.complete(symbol);
                } catch (Symbol.CompletionFailure unused) {
                    symbol.flags_field |= 513;
                    ((Type.ClassType) symbol.type).supertype_field = Symtab.this.objectType;
                }
            }

            @Override
            public boolean isTerminal() {
                return completer.isTerminal();
            }
        };
    }

    public Symbol.ClassSymbol enterClass(Symbol.ModuleSymbol moduleSymbol, Name name, Symbol.TypeSymbol typeSymbol) {
        Assert.checkNonNull(moduleSymbol);
        Symbol.ClassSymbol classSymbol = getClass(moduleSymbol, Symbol.TypeSymbol.formFlatName(name, typeSymbol));
        if (classSymbol == null) {
            Symbol.ClassSymbol defineClass = defineClass(name, typeSymbol);
            doEnterClass(moduleSymbol, defineClass);
            return defineClass;
        }
        if ((classSymbol.name == name && classSymbol.owner == typeSymbol) || typeSymbol.kind != Kinds.Kind.TYP) {
            return classSymbol;
        }
        Symbol symbol = classSymbol.owner;
        if (symbol.kind != Kinds.Kind.PCK) {
            return classSymbol;
        }
        symbol.members().remove(classSymbol);
        classSymbol.name = name;
        classSymbol.owner = typeSymbol;
        classSymbol.fullname = Symbol.TypeSymbol.formFullName(name, typeSymbol);
        return classSymbol;
    }

    public void initType(Type type, String str) {
        initType(type, new Symbol.ClassSymbol(1L, this.names.fromString(str), type, this.rootPackage));
    }

    public void initType(Type type, String str, String str2) {
        initType(type, str);
        this.boxedName[type.getTag().ordinal()] = this.names.fromString("java.lang." + str2);
    }

    public Symbol.ClassSymbol enterClass(Symbol.ModuleSymbol moduleSymbol, Name name) {
        Assert.checkNonNull(moduleSymbol);
        Symbol.PackageSymbol lookupPackage = lookupPackage(moduleSymbol, Convert.packagePart(name));
        Assert.checkNonNull(lookupPackage);
        Assert.checkNonNull(lookupPackage.modle);
        Symbol.ClassSymbol classSymbol = getClass(lookupPackage.modle, name);
        if (classSymbol != null) {
            return classSymbol;
        }
        Symbol.ClassSymbol defineClass = defineClass(Convert.shortName(name), lookupPackage);
        doEnterClass(lookupPackage.modle, defineClass);
        return defineClass;
    }
}
