.class public Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReasons;
.implements Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final BUILD_FIELDS_AND_METHODS:I = 0x4

.field static final BUILD_TYPE_HIERARCHY:I = 0x1

.field static final CHECK_AND_SET_IMPORTS:I = 0x2

.field static final CONNECT_TYPE_HIERARCHY:I = 0x3

.field static final TheNotFoundModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

.field static final TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

.field static final TheNotFoundType:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;


# instance fields
.field public JavaBaseModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

.field public UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

.field private accessRestrictions:Ljava/util/Map;

.field allNullAnnotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public classFilePool:Lorg/eclipse/jdt/internal/compiler/ClassFilePool;

.field currentInferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

.field defaultImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

.field public defaultPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

.field final deferredEnumMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;",
            ">;"
        }
    .end annotation
.end field

.field public globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

.field public isProcessingAnnotations:Z

.field public knownModules:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;

.field knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

.field private lastCompletedUnitIndex:I

.field private lastUnitIndex:I

.field public mayTolerateMissingType:Z

.field public missingClassFileLocation:Ljava/lang/Object;

.field private missingTypes:Ljava/util/ArrayList;

.field public module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

.field public nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

.field nonNullAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

.field nonnullAnnotationPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

.field nonnullByDefaultAnnotationPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

.field nullableAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

.field nullableAnnotationPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

.field public problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

.field public resolutionListeners:[Lorg/eclipse/jdt/internal/compiler/lookup/IQualifiedTypeResolutionListener;

.field public final root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field private stepCompleted:I

.field public suppressImportErrors:Z

.field public typeRequestor:Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;

.field typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

.field typesBeingConnected:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueGetClassMethodBinding:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field private uniqueParameterizedGenericMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field private uniquePolymorphicMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field public unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

.field private units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

.field useModuleSystem:Z

.field private verifier:Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;-><init>([CILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    invoke-direct {v0, v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundType:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;-><init>([C)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lastCompletedUnitIndex:I

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lastUnitIndex:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 5
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    const/4 v1, 0x4

    .line 6
    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->isProcessingAnnotations:Z

    .line 8
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    .line 9
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->allNullAnnotations:Ljava/util/Map;

    .line 10
    iput-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 11
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding$UnNamedModule;

    invoke-direct {v2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding$UnNamedModule;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 12
    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 13
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeRequestor:Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;

    .line 14
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    .line 15
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 16
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 17
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    .line 18
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    .line 19
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    .line 20
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 p3, 0x3

    invoke-direct {p1, p3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniqueParameterizedGenericMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    .line 21
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {p1, p3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniquePolymorphicMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    .line 22
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingTypes:Ljava/util/ArrayList;

    .line 23
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->accessRestrictions:Ljava/util/Map;

    .line 24
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ClassFilePool;->newInstance()Lorg/eclipse/jdt/internal/compiler/ClassFilePool;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->classFilePool:Lorg/eclipse/jdt/internal/compiler/ClassFilePool;

    .line 25
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typesBeingConnected:Ljava/util/Set;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->deferredEnumMethods:Ljava/util/List;

    .line 27
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v2, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v4, 0x340000

    cmp-long p3, v2, v4

    if-ltz p3, :cond_0

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->storeAnnotations:Z

    if-eqz p1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    .line 28
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownModules:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;

    .line 29
    instance-of p1, p4, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

    if-eqz p1, :cond_1

    iget-wide p1, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 p3, 0x350000

    cmp-long p1, p1, p3

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    .line 30
    new-array p1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/IQualifiedTypeResolutionListener;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->resolutionListeners:[Lorg/eclipse/jdt/internal/compiler/lookup/IQualifiedTypeResolutionListener;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lastCompletedUnitIndex:I

    .line 33
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lastUnitIndex:I

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 35
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    const/4 v1, 0x4

    .line 36
    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->isProcessingAnnotations:Z

    .line 38
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    .line 39
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->allNullAnnotations:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 41
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 42
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 43
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeRequestor:Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeRequestor:Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;

    .line 44
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    .line 45
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 46
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-direct {p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 47
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    .line 48
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    .line 49
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    .line 50
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniqueParameterizedGenericMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    .line 51
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {p2, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniquePolymorphicMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    .line 52
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingTypes:Ljava/util/ArrayList;

    .line 53
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->accessRestrictions:Ljava/util/Map;

    .line 54
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->classFilePool:Lorg/eclipse/jdt/internal/compiler/ClassFilePool;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->classFilePool:Lorg/eclipse/jdt/internal/compiler/ClassFilePool;

    .line 55
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typesBeingConnected:Ljava/util/Set;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typesBeingConnected:Ljava/util/Set;

    .line 56
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->deferredEnumMethods:Ljava/util/List;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->deferredEnumMethods:Ljava/util/List;

    .line 57
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    .line 58
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lambda$1(Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p0

    return-object p0
.end method

.method private annotateType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    if-ne p2, v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->depth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUnresolvedType()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    invoke-virtual {p1, p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->countNonStaticNestingLevels(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    add-int/2addr v0, v1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-lt v4, v0, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :cond_3
    return-object p1

    :cond_4
    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    add-int/lit8 v6, v0, -0x1

    if-ne v4, v6, :cond_5

    move v6, v1

    goto :goto_1

    :cond_5
    move v6, v2

    :goto_1
    invoke-interface {p2, v5, v6}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v5

    invoke-static {v5, p0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v5

    if-eqz v5, :cond_7

    array-length v6, v5

    if-lez v6, :cond_7

    if-nez v3, :cond_6

    new-array v3, v0, [[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    :cond_6
    aput-object v5, v3, v4

    :cond_7
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toNextNestedType()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private askForTypeFromModules(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Ljava/util/function/Function;)[Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;",
            "[",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;",
            "Ljava/util/function/Function<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;",
            "Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;",
            ">;)[",
            "Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->nameForLookup()[C

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModuleFromAnswer(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p2

    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    :cond_0
    filled-new-array {p1}, [Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    array-length v2, p2

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    if-eqz v4, :cond_2

    iput-object p1, v4, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    aput-object v4, v3, v2

    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v0

    goto :goto_1

    :cond_3
    array-length p1, p2

    new-array v3, p1, [Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    goto :goto_0

    :goto_1
    array-length v2, p2

    if-lt v0, v2, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    return-object v3

    :cond_5
    aget-object v2, p2, v0

    invoke-interface {p3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    if-eqz v2, :cond_8

    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-nez p1, :cond_7

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName()[C

    move-result-object p1

    aget-object v4, p2, v0

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    invoke-static {p1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_6

    aget-object p1, p2, v0

    iput-object p1, v2, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    iput-object p1, v2, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    :cond_7
    :goto_3
    aput-object v2, v3, v0

    move p1, v1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;[[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lambda$0(Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;[[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p0

    return-object p0
.end method

.method private combine(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p2

    :cond_2
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result p3

    if-nez p3, :cond_3

    return-object p1

    :cond_3
    if-ne p1, p2, :cond_4

    return-object p1

    :cond_4
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    const/4 v0, 0x3

    invoke-direct {p2, p3, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2
.end method

.method private computePackageFrom([[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    return-object v1

    :cond_0
    const/4 v2, 0x0

    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v4

    const-wide/16 v5, 0x80

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne v4, v8, :cond_9

    :cond_1
    iget-boolean v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    if-eqz v8, :cond_5

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isUnnamed()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

    aget-object v9, v1, v2

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->ANY:[C

    invoke-interface {v8, v7, v9, v10}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->getUniqueModulesDeclaringPackage([[C[C[C)[[C

    move-result-object v8

    if-eqz v8, :cond_5

    array-length v9, v8

    move v10, v2

    :goto_0
    if-lt v10, v9, :cond_2

    goto :goto_1

    :cond_2
    aget-object v11, v8, v10

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v12, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v11

    if-eqz v11, :cond_3

    aget-object v12, v1, v2

    invoke-virtual {v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getTopLevelPackage([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v11

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-static {v11, v4, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->combine(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    aget-object v8, v1, v2

    invoke-virtual {v4, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getTopLevelPackage([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v4

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne v4, v8, :cond_7

    :cond_6
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    aget-object v8, v1, v2

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-direct {v4, v8, v0, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    :cond_7
    if-eqz p2, :cond_8

    iget-wide v8, v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    or-long/2addr v8, v5

    iput-wide v8, v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    :cond_8
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    aget-object v9, v1, v2

    invoke-virtual {v8, v9, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :cond_9
    array-length v8, v1

    sub-int/2addr v8, v3

    move v9, v3

    :goto_2
    if-lt v9, v8, :cond_e

    instance-of v1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v1, :cond_d

    move-object v1, v4

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->incarnations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v7

    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_b

    move-object v7, v3

    goto :goto_4

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v5, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->hasCompilationUnit(Z)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v3, :cond_c

    :goto_4
    if-eqz v7, :cond_d

    return-object v7

    :cond_c
    move-object v3, v5

    goto :goto_3

    :cond_d
    return-object v4

    :cond_e
    aget-object v10, v1, v9

    invoke-virtual {v4, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v10

    if-eqz v10, :cond_10

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne v10, v11, :cond_f

    goto :goto_5

    :cond_f
    move-object v4, v10

    goto :goto_8

    :cond_10
    :goto_5
    iget-boolean v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    if-eqz v11, :cond_14

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isUnnamed()Z

    move-result v11

    if-eqz v11, :cond_13

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

    iget-object v12, v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    aget-object v13, v1, v9

    sget-object v14, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->ANY:[C

    invoke-interface {v11, v12, v13, v14}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->getModulesDeclaringPackage([[C[C[C)[[C

    move-result-object v11

    if-eqz v11, :cond_14

    array-length v12, v11

    move v13, v2

    :goto_6
    if-lt v13, v12, :cond_11

    goto :goto_7

    :cond_11
    aget-object v14, v11, v13

    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v15, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v14

    if-eqz v14, :cond_12

    iget-object v15, v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    aget-object v7, v1, v9

    invoke-virtual {v14, v15, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getPackage([[C[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v7

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-static {v7, v10, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->combine(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v7

    move-object v10, v7

    :cond_12
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    goto :goto_6

    :cond_13
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    aget-object v10, v1, v9

    invoke-virtual {v7, v4, v10, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getVisiblePackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v10

    :cond_14
    :goto_7
    if-eqz v10, :cond_15

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne v10, v7, :cond_16

    :cond_15
    new-instance v10, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    add-int/lit8 v7, v9, 0x1

    invoke-static {v1, v2, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v7

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-direct {v10, v7, v4, v0, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    :cond_16
    if-eqz p2, :cond_17

    iget-wide v11, v10, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    or-long/2addr v11, v5

    iput-wide v11, v10, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    :cond_17
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v4, v10, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v4

    :goto_8
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x0

    goto/16 :goto_2
.end method

.method private countNonStaticNestingLevels(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUnresolvedType()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private static fromSplitPackageOrOracle(Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 3

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    invoke-virtual {v0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->getType0ForModule(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    return-object p0

    :cond_1
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->nameForLookup()[C

    move-result-object p1

    invoke-interface {p0, p3, p2, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->findType([C[[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p0

    return-object p0
.end method

.method private getModuleFromAnswer(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName()[C

    move-result-object p1

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    if-eqz v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->UNNAMED:[C

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownModules:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->get([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

    invoke-interface {v1, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeRequestor:Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;

    invoke-interface {v1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;->accept(Lorg/eclipse/jdt/internal/compiler/env/IModule;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownModules:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->get([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bug 529367: moduleName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "iModule null"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTypeArgumentsFromSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 12

    move-object v8, p1

    new-instance v9, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    add-int/lit8 v10, v5, 0x1

    move-object/from16 v11, p6

    invoke-interface {v11, v5}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toTypeArgument(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromVariantTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v0, v0, v1

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :cond_0
    move v5, v10

    goto :goto_0
.end method

.method private getTypeFromCompoundName([[CZZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 6

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getCachedType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computePackageFrom([[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    if-eqz v2, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V

    if-eqz p3, :cond_1

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    iput-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_1
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundType:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-ne v0, v1, :cond_4

    if-nez p3, :cond_3

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->isClassPathCorrect([[CLorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Ljava/lang/Object;)V

    :cond_3
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createMissingType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertUnresolvedBinaryToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_5
    :goto_0
    return-object v0
.end method

.method private getTypeFromTypeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;I[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p4, v0, v1}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p4

    invoke-static {p4, p0, p5}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p4

    if-eqz p4, :cond_0

    sget-object p5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eq p4, p5, :cond_0

    filled-new-array {p4}, [[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->flattenedAnnotations([[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p3

    invoke-virtual {p4, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1
.end method

.method private initializeUsesNullTypeAnnotation()V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->useNullTypeAnnotations:Ljava/lang/Boolean;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v1, :cond_8

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->originalSourceLevel:J

    const-wide/32 v2, 0x340000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_4

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nullableAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullableAnnotationName()[[C

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nonNullAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotationName()[[C

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    return-void

    :cond_3
    if-eqz v1, :cond_7

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAnnotationTagBits()J

    move-result-wide v0

    const-wide/high16 v3, 0x20000000000000L

    and-long/2addr v0, v3

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAnnotationTagBits()J

    move-result-wide v5

    and-long v2, v5, v3

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->useNullTypeAnnotations:Ljava/lang/Boolean;

    :cond_7
    :goto_2
    return-void

    :goto_3
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    throw v1

    :cond_8
    :goto_4
    return-void
.end method

.method private static synthetic lambda$0(Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;[[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->nameForLookup()[C

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->findType([[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$1(Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 0

    invoke-static {p0, p3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->fromSplitPackageOrOracle(Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addResolutionListener(Lorg/eclipse/jdt/internal/compiler/lookup/IQualifiedTypeResolutionListener;)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->resolutionListeners:[Lorg/eclipse/jdt/internal/compiler/lookup/IQualifiedTypeResolutionListener;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->resolutionListeners:[Lorg/eclipse/jdt/internal/compiler/lookup/IQualifiedTypeResolutionListener;

    add-int/lit8 v5, v1, 0x1

    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/IQualifiedTypeResolutionListener;

    iput-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->resolutionListeners:[Lorg/eclipse/jdt/internal/compiler/lookup/IQualifiedTypeResolutionListener;

    invoke-static {v4, v2, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->resolutionListeners:[Lorg/eclipse/jdt/internal/compiler/lookup/IQualifiedTypeResolutionListener;

    aput-object p1, v2, v1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->resolutionListeners:[Lorg/eclipse/jdt/internal/compiler/lookup/IQualifiedTypeResolutionListener;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public askForType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 11

    if-nez p1, :cond_0

    .line 30
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 31
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

    .line 33
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getDeclaringModules()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v3

    .line 34
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/k;

    invoke-direct {v4, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/k;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[C)V

    .line 35
    invoke-direct {p0, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->askForTypeFromModules(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Ljava/util/function/Function;)[Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-interface {v0, p2, v3}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->findType([C[[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 37
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    const/4 v3, 0x1

    .line 38
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    aput-object v0, v3, v1

    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    return-object v2

    .line 39
    :cond_3
    array-length v3, v0

    move-object v4, v2

    :goto_1
    if-lt v1, v3, :cond_4

    return-object v4

    :cond_4
    aget-object v5, v0, v1

    if-nez v5, :cond_5

    goto/16 :goto_5

    :cond_5
    if-eqz v4, :cond_6

    .line 40
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    return-object v4

    .line 41
    :cond_6
    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    :goto_2
    if-eqz v6, :cond_9

    .line 42
    invoke-virtual {p1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isDeclaredIn(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_5

    .line 43
    :cond_8
    instance-of v7, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v7, :cond_9

    .line 44
    move-object v7, p1

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->getIncarnation(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v7

    goto :goto_3

    :cond_9
    move-object v7, p1

    .line 45
    :goto_3
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isResolvedBinding()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 46
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getResolvedBinding()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->combine(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    goto/16 :goto_5

    .line 47
    :cond_a
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBinaryType()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 48
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeRequestor:Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getBinaryType()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v9

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getAccessRestriction()Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object v5

    invoke-interface {v8, v9, v7, v5}, Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;->accept(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 49
    invoke-virtual {v7, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    .line 50
    instance-of v8, v5, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    if-eqz v8, :cond_10

    .line 51
    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    iput-object v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    goto :goto_4

    .line 52
    :cond_b
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isCompilationUnit()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 53
    :try_start_0
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeRequestor:Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getCompilationUnit()Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    move-result-object v8

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getAccessRestriction()Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object v5

    invoke-interface {v6, v8, v5}, Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;->accept(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 54
    sget-object p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {p2, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p2

    if-eqz p2, :cond_c

    return-object v2

    .line 55
    :cond_c
    throw p1

    .line 56
    :cond_d
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isSourceType()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 57
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeRequestor:Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getSourceTypes()[Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    move-result-object v9

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getAccessRestriction()Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object v10

    invoke-interface {v8, v9, v7, v10}, Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;->accept([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 58
    invoke-virtual {v7, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    .line 59
    instance-of v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v8, :cond_e

    .line 60
    move-object v9, v7

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object v6, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 61
    :cond_e
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getExternalAnnotationPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 62
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v6, v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v6, :cond_f

    if-eqz v8, :cond_f

    .line 63
    move-object v6, v7

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-static {v6, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->apply(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Ljava/lang/String;)V

    .line 64
    :cond_f
    invoke-direct {p0, v4, v7, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->combine(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    goto :goto_5

    .line 65
    :cond_10
    :goto_4
    invoke-virtual {v7, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->combine(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public askForType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 11

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

    .line 3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getAllRequiredModules()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v4

    .line 4
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/j;

    invoke-direct {v5, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/j;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;[[C)V

    .line 5
    invoke-direct {p0, p2, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->askForTypeFromModules(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Ljava/util/function/Function;)[Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->findType([[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 8
    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    aput-object v0, v4, v2

    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    .line 9
    :cond_2
    array-length v4, v0

    move v5, v2

    :goto_1
    if-lt v5, v4, :cond_3

    return-object v1

    :cond_3
    aget-object v6, v0, v5

    if-nez v6, :cond_4

    goto/16 :goto_4

    .line 10
    :cond_4
    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 11
    :goto_2
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBinaryType()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 12
    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v8, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computePackageFrom([[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v8

    .line 13
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeRequestor:Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getBinaryType()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v10

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getAccessRestriction()Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object v6

    invoke-interface {v9, v10, v8, v6}, Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;->accept(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 14
    array-length v6, p1

    sub-int/2addr v6, v3

    aget-object v6, p1, v6

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    .line 15
    instance-of v9, v6, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    if-eqz v9, :cond_8

    .line 16
    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    iput-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 17
    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-nez v6, :cond_8

    .line 18
    iput-object v7, v8, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    goto :goto_3

    .line 19
    :cond_6
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isCompilationUnit()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 20
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeRequestor:Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getCompilationUnit()Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    move-result-object v9

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getAccessRestriction()Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;->accept(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    goto :goto_3

    .line 21
    :cond_7
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isSourceType()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 22
    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v8, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computePackageFrom([[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v8

    .line 23
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeRequestor:Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getSourceTypes()[Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    move-result-object v10

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->getAccessRestriction()Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object v6

    invoke-interface {v9, v10, v8, v6}, Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;->accept([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 24
    array-length v6, p1

    sub-int/2addr v6, v3

    aget-object v6, p1, v6

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    .line 25
    instance-of v9, v6, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v9, :cond_8

    .line 26
    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 27
    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-nez v6, :cond_8

    .line 28
    iput-object v7, v8, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 29
    :cond_8
    :goto_3
    iget-object v6, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getCachedType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    invoke-direct {p0, v1, v6, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->combine(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method public buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->moduleName:[C

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v3, v0, v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->setBinding(Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->module(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    invoke-direct {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :goto_1
    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    array-length v1, v0

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lastUnitIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lastUnitIndex:I

    if-lt v2, v1, :cond_2

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lastUnitIndex:I

    aput-object p1, v0, p2

    return-void
.end method

.method public cacheBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->cacheBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;ZLorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public cacheBinaryType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;ZLorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;
    .locals 2

    .line 2
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getName()[C

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getCachedType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computePackageFrom([[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createBinaryTypeFrom(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;ZLorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public canTypeBeAccessed(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p2

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result p1

    return p1
.end method

.method public completeTypeBindings()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-eq p0, v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->stepCompleted:I

    .line 4
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lastCompletedUnitIndex:I

    add-int/2addr v1, v0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lastUnitIndex:I

    if-le v1, v2, :cond_3

    const/4 v1, 0x2

    .line 5
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->stepCompleted:I

    .line 6
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lastCompletedUnitIndex:I

    add-int/2addr v1, v0

    :goto_1
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lastUnitIndex:I

    if-le v1, v2, :cond_2

    const/4 v1, 0x3

    .line 7
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->stepCompleted:I

    .line 8
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lastCompletedUnitIndex:I

    add-int/2addr v1, v0

    :goto_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lastUnitIndex:I

    const/4 v2, 0x0

    if-le v1, v0, :cond_1

    const/4 v1, 0x4

    .line 9
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->stepCompleted:I

    .line 10
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lastCompletedUnitIndex:I

    .line 11
    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    .line 13
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->checkParameterizedTypes()V

    .line 14
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->buildFieldsAndMethods()V

    .line 15
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object v2, v2, v1

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectTypeHierarchy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 17
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object v2, v2, v1

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->checkAndSetImports()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-eq p0, v0, :cond_0

    .line 19
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    return-void

    .line 20
    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->stepCompleted:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 21
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings()V

    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    .line 23
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->checkAndSetImports()V

    .line 24
    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->stepCompleted:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_4

    .line 25
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectTypeHierarchy()V

    :cond_4
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    :goto_0
    return-void
.end method

.method public completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V
    .locals 3

    .line 27
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 29
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 30
    iput-object p1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->checkAndSetImports()V

    .line 31
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectTypeHierarchy()V

    .line 32
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->checkParameterizedTypes()V

    if-eqz p2, :cond_1

    .line 33
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->buildFieldsAndMethods()V

    .line 34
    :cond_1
    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-void
.end method

.method public completeTypeBindings([Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[ZI)V
    .locals 5

    .line 35
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, p3, :cond_4

    move v2, v1

    :goto_1
    if-lt v2, p3, :cond_2

    :goto_2
    if-lt v1, p3, :cond_0

    const/4 p1, 0x0

    .line 36
    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-void

    .line 37
    :cond_0
    aget-object v2, p1, v1

    .line 38
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz v3, :cond_1

    .line 39
    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->checkParameterizedTypes()V

    .line 40
    aget-boolean v3, p2, v1

    if-eqz v3, :cond_1

    .line 41
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->buildFieldsAndMethods()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 42
    :cond_2
    aget-object v3, p1, v2

    .line 43
    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz v4, :cond_3

    .line 44
    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectTypeHierarchy()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 45
    :cond_4
    aget-object v3, p1, v2

    .line 46
    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz v4, :cond_5

    .line 47
    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->checkAndSetImports()V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x204

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1004

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2004

    if-eq v0, v1, :cond_1

    const v1, 0x8004

    if-eq v0, v1, :cond_1

    const v1, 0x10004

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->computeBoxingType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    packed-switch v0, :pswitch_data_2

    :goto_0
    return-object p1

    :pswitch_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_4
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_5
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_6
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_7
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_8
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_9
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_a
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_b
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_c
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_d
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_e
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_f
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object p1

    :pswitch_10
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_INTEGER:[[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {v0, p1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    :pswitch_11
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_FLOAT:[[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {v0, p1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    :pswitch_12
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_DOUBLE:[[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {v0, p1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    :pswitch_13
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_LONG:[[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {v0, p1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    :cond_6
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_BOOLEAN:[[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {v0, p1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    :cond_8
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_SHORT:[[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {v0, p1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    :cond_a
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_BYTE:[[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {v0, p1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    :cond_c
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_CHARACTER:[[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {v0, p1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public containsNullTypeAnnotation([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Z
    .locals 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    aget-object v2, p1, v0

    .line 4
    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    aget-char v3, v2, v1

    const/16 v4, 0x4c

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/16 v5, 0x2f

    invoke-static {v5, v2, v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object v2

    .line 7
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullAnnotationBit([[C)I

    move-result v2

    if-eqz v2, :cond_3

    return v4

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public containsNullTypeAnnotation([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Z
    .locals 4

    .line 8
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 9
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    return v1

    .line 10
    :cond_1
    aget-object v2, p1, v0

    .line 11
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v3, 0x60

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public convertToParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isGenericType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasEnclosingInstanceContext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasEnclosingInstanceContext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    or-int/2addr v1, v0

    goto :goto_0

    :cond_1
    move-object v2, v1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x44

    const/16 v2, 0x404

    const/16 v3, 0x84

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    const/16 v1, 0x204

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x1004

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2004

    if-eq v0, v1, :cond_1

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v0, v5, :cond_0

    return-object p1

    :cond_0
    move-object v1, p1

    move v0, v4

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v6

    if-eq v6, v3, :cond_d

    const/16 v3, 0x104

    if-eq v6, v3, :cond_4

    const/16 v3, 0x804

    if-eq v6, v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isGenericType()Z

    move-result v3

    :goto_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isStatic()Z

    move-result v6

    xor-int/2addr v6, v5

    and-int/2addr p2, v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_5

    if-eqz v3, :cond_b

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, p2, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object p2

    goto :goto_4

    :cond_5
    move-object v8, v1

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasEnclosingInstanceContext()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_2
    move v5, v3

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v8

    if-ne v8, v2, :cond_7

    move-object p2, v6

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_8

    if-nez v3, :cond_8

    invoke-virtual {p0, v6, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v6, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {p0, v6, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    goto :goto_2

    :goto_3
    if-eqz v5, :cond_a

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object p2

    goto :goto_4

    :cond_a
    invoke-static {v6, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v2, v7, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p2

    goto :goto_4

    :cond_b
    move-object p2, v1

    :goto_4
    invoke-static {v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-lez v0, :cond_c

    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p2

    :cond_c
    return-object p2

    :cond_d
    return-object p1
.end method

.method public convertToRawTypes([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move-object v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v3

    :cond_1
    aget-object v4, p1, v2

    if-eqz p2, :cond_2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v4

    :goto_1
    invoke-virtual {p0, v5, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v5, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-ne v3, p1, :cond_3

    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p1, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    aput-object v5, v3, v2

    goto :goto_2

    :cond_4
    if-eq v3, p1, :cond_5

    aput-object v4, v3, v2

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public convertUnresolvedBinaryToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x44

    const/4 v2, 0x0

    const/16 v3, 0x84

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    const/16 v1, 0x204

    if-eq v0, v1, :cond_1

    const/16 v1, 0x404

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1004

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2004

    if-eq v0, v1, :cond_1

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v0, v4, :cond_0

    return-object p1

    :cond_0
    move-object v1, p1

    move v0, v2

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v5

    if-eq v5, v3, :cond_a

    const/16 v3, 0x104

    if-eq v5, v3, :cond_4

    const/16 v3, 0x804

    if-eq v5, v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isGenericType()Z

    move-result v2

    :goto_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object v2

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertUnresolvedBinaryToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    move v4, v2

    :goto_2
    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v2, v1

    :goto_3
    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-lez v0, :cond_9

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v2

    :cond_9
    return-object v2

    :cond_a
    return-object p1
.end method

.method public createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 12

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    .line 2
    :cond_0
    array-length v1, p2

    :goto_0
    if-eqz p1, :cond_a

    if-nez v1, :cond_1

    goto/16 :goto_6

    .line 3
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    if-nez v2, :cond_2

    move v3, v0

    goto :goto_1

    .line 4
    :cond_2
    array-length v3, v2

    :goto_1
    if-lez v3, :cond_3

    add-int v4, v1, v3

    .line 5
    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-static {p2, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    invoke-static {v2, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v4

    .line 7
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v1, :cond_9

    .line 8
    array-length v1, p2

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    const-wide/16 v2, 0x0

    move v4, v0

    move v5, v4

    move-wide v6, v2

    .line 9
    :goto_2
    array-length v8, p2

    if-lt v4, v8, :cond_4

    .line 10
    array-length v2, p2

    if-ge v5, v2, :cond_9

    .line 11
    new-array p2, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-static {v1, v0, p2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 12
    :cond_4
    aget-object v8, p2, v4

    if-nez v8, :cond_5

    add-int/lit8 v6, v5, 0x1

    const/4 v7, 0x0

    .line 13
    aput-object v7, v1, v5

    move v5, v6

    move-wide v6, v2

    goto :goto_4

    .line 14
    :cond_5
    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v8

    if-eqz v8, :cond_6

    const-wide/high16 v8, 0x100000000000000L

    goto :goto_3

    .line 15
    :cond_6
    aget-object v8, p2, v4

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v8

    if-eqz v8, :cond_7

    const-wide/high16 v8, 0x80000000000000L

    goto :goto_3

    :cond_7
    move-wide v8, v2

    :goto_3
    and-long v10, v6, v8

    cmp-long v10, v10, v2

    if-nez v10, :cond_8

    or-long/2addr v6, v8

    add-int/lit8 v8, v5, 0x1

    .line 16
    aget-object v9, p2, v4

    aput-object v9, v1, v5

    move v5, v8

    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 17
    :cond_9
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    filled-new-array {p2}, [[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :cond_a
    :goto_6
    return-object p1
.end method

.method public createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public createAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    array-length v0, p2

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->setMethodBindings(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)V

    return-object v0

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getAnnotationType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    return-object p1
.end method

.method public createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1
.end method

.method public createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1
.end method

.method public createBinaryTypeFrom(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createBinaryTypeFrom(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;ZLorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public createBinaryTypeFrom(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;ZLorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;
    .locals 3

    .line 2
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-eq p0, v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createBinaryTypeFrom(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;ZLorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-direct {v0, p2, p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    .line 5
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUnresolvedType()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isBinaryBinding()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    .line 10
    invoke-virtual {p0, v0, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->setAccessRestriction(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 11
    invoke-virtual {v0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->cachePartsFrom(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Z)V

    return-object v0
.end method

.method public createCapturedWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;IILorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getCapturedWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;IILorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    move-result-object p1

    return-object p1
.end method

.method public createGetClassMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniqueGetClassMethodBinding:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniqueGetClassMethodBinding:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->instantiateGetClass(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    move-result-object v0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniqueGetClassMethodBinding:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public createIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment$1;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public createMemberType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getMemberType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method

.method public createMissingType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computePackageFrom([[CZ)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    invoke-direct {v1, p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iget p2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq p2, v0, :cond_2

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createMissingType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;->setMissingSuperclass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_2
    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingTypes:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingTypes:Ljava/util/ArrayList;

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public createPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 10

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne v1, v3, :cond_1

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    aget-object v3, p1, v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-direct {v1, v3, p0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :cond_1
    array-length v3, p1

    :goto_0
    if-lt v2, v3, :cond_3

    instance-of p1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz p1, :cond_2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->getIncarnation(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    aget-object v4, p1, v2

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundType:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eq v4, v6, :cond_4

    instance-of v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-nez v4, :cond_4

    return-object v5

    :cond_4
    aget-object v4, p1, v2

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v4

    if-eqz v4, :cond_6

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne v4, v6, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, v4

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironmentExtension;

    if-eqz v7, :cond_7

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironmentExtension;

    aget-object v7, p1, v2

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->nameForLookup()[C

    move-result-object v9

    invoke-interface {v6, v7, v8, v0, v9}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironmentExtension;->findType([C[[CZ[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v6

    if-eqz v6, :cond_8

    return-object v5

    :cond_7
    aget-object v7, p1, v2

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->findType([C[[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v6

    if-eqz v6, :cond_8

    return-object v5

    :cond_8
    instance-of v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v5, :cond_9

    move-object v5, v1

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->getIncarnation(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v5

    if-eqz v5, :cond_9

    aget-object v4, p1, v2

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v4

    :cond_9
    if-nez v4, :cond_5

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    add-int/lit8 v5, v2, 0x1

    invoke-static {p1, v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-direct {v4, v5, v1, p0, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v1, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniqueParameterizedGenericMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    array-length v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    aget-object v4, v0, v3

    if-nez v4, :cond_1

    :goto_1
    const/4 v2, 0x1

    goto :goto_4

    .line 4
    :cond_1
    iget-boolean v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->isRaw:Z

    if-nez v5, :cond_2

    goto :goto_3

    .line 5
    :cond_2
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez p2, :cond_3

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_2

    :cond_3
    move-object v6, p2

    :goto_2
    if-eq v5, v6, :cond_4

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v4

    :cond_5
    const/4 v0, 0x5

    .line 6
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    .line 7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniqueParameterizedGenericMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    move v3, v2

    .line 8
    :goto_4
    array-length v4, v0

    if-eqz v2, :cond_6

    if-ne v3, v4, :cond_6

    mul-int/lit8 v2, v4, 0x2

    .line 9
    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniqueParameterizedGenericMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 11
    :cond_6
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    invoke-direct {v1, p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    .line 12
    aput-object v1, v0, v3

    return-object v1
.end method

.method public createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object p1

    return-object p1
.end method

.method public createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 14
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object p1

    return-object p1
.end method

.method public createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    .line 15
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniqueParameterizedGenericMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v5, v3

    goto :goto_0

    .line 16
    :cond_0
    array-length v5, v2

    :goto_0
    if-eqz v0, :cond_f

    .line 17
    array-length v6, v0

    move v8, v3

    :goto_1
    if-lt v8, v6, :cond_1

    goto :goto_2

    .line 18
    :cond_1
    aget-object v9, v0, v8

    if-nez v9, :cond_2

    :goto_2
    const/4 v5, 0x1

    move-object/from16 v11, p5

    goto/16 :goto_8

    .line 19
    :cond_2
    iget-boolean v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->isRaw:Z

    if-eqz v10, :cond_3

    move-object/from16 v11, p5

    goto :goto_7

    .line 20
    :cond_3
    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->targetType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object/from16 v11, p5

    if-eq v10, v11, :cond_4

    goto :goto_7

    .line 21
    :cond_4
    iget-boolean v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->inferredWithUncheckedConversion:Z

    if-eq v10, v4, :cond_5

    goto :goto_7

    .line 22
    :cond_5
    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v10, :cond_6

    move v12, v3

    goto :goto_3

    .line 23
    :cond_6
    array-length v12, v10

    :goto_3
    if-eq v5, v12, :cond_7

    goto :goto_7

    :cond_7
    move v13, v3

    :goto_4
    if-lt v13, v12, :cond_c

    if-eqz v4, :cond_b

    .line 24
    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_7

    .line 25
    :cond_8
    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v12, v10

    move v13, v3

    :goto_5
    if-lt v13, v12, :cond_9

    goto :goto_6

    :cond_9
    aget-object v14, v10, v13

    .line 26
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v15

    if-nez v15, :cond_d

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    return-object v9

    .line 27
    :cond_c
    aget-object v14, v2, v13

    aget-object v15, v10, v13

    if-eq v14, v15, :cond_e

    :cond_d
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_f
    move-object/from16 v11, p5

    const/4 v0, 0x5

    .line 28
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    .line 29
    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniqueParameterizedGenericMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v5, v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v3

    move v8, v5

    .line 30
    :goto_8
    array-length v6, v0

    if-eqz v5, :cond_10

    if-ne v8, v6, :cond_10

    mul-int/lit8 v5, v6, 0x2

    .line 31
    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    invoke-static {v0, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniqueParameterizedGenericMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, v1, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v5

    goto :goto_9

    :cond_10
    move-object v9, v0

    .line 33
    :goto_9
    new-instance v10, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;ZZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 34
    aput-object v10, v9, v8

    return-object v10
.end method

.method public createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    .line 2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public createPolymorphicMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;
    .locals 9

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniquePolymorphicMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;

    const/4 v2, 0x0

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, p2

    :goto_0
    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v5, v2

    :goto_1
    if-lt v5, v3, :cond_6

    if-eqz v1, :cond_4

    array-length p2, v1

    move p3, v2

    :goto_2
    if-lt p3, p2, :cond_1

    goto :goto_3

    :cond_1
    aget-object v3, v1, p3

    if-nez v3, :cond_2

    :goto_3
    const/4 p2, 0x1

    goto :goto_4

    :cond_2
    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;->matches([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x5

    new-array v1, p2, [Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniquePolymorphicMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v2

    move p3, p2

    :goto_4
    array-length v3, v1

    if-eqz p2, :cond_5

    if-ne p3, v3, :cond_5

    mul-int/lit8 p2, v3, 0x2

    new-array p2, p2, [Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;

    invoke-static {v1, v2, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniquePolymorphicMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p2

    :cond_5
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;

    invoke-direct {p2, p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object p2, v1, p3

    return-object p2

    :cond_6
    aget-object v6, p2, v5

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v8, 0xc

    if-ne v7, v8, :cond_7

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_VOID:[[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_5

    :cond_7
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPolyType()Z

    move-result v7

    if-eqz v7, :cond_9

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;

    instance-of v7, p3, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v7, :cond_8

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v8, :cond_8

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v7, p3

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_5

    :cond_8
    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v6, v4, v5

    goto :goto_5

    :cond_9
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    aput-object v6, v4, v5

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method public createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    .line 2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public createUnresolvedAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    array-length v0, p2

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;

    invoke-direct {v0, p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedAnnotationBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object v0

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getAnnotationType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    return-object p1
.end method

.method public createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    .line 2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eq v6, v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p1

    return-object p1
.end method

.method public createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;
    .locals 7

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p1

    return-object p1
.end method

.method public filterNullTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 7

    array-length v0, p1

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p1

    if-lt v2, v4, :cond_3

    if-nez v3, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object p1

    :cond_1
    array-length v2, p1

    if-ne v3, v2, :cond_2

    return-object p1

    :cond_2
    new-array p1, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-static {v0, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_3
    aget-object v4, p1, v2

    if-nez v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v6, 0x60

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v5

    if-nez v5, :cond_5

    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    move v3, v5

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getAccessRestriction(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->accessRestrictions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    return-object p1
.end method

.method public getAnnotatedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getAnnotatedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public getCachedType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getCachedType0([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_5

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isUnnamed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isAuto:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getAllRequiredModules()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownModules:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->valueTable:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    :goto_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-lt v3, v2, :cond_2

    goto :goto_4

    :cond_2
    aget-object v4, v1, v3

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getCachedType0([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    return-object v0
.end method

.method public getCachedType0([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1

    :cond_0
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    array-length v3, p1

    sub-int/2addr v3, v2

    move v4, v2

    :goto_0
    if-lt v4, v3, :cond_2

    array-length v1, p1

    sub-int/2addr v1, v2

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1

    :cond_2
    aget-object v5, p1, v4

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getPackage0Any([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne v0, v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-eq v0, p0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->UNNAMED:[C

    if-eq p1, v0, :cond_4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->ALL_UNNAMED:[C

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownModules:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->get([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    if-nez v0, :cond_3

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

    invoke-interface {v1, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeRequestor:Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;

    invoke-interface {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;->accept(Lorg/eclipse/jdt/internal/compiler/env/IModule;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownModules:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;->get([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object p1

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object p1
.end method

.method public getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nonNullAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nonNullAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->nonNullAnnotationName:[[C

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getAnnotationType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nonNullAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object v0
.end method

.method public getNonNullAnnotationName()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->nonNullAnnotationName:[[C

    return-object v0
.end method

.method public getNonNullByDefaultAnnotationName()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->nonNullByDefaultAnnotationName:[[C

    return-object v0
.end method

.method public getNullAnnotationBit([[C)I
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->allNullAnnotations:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->allNullAnnotations:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->nonNullAnnotationName:[[C

    invoke-static {v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->allNullAnnotations:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->nullableAnnotationName:[[C

    invoke-static {v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->allNullAnnotations:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->nonNullByDefaultAnnotationName:[[C

    invoke-static {v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->nullableAnnotationSecondaryNames:[Ljava/lang/String;

    array-length v2, v0

    move v6, v1

    :goto_0
    if-lt v6, v2, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->nonNullAnnotationSecondaryNames:[Ljava/lang/String;

    array-length v8, v7

    move v0, v1

    :goto_1
    if-lt v0, v8, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->nonNullByDefaultAnnotationSecondaryNames:[Ljava/lang/String;

    array-length v4, v2

    move v0, v1

    :goto_2
    if-lt v0, v4, :cond_0

    goto :goto_3

    :cond_0
    aget-object v3, v2, v0

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->allNullAnnotations:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    aget-object v2, v7, v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->allNullAnnotations:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aget-object v7, v0, v6

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->allNullAnnotations:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->allNullAnnotations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_4
    return v1
.end method

.method public getNullableAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nullableAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullableAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nullableAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->nullableAnnotationName:[[C

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getAnnotationType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nullableAnnotation:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object v0
.end method

.method public getNullableAnnotationName()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->nullableAnnotationName:[[C

    return-object v0
.end method

.method public getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->get([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    return-object p1
.end method

.method public getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method

.method public getResolvedType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eq v0, p2, :cond_0

    .line 3
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    .line 5
    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    if-nez p3, :cond_2

    .line 6
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p3

    .line 7
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    .line 8
    invoke-virtual {p2, p1, p3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->isClassPathCorrect([[CLorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createMissingType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public getResolvedType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method

.method public getTopLevelPackage([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne v0, p1, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getTopLevelPackage([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    invoke-interface {v2, v1, p1}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->isPackage([[C[C)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-direct {v2, p1, p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-object v0, v2

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne v0, p1, :cond_4

    return-object v1

    :cond_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    return-object v1
.end method

.method public getType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method

.method public getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 7

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_9

    .line 4
    aget-object v0, p1, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-eq v0, v3, :cond_0

    return-object v1

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    aget-object p1, p1, v2

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->askForType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_2

    .line 7
    :cond_1
    aget-object v0, p1, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    .line 8
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne v0, v4, :cond_2

    return-object v1

    :cond_2
    if-eqz v0, :cond_6

    .line 9
    array-length v4, p1

    sub-int/2addr v4, v3

    move v5, v3

    :goto_0
    if-lt v5, v4, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    aget-object v6, p1, v5

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne v0, v6, :cond_5

    return-object v1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-nez v0, :cond_7

    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->askForType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_2

    .line 13
    :cond_7
    array-length v4, p1

    sub-int/2addr v4, v3

    aget-object v4, p1, v4

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-nez v4, :cond_8

    .line 14
    array-length v4, p1

    sub-int/2addr v4, v3

    aget-object p1, p1, v4

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->askForType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v0, v4

    :cond_9
    :goto_2
    if-eqz v0, :cond_b

    .line 15
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundType:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-ne v0, p1, :cond_a

    goto :goto_3

    .line 16
    :cond_a
    invoke-static {v0, p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object p1

    :cond_b
    :goto_3
    return-object v1
.end method

.method public getTypeFromConstantPoolName([CIIZ[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 7

    .line 8
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromConstantPoolName([CIIZ[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method

.method public getTypeFromConstantPoolName([CIIZ[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 1
    array-length p3, p1

    :cond_0
    const/16 v0, 0x2f

    .line 2
    invoke-static {v0, p1, p2, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p5, :cond_3

    .line 3
    array-length p3, p5

    move v0, p2

    :goto_0
    if-lt v0, p3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    aget-object v1, p5, v0

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p4, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromCompoundName([[CZZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    .line 6
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    if-eq p6, p2, :cond_4

    .line 7
    invoke-direct {p0, p1, p6, p5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->annotateType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_4
    return-object p1
.end method

.method public getTypeFromSignature([CIIZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 13

    move-object v6, p0

    move-object v1, p1

    move-object/from16 v7, p6

    const/4 v0, 0x0

    move v2, p2

    move v8, v0

    :goto_0
    aget-char v3, v1, v2

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_11

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v8, :cond_3

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-object/from16 v9, p7

    if-eq v9, v5, :cond_4

    move v5, v0

    move-object v10, v3

    :goto_1
    if-lt v5, v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v9, v0, v4}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v11

    invoke-static {v11, p0, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v11

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eq v11, v12, :cond_2

    if-nez v10, :cond_1

    new-array v10, v8, [[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    :cond_1
    aput-object v11, v10, v5

    :cond_2
    invoke-interface {v9}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toNextArrayDimension()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v9, p7

    :cond_4
    move-object v10, v3

    :goto_2
    const/4 v0, -0x1

    move/from16 v5, p3

    if-ne v5, v0, :cond_5

    array-length v0, v1

    sub-int/2addr v0, v4

    move v5, v0

    :cond_5
    if-ne v2, v5, :cond_c

    aget-char v0, v1, v2

    const/16 v4, 0x46

    if-eq v0, v4, :cond_b

    const/16 v4, 0x53

    if-eq v0, v4, :cond_a

    const/16 v4, 0x56

    if-eq v0, v4, :cond_9

    const/16 v4, 0x5a

    if-eq v0, v4, :cond_8

    const/16 v4, 0x49

    if-eq v0, v4, :cond_7

    const/16 v4, 0x4a

    if-eq v0, v4, :cond_6

    packed-switch v0, :pswitch_data_0

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-object/from16 v4, p5

    invoke-virtual {v0, v4, p1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->corruptedSignature(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CI)V

    goto :goto_3

    :pswitch_0
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_3

    :pswitch_1
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_3

    :pswitch_2
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_3

    :cond_6
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_3

    :cond_7
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_3

    :cond_8
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_3

    :cond_9
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    goto :goto_3

    :cond_a
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_3

    :cond_b
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    goto :goto_3

    :cond_c
    add-int/2addr v2, v4

    move-object v0, p0

    move-object v1, p1

    move v3, v5

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromConstantPoolName([CIIZ[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    :goto_3
    if-eqz p4, :cond_e

    if-nez v8, :cond_d

    return-object v3

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_e
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    if-eq v9, v0, :cond_f

    invoke-direct {p0, v3, v9, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->annotateType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    :cond_f
    if-eqz v8, :cond_10

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-static {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->flattenedAnnotations([[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    invoke-virtual {v0, v3, v8, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v3

    :cond_10
    return-object v3

    :cond_11
    move/from16 v5, p3

    move-object/from16 v4, p5

    move-object/from16 v9, p7

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTypeFromTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v0, v0, v1

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_1a

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-lez v13, :cond_3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-object/from16 v2, p5

    if-eq v2, v0, :cond_4

    move v0, v12

    move-object v1, v14

    :goto_1
    if-lt v0, v13, :cond_0

    move-object/from16 v16, v1

    move-object v7, v2

    goto :goto_2

    :cond_0
    invoke-interface {v2, v12, v15}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v3

    invoke-static {v3, v8, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eq v3, v4, :cond_2

    if-nez v1, :cond_1

    new-array v1, v13, [[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    :cond_1
    aput-object v3, v1, v0

    :cond_2
    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toNextArrayDimension()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v2, p5

    :cond_4
    move-object v7, v2

    move-object/from16 v16, v14

    :goto_2
    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v2, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v0, v1, v2

    const/16 v3, 0x54

    if-ne v0, v3, :cond_b

    add-int/lit8 v0, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->computeEnd()I

    move-result v3

    array-length v1, v10

    :cond_5
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_a

    move-object/from16 v2, p3

    :goto_3
    instance-of v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    if-eqz v1, :cond_6

    move-object v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    :goto_4
    move-object v4, v1

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v1

    goto :goto_4

    :goto_5
    array-length v1, v4

    :cond_7
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_9

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-nez v2, :cond_8

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iget-object v2, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    invoke-static {v2, v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    move-object/from16 v6, p3

    invoke-virtual {v1, v0, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->undefinedTypeVariableSignature([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    return-object v14

    :cond_8
    move-object/from16 v6, p3

    goto :goto_3

    :cond_9
    move-object/from16 v6, p3

    aget-object v5, v4, v1

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    invoke-static {v5, v10, v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v5

    if-eqz v5, :cond_7

    aget-object v1, v4, v1

    move-object/from16 v0, p0

    move v2, v13

    move-object/from16 v3, v16

    move-object v4, v7

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromTypeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;I[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0

    :cond_a
    move-object/from16 v6, p3

    aget-object v2, v10, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object v4, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    invoke-static {v2, v4, v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v1, v10, v1

    move-object/from16 v0, p0

    move v2, v13

    move-object/from16 v3, v16

    move-object v4, v7

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromTypeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;I[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0

    :cond_b
    move-object/from16 v6, p3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->computeEnd()I

    move-result v3

    iget v0, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->end:I

    iget v4, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->bracket:I

    if-ne v0, v4, :cond_c

    move/from16 v17, v15

    goto :goto_6

    :cond_c
    move/from16 v17, v12

    :goto_6
    move-object/from16 v0, p0

    move/from16 v4, v17

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v18, v7

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromSignature([CIIZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v17, :cond_e

    if-nez v13, :cond_d

    goto :goto_7

    :cond_d
    invoke-static/range {v16 .. v16}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->flattenedAnnotations([[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    invoke-virtual {v8, v0, v13, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v0

    :goto_7
    return-object v0

    :cond_e
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-object/from16 v7, v18

    if-eq v7, v1, :cond_f

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->depth()I

    move-result v2

    if-lez v2, :cond_f

    invoke-static {v0, v8, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_f
    move-object v6, v0

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    if-eq v7, v1, :cond_11

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->depth()I

    move-result v0

    if-lez v0, :cond_11

    invoke-direct {v8, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->countNonStaticNestingLevels(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    move-object v1, v7

    move v2, v12

    :goto_8
    if-lt v2, v0, :cond_10

    move-object/from16 v17, v1

    goto :goto_9

    :cond_10
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toNextNestedType()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_11
    move-object/from16 v17, v7

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v6

    move-object v14, v5

    move-object/from16 v5, p4

    move-object v12, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeArgumentsFromSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v8, v12, v0, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v0

    move-object v6, v12

    move-object v12, v0

    :goto_a
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v0, v0, v1

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_13

    add-int/2addr v1, v15

    iput v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-direct {v8, v12, v7, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->annotateType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v13, :cond_12

    goto :goto_b

    :cond_12
    invoke-static/range {v16 .. v16}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->flattenedAnnotations([[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    invoke-virtual {v8, v0, v13, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->nextWord()[C

    move-result-object v0

    const/4 v14, 0x0

    invoke-static {v6, v8, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMemberType([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    if-nez v5, :cond_14

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iget-object v2, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    invoke-virtual {v0, v12, v2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->corruptedSignature(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CI)V

    :cond_14
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_15

    move-object/from16 v17, v7

    goto :goto_c

    :cond_15
    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toNextNestedType()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    move-object/from16 v17, v0

    :goto_c
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v0, v0, v1

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_16

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v5

    move-object/from16 p5, v5

    move-object/from16 v5, p4

    move-object/from16 v19, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeArgumentsFromSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_d

    :cond_16
    move-object/from16 p5, v5

    move-object/from16 v19, v6

    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_18

    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_e

    :cond_17
    move-object/from16 v1, p5

    move-object v12, v1

    goto :goto_10

    :cond_18
    :goto_e
    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_19

    move-object/from16 v1, p5

    move-object/from16 v12, v19

    goto :goto_f

    :cond_19
    move-object/from16 v1, p5

    :goto_f
    invoke-virtual {v8, v1, v0, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v0

    move-object v12, v0

    :goto_10
    move-object v6, v1

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v2, p5

    move v14, v12

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0
.end method

.method public getTypeFromVariantTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v0, v0, v2

    const/16 v3, 0x2a

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-interface/range {p7 .. p7}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toWildcardBound()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v14

    invoke-interface {v8, v10, v9}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v17

    iget-object v11, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    const/4 v15, 0x0

    const/16 v16, 0x2

    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {v11 .. v17}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-interface/range {p7 .. p7}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toWildcardBound()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v14

    invoke-interface {v8, v10, v9}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v17

    iget-object v11, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {v11 .. v17}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v0

    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-interface {v8, v10, v9}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v13

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v7 .. v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v0

    return-object v0
.end method

.method public getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public isMissingType([C)Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingTypes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1
.end method

.method public isNullnessAnnotationPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nonnullAnnotationPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nullableAnnotationPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nonnullByDefaultAnnotationPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->JavaBaseModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->javaBaseModule()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->JavaBaseModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    if-eqz v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_BASE:[C

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    :goto_1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->JavaBaseModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object v0
.end method

.method public maybeCreateParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public methodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->verifier:Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->newMethodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->verifier:Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->verifier:Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    return-object v0
.end method

.method public newMethodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object v0
.end method

.method public nullAnnotationsFromTagBits(J)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 2

    const-wide/high16 v0, 0x100000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    filled-new-array {p1}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/high16 v0, 0x80000000000000L

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullableAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    filled-new-array {p1}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public qualifiedNameMatchesSignature([[C[C)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    array-length v4, p1

    if-lt v2, v4, :cond_0

    return v1

    :cond_0
    aget-object v4, p1, v2

    move v5, v1

    :goto_1
    array-length v6, v4

    if-lt v5, v6, :cond_3

    aget-char v4, p2, v3

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_1

    array-length v5, p1

    sub-int/2addr v5, v0

    if-ne v2, v5, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    aget-char v6, v4, v5

    add-int/lit8 v7, v3, 0x1

    aget-char v3, p2, v3

    if-eq v6, v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_1
.end method

.method public releaseClassFiles([Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->classFilePool:Lorg/eclipse/jdt/internal/compiler/ClassFilePool;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFilePool;->release(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->reset()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->stepCompleted:I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownModules:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfModule;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding$UnNamedModule;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding$UnNamedModule;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->JavaBaseModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->accessRestrictions:Ljava/util/Map;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->verifier:Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniqueParameterizedGenericMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniquePolymorphicMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniqueGetClassMethodBinding:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingTypes:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typesBeingConnected:Ljava/util/Set;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    array-length v1, v1

    :goto_0
    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-gez v1, :cond_1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lastUnitIndex:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->lastCompletedUnitIndex:I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->classFilePool:Lorg/eclipse/jdt/internal/compiler/ClassFilePool;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ClassFilePool;->reset()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->reset()V

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->units:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aput-object v0, v2, v1

    goto :goto_0
.end method

.method public setAccessRestriction(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->accessRestrictions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateCaches(Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->updateCaches(Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    return-void
.end method

.method public updatePolymorphicMethodReturnType(Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 8

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniquePolymorphicMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    array-length v4, v1

    move v5, v3

    :goto_0
    if-lt v5, v4, :cond_0

    goto :goto_1

    :cond_0
    aget-object v6, v1, v5

    if-nez v6, :cond_1

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v2, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;->matches([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_2

    return-object v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniquePolymorphicMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v4, v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v3

    move v5, v4

    :goto_2
    array-length v6, v1

    if-eqz v4, :cond_4

    if-ne v5, v6, :cond_4

    mul-int/lit8 v4, v6, 0x2

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;

    invoke-static {v1, v3, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->uniquePolymorphicMethodBindings:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v1, v0, v4}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v4

    :cond_4
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    invoke-direct {v0, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v0, v1, v5

    return-object v0
.end method

.method public usesAnnotatedTypeSystem()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->isAnnotatedTypeSystem()Z

    move-result v0

    return v0
.end method

.method public usesNullTypeAnnotations()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->useNullTypeAnnotations:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->initializeUsesNullTypeAnnotation()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->deferredEnumMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->deferredEnumMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->useNullTypeAnnotations:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUEOF:[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xa

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUES:[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x9

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {v1, v2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->markNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    goto :goto_0
.end method
