.class public Lorg/openjdk/tools/javac/code/Symtab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field protected static final symtabKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/code/Symtab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final annotationTargetType:Lorg/openjdk/tools/javac/code/Type;

.field public final annotationType:Lorg/openjdk/tools/javac/code/Type;

.field public final arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

.field public final arrayCloneMethod:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

.field public final arraysType:Lorg/openjdk/tools/javac/code/Type;

.field public final assertionErrorType:Lorg/openjdk/tools/javac/code/Type;

.field public final autoCloseableClose:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

.field public final autoCloseableType:Lorg/openjdk/tools/javac/code/Type;

.field public final booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

.field public final botType:Lorg/openjdk/tools/javac/code/Type;

.field public final boundClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

.field public final boxedName:[Lorg/openjdk/tools/javac/util/Name;

.field public final byteType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

.field public final charType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

.field public final classLoaderType:Lorg/openjdk/tools/javac/code/Type;

.field public final classNotFoundExceptionType:Lorg/openjdk/tools/javac/code/Type;

.field public final classType:Lorg/openjdk/tools/javac/code/Type;

.field private final classes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;>;"
        }
    .end annotation
.end field

.field public final cloneNotSupportedExceptionType:Lorg/openjdk/tools/javac/code/Type;

.field public final cloneableType:Lorg/openjdk/tools/javac/code/Type;

.field public final collectionsType:Lorg/openjdk/tools/javac/code/Type;

.field public final comparableType:Lorg/openjdk/tools/javac/code/Type;

.field public final comparatorType:Lorg/openjdk/tools/javac/code/Type;

.field public final deprecatedType:Lorg/openjdk/tools/javac/code/Type;

.field public final documentedType:Lorg/openjdk/tools/javac/code/Type;

.field public final doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

.field public final elementTypeType:Lorg/openjdk/tools/javac/code/Type;

.field public final enumFinalFinalize:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

.field public final enumSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

.field public final errModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field public final errSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

.field public final errType:Lorg/openjdk/tools/javac/code/Type;

.field public final errorType:Lorg/openjdk/tools/javac/code/Type;

.field public final exceptionType:Lorg/openjdk/tools/javac/code/Type;

.field public final floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

.field public final functionalInterfaceType:Lorg/openjdk/tools/javac/code/Type;

.field public final illegalArgumentExceptionType:Lorg/openjdk/tools/javac/code/Type;

.field public final inheritedType:Lorg/openjdk/tools/javac/code/Type;

.field private final initialCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

.field public final intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

.field public final interruptedExceptionType:Lorg/openjdk/tools/javac/code/Type;

.field public final iterableType:Lorg/openjdk/tools/javac/code/Type;

.field public final iteratorType:Lorg/openjdk/tools/javac/code/Type;

.field public final java_base:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field public final lambdaMetafactory:Lorg/openjdk/tools/javac/code/Type;

.field public final lengthVar:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

.field public final listType:Lorg/openjdk/tools/javac/code/Type;

.field public final longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

.field private final messages:Lorg/openjdk/tools/javac/util/JavacMessages;

.field public final methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

.field public final methodHandleLookupType:Lorg/openjdk/tools/javac/code/Type;

.field public final methodHandleType:Lorg/openjdk/tools/javac/code/Type;

.field public final methodTypeType:Lorg/openjdk/tools/javac/code/Type;

.field private final moduleCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

.field private final modules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private final names:Lorg/openjdk/tools/javac/util/Names;

.field public final nativeHeaderType:Lorg/openjdk/tools/javac/code/Type;

.field public final noClassDefFoundErrorType:Lorg/openjdk/tools/javac/code/Type;

.field public final noModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field public final noSuchFieldErrorType:Lorg/openjdk/tools/javac/code/Type;

.field public final noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

.field public final objectType:Lorg/openjdk/tools/javac/code/Type;

.field public final objectsType:Lorg/openjdk/tools/javac/code/Type;

.field public final overrideType:Lorg/openjdk/tools/javac/code/Type;

.field private final packages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            ">;>;"
        }
    .end annotation
.end field

.field public final predefClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

.field public final profileType:Lorg/openjdk/tools/javac/code/Type;

.field public final proprietaryType:Lorg/openjdk/tools/javac/code/Type;

.field public final repeatableType:Lorg/openjdk/tools/javac/code/Type;

.field public final retentionType:Lorg/openjdk/tools/javac/code/Type;

.field public final rootPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

.field public final runtimeExceptionType:Lorg/openjdk/tools/javac/code/Type;

.field public final serializableType:Lorg/openjdk/tools/javac/code/Type;

.field public final serializedLambdaType:Lorg/openjdk/tools/javac/code/Type;

.field public final shortType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

.field public final stringBufferType:Lorg/openjdk/tools/javac/code/Type;

.field public final stringBuilderType:Lorg/openjdk/tools/javac/code/Type;

.field public final stringConcatFactory:Lorg/openjdk/tools/javac/code/Type;

.field public final stringType:Lorg/openjdk/tools/javac/code/Type;

.field public final supplierType:Lorg/openjdk/tools/javac/code/Type;

.field public final suppressWarningsType:Lorg/openjdk/tools/javac/code/Type;

.field public final systemType:Lorg/openjdk/tools/javac/code/Type;

.field public final throwableType:Lorg/openjdk/tools/javac/code/Type;

.field public final trustMeType:Lorg/openjdk/tools/javac/code/Type;

.field public final typeOfTag:[Lorg/openjdk/tools/javac/code/Type;

.field public final unknownSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

.field public final unknownType:Lorg/openjdk/tools/javac/code/Type;

.field public final unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field public final varHandleType:Lorg/openjdk/tools/javac/code/Type;

.field public final voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/code/Symtab;->symtabKey:Lorg/openjdk/tools/javac/util/Context$Key;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/code/Symtab;->EMPTY:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BYTE:Lorg/openjdk/tools/javac/code/TypeTag;

    const/4 v1, 0x0

    invoke-direct {v9, v0, v1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v9, v8, Lorg/openjdk/tools/javac/code/Symtab;->byteType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    new-instance v10, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CHAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-direct {v10, v0, v1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v10, v8, Lorg/openjdk/tools/javac/code/Symtab;->charType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    new-instance v11, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->SHORT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-direct {v11, v0, v1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v11, v8, Lorg/openjdk/tools/javac/code/Symtab;->shortType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    new-instance v12, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->INT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-direct {v12, v0, v1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v12, v8, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    new-instance v13, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->LONG:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-direct {v13, v0, v1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v13, v8, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    new-instance v14, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->FLOAT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-direct {v14, v0, v1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v14, v8, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    new-instance v15, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->DOUBLE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-direct {v15, v0, v1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v15, v8, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    new-instance v7, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-direct {v7, v0, v1}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v7, v8, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    new-instance v6, Lorg/openjdk/tools/javac/code/Type$BottomType;

    invoke-direct {v6}, Lorg/openjdk/tools/javac/code/Type$BottomType;-><init>()V

    iput-object v6, v8, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    new-instance v5, Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    invoke-direct {v5}, Lorg/openjdk/tools/javac/code/Type$JCVoidType;-><init>()V

    iput-object v5, v8, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    invoke-static {}, Lorg/openjdk/tools/javac/code/TypeTag;->getTypeTagCount()I

    move-result v0

    new-array v0, v0, [Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->typeOfTag:[Lorg/openjdk/tools/javac/code/Type;

    invoke-static {}, Lorg/openjdk/tools/javac/code/TypeTag;->getTypeTagCount()I

    move-result v0

    new-array v0, v0, [Lorg/openjdk/tools/javac/util/Name;

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->boxedName:[Lorg/openjdk/tools/javac/util/Name;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->classes:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->packages:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->modules:Ljava/util/Map;

    sget-object v0, Lorg/openjdk/tools/javac/code/Symtab;->symtabKey:Lorg/openjdk/tools/javac/util/Context$Key;

    move-object/from16 v3, p1

    invoke-virtual {v3, v0, v8}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v4

    iput-object v4, v8, Lorg/openjdk/tools/javac/code/Symtab;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v2, Lorg/openjdk/tools/javac/code/Type$UnknownType;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/code/Type$UnknownType;-><init>()V

    iput-object v2, v8, Lorg/openjdk/tools/javac/code/Symtab;->unknownType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static/range {p1 .. p1}, Lorg/openjdk/tools/javac/util/JavacMessages;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JavacMessages;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->messages:Lorg/openjdk/tools/javac/util/JavacMessages;

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-object/from16 v16, v2

    iget-object v2, v4, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {v0, v2, v1}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->rootPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    new-instance v2, Lorg/openjdk/tools/javac/code/Symtab$3;

    move-object/from16 v17, v0

    iget-object v0, v4, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {v2, v8, v0, v1}, Lorg/openjdk/tools/javac/code/Symtab$3;-><init>(Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v2, v8, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-direct {v8, v2}, Lorg/openjdk/tools/javac/code/Symtab;->addRootPackageFor(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    iget-object v0, v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->enclosedPackages:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->unnamedPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->enclosedPackages:Lorg/openjdk/tools/javac/util/List;

    new-instance v0, Lorg/openjdk/tools/javac/code/Symtab$4;

    iget-object v1, v4, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    const/4 v2, 0x0

    invoke-direct {v0, v8, v1, v2}, Lorg/openjdk/tools/javac/code/Symtab$4;-><init>(Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->errModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->addRootPackageFor(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    new-instance v1, Lorg/openjdk/tools/javac/code/Symtab$5;

    iget-object v0, v4, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {v1, v8, v0, v2}, Lorg/openjdk/tools/javac/code/Symtab$5;-><init>(Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v1, v8, Lorg/openjdk/tools/javac/code/Symtab;->noModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-direct {v8, v1}, Lorg/openjdk/tools/javac/code/Symtab;->addRootPackageFor(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    new-instance v2, Lorg/openjdk/tools/javac/code/Symtab$6;

    sget-object v18, Lorg/openjdk/tools/javac/code/Kinds$Kind;->NIL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    iget-object v0, v4, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    sget-object v3, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    const-wide/16 v19, 0x0

    move-object/from16 v22, v17

    move-object/from16 v17, v0

    move-object v0, v2

    move-object/from16 v23, v1

    move-object/from16 v1, p0

    move-object/from16 v25, v14

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move-object v14, v2

    move-object/from16 v2, v18

    move-object/from16 v27, v3

    move-object/from16 v26, v13

    move-object v13, v4

    move-wide/from16 v3, v19

    move-object/from16 v28, v5

    move-object/from16 v5, v17

    move-object/from16 v29, v6

    move-object/from16 v6, v27

    move-object/from16 v30, v7

    move-object/from16 v7, v22

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/Symtab$6;-><init>(Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Kinds$Kind;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v14, v8, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, v13, Lorg/openjdk/tools/javac/util/Names;->any:Lorg/openjdk/tools/javac/util/Name;

    const/16 v20, 0x0

    const-wide/32 v17, 0x40000009

    move-object/from16 v16, v0

    move-object/from16 v19, v1

    move-object/from16 v21, v22

    invoke-direct/range {v16 .. v21}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->errSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    new-instance v1, Lorg/openjdk/tools/javac/code/Type$ErrorType;

    move-object/from16 v2, v27

    invoke-direct {v1, v0, v2}, Lorg/openjdk/tools/javac/code/Type$ErrorType;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Type;)V

    iput-object v1, v8, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    new-instance v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    const-string v3, "<any?>"

    invoke-virtual {v13, v3}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v19

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v2, v8, Lorg/openjdk/tools/javac/code/Symtab;->unknownSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    new-instance v3, Lorg/openjdk/tools/javac/code/Scope$ErrorScope;

    invoke-direct {v3, v2}, Lorg/openjdk/tools/javac/code/Scope$ErrorScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iput-object v15, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    const-string v3, "byte"

    const-string v4, "Byte"

    invoke-virtual {v8, v9, v3, v4}, Lorg/openjdk/tools/javac/code/Symtab;->initType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "short"

    const-string v4, "Short"

    invoke-virtual {v8, v11, v3, v4}, Lorg/openjdk/tools/javac/code/Symtab;->initType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "char"

    const-string v4, "Character"

    invoke-virtual {v8, v10, v3, v4}, Lorg/openjdk/tools/javac/code/Symtab;->initType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "int"

    const-string v4, "Integer"

    invoke-virtual {v8, v12, v3, v4}, Lorg/openjdk/tools/javac/code/Symtab;->initType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "long"

    const-string v4, "Long"

    move-object/from16 v5, v26

    invoke-virtual {v8, v5, v3, v4}, Lorg/openjdk/tools/javac/code/Symtab;->initType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "float"

    const-string v4, "Float"

    move-object/from16 v6, v25

    invoke-virtual {v8, v6, v3, v4}, Lorg/openjdk/tools/javac/code/Symtab;->initType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "double"

    const-string v4, "Double"

    move-object/from16 v7, v24

    invoke-virtual {v8, v7, v3, v4}, Lorg/openjdk/tools/javac/code/Symtab;->initType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "boolean"

    const-string v4, "Boolean"

    move-object/from16 v7, v30

    invoke-virtual {v8, v7, v3, v4}, Lorg/openjdk/tools/javac/code/Symtab;->initType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "void"

    const-string v4, "Void"

    move-object/from16 v7, v28

    invoke-virtual {v8, v7, v3, v4}, Lorg/openjdk/tools/javac/code/Symtab;->initType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "<nulltype>"

    move-object/from16 v4, v29

    invoke-virtual {v8, v4, v3}, Lorg/openjdk/tools/javac/code/Symtab;->initType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;)V

    invoke-virtual {v8, v1, v0}, Lorg/openjdk/tools/javac/code/Symtab;->initType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    invoke-virtual {v8, v15, v2}, Lorg/openjdk/tools/javac/code/Symtab;->initType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    new-instance v15, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v13, Lorg/openjdk/tools/javac/util/Names;->Array:Lorg/openjdk/tools/javac/util/Name;

    const-wide/32 v3, 0x40000001

    invoke-direct {v15, v3, v4, v2, v14}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v15, v8, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    new-instance v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-object/from16 v25, v15

    iget-object v15, v13, Lorg/openjdk/tools/javac/util/Names;->Bound:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {v2, v3, v4, v15, v14}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v2, v8, Lorg/openjdk/tools/javac/code/Symtab;->boundClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    new-instance v15, Lorg/openjdk/tools/javac/code/Scope$ErrorScope;

    invoke-direct {v15, v2}, Lorg/openjdk/tools/javac/code/Scope$ErrorScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v15, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    new-instance v15, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v7, v13, Lorg/openjdk/tools/javac/util/Names;->Method:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {v15, v3, v4, v7, v14}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v15, v8, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    new-instance v7, Lorg/openjdk/tools/javac/code/Scope$ErrorScope;

    invoke-direct {v7, v2}, Lorg/openjdk/tools/javac/code/Scope$ErrorScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v7, v15, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    new-instance v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v7, v13, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v14, v22

    invoke-direct {v2, v3, v4, v7, v14}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v2, v8, Lorg/openjdk/tools/javac/code/Symtab;->predefClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-static {v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    iput-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-static/range {p1 .. p1}, Lorg/openjdk/tools/javac/code/ClassFinder;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/ClassFinder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/ClassFinder;->getCompleter()Lorg/openjdk/tools/javac/code/Symbol$Completer;

    move-result-object v2

    iput-object v2, v8, Lorg/openjdk/tools/javac/code/Symtab;->initialCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-static {v14}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v2

    iput-object v2, v14, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v2, v9, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v2, v11, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v2, v10, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v2, v12, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v2, v5, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v2, v6, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object/from16 v2, v24

    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object/from16 v4, v30

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-static/range {p1 .. p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Source;->allowModules()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v13, Lorg/openjdk/tools/javac/util/Names;->java_base:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->java_base:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    sget-object v1, Lorg/openjdk/tools/javac/code/Symbol$Completer;->NULL_COMPLETER:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->visiblePackages:Ljava/util/Map;

    move-object/from16 v0, v23

    goto :goto_0

    :cond_0
    move-object/from16 v0, v23

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->java_base:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    :goto_0
    invoke-static/range {p1 .. p1}, Lorg/openjdk/tools/javac/comp/Modules;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Modules;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/Modules;->getCompleter()Lorg/openjdk/tools/javac/code/Symbol$Completer;

    move-result-object v1

    iput-object v1, v8, Lorg/openjdk/tools/javac/code/Symtab;->moduleCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    const-string v3, "java.lang.Object"

    invoke-direct {v8, v3}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v9

    iput-object v9, v8, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    const-string v3, "java.util.Objects"

    invoke-direct {v8, v3}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iput-object v3, v8, Lorg/openjdk/tools/javac/code/Symtab;->objectsType:Lorg/openjdk/tools/javac/code/Type;

    const-string v3, "java.lang.Class"

    invoke-direct {v8, v3}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iput-object v3, v8, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    const-string v3, "java.lang.String"

    invoke-direct {v8, v3}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iput-object v3, v8, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    const-string v3, "java.lang.StringBuffer"

    invoke-direct {v8, v3}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iput-object v3, v8, Lorg/openjdk/tools/javac/code/Symtab;->stringBufferType:Lorg/openjdk/tools/javac/code/Type;

    const-string v3, "java.lang.StringBuilder"

    invoke-direct {v8, v3}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iput-object v3, v8, Lorg/openjdk/tools/javac/code/Symtab;->stringBuilderType:Lorg/openjdk/tools/javac/code/Type;

    const-string v3, "java.lang.Cloneable"

    invoke-direct {v8, v3}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v10

    iput-object v10, v8, Lorg/openjdk/tools/javac/code/Symtab;->cloneableType:Lorg/openjdk/tools/javac/code/Type;

    const-string v3, "java.lang.Throwable"

    invoke-direct {v8, v3}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iput-object v3, v8, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    const-string v3, "java.io.Serializable"

    invoke-direct {v8, v3}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v11

    iput-object v11, v8, Lorg/openjdk/tools/javac/code/Symtab;->serializableType:Lorg/openjdk/tools/javac/code/Type;

    const-string v3, "java.lang.invoke.SerializedLambda"

    invoke-direct {v8, v3}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iput-object v3, v8, Lorg/openjdk/tools/javac/code/Symtab;->serializedLambdaType:Lorg/openjdk/tools/javac/code/Type;

    const-string v4, "java.lang.invoke.VarHandle"

    invoke-direct {v8, v4}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iput-object v4, v8, Lorg/openjdk/tools/javac/code/Symtab;->varHandleType:Lorg/openjdk/tools/javac/code/Type;

    const-string v4, "java.lang.invoke.MethodHandle"

    invoke-direct {v8, v4}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iput-object v4, v8, Lorg/openjdk/tools/javac/code/Symtab;->methodHandleType:Lorg/openjdk/tools/javac/code/Type;

    const-string v4, "java.lang.invoke.MethodHandles$Lookup"

    invoke-direct {v8, v4}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iput-object v4, v8, Lorg/openjdk/tools/javac/code/Symtab;->methodHandleLookupType:Lorg/openjdk/tools/javac/code/Type;

    const-string v4, "java.lang.invoke.MethodType"

    invoke-direct {v8, v4}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iput-object v4, v8, Lorg/openjdk/tools/javac/code/Symtab;->methodTypeType:Lorg/openjdk/tools/javac/code/Type;

    const-string v4, "java.lang.Error"

    invoke-direct {v8, v4}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iput-object v4, v8, Lorg/openjdk/tools/javac/code/Symtab;->errorType:Lorg/openjdk/tools/javac/code/Type;

    const-string v4, "java.lang.IllegalArgumentException"

    invoke-direct {v8, v4}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iput-object v4, v8, Lorg/openjdk/tools/javac/code/Symtab;->illegalArgumentExceptionType:Lorg/openjdk/tools/javac/code/Type;

    const-string v4, "java.lang.InterruptedException"

    invoke-direct {v8, v4}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iput-object v4, v8, Lorg/openjdk/tools/javac/code/Symtab;->interruptedExceptionType:Lorg/openjdk/tools/javac/code/Type;

    const-string v4, "java.lang.Exception"

    invoke-direct {v8, v4}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iput-object v4, v8, Lorg/openjdk/tools/javac/code/Symtab;->exceptionType:Lorg/openjdk/tools/javac/code/Type;

    const-string v5, "java.lang.RuntimeException"

    invoke-direct {v8, v5}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iput-object v5, v8, Lorg/openjdk/tools/javac/code/Symtab;->runtimeExceptionType:Lorg/openjdk/tools/javac/code/Type;

    const-string v5, "java.lang.ClassNotFoundException"

    invoke-direct {v8, v5}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iput-object v5, v8, Lorg/openjdk/tools/javac/code/Symtab;->classNotFoundExceptionType:Lorg/openjdk/tools/javac/code/Type;

    const-string v5, "java.lang.NoClassDefFoundError"

    invoke-direct {v8, v5}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iput-object v5, v8, Lorg/openjdk/tools/javac/code/Symtab;->noClassDefFoundErrorType:Lorg/openjdk/tools/javac/code/Type;

    const-string v5, "java.lang.NoSuchFieldError"

    invoke-direct {v8, v5}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iput-object v5, v8, Lorg/openjdk/tools/javac/code/Symtab;->noSuchFieldErrorType:Lorg/openjdk/tools/javac/code/Type;

    const-string v5, "java.lang.AssertionError"

    invoke-direct {v8, v5}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iput-object v5, v8, Lorg/openjdk/tools/javac/code/Symtab;->assertionErrorType:Lorg/openjdk/tools/javac/code/Type;

    const-string v5, "java.lang.CloneNotSupportedException"

    invoke-direct {v8, v5}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iput-object v5, v8, Lorg/openjdk/tools/javac/code/Symtab;->cloneNotSupportedExceptionType:Lorg/openjdk/tools/javac/code/Type;

    const-string v5, "java.lang.annotation.Annotation"

    invoke-direct {v8, v5}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iput-object v5, v8, Lorg/openjdk/tools/javac/code/Symtab;->annotationType:Lorg/openjdk/tools/javac/code/Type;

    const-string v5, "java.lang.ClassLoader"

    invoke-direct {v8, v5}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iput-object v5, v8, Lorg/openjdk/tools/javac/code/Symtab;->classLoaderType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v8, Lorg/openjdk/tools/javac/code/Symtab;->java_base:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v7, v13, Lorg/openjdk/tools/javac/util/Names;->java_lang_Enum:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v8, v5, v7}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v5

    iput-object v5, v8, Lorg/openjdk/tools/javac/code/Symtab;->enumSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    new-instance v7, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v14, v13, Lorg/openjdk/tools/javac/util/Names;->finalize:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 p1, v1

    new-instance v1, Lorg/openjdk/tools/javac/code/Type$MethodType;

    move-object/from16 v23, v0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    move-object/from16 v22, v9

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    move-object/from16 v24, v12

    move-object/from16 v12, v28

    invoke-direct {v1, v0, v12, v9, v15}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    const-wide v17, 0x2000000014L

    move-object/from16 v16, v7

    move-object/from16 v19, v14

    move-object/from16 v20, v1

    move-object/from16 v21, v5

    invoke-direct/range {v16 .. v21}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v7, v8, Lorg/openjdk/tools/javac/code/Symtab;->enumFinalFinalize:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-string v0, "java.util.List"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->listType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.util.Collections"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->collectionsType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.lang.Comparable"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->comparableType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.util.Comparator"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->comparatorType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.util.Arrays"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->arraysType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.lang.Iterable"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->iterableType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.util.Iterator"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->iteratorType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.lang.annotation.Target"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->annotationTargetType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.lang.Override"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->overrideType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.lang.annotation.Retention"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->retentionType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.lang.Deprecated"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->deprecatedType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.lang.SuppressWarnings"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->suppressWarningsType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.util.function.Supplier"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->supplierType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.lang.annotation.Inherited"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->inheritedType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.lang.annotation.Repeatable"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->repeatableType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.lang.annotation.Documented"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->documentedType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.lang.annotation.ElementType"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->elementTypeType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.lang.System"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->systemType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "java.lang.AutoCloseable"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->autoCloseableType:Lorg/openjdk/tools/javac/code/Type;

    new-instance v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v5, v13, Lorg/openjdk/tools/javac/util/Names;->close:Lorg/openjdk/tools/javac/util/Name;

    new-instance v7, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-direct {v7, v9, v12, v4, v15}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iget-object v4, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v17, 0x1

    move-object/from16 v16, v1

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v4

    invoke-direct/range {v16 .. v21}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v1, v8, Lorg/openjdk/tools/javac/code/Symtab;->autoCloseableClose:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-string v1, "java.lang.SafeVarargs"

    invoke-direct {v8, v1}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v8, Lorg/openjdk/tools/javac/code/Symtab;->trustMeType:Lorg/openjdk/tools/javac/code/Type;

    const-string v1, "java.lang.annotation.Native"

    invoke-direct {v8, v1}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v8, Lorg/openjdk/tools/javac/code/Symtab;->nativeHeaderType:Lorg/openjdk/tools/javac/code/Type;

    const-string v1, "java.lang.invoke.LambdaMetafactory"

    invoke-direct {v8, v1}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v8, Lorg/openjdk/tools/javac/code/Symtab;->lambdaMetafactory:Lorg/openjdk/tools/javac/code/Type;

    const-string v4, "java.lang.invoke.StringConcatFactory"

    invoke-direct {v8, v4}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iput-object v4, v8, Lorg/openjdk/tools/javac/code/Symtab;->stringConcatFactory:Lorg/openjdk/tools/javac/code/Type;

    const-string v5, "java.lang.FunctionalInterface"

    invoke-direct {v8, v5}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iput-object v5, v8, Lorg/openjdk/tools/javac/code/Symtab;->functionalInterfaceType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->synthesizeEmptyInterfaceIfMissing(Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v8, v10}, Lorg/openjdk/tools/javac/code/Symtab;->synthesizeEmptyInterfaceIfMissing(Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v8, v11}, Lorg/openjdk/tools/javac/code/Symtab;->synthesizeEmptyInterfaceIfMissing(Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v8, v1}, Lorg/openjdk/tools/javac/code/Symtab;->synthesizeEmptyInterfaceIfMissing(Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v8, v3}, Lorg/openjdk/tools/javac/code/Symtab;->synthesizeEmptyInterfaceIfMissing(Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v8, v4}, Lorg/openjdk/tools/javac/code/Symtab;->synthesizeEmptyInterfaceIfMissing(Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v8, v2}, Lorg/openjdk/tools/javac/code/Symtab;->synthesizeBoxTypeIfMissing(Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v8, v6}, Lorg/openjdk/tools/javac/code/Symtab;->synthesizeBoxTypeIfMissing(Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v8, v12}, Lorg/openjdk/tools/javac/code/Symtab;->synthesizeBoxTypeIfMissing(Lorg/openjdk/tools/javac/code/Type;)V

    const-string v0, "sun.Proprietary+Annotation"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterSyntheticAnnotation(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->proprietaryType:Lorg/openjdk/tools/javac/code/Type;

    const-string v0, "jdk.Profile+Annotation"

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterSyntheticAnnotation(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->profileType:Lorg/openjdk/tools/javac/code/Type;

    new-instance v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v5, v13, Lorg/openjdk/tools/javac/util/Names;->value:Lorg/openjdk/tools/javac/util/Name;

    iget-object v7, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v3, 0x401

    move-object v2, v1

    move-object/from16 v6, v24

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object/from16 v0, v25

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$ClassType;

    move-object/from16 v9, v22

    iput-object v9, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v10, v11}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    new-instance v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v3, 0x11

    iget-object v5, v13, Lorg/openjdk/tools/javac/util/Names;->length:Lorg/openjdk/tools/javac/util/Name;

    move-object v2, v1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v1, v8, Lorg/openjdk/tools/javac/code/Symtab;->lengthVar:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    new-instance v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, v13, Lorg/openjdk/tools/javac/util/Names;->clone:Lorg/openjdk/tools/javac/util/Name;

    new-instance v3, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v9, v5, v15}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v0

    invoke-direct/range {v16 .. v21}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v1, v8, Lorg/openjdk/tools/javac/code/Symtab;->arrayCloneMethod:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v0, v8, Lorg/openjdk/tools/javac/code/Symtab;->java_base:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/openjdk/tools/javac/code/C;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/code/C;-><init>(Lorg/openjdk/tools/javac/code/Symbol$Completer;)V

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    :cond_1
    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Symtab;->lambda$lookupPackage$1(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/util/Names;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symtab;->names:Lorg/openjdk/tools/javac/util/Names;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/code/Symtab;)Lorg/openjdk/tools/javac/util/JavacMessages;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symtab;->messages:Lorg/openjdk/tools/javac/util/JavacMessages;

    return-object p0
.end method

.method private addRootPackageFor(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->rootPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/code/Symtab;->doEnterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V

    new-instance v0, Lorg/openjdk/tools/javac/code/Symtab$7;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symtab;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Symtab;->rootPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-direct {v0, p0, v1, v2}, Lorg/openjdk/tools/javac/code/Symtab$7;-><init>(Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    new-instance v1, Lorg/openjdk/tools/javac/code/z;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/code/z;-><init>(Lorg/openjdk/tools/javac/code/Symtab;)V

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->unnamedPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    return-void
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/util/Name;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/code/Symtab;->lambda$doEnterClass$4(Lorg/openjdk/tools/javac/util/Name;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Symtab;->lambda$enterModule$8(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/util/Name;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/code/Symtab;->lambda$doEnterPackage$6(Lorg/openjdk/tools/javac/util/Name;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private doEnterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->classes:Ljava/util/Map;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    new-instance v2, Lorg/openjdk/tools/javac/code/x;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/code/x;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private doEnterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->packages:Ljava/util/Map;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    new-instance v2, Lorg/openjdk/tools/javac/code/u;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/code/u;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->enclosedPackages:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iput-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->enclosedPackages:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/code/Symtab;->lambda$enterPackage$5(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private enterClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->java_base:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symtab;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

.method private enterSyntheticAnnotation(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->java_base:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symtab;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    sget-object v1, Lorg/openjdk/tools/javac/code/Symbol$Completer;->NULL_COMPLETER:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    const-wide/32 v1, 0x40002201

    iput-wide v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iput-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol;->erasure_field:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Type$ClassType;->typarams_field:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Type$ClassType;->allparams_field:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->annotationType:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    return-object p1
.end method

.method public static synthetic f(Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Symtab;->lambda$addRootPackageFor$7(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public static synthetic g(Lorg/openjdk/tools/javac/code/Symtab;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Symtab;->lambda$getAllClasses$3()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/code/Symtab;->lambda$null$2(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/code/Symtab;->lambda$lookupPackage$0(Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Symtab;->symtabKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symtab;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/Symtab;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/Symtab;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$addRootPackageFor$7(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->initialCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/code/Symbol$Completer;->complete(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method private static synthetic lambda$doEnterClass$4(Lorg/openjdk/tools/javac/util/Name;)Ljava/util/Map;
    .locals 0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$doEnterPackage$6(Lorg/openjdk/tools/javac/util/Name;)Ljava/util/Map;
    .locals 0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method private synthetic lambda$enterModule$8(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->moduleCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/code/Symbol$Completer;->complete(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method private static synthetic lambda$enterPackage$5(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rootPackage missing!; currModule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getAllClasses$3()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->classes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/code/y;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/code/y;-><init>()V

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Iterators;->createCompoundIterator(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$lookupPackage$0(Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    return-object p0
.end method

.method private synthetic lambda$lookupPackage$1(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static synthetic lambda$null$2(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public defineClass(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Symtab;->initialCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iput-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    return-object v0
.end method

.method public enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 1

    .line 12
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Convert;->packagePart(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/code/Symtab;->lookupPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/code/Symtab;->getClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17
    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Convert;->shortName(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/code/Symtab;->defineClass(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p2

    .line 18
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Symtab;->doEnterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-object p2

    :cond_0
    return-object v0
.end method

.method public enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 3

    .line 2
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2, p3}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->formFlatName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/code/Symtab;->getClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/code/Symtab;->defineClass(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    .line 6
    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/code/Symtab;->doEnterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-ne p1, p2, :cond_1

    iget-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq p1, p3, :cond_2

    :cond_1
    iget-object p1, p3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v1, :cond_2

    iget-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_2

    .line 8
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->remove(Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 9
    iput-object p2, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    .line 10
    iput-object p3, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    .line 11
    invoke-static {p2, p3}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->formFullName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->modules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->module_info:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->create(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/code/Symtab;->addRootPackageFor(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    new-instance v1, Lorg/openjdk/tools/javac/code/v;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/code/v;-><init>(Lorg/openjdk/tools/javac/code/Symtab;)V

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symtab;->modules:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public enterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;
    .locals 2

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Symtab;->getPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Lorg/openjdk/tools/javac/code/w;

    invoke-direct {v1, p1}, Lorg/openjdk/tools/javac/code/w;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/util/function/Supplier;)V

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Convert;->shortName(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Convert;->packagePart(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Symtab;->enterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Symtab;->initialCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iput-object p2, v0, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iput-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/code/Symtab;->doEnterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V

    :cond_0
    return-object v0
.end method

.method public getAllClasses()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/code/E;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/E;-><init>(Lorg/openjdk/tools/javac/code/Symtab;)V

    return-object v0
.end method

.method public getAllModules()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->modules:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/openjdk/tools/javac/code/D;

    invoke-direct {v0, p2}, Lorg/openjdk/tools/javac/code/D;-><init>(Lorg/openjdk/tools/javac/util/Name;)V

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->classes:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object p1
.end method

.method public getClassesForName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->classes:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->modules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    return-object p1
.end method

.method public getPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->packages:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    return-object p1
.end method

.method public getPackagesForName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->packages:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public inferModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Symtab;->java_base:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->noModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->packages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, v0

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Scope;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v1, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    return-object v1
.end method

.method public initType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;)V
    .locals 7

    .line 3
    new-instance v6, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->names:Lorg/openjdk/tools/javac/util/Names;

    .line 4
    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    iget-object v5, p0, Lorg/openjdk/tools/javac/code/Symtab;->rootPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    const-wide/16 v1, 0x1

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 5
    invoke-virtual {p0, p1, v6}, Lorg/openjdk/tools/javac/code/Symtab;->initType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-void
.end method

.method public initType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Symtab;->initType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Symtab;->boxedName:[Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.lang."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p3

    aput-object p3, p2, p1

    return-void
.end method

.method public initType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 1

    .line 1
    iput-object p2, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Symtab;->typeOfTag:[Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aput-object p1, p2, v0

    return-void
.end method

.method public listPackageModules(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symtab;->packages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Scope;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public lookupPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;
    .locals 2

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->unnamedPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->noModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Symtab;->enterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->visiblePackages:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Symtab;->getPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/code/A;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/code/A;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/code/B;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/code/B;-><init>(Lorg/openjdk/tools/javac/code/Symtab;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/code/Symtab;->getPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->visiblePackages:Ljava/util/Map;

    iget-object p2, v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Symtab;->enterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/code/Symtab;->enterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->visiblePackages:Ljava/util/Map;

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_6
    return-object v0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Symtab;->enterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p1

    return-object p1
.end method

.method public packageExists(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Z
    .locals 0

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Symtab;->lookupPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->exists()Z

    move-result p1

    return p1
.end method

.method public removeClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->classes:Ljava/util/Map;

    sget-object v1, Lorg/openjdk/tools/javac/code/Symtab;->EMPTY:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthesizeBoxTypeIfMissing(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symtab;->java_base:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symtab;->boxedName:[Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    new-instance v2, Lorg/openjdk/tools/javac/code/Symtab$2;

    invoke-direct {v2, p0, v1, p1}, Lorg/openjdk/tools/javac/code/Symtab$2;-><init>(Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Symbol$Completer;Lorg/openjdk/tools/javac/code/Type;)V

    iput-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    return-void
.end method

.method public synthesizeEmptyInterfaceIfMissing(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 2

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    new-instance v1, Lorg/openjdk/tools/javac/code/Symtab$1;

    invoke-direct {v1, p0, v0}, Lorg/openjdk/tools/javac/code/Symtab$1;-><init>(Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Symbol$Completer;)V

    iput-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    return-void
.end method
