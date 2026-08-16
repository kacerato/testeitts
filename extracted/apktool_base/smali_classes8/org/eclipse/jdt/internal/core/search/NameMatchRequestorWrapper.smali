.class public abstract Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private complianceValue:J

.field private handleFactory:Lorg/eclipse/jdt/internal/core/util/HandleFactory;

.field private lastPkgFragmentRoot:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

.field private lastPkgFragmentRootPath:Ljava/lang/String;

.field private lastProject:Ljava/lang/Object;

.field private packageHandles:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

.field protected scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/IJavaSearchScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    instance-of p1, p1, Lorg/eclipse/jdt/internal/core/search/AbstractJavaSearchScope;

    if-nez p1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/core/util/HandleFactory;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->handleFactory:Lorg/eclipse/jdt/internal/core/util/HandleFactory;

    :cond_0
    return-void
.end method

.method private createTypeFromJar(Ljava/lang/String;I)Lorg/eclipse/jdt/core/IType;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->lastPkgFragmentRootPath:Ljava/lang/String;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v0, v4, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->lastPkgFragmentRootPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    check-cast v4, Lorg/eclipse/jdt/internal/core/search/AbstractJavaSearchScope;

    invoke-virtual {v4, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/search/AbstractJavaSearchScope;->packageFragmentRoot(Ljava/lang/String;ILjava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v2

    :cond_1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->lastPkgFragmentRootPath:Ljava/lang/String;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->lastPkgFragmentRoot:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->packageHandles:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    :cond_2
    const/4 v0, 0x1

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "|"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    move-object v4, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_4

    add-int/2addr p2, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, p2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_4
    new-instance p2, Lorg/eclipse/core/runtime/Path;

    invoke-direct {p2, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/core/runtime/Path;->segments()[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    sub-int/2addr p2, v0

    if-lez p2, :cond_5

    new-array v5, p2, [Ljava/lang/String;

    invoke-static {p1, v3, v5, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_5
    sget-object v5, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->packageHandles:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/IPackageFragment;

    if-nez v3, :cond_8

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->lastPkgFragmentRoot:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    check-cast v3, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v3, v5, v4}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v3

    if-ne p2, v1, :cond_7

    const/4 v1, 0x4

    aget-object v1, v5, v1

    const-string v4, "enum"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    invoke-interface {v3, v1}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IJavaProject;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->lastProject:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {v1, v4, v0}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->complianceValue:J

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->lastProject:Ljava/lang/Object;

    :cond_6
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->complianceValue:J

    const-wide/32 v6, 0x310000

    cmp-long v0, v0, v6

    if-ltz v0, :cond_7

    return-object v2

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->packageHandles:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-virtual {v0, v5, v3}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->put([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    aget-object p1, p1, p2

    invoke-interface {v3, p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getOrdinaryClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IOrdinaryClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method private createTypeFromPath(Ljava/lang/String;Ljava/lang/String;[[C)Lorg/eclipse/jdt/core/IType;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->lastPkgFragmentRootPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->lastPkgFragmentRootPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/AbstractJavaSearchScope;

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2, v1}, Lorg/eclipse/jdt/internal/core/search/AbstractJavaSearchScope;->packageFragmentRoot(Ljava/lang/String;ILjava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->lastPkgFragmentRoot:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->internalPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->lastPkgFragmentRootPath:Ljava/lang/String;

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->packageHandles:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->lastPkgFragmentRootPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v0, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/Path;->segments()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    if-lez v0, :cond_3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    :goto_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->packageHandles:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/core/IPackageFragment;

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->lastPkgFragmentRoot:Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    check-cast v5, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->packageHandles:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-virtual {v6, v4, v5}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->put([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5, p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    if-nez p3, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    array-length v0, p3

    :goto_1
    if-nez v0, :cond_6

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/String;

    aget-object v3, p3, v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    :goto_2
    if-lez v0, :cond_8

    :goto_3
    if-lt v2, v0, :cond_7

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/lang/String;

    aget-object v3, p3, v2

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, v1}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    return-object p1

    :cond_9
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {v5, p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getOrdinaryClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IOrdinaryClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1

    :cond_a
    return-object v1
.end method


# virtual methods
.method public getType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/core/IType;
    .locals 1

    const/4 p1, 0x0

    :try_start_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->handleFactory:Lorg/eclipse/jdt/internal/core/util/HandleFactory;

    if-eqz p2, :cond_4

    iget-object p6, p0, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    invoke-virtual {p2, p5, p6}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->createOpenable(Ljava/lang/String;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    instance-of p5, p2, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-eqz p5, :cond_3

    check-cast p2, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-eqz p4, :cond_2

    array-length p5, p4

    if-lez p5, :cond_2

    new-instance p5, Ljava/lang/String;

    const/4 p6, 0x0

    aget-object p6, p4, p6

    invoke-direct {p5, p6}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p2, p5}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    array-length p2, p4

    const/4 p5, 0x1

    :goto_0
    if-lt p5, p2, :cond_1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p6, Ljava/lang/String;

    aget-object v0, p4, p5

    invoke-direct {p6, v0}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, p6}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p3}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p2, p4}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    goto :goto_1

    :cond_3
    instance-of p3, p2, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    if-eqz p3, :cond_6

    check-cast p2, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IOrdinaryClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-string p2, "|"

    invoke-virtual {p5, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 p6, -0x1

    if-ne p2, p6, :cond_5

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, p5, p2, p4}, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->createTypeFromPath(Ljava/lang/String;Ljava/lang/String;[[C)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-direct {p0, p5, p2}, Lorg/eclipse/jdt/internal/core/search/NameMatchRequestorWrapper;->createTypeFromJar(Ljava/lang/String;I)Lorg/eclipse/jdt/core/IType;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_1
    return-object p1
.end method
