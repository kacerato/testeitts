.class public Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;
.super Lorg/eclipse/jdt/internal/core/search/AbstractJavaSearchScope;
.source "SourceFile"


# static fields
.field public static final NOT_ENCLOSED:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;


# instance fields
.field private containerPaths:[Ljava/lang/String;

.field private elements:Ljava/util/ArrayList;

.field private enclosingProjectsAndJars:[Lorg/eclipse/core/runtime/IPath;

.field private final excludeTestCode:Z

.field private isPkgPath:[Z

.field protected pathRestrictions:[Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

.field private pathsCount:I

.field private projectIndexes:[I

.field private projectPaths:Ljava/util/ArrayList;

.field private relativePaths:[Ljava/lang/String;

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;-><init>([Lorg/eclipse/jdt/internal/compiler/env/AccessRule;BLjava/lang/String;)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->NOT_ENCLOSED:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/AbstractJavaSearchScope;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectPaths:Ljava/util/ArrayList;

    .line 4
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->excludeTestCode:Z

    .line 5
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->initialize(I)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;-><init>(IZ)V

    return-void
.end method

.method private add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)V
    .locals 4

    .line 87
    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 88
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 89
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->containerPaths:[Ljava/lang/String;

    array-length v0, v0

    .line 90
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    .line 91
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->relativePaths:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->containerPaths:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 93
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 94
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 96
    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectIndexes:[I

    aput v0, p1, v1

    .line 97
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->relativePaths:[Ljava/lang/String;

    aput-object p2, p1, v1

    .line 98
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->containerPaths:[Ljava/lang/String;

    aput-object p3, p2, v1

    .line 99
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->isPkgPath:[Z

    aput-boolean p4, p2, v1

    .line 100
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->pathRestrictions:[Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-eqz p2, :cond_5

    .line 101
    aput-object p5, p2, v1

    goto :goto_2

    :cond_5
    if-eqz p5, :cond_6

    .line 102
    array-length p1, p1

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->pathRestrictions:[Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    .line 103
    aput-object p5, p1, v1

    .line 104
    :cond_6
    :goto_2
    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->pathsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->pathsCount:I

    iget p2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->threshold:I

    if-le p1, p2, :cond_7

    .line 105
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->rehash()V

    :cond_7
    return-void
.end method

.method private addEnclosingProjectOrJar(Lorg/eclipse/core/runtime/IPath;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->enclosingProjectsAndJars:[Lorg/eclipse/core/runtime/IPath;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->enclosingProjectsAndJars:[Lorg/eclipse/core/runtime/IPath;

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [Lorg/eclipse/core/runtime/IPath;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->enclosingProjectsAndJars:[Lorg/eclipse/core/runtime/IPath;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->enclosingProjectsAndJars:[Lorg/eclipse/core/runtime/IPath;

    aput-object p1, v1, v0

    return-void

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->enclosingProjectsAndJars:[Lorg/eclipse/core/runtime/IPath;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private encloses(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .line 6
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-nez v1, :cond_1

    return v3

    :cond_1
    if-ne v0, v1, :cond_2

    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 10
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->isPkgPath:[Z

    aget-boolean p3, v0, p3

    const/16 v0, 0x2f

    if-nez p3, :cond_4

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_3

    return v3

    :cond_3
    return v2

    .line 13
    :cond_4
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq p3, v0, :cond_5

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p1, p2, :cond_6

    :cond_5
    return v3

    :cond_6
    return v2
.end method

.method private getPath(Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/core/runtime/IPath;
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->getPath(Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->getPath(Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lorg/eclipse/core/runtime/IPath;->append(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    return-object p1

    :pswitch_1
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->getPath(Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    new-instance p2, Lorg/eclipse/core/runtime/Path;

    invoke-direct {p2, v0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lorg/eclipse/core/runtime/IPath;->append(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    return-object p1

    :pswitch_2
    if-eqz p2, :cond_0

    sget-object p1, Lorg/eclipse/core/runtime/Path;->EMPTY:Lorg/eclipse/core/runtime/Path;

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    return-object p1

    :pswitch_4
    sget-object p1, Lorg/eclipse/core/runtime/Path;->EMPTY:Lorg/eclipse/core/runtime/Path;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private indexOf(Ljava/lang/String;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->relativePaths:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->relativePaths:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->containerPaths:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2f

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    :goto_1
    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->encloses(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private indexOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->containerPaths:[Ljava/lang/String;

    array-length v0, v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    rem-int/2addr v1, v0

    .line 8
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->containerPaths:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    const/4 p1, -0x1

    return p1

    .line 9
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->relativePaths:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 11
    invoke-direct {p0, v2, p2, v1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->encloses(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v1, v0, :cond_2

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private rehash()V
    .locals 10

    new-instance v6, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->pathsCount:I

    mul-int/lit8 v0, v0, 0x2

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->excludeTestCode:Z

    invoke-direct {v6, v0, v1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;-><init>(IZ)V

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->relativePaths:[Ljava/lang/String;

    array-length v7, v0

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-lt v8, v7, :cond_0

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->relativePaths:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->relativePaths:[Ljava/lang/String;

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->containerPaths:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->containerPaths:[Ljava/lang/String;

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectPaths:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectPaths:Ljava/util/ArrayList;

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectIndexes:[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectIndexes:[I

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->isPkgPath:[Z

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->isPkgPath:[Z

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->pathRestrictions:[Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->pathRestrictions:[Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    iget v0, v6, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->threshold:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->threshold:I

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->relativePaths:[Ljava/lang/String;

    aget-object v2, v0, v8

    if-eqz v2, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectIndexes:[I

    aget v0, v0, v8

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->containerPaths:[Ljava/lang/String;

    aget-object v4, v0, v8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->isPkgPath:[Z

    aget-boolean v5, v0, v8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->pathRestrictions:[Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-nez v0, :cond_2

    move-object v9, v3

    goto :goto_2

    :cond_2
    aget-object v0, v0, v8

    move-object v9, v0

    :goto_2
    move-object v0, v6

    move-object v3, v4

    move v4, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 47
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v7, 0x1

    if-eq v1, v7, :cond_f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_a

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4

    .line 48
    instance-of v1, p1, Lorg/eclipse/jdt/core/IMember;

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->elements:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->elements:Ljava/util/ArrayList;

    .line 51
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->elements:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    invoke-interface {p1, v2}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    .line 53
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getKind()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 55
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->getPath(Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/eclipse/jdt/internal/core/util/Util;->relativePath(Lorg/eclipse/core/runtime/IPath;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->internalPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    .line 58
    invoke-direct {p0, p1, v7}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->getPath(Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :goto_1
    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :goto_3
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v8

    .line 60
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)V

    goto/16 :goto_a

    .line 61
    :cond_4
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    .line 62
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 64
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v3, v0

    goto :goto_5

    :cond_5
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :goto_5
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 67
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)V

    goto/16 :goto_a

    .line 68
    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 69
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 70
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getKind()I

    move-result v2

    if-ne v2, v7, :cond_7

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    goto :goto_6

    :cond_7
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->internalPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    goto :goto_6

    .line 71
    :cond_8
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getParent()Lorg/eclipse/core/resources/IContainer;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    .line 72
    :goto_6
    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_9
    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v3

    .line 73
    :goto_7
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->relativePath(Lorg/eclipse/core/runtime/IPath;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 74
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)V

    goto/16 :goto_a

    .line 75
    :cond_a
    move-object v6, p1

    check-cast v6, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    .line 76
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->internalPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 77
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getKind()I

    move-result v1

    if-ne v1, v7, :cond_b

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 78
    :cond_b
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_8
    move-object v3, v1

    goto :goto_9

    :cond_c
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 79
    :goto_9
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    .line 80
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_d

    .line 81
    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->isAccessible()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 82
    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->relativePath(Lorg/eclipse/core/runtime/IPath;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v2

    move-object v2, v4

    move v4, v5

    move-object v5, v8

    .line 83
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)V

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 84
    const-string v8, ""

    move-object v0, p0

    move-object v1, v2

    move-object v2, v8

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)V

    goto :goto_a

    .line 85
    :cond_e
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->add(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/IPath;ILjava/util/HashSet;Ljava/util/HashSet;Lorg/eclipse/jdt/core/IClasspathEntry;)V

    :cond_f
    const/4 v6, 0x0

    :cond_10
    :goto_a
    if-eqz v6, :cond_12

    .line 86
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getKind()I

    move-result v0

    if-ne v0, v7, :cond_11

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    goto :goto_b

    :cond_11
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->addEnclosingProjectOrJar(Lorg/eclipse/core/runtime/IPath;)V

    :cond_12
    return-void
.end method

.method public add(Lorg/eclipse/jdt/internal/core/JavaProject;ILjava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    new-instance v5, Ljava/util/HashSet;

    const/4 v0, 0x2

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->add(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/IPath;ILjava/util/HashSet;Ljava/util/HashSet;Lorg/eclipse/jdt/core/IClasspathEntry;)V

    return-void
.end method

.method public add(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/IPath;ILjava/util/HashSet;Ljava/util/HashSet;Lorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object/from16 v9, p5

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_b

    .line 4
    :cond_0
    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    .line 5
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6
    invoke-direct {v7, v10}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->addEnclosingProjectOrJar(Lorg/eclipse/core/runtime/IPath;)V

    .line 7
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v12

    .line 8
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v13

    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v14

    .line 10
    array-length v15, v12

    const/4 v6, 0x0

    move v5, v6

    :goto_0
    if-lt v5, v15, :cond_1

    return-void

    .line 11
    :cond_1
    aget-object v16, v12, v5

    .line 12
    iget-boolean v0, v7, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->excludeTestCode:Z

    if-eqz v0, :cond_4

    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->isTest()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    :goto_1
    move/from16 v19, v5

    :cond_3
    :goto_2
    move v9, v6

    :goto_3
    move-object/from16 v6, p1

    goto/16 :goto_a

    .line 13
    :cond_4
    move-object/from16 v0, v16

    check-cast v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    const/4 v1, 0x3

    if-eqz p6, :cond_6

    .line 14
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->isExported()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v2

    if-eq v2, v1, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    move-object/from16 v2, p6

    check-cast v2, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->combineWith(Lorg/eclipse/jdt/internal/core/ClasspathEntry;)Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-result-object v0

    :cond_6
    move-object/from16 v17, v0

    .line 16
    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object v18

    .line 17
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_b

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_7

    goto :goto_1

    :cond_7
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    .line 18
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    if-eqz v8, :cond_8

    .line 19
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    :cond_8
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->relativePath(Lorg/eclipse/core/runtime/IPath;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v3, v11

    move/from16 v19, v5

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)V

    goto :goto_2

    :cond_9
    move/from16 v19, v5

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_3

    .line 21
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    if-eqz v8, :cond_a

    .line 22
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    :cond_a
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    move-object/from16 v5, p4

    .line 24
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move v9, v6

    move-object/from16 v6, v17

    .line 25
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->add(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/IPath;ILjava/util/HashSet;Ljava/util/HashSet;Lorg/eclipse/jdt/core/IClasspathEntry;)V

    goto/16 :goto_3

    :cond_b
    move/from16 v19, v5

    move v9, v6

    .line 26
    iget-object v0, v14, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rootPathToRawEntries:Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 27
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IClasspathEntry;

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_d

    :goto_5
    goto/16 :goto_3

    .line 28
    :cond_d
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v4

    if-eq v4, v3, :cond_16

    const/4 v5, 0x4

    if-eq v4, v5, :cond_16

    const/4 v5, 0x5

    if-eq v4, v5, :cond_e

    goto :goto_5

    .line 29
    :cond_e
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    move-object/from16 v6, p1

    invoke-static {v0, v6}, Lorg/eclipse/jdt/core/JavaCore;->getClasspathContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IClasspathContainer;

    move-result-object v0

    if-nez v0, :cond_f

    goto/16 :goto_a

    .line 30
    :cond_f
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathContainer;->getKind()I

    move-result v0

    if-eq v0, v3, :cond_11

    if-eq v0, v2, :cond_10

    if-eq v0, v1, :cond_10

    goto/16 :goto_a

    :cond_10
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_12

    goto/16 :goto_a

    :cond_11
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_12

    goto/16 :goto_a

    .line 31
    :cond_12
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    if-eqz v8, :cond_13

    .line 32
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 33
    :cond_13
    invoke-static {v0, v9}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v1

    .line 34
    instance-of v2, v1, Lorg/eclipse/core/resources/IFolder;

    if-eqz v2, :cond_14

    .line 35
    check-cast v1, Lorg/eclipse/core/resources/IFolder;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IFolder;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 36
    :cond_14
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    move-object v3, v0

    goto :goto_7

    :cond_15
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 37
    :goto_7
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)V

    .line 38
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->addEnclosingProjectOrJar(Lorg/eclipse/core/runtime/IPath;)V

    goto :goto_a

    :cond_16
    move-object/from16 v6, p1

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1a

    .line 39
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    if-eqz v8, :cond_17

    .line 40
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 41
    :cond_17
    invoke-static {v0, v9}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v1

    .line 42
    instance-of v2, v1, Lorg/eclipse/core/resources/IFolder;

    if-eqz v2, :cond_18

    .line 43
    check-cast v1, Lorg/eclipse/core/resources/IFolder;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IFolder;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 44
    :cond_18
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    move-object v3, v0

    goto :goto_9

    :cond_19
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 45
    :goto_9
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;)V

    .line 46
    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->addEnclosingProjectOrJar(Lorg/eclipse/core/runtime/IPath;)V

    :cond_1a
    :goto_a
    add-int/lit8 v5, v19, 0x1

    move v6, v9

    move-object/from16 v9, p5

    goto/16 :goto_0

    :cond_1b
    :goto_b
    return-void
.end method

.method public encloses(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v2

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->indexOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    return v2

    :cond_0
    return v3

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method public encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z
    .locals 7

    .line 16
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->elements:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    return v2

    .line 18
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->elements:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/IJavaElement;

    move-object v5, p1

    :goto_1
    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v1

    .line 20
    :cond_2
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v5

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    .line 21
    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-eqz v0, :cond_6

    .line 22
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 23
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_2
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->getPath(Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->indexOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_5

    return v1

    :cond_5
    return v2

    .line 27
    :cond_6
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->getPath(Lorg/eclipse/jdt/core/IJavaElement;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_7

    return v1

    :cond_7
    return v2
.end method

.method public enclosingProjectsAndJars()[Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->enclosingProjectsAndJars:[Lorg/eclipse/core/runtime/IPath;

    return-object v0
.end method

.method public getAccessRuleSet(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;
    .locals 0

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->indexOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->NOT_ENCLOSED:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->pathRestrictions:[Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    aget-object p1, p2, p1

    return-object p1
.end method

.method public initialize(I)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->pathsCount:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->threshold:I

    int-to-float v1, p1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-ne p1, v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    new-array p1, v1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->relativePaths:[Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->containerPaths:[Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectPaths:Ljava/util/ArrayList;

    new-array p1, v1, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectIndexes:[I

    new-array p1, v1, [Z

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->isPkgPath:[Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->pathRestrictions:[Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    new-array p1, v0, [Lorg/eclipse/core/runtime/IPath;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->enclosingProjectsAndJars:[Lorg/eclipse/core/runtime/IPath;

    return-void
.end method

.method public packageFragmentRoot(Ljava/lang/String;ILjava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->indexOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->indexOf(Ljava/lang/String;)I

    move-result p1

    :goto_1
    const/4 p2, 0x0

    if-ltz p1, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectIndexes:[I

    aget v0, v0, p1

    if-ne v0, v1, :cond_2

    move-object v0, p2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->projectPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    if-eqz v0, :cond_6

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    if-eqz v2, :cond_4

    new-instance p1, Lorg/eclipse/core/runtime/Path;

    invoke-direct {p1, p3}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getWorkspaceTarget(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/IJavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-interface {v0, p3}, Lorg/eclipse/jdt/core/IJavaProject;->getPackageFragmentRoot(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p3, Lorg/eclipse/core/runtime/Path;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->containerPaths:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->relativePaths:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/JavaModel;->getWorkspaceTarget(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    if-eqz p1, :cond_6

    instance-of p2, p1, Lorg/eclipse/core/resources/IProject;

    if-eqz p2, :cond_5

    check-cast p1, Lorg/eclipse/core/resources/IProject;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/IJavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    return-object p1

    :cond_5
    move-object p2, p1

    check-cast p2, Lorg/eclipse/core/resources/IResource;

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->create(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    return-object p1

    :cond_6
    return-object p2
.end method

.method public processDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V
    .locals 4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getKind()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object v0

    array-length v3, v0

    :goto_0
    if-lt v1, v3, :cond_1

    goto :goto_2

    :cond_1
    aget-object p1, v0, v1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->processDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->elements:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result p2

    if-eq p2, v2, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    return-void

    :cond_4
    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    check-cast p1, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget p2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->pathsCount:I

    if-lt v1, p2, :cond_6

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->relativePaths:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->relativePaths:[Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->rehash()V

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "JavaSearchScope on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->elements:Ljava/util/ArrayList;

    const-string v2, "\n\t"

    const-string v3, "\n]"

    const-string v4, "["

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->elements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-lt v5, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->elements:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->pathsCount:I

    if-nez v1, :cond_2

    const-string v1, "[empty scope]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->relativePaths:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    move v4, v5

    move v6, v4

    :goto_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->relativePaths:[Ljava/lang/String;

    array-length v8, v7

    if-lt v4, v8, :cond_4

    new-array v8, v6, [Ljava/lang/String;

    invoke-static {v1, v5, v8, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/util/Util;->sort([Ljava/lang/String;)V

    :goto_2
    if-lt v5, v6, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, v8, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    aget-object v7, v7, v4

    if-nez v7, :cond_5

    goto :goto_5

    :cond_5
    new-instance v8, Lorg/eclipse/core/runtime/Path;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->containerPaths:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-direct {v8, v9}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->isInternalPathForExternalFolder(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v8, Lorg/eclipse/core/runtime/Path;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->containerPaths:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-direct {v8, v9}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/JavaModel;->getWorkspaceTarget(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v8

    check-cast v8, Lorg/eclipse/core/resources/IFolder;

    invoke-interface {v8}, Lorg/eclipse/core/resources/IFolder;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-interface {v8}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_6
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchScope;->containerPaths:[Ljava/lang/String;

    aget-object v8, v8, v4

    :goto_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    add-int/lit8 v9, v6, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x2f

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    move v6, v9

    goto :goto_5

    :cond_7
    add-int/lit8 v7, v6, 0x1

    aput-object v8, v1, v6

    move v6, v7

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
