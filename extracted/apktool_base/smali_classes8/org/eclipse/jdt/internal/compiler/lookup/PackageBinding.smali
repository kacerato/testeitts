.class public Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;


# instance fields
.field public compoundName:[[C

.field private defaultNullness:I

.field public enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

.field public environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field isExported:Ljava/lang/Boolean;

.field knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

.field public knownTypes:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

.field parent:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

.field public tagBits:J

.field wrappingSplitPackageBindings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->defaultNullness:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 3

    .line 19
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    return-void
.end method

.method public constructor <init>([CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 1

    .line 4
    filled-new-array {p1}, [[C

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    return-void
.end method

.method public constructor <init>([[CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->defaultNullness:I

    .line 8
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    .line 9
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 10
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 p3, 0x0

    .line 11
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownTypes:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    .line 12
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;-><init>(I)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    .line 13
    sget-object p3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    if-eq p1, p3, :cond_0

    .line 14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->checkIfNullAnnotationPackage()V

    :cond_0
    if-eqz p4, :cond_1

    .line 15
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 16
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 17
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz p1, :cond_3

    return-void

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Package should have an enclosing module"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addNotFoundType([C)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->suppressImportErrors:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownTypes:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownTypes:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownTypes:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundType:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;->put([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-void
.end method

.method private isPackageOfQualifiedTypeName([[C[[C)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    array-length v1, p1

    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_1

    return v3

    :cond_1
    aget-object v4, p1, v2

    aget-object v5, p2, v2

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-nez v4, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public addNotFoundPackage([C)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->suppressImportErrors:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :cond_0
    return-void
.end method

.method public addPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 4

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->clearMissingTagBit()V

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->put([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    return-object p1
.end method

.method public addType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 5

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->clearMissingTagBit()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownTypes:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownTypes:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownTypes:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    invoke-virtual {v1, v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;->getput([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUnresolvedType()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUnresolvedType()Z

    move-result v2

    if-nez v2, :cond_2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->setResolvedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result v1

    if-nez v1, :cond_3

    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->checkIfNullAnnotationType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUnresolvedType()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->wrappingSplitPackageBindings:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownTypes:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;->get([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUnresolvedType()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUnresolvedType()Z

    move-result v4

    if-nez v4, :cond_5

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->setResolvedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownTypes:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;->put([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method public addWrappingSplitPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->wrappingSplitPackageBindings:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->wrappingSplitPackageBindings:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->wrappingSplitPackageBindings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkIfNullAnnotationPackage()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullableAnnotationName()[[C

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isPackageOfQualifiedTypeName([[C[[C)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nullableAnnotationPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotationName()[[C

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isPackageOfQualifiedTypeName([[C[[C)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nonnullAnnotationPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullByDefaultAnnotationName()[[C

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isPackageOfQualifiedTypeName([[C[[C)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nonnullByDefaultAnnotationPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :cond_2
    return-void
.end method

.method public checkIfNullAnnotationType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nullableAnnotationPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    const/4 v2, 0x0

    if-ne v1, p0, :cond_0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullableAnnotationName()[[C

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    instance-of p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nullableAnnotationPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nonnullAnnotationPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne v1, p0, :cond_1

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotationName()[[C

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    instance-of p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nonnullAnnotationPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nonnullByDefaultAnnotationPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne v1, p0, :cond_2

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullByDefaultAnnotationName()[[C

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    instance-of p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nonnullByDefaultAnnotationPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    goto :goto_0

    :cond_2
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullAnnotationBit([[C)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    :cond_3
    :goto_0
    return-void
.end method

.method public clearMissingTagBit()V
    .locals 5

    move-object v0, p0

    :cond_0
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    const-wide/16 v3, -0x81

    and-long/2addr v1, v3

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez v0, :cond_0

    return-void
.end method

.method public computeUniqueKey(Z)[C
    .locals 1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    const/16 v0, 0x2f

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    return-object p1
.end method

.method public findDefaultNullnessTarget(Ljava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/lookup/Binding;"
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->defaultNullness:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->defaultNullness:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getDefaultNullness()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getPackage([[C[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    return-object p1
.end method

.method public getDeclaringModules()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultNullness()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->defaultNullness:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getDefaultNullness()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-ne v0, p1, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->findPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p2

    if-eqz p2, :cond_2

    return-object p2

    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addNotFoundPackage([C)V

    return-object v1
.end method

.method public getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->get([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    return-object p1
.end method

.method public getPackage0Any([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownPackages:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfPackage;->get([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    return-object p1
.end method

.method public getType([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->askForType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addNotFoundType([C)V

    return-object v1

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundType:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array {p1}, [[C

    move-result-object p1

    const/4 v1, 0x4

    invoke-direct {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_2
    invoke-virtual {p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object p2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    const/16 v1, 0x1e

    invoke-direct {p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p1

    :cond_3
    return-object v0
.end method

.method public getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownTypes:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;->get([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1
.end method

.method public getTypeOrPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 9

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    const/16 v1, 0x1e

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundType:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eq v0, v5, :cond_4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v0, v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array {p1}, [[C

    move-result-object p1

    invoke-direct {p2, p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_0
    instance-of v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v5

    if-ne v5, p2, :cond_2

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-ne v5, p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-direct {v4, v5, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v7, 0x80

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    return-object v0

    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getPackage0([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v5

    if-eqz v5, :cond_6

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundPackage:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-eq v5, v6, :cond_6

    if-nez p3, :cond_5

    instance-of p1, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz p1, :cond_5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    invoke-virtual {v5, p2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->getVisibleFor(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v5

    :cond_6
    if-nez v0, :cond_a

    if-nez v4, :cond_a

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->askForType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array {p1}, [[C

    move-result-object p1

    invoke-direct {p2, p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-direct {v4, v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    goto :goto_2

    :cond_8
    return-object v0

    :cond_9
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addNotFoundType([C)V

    :cond_a
    :goto_2
    if-nez v5, :cond_f

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->findPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    if-eqz v1, :cond_c

    if-nez p3, :cond_b

    instance-of p1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz p1, :cond_b

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    invoke-virtual {v1, p2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->getVisibleFor(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    return-object p1

    :cond_b
    return-object v1

    :cond_c
    if-eqz v0, :cond_e

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundType:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eq v0, p2, :cond_e

    if-eqz v4, :cond_d

    return-object v4

    :cond_d
    return-object v0

    :cond_e
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->addNotFoundPackage([C)V

    :cond_f
    return-object v4
.end method

.method public getVisibleFor(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 0

    return-object p0
.end method

.method public hasCompilationUnit(Z)Z
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->knownTypes:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;->valueTable:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->TheNotFoundType:Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eq v4, v5, :cond_1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUnresolvedType()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    if-eqz v2, :cond_3

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->nameEnvironment:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->nameForCUCheck()[C

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->hasCompilationUnit([[C[CZ)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public isDeclaredIn(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isExported()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isExported:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isAuto:Z

    if-eqz v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isExported:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getExports()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isExported:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isExported:Ljava/lang/Boolean;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isExported:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final isViewedAsDeprecated()Z
    .locals 10

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    const-wide v2, 0x400000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->initializeDeprecatedAnnotationTagBits()V

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide v8, 0x77fffff800000000L    # 1.0565850317039238E270

    and-long/2addr v3, v8

    or-long v0, v1, v3

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    const-wide v2, 0x400000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final kind()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public problemId()I
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public readableName()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    return-object v0
.end method

.method public setDefaultNullness(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->defaultNullness:I

    return-void
.end method

.method public subsumes(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    if-ne v0, v1, :cond_0

    const-string v0, "The Default Package"

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "UNNAMED"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    const-wide/16 v3, 0x80

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "[MISSING]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method
