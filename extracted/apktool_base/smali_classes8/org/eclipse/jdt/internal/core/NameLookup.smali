.class public Lorg/eclipse/jdt/internal/core/NameLookup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/NameLookup$Answer;,
        Lorg/eclipse/jdt/internal/core/NameLookup$IPrefixMatcherCharArray;,
        Lorg/eclipse/jdt/internal/core/NameLookup$Selector;
    }
.end annotation


# static fields
.field public static final ACCEPT_ALL:I = 0x1e

.field public static final ACCEPT_ANNOTATIONS:I = 0x10

.field public static final ACCEPT_CLASSES:I = 0x2

.field public static final ACCEPT_ENUMS:I = 0x8

.field public static final ACCEPT_INTERFACES:I = 0x4

.field private static NO_MODULE:Lorg/eclipse/jdt/core/IModuleDescription;

.field private static final NO_TYPES:[Lorg/eclipse/jdt/core/IType;

.field public static VERBOSE:Z


# instance fields
.field protected packageFragmentRoots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

.field protected packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

.field private rootProject:Lorg/eclipse/jdt/internal/core/JavaProject;

.field protected rootToModule:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IPackageFragmentRoot;",
            "Lorg/eclipse/jdt/core/IModuleDescription;",
            ">;"
        }
    .end annotation
.end field

.field protected rootToResolvedEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IPackageFragmentRoot;",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            ">;"
        }
    .end annotation
.end field

.field public timeSpentInSeekTypesInBinaryPackage:J

.field public timeSpentInSeekTypesInSourcePackage:J

.field protected typesInWorkingCopies:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/NameLookup$1;

    const/4 v1, 0x0

    const-string v2, "Not a module"

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/NameLookup$1;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/NameLookup;->NO_MODULE:Lorg/eclipse/jdt/core/IModuleDescription;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    new-array v0, v0, [Lorg/eclipse/jdt/core/IType;

    sput-object v0, Lorg/eclipse/jdt/internal/core/NameLookup;->NO_TYPES:[Lorg/eclipse/jdt/core/IType;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;[Lorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/Map;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInSourcePackage:J

    iput-wide v6, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    move-object/from16 v6, p1

    iput-object v6, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->rootProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    sget-boolean v6, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v6, :cond_3

    const-string v6, " BUILDING NameLoopkup"

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, " -> pkg roots size: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    array-length v8, v1

    :goto_0
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, " -> pkgs size: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->size()I

    move-result v8

    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, " -> working copy size: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    array-length v8, v3

    :goto_2
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    goto :goto_3

    :cond_3
    const-wide/16 v8, -0x1

    :goto_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->rootToModule:Ljava/util/Map;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragmentRoots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-nez v3, :cond_4

    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    :goto_4
    move-object/from16 v12, p5

    goto :goto_7

    :cond_4
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->typesInWorkingCopies:Ljava/util/HashMap;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;-><init>()V

    array-length v6, v1

    const/4 v10, 0x0

    :goto_5
    if-lt v10, v6, :cond_17

    array-length v11, v3

    const/4 v1, 0x0

    :goto_6
    if-lt v1, v11, :cond_6

    goto :goto_4

    :goto_7
    iput-object v12, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->rootToResolvedEntries:Ljava/util/Map;

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " -> spent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    move-object/from16 v12, p5

    aget-object v6, v3, v1

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v13

    check-cast v13, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-virtual {v2, v13}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->get(Ljava/lang/Object;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_9

    move-wide/from16 v16, v8

    :cond_7
    const/4 v5, 0x2

    :cond_8
    :goto_8
    const/4 v10, 0x0

    const/4 v15, 0x1

    goto/16 :goto_15

    :cond_9
    iget-object v15, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->typesInWorkingCopies:Ljava/util/HashMap;

    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    if-nez v15, :cond_a

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->typesInWorkingCopies:Ljava/util/HashMap;

    invoke-virtual {v5, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :try_start_1
    invoke-interface {v6}, Lorg/eclipse/jdt/core/ICompilationUnit;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v5

    array-length v7, v5

    if-nez v7, :cond_b

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/util/Util;->getNameWithoutJavaLikeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/core/NameLookup;->NO_TYPES:[Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v15, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catch_1
    :goto_9
    move-wide/from16 v16, v8

    goto :goto_d

    :cond_b
    const/4 v6, 0x0

    :goto_a
    if-lt v6, v7, :cond_c

    goto :goto_9

    :cond_c
    aget-object v4, v5, v6

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 p2, v5

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_d

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 p3, v7

    move-wide/from16 v16, v8

    :goto_b
    const/4 v3, 0x1

    goto :goto_c

    :cond_d
    move/from16 p3, v7

    instance-of v7, v5, Lorg/eclipse/jdt/core/IType;

    if-eqz v7, :cond_e

    check-cast v5, Lorg/eclipse/jdt/core/IType;
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 v16, v8

    const/4 v7, 0x2

    :try_start_2
    new-array v8, v7, [Lorg/eclipse/jdt/core/IType;

    const/4 v7, 0x0

    aput-object v5, v8, v7

    const/4 v5, 0x1

    aput-object v4, v8, v5

    invoke-virtual {v15, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_e
    move-wide/from16 v16, v8

    check-cast v5, [Lorg/eclipse/jdt/core/IType;

    array-length v7, v5

    const/4 v8, 0x1

    add-int/lit8 v9, v7, 0x1

    new-array v9, v9, [Lorg/eclipse/jdt/core/IType;

    const/4 v8, 0x0

    invoke-static {v5, v8, v9, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v4, v9, v7

    invoke-virtual {v15, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    :goto_c
    add-int/2addr v6, v3

    move-object/from16 v5, p2

    move/from16 v7, p3

    move-object/from16 v3, p4

    move-wide/from16 v8, v16

    goto :goto_a

    :catch_2
    :goto_d
    iget-object v3, v10, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_f

    sget-object v5, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->NO_ROOTS:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-ne v4, v5, :cond_10

    :cond_f
    const/4 v5, 0x2

    const/4 v10, 0x0

    const/4 v15, 0x1

    goto :goto_14

    :cond_10
    instance-of v5, v4, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    if-eqz v5, :cond_12

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->get(Ljava/lang/Object;)I

    move-result v5

    if-eq v14, v5, :cond_7

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    if-ge v5, v14, :cond_11

    const/4 v5, 0x2

    new-array v7, v5, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    check-cast v4, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v9, 0x1

    aput-object v13, v7, v9

    goto :goto_e

    :cond_11
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v7, v5, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    aput-object v13, v7, v8

    check-cast v4, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    aput-object v4, v7, v9

    :goto_e
    invoke-virtual {v6, v3, v7}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->put([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_12
    const/4 v5, 0x2

    check-cast v4, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_f
    if-lt v7, v6, :cond_13

    goto :goto_11

    :cond_13
    aget-object v9, v4, v7

    invoke-virtual {v2, v9}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->get(Ljava/lang/Object;)I

    move-result v9

    if-le v14, v9, :cond_15

    move v8, v7

    :cond_14
    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v15, 0x1

    goto :goto_13

    :cond_15
    if-ne v14, v9, :cond_16

    const/4 v8, -0x1

    :goto_10
    const/4 v9, -0x1

    goto :goto_12

    :cond_16
    if-ge v14, v9, :cond_14

    :goto_11
    goto :goto_10

    :goto_12
    if-eq v8, v9, :cond_8

    const/4 v15, 0x1

    add-int/lit8 v7, v6, 0x1

    new-array v7, v7, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    const/4 v10, 0x0

    invoke-static {v4, v10, v7, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v13, v7, v8

    add-int/lit8 v9, v8, 0x1

    sub-int/2addr v6, v8

    invoke-static {v4, v8, v7, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-virtual {v4, v3, v7}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->put([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :goto_13
    add-int/2addr v7, v15

    goto :goto_f

    :goto_14
    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-virtual {v4, v3, v13}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->put([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;->addSuperPackageNames([Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;)V

    :goto_15
    add-int/2addr v1, v15

    move-object/from16 v3, p4

    move-wide/from16 v8, v16

    goto/16 :goto_6

    :cond_17
    move-object/from16 v12, p5

    move-wide/from16 v16, v8

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v15, 0x1

    aget-object v4, v1, v10

    invoke-virtual {v2, v4, v10}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    add-int/2addr v10, v15

    move-object/from16 v3, p4

    goto/16 :goto_5
.end method

.method public static synthetic a([Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/NameLookup;->lambda$2([Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/core/NameLookup;Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/NameLookup;->lambda$4(Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c([C[CZ)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/NameLookup;->lambda$5([C[CZ)Z

    move-result p0

    return p0
.end method

.method private checkModulePackages(Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;I)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, p3

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->keyTable:[[Ljava/lang/Object;

    aget-object p3, v0, p3

    check-cast p3, [Ljava/lang/String;

    instance-of v0, v1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    if-eqz v0, :cond_0

    check-cast v1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-direct {p0, v1, p2}, Lorg/eclipse/jdt/internal/core/NameLookup;->moduleMatches(Lorg/eclipse/jdt/core/IPackageFragmentRoot;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;)V

    goto :goto_1

    :cond_0
    check-cast v1, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-eqz v1, :cond_4

    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    aget-object v3, v1, v2

    check-cast v3, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-direct {p0, v3, p2}, Lorg/eclipse/jdt/internal/core/NameLookup;->moduleMatches(Lorg/eclipse/jdt/core/IPackageFragmentRoot;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, p3}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic d(ZLjava/lang/String;[Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/NameLookup;->lambda$3(ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private findAllTypes(Ljava/lang/String;ZILorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V
    .locals 13

    move-object v6, p0

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragmentRoots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    array-length v7, v0

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-lt v9, v7, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragmentRoots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    aget-object v0, v0, v9

    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v10
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_4

    array-length v11, v10

    move v12, v8

    :goto_1
    if-lt v12, v11, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    aget-object v0, v10, v12

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/core/IPackageFragment;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypes(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZILorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :catch_0
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method private findCompilationUnit([Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 3

    .line 16
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 17
    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p1

    .line 18
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnits()[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    .line 19
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    aget-object v1, p1, v0

    .line 21
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->equalsIgnoreJavaLikeExtension(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private findSecondaryType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p3, p4, p5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->secondaryTypes(Lorg/eclipse/jdt/core/IJavaProject;ZLorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p5

    if-lez p5, :cond_2

    if-nez p1, :cond_0

    const-string p5, ""

    goto :goto_0

    :cond_0
    move-object p5, p1

    :goto_0
    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p5

    if-lez p5, :cond_2

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/eclipse/jdt/core/IType;

    if-eqz p4, :cond_2

    sget-boolean p5, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz p5, :cond_1

    const-string p5, "NameLookup FIND SECONDARY TYPES:"

    invoke-static {p5}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, " -> pkg name: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p5, " -> type name: "

    invoke-direct {p1, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " -> project: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " -> type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p4

    :catch_0
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMemberType(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;I)Lorg/eclipse/jdt/core/IType;
    .locals 2

    :goto_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    const/16 v1, 0x2e

    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    move p3, v1

    goto :goto_0
.end method

.method public static getModuleDescription(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/IPackageFragmentRoot;Ljava/util/Map;Ljava/util/function/Function;)Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/JavaProject;",
            "Lorg/eclipse/jdt/core/IPackageFragmentRoot;",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IPackageFragmentRoot;",
            "Lorg/eclipse/jdt/core/IModuleDescription;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/eclipse/jdt/core/IPackageFragmentRoot;",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            ">;)",
            "Lorg/eclipse/jdt/core/IModuleDescription;"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IModuleDescription;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/eclipse/jdt/internal/core/NameLookup;->NO_MODULE:Lorg/eclipse/jdt/core/IModuleDescription;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    invoke-static {p0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/core/IClasspathEntry;

    instance-of v2, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    if-eqz v2, :cond_2

    check-cast p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isModular()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lorg/eclipse/jdt/internal/core/NameLookup;->NO_MODULE:Lorg/eclipse/jdt/core/IModuleDescription;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaProject;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    if-nez v0, :cond_5

    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/core/IClasspathEntry;

    instance-of p3, p0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    if-eqz p3, :cond_4

    move-object p3, p0

    check-cast p3, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->isModular()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    if-nez v0, :cond_5

    move-object p3, p1

    check-cast p3, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {p3, p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getAutomaticModuleDescription(Lorg/eclipse/jdt/core/IClasspathEntry;)Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    goto :goto_1

    :cond_4
    instance-of p0, p1, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    if-eqz p0, :cond_5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    move-object p0, v0

    goto :goto_2

    :cond_6
    sget-object p0, Lorg/eclipse/jdt/internal/core/NameLookup;->NO_MODULE:Lorg/eclipse/jdt/core/IModuleDescription;

    :goto_2
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catch_0
    sget-object p0, Lorg/eclipse/jdt/internal/core/NameLookup;->NO_MODULE:Lorg/eclipse/jdt/core/IModuleDescription;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static getModuleDescriptionInfo(Lorg/eclipse/jdt/core/IModuleDescription;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    instance-of v0, p0, Lorg/eclipse/jdt/internal/core/AbstractModule$AutoModule;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/core/AbstractModule$AutoModule;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/AbstractModule$AutoModule;->isAutoNameFromManifest()Z

    move-result v0

    .line 3
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->createAutomatic([CZ)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 4
    :cond_0
    check-cast p0, Lorg/eclipse/jdt/internal/core/AbstractModule;

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/AbstractModule;->getModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/JavaModelException;->isDoesNotExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getViolatedRestriction(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/ClasspathEntry;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;
    .locals 0

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getAccessRuleSet()Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    move-result-object p3

    if-eqz p3, :cond_0

    const/16 p4, 0x2e

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-static {p4, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/16 p4, 0x2f

    invoke-static {p2, p1, p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[C[CC)[C

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->getViolatedRestriction([C)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object p4

    :cond_0
    return-object p4
.end method

.method private isPrimaryType(Ljava/lang/String;Lorg/eclipse/jdt/core/IType;Z)Z
    .locals 3

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return v2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, v2, p1, v2, p2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static synthetic lambda$2([Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$3(ZLjava/lang/String;[Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    check-cast p2, [Ljava/lang/String;

    const/16 p0, 0x2e

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private synthetic lambda$4(Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->getIndex([Ljava/lang/Object;)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/NameLookup;->checkModulePackages(Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;I)V

    return-void
.end method

.method private static synthetic lambda$5([C[CZ)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private moduleMatches(Lorg/eclipse/jdt/core/IPackageFragmentRoot;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Z
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    aget-object v3, p2, v2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private seekModuleAwarePartialPackageFragments(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->ALL_PREFIX:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->keyTable:[[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/core/s;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/core/s;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/core/t;

    invoke-direct {v2, v0, p1}, Lorg/eclipse/jdt/internal/core/t;-><init>(ZLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/u;

    invoke-direct {v0, p0, p2, p3}, Lorg/eclipse/jdt/internal/core/u;-><init>(Lorg/eclipse/jdt/internal/core/NameLookup;Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public acceptType(Lorg/eclipse/jdt/core/IType;IZ)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_9

    const/16 v1, 0x1e

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    if-eqz p3, :cond_1

    :try_start_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getModifiers()I

    move-result p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result p1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p3, 0x2

    if-eq p1, v0, :cond_7

    if-eq p1, p3, :cond_5

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    and-int/lit8 p1, p2, 0x10

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    and-int/lit8 p1, p2, 0x8

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v1

    :cond_7
    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_8

    return v0

    :catch_0
    :cond_8
    return v1

    :cond_9
    :goto_1
    return v0
.end method

.method public findCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 5

    .line 1
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    const/16 v1, 0x2e

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 3
    invoke-static {v1, p1, v3, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->splitOn(CLjava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v1, 0x24

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 6
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->getIndex([Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v4, :cond_5

    .line 8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 9
    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->keyTable:[[Ljava/lang/Object;

    aget-object v0, v1, v0

    check-cast v0, [Ljava/lang/String;

    .line 10
    instance-of v1, v2, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    if-eqz v1, :cond_2

    .line 11
    check-cast v2, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-direct {p0, v0, p1, v2}, Lorg/eclipse/jdt/internal/core/NameLookup;->findCompilationUnit([Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    check-cast v2, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    .line 13
    :goto_0
    array-length v1, v2

    if-lt v3, v1, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    aget-object v1, v2, v3

    check-cast v1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    .line 15
    invoke-direct {p0, v0, p1, v1}, Lorg/eclipse/jdt/internal/core/NameLookup;->findCompilationUnit([Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findModule([C)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekModule([CZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->getModules()[Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_0

    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getModulePathManager()Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->seekModule([CZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->getModules()[Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    array-length p1, v2

    if-lez p1, :cond_1

    new-instance p1, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    aget-object v0, v2, v1

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;-><init>(Lorg/eclipse/jdt/core/IModuleDescription;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPackageFragment(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragment;
    .locals 9

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragmentRoots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    array-length v4, v3

    if-lt v0, v4, :cond_0

    goto :goto_3

    :cond_0
    aget-object v3, v3, v0

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isExternal()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    const/16 v6, 0x2e

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v5, v3

    move v6, v1

    :goto_1
    if-lt v6, v5, :cond_2

    goto :goto_2

    :cond_2
    aget-object v7, v3, v6

    check-cast v7, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-virtual {p0, v4, v7, v1}, Lorg/eclipse/jdt/internal/core/NameLookup;->nameMatches(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    return-object v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    if-nez v0, :cond_6

    return-object v2

    :cond_6
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    const/4 p1, 0x3

    if-eq v3, p1, :cond_8

    const/4 p1, 0x4

    if-eq v3, p1, :cond_7

    :goto_3
    return-object v2

    :cond_7
    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragment;

    return-object v0

    :cond_8
    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p1

    return-object p1

    :cond_9
    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    :try_start_1
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v2

    :cond_a
    instance-of v4, v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    if-eqz v4, :cond_b

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    check-cast p1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p1

    return-object p1

    :cond_b
    check-cast v0, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    :goto_4
    array-length v3, v0

    if-lt v1, v3, :cond_c

    goto :goto_5

    :cond_c
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    check-cast p1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p1
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_1
    :cond_e
    :goto_5
    return-object v2

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->path_mustBeAbsolute:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findPackageFragments(Ljava/lang/String;Z)[Lorg/eclipse/jdt/core/IPackageFragment;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/NameLookup;->findPackageFragments(Ljava/lang/String;ZZ)[Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object p1

    return-object p1
.end method

.method public findPackageFragments(Ljava/lang/String;ZZ)[Lorg/eclipse/jdt/core/IPackageFragment;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 2
    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    if-eqz p3, :cond_0

    const/16 v6, 0x2a

    .line 3
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_1

    const/16 v6, 0x3f

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_1

    :cond_0
    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    const/16 v7, 0x2e

    const/4 v8, 0x0

    if-nez v2, :cond_6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v7, v1, v5, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->splitOn(CLjava/lang/String;II)[Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->getIndex([Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    return-object v8

    .line 6
    :cond_3
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    .line 7
    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->keyTable:[[Ljava/lang/Object;

    aget-object v1, v2, v1

    move-object v9, v1

    check-cast v9, [Ljava/lang/String;

    .line 8
    instance-of v1, v3, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    if-eqz v1, :cond_4

    .line 9
    check-cast v3, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v3, v9}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v1

    new-array v2, v4, [Lorg/eclipse/jdt/core/IPackageFragment;

    aput-object v1, v2, v5

    return-object v2

    .line 10
    :cond_4
    move-object v10, v3

    check-cast v10, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    .line 11
    array-length v1, v10

    new-array v11, v1, [Lorg/eclipse/jdt/core/IPackageFragment;

    .line 12
    :goto_1
    array-length v1, v10

    if-lt v5, v1, :cond_5

    return-object v11

    .line 13
    :cond_5
    aget-object v1, v10, v5

    check-cast v1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v1

    aput-object v1, v11, v5

    add-int/2addr v5, v4

    goto :goto_1

    .line 14
    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v7, v1, v5, v9}, Lorg/eclipse/jdt/internal/core/util/Util;->splitOn(CLjava/lang/String;II)[Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_7

    if-nez v3, :cond_7

    .line 15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_3

    :cond_7
    move-object v1, v8

    .line 16
    :goto_3
    iget-object v9, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->keyTable:[[Ljava/lang/Object;

    .line 17
    array-length v10, v9

    move v12, v5

    move-object v11, v8

    :goto_4
    if-lt v12, v10, :cond_9

    if-nez v8, :cond_8

    return-object v11

    .line 18
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 19
    new-array v1, v1, [Lorg/eclipse/jdt/core/IPackageFragment;

    .line 20
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1

    .line 21
    :cond_9
    aget-object v13, v9, v12

    check-cast v13, [Ljava/lang/String;

    if-eqz v13, :cond_c

    if-nez v3, :cond_b

    if-eqz v6, :cond_a

    .line 22
    invoke-static {v13}, Lorg/eclipse/jdt/internal/core/util/Util;->concatCompoundNameToCharArray([Ljava/lang/String;)[C

    move-result-object v14

    invoke-static {v1, v14, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result v14

    if-nez v14, :cond_b

    goto :goto_5

    .line 23
    :cond_a
    invoke-static {v13, v7, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->startsWithIgnoreCase([Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_b

    :goto_5
    goto :goto_6

    .line 24
    :cond_b
    iget-object v14, v0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    iget-object v14, v14, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->valueTable:[Ljava/lang/Object;

    aget-object v14, v14, v12

    .line 25
    instance-of v15, v14, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    if-eqz v15, :cond_f

    .line 26
    check-cast v14, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v14, v13}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v13

    if-nez v11, :cond_d

    .line 27
    new-array v11, v4, [Lorg/eclipse/jdt/core/IPackageFragment;

    aput-object v13, v11, v5

    :cond_c
    :goto_6
    move-object/from16 v16, v1

    move v1, v4

    move v0, v5

    goto :goto_b

    :cond_d
    if-nez v8, :cond_e

    .line 28
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 29
    aget-object v14, v11, v5

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_e
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 31
    :cond_f
    check-cast v14, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    .line 32
    array-length v15, v14

    :goto_7
    if-lt v5, v15, :cond_10

    move-object/from16 v16, v1

    move v1, v4

    const/4 v0, 0x0

    goto :goto_b

    .line 33
    :cond_10
    aget-object v17, v14, v5

    move-object/from16 v4, v17

    check-cast v4, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    .line 34
    invoke-virtual {v4, v13}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v4

    if-nez v11, :cond_11

    const/4 v0, 0x1

    .line 35
    new-array v11, v0, [Lorg/eclipse/jdt/core/IPackageFragment;

    const/4 v0, 0x0

    aput-object v4, v11, v0

    move-object/from16 v16, v1

    :goto_8
    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    if-nez v8, :cond_12

    .line 36
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v1

    .line 37
    aget-object v1, v11, v0

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_12
    move-object/from16 v16, v1

    .line 38
    :goto_9
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :goto_a
    add-int/2addr v5, v1

    move-object/from16 v0, p0

    move v4, v1

    move-object/from16 v1, v16

    goto :goto_7

    :goto_b
    add-int/2addr v12, v1

    move v5, v0

    move v4, v1

    move-object/from16 v1, v16

    move-object/from16 v0, p0

    goto/16 :goto_4
.end method

.method public findType(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZI)Lorg/eclipse/jdt/core/IType;
    .locals 8

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 42
    :cond_0
    new-instance v7, Lorg/eclipse/jdt/internal/core/SingleTypeRequestor;

    invoke-direct {v7}, Lorg/eclipse/jdt/internal/core/SingleTypeRequestor;-><init>()V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v7

    .line 43
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypes(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZILorg/eclipse/jdt/internal/core/IJavaElementRequestor;Z)V

    .line 44
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/SingleTypeRequestor;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public findType(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZIZZ)Lorg/eclipse/jdt/core/IType;
    .locals 8

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_0
    new-instance v7, Lorg/eclipse/jdt/internal/core/SingleTypeRequestor;

    invoke-direct {v7}, Lorg/eclipse/jdt/internal/core/SingleTypeRequestor;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v7

    move v6, p6

    .line 39
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypes(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZILorg/eclipse/jdt/internal/core/IJavaElementRequestor;Z)V

    .line 40
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/SingleTypeRequestor;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p3

    if-nez p3, :cond_1

    if-eqz p6, :cond_1

    .line 41
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/NameLookup;->findSecondaryType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;

    move-result-object p3

    :cond_1
    return-object p3
.end method

.method public findType(Ljava/lang/String;ZI)Lorg/eclipse/jdt/core/IType;
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;ZIZ)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->type:Lorg/eclipse/jdt/core/IType;

    :goto_0
    return-object p1
.end method

.method public findType(Ljava/lang/String;Ljava/lang/String;ZIZ)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v7, p5

    .line 2
    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;Ljava/lang/String;ZIZZZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object p1

    return-object p1
.end method

.method public findType(Ljava/lang/String;Ljava/lang/String;ZIZZZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 3
    invoke-virtual/range {v0 .. v9}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;Ljava/lang/String;ZIZZZLorg/eclipse/core/runtime/IProgressMonitor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object v0

    return-object v0
.end method

.method public findType(Ljava/lang/String;Ljava/lang/String;ZIZZZLorg/eclipse/core/runtime/IProgressMonitor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v9}, Lorg/eclipse/jdt/internal/core/NameLookup;->findPackageFragments(Ljava/lang/String;Z)[Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v10

    :cond_1
    :goto_0
    move-object v11, v0

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 8
    :goto_2
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;-><init>()V

    move-object/from16 v1, p9

    .line 9
    invoke-virtual {v7, v11, v9, v0, v1}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekPackageFragments(Ljava/lang/String;ZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)V

    .line 10
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->getPackageFragments()[Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v12

    .line 11
    array-length v13, v12

    move v15, v9

    move-object v0, v10

    move-object v5, v0

    move-object v6, v5

    move-object v14, v6

    :goto_3
    if-lt v15, v13, :cond_c

    if-eqz v6, :cond_3

    return-object v6

    :cond_3
    if-eqz p5, :cond_6

    if-eqz v14, :cond_6

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v3, v14

    move/from16 v4, p6

    move-object/from16 v5, p8

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/NameLookup;->findSecondaryType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    goto :goto_5

    .line 13
    :cond_4
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    if-nez v0, :cond_6

    .line 14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_5

    .line 15
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/eclipse/jdt/core/IJavaProject;

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p1

    move/from16 v4, p6

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/NameLookup;->findSecondaryType(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_5
    if-eqz v0, :cond_a

    .line 16
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 17
    invoke-interface {v1}, Lorg/eclipse/jdt/core/ICompilationUnit;->isWorkingCopy()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 18
    :try_start_0
    invoke-interface {v1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_7

    move v2, v9

    goto :goto_6

    .line 19
    :cond_7
    array-length v2, v1

    :goto_6
    if-lt v9, v2, :cond_8

    move-object v0, v10

    goto :goto_7

    .line 20
    :cond_8
    aget-object v3, v1, v9

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :catch_0
    return-object v10

    :cond_a
    :goto_7
    if-nez v0, :cond_b

    goto :goto_8

    .line 21
    :cond_b
    new-instance v1, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    invoke-direct {v1, v0, v10, v10}, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;-><init>(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;Lorg/eclipse/jdt/core/IClasspathEntry;)V

    move-object v10, v1

    :goto_8
    return-object v10

    .line 22
    :cond_c
    aget-object v2, v12, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v5

    move/from16 v5, p6

    move-object/from16 v16, v6

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZIZZ)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_f

    .line 23
    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    .line 24
    iget-object v2, v7, Lorg/eclipse/jdt/internal/core/NameLookup;->rootToResolvedEntries:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    if-eqz v2, :cond_d

    if-eqz p7, :cond_d

    .line 25
    invoke-direct {v7, v8, v11, v2, v10}, Lorg/eclipse/jdt/internal/core/NameLookup;->getViolatedRestriction(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/ClasspathEntry;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object v3

    goto :goto_9

    :cond_d
    move-object v3, v10

    .line 26
    :goto_9
    new-instance v6, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    .line 27
    iget-object v4, v7, Lorg/eclipse/jdt/internal/core/NameLookup;->rootProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v5, v7, Lorg/eclipse/jdt/internal/core/NameLookup;->rootToModule:Ljava/util/Map;

    iget-object v10, v7, Lorg/eclipse/jdt/internal/core/NameLookup;->rootToResolvedEntries:Ljava/util/Map;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lorg/eclipse/jdt/internal/core/y;

    invoke-direct {v7, v10}, Lorg/eclipse/jdt/internal/core/y;-><init>(Ljava/util/Map;)V

    invoke-static {v4, v1, v5, v7}, Lorg/eclipse/jdt/internal/core/NameLookup;->getModuleDescription(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/IPackageFragmentRoot;Ljava/util/Map;Ljava/util/function/Function;)Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v1

    .line 28
    invoke-direct {v6, v0, v3, v2, v1}, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;-><init>(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IModuleDescription;)V

    .line 29
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->ignoreIfBetter()Z

    move-result v1

    if-nez v1, :cond_e

    move-object/from16 v10, v16

    .line 30
    invoke-virtual {v6, v10}, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->isBetter(Lorg/eclipse/jdt/internal/core/NameLookup$Answer;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-object v6

    :cond_e
    move-object/from16 v10, v16

    .line 31
    invoke-virtual {v6, v10}, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->isBetter(Lorg/eclipse/jdt/internal/core/NameLookup$Answer;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v5, v9

    goto :goto_c

    :cond_f
    move-object/from16 v10, v16

    if-nez v10, :cond_10

    if-eqz p5, :cond_10

    if-nez v14, :cond_11

    .line 32
    aget-object v1, v12, v15

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v14

    :cond_10
    :goto_a
    move-object v5, v9

    :goto_b
    move-object v6, v10

    goto :goto_c

    :cond_11
    if-nez v9, :cond_12

    .line 33
    aget-object v2, v12, v15

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 34
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 35
    invoke-virtual {v5, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    aget-object v1, v12, v15

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 37
    :cond_12
    aget-object v1, v12, v15

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :goto_c
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p0

    goto/16 :goto_3
.end method

.method public findType(Ljava/lang/String;Ljava/lang/String;ZIZ[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;
    .locals 10

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v7, p5

    move-object/from16 v9, p6

    .line 1
    invoke-virtual/range {v0 .. v9}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;Ljava/lang/String;ZIZZZLorg/eclipse/core/runtime/IProgressMonitor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object v0

    return-object v0
.end method

.method public findType(Ljava/lang/String;ZIZ)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 47
    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;ZIZZZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object p1

    return-object p1
.end method

.method public findType(Ljava/lang/String;ZIZZZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;
    .locals 12

    move-object v0, p1

    const/16 v1, 0x2e

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 49
    const-string v1, ""

    move-object v4, v0

    move-object v5, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 50
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v5, v2

    :goto_0
    move-object v3, p0

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    .line 52
    invoke-virtual/range {v3 .. v11}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;Ljava/lang/String;ZIZZZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object v0

    return-object v0
.end method

.method public getModuleDescriptionInfo(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 4

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->rootProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->rootToModule:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->rootToResolvedEntries:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/eclipse/jdt/internal/core/y;

    invoke-direct {v3, v2}, Lorg/eclipse/jdt/internal/core/y;-><init>(Ljava/util/Map;)V

    invoke-static {v0, p1, v1, v3}, Lorg/eclipse/jdt/internal/core/NameLookup;->getModuleDescription(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/IPackageFragmentRoot;Ljava/util/Map;Ljava/util/function/Function;)Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/NameLookup;->getModuleDescriptionInfo(Lorg/eclipse/jdt/core/IModuleDescription;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasCompilationUnit([[C[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Z
    .locals 3

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekPackageFragments(Ljava/lang/String;ZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElementRequestor;->getPackageFragments()[Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object p1

    array-length p2, p1

    move v0, v1

    :goto_0
    if-lt v0, p2, :cond_2

    return v1

    :cond_2
    aget-object v2, p1, v0

    :try_start_0
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IPackageFragment;->containsJavaResources()Z

    move-result v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isPackage([Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPackage([Ljava/lang/String;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)Z
    .locals 5

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/NameLookup;->isPackage([Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    return v1

    :cond_1
    aget-object v3, p2, v2

    .line 4
    const-string v4, "."

    invoke-static {v4, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getPackageFragment(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public nameMatches(Ljava/lang/String;Lorg/eclipse/jdt/core/ICompilationUnit;Z)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->equalsIgnoreJavaLikeExtension(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public nameMatches(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;Z)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public seekModule([CZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V
    .locals 8

    if-eqz p2, :cond_1

    sget-object p2, Lorg/eclipse/jdt/core/compiler/CharOperation;->ALL_PREFIX:[C

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/eclipse/jdt/internal/core/v;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/core/v;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/eclipse/jdt/internal/core/w;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/core/w;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/eclipse/jdt/internal/core/x;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/core/x;-><init>()V

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragmentRoots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-lt v2, v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragmentRoots:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    aget-object v3, v3, v2

    instance-of v4, v3, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-interface {p2, p1, v4, v1}, Lorg/eclipse/jdt/internal/core/NameLookup$IPrefixMatcherCharArray;->matches([C[CZ)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->rootProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->rootToModule:Ljava/util/Map;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->rootToResolvedEntries:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lorg/eclipse/jdt/internal/core/y;

    invoke-direct {v7, v6}, Lorg/eclipse/jdt/internal/core/y;-><init>(Ljava/util/Map;)V

    invoke-static {v4, v3, v5, v7}, Lorg/eclipse/jdt/internal/core/NameLookup;->getModuleDescription(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/IPackageFragmentRoot;Ljava/util/Map;Ljava/util/function/Function;)Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-interface {p2, p1, v4, v1}, Lorg/eclipse/jdt/internal/core/NameLookup$IPrefixMatcherCharArray;->matches([C[CZ)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p3, v3}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptModule(Lorg/eclipse/jdt/core/IModuleDescription;)V

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public seekModuleReferences(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekModule([CZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V

    return-void
.end method

.method public seekPackageFragments(Ljava/lang/String;ZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V
    .locals 9

    const/16 v0, 0x2e

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->splitOn(CLjava/lang/String;II)[Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->keyTable:[[Ljava/lang/Object;

    .line 9
    array-length v4, v3

    move p1, v1

    :goto_0
    if-lt p1, v4, :cond_0

    goto/16 :goto_4

    .line 10
    :cond_0
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 11
    :cond_1
    aget-object v0, v3, p1

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 12
    invoke-static {v0, v2, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->startsWithIgnoreCase([Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 13
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->valueTable:[Ljava/lang/Object;

    aget-object v5, v5, p1

    .line 14
    instance-of v6, v5, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    if-eqz v6, :cond_2

    .line 15
    check-cast v5, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    .line 16
    invoke-virtual {v5, v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;)V

    goto :goto_2

    .line 17
    :cond_2
    check-cast v5, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    .line 18
    array-length v6, v5

    move v7, v1

    :goto_1
    if-lt v7, v6, :cond_3

    goto :goto_2

    .line 19
    :cond_3
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->isCanceled()Z

    move-result v8

    if-eqz v8, :cond_4

    return-void

    .line 20
    :cond_4
    aget-object v8, v5, v7

    check-cast v8, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    .line 21
    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v8

    invoke-interface {p3, v8}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 22
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {v0, p1, v1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->splitOn(CLjava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->getIndex([Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_a

    .line 24
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/NameLookup;->packageFragments:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 25
    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->keyTable:[[Ljava/lang/Object;

    aget-object p1, p2, p1

    check-cast p1, [Ljava/lang/String;

    .line 26
    instance-of p2, v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    if-eqz p2, :cond_7

    .line 27
    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;)V

    goto :goto_4

    .line 28
    :cond_7
    check-cast v0, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-eqz v0, :cond_a

    .line 29
    array-length p2, v0

    :goto_3
    if-lt v1, p2, :cond_8

    goto :goto_4

    .line 30
    :cond_8
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_9

    return-void

    .line 31
    :cond_9
    aget-object v2, v0, v1

    check-cast v2, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    .line 32
    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v2

    invoke-interface {p3, v2}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    return-void
.end method

.method public seekPackageFragments(Ljava/lang/String;ZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)V
    .locals 3

    if-nez p4, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekPackageFragments(Ljava/lang/String;ZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekModuleAwarePartialPackageFragments(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)V

    return-void

    .line 3
    :cond_1
    array-length p2, p4

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_2

    return-void

    :cond_2
    aget-object v1, p4, v0

    .line 4
    invoke-interface {v1, p1}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getPackageFragment(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-interface {p3, v1}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public seekTypes(Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;I[Lorg/eclipse/jdt/core/IPackageFragmentRoot;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/NameLookup$Selector;

    invoke-direct {v0, p0, p7}, Lorg/eclipse/jdt/internal/core/NameLookup$Selector;-><init>(Lorg/eclipse/jdt/internal/core/NameLookup;Ljava/lang/String;)V

    const/4 p7, 0x1

    .line 2
    invoke-virtual {p0, p1, p7, v0, p6}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekPackageFragments(Ljava/lang/String;ZLorg/eclipse/jdt/internal/core/IJavaElementRequestor;[Lorg/eclipse/jdt/core/IPackageFragmentRoot;)V

    .line 3
    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/NameLookup$Selector;->pkgFragments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/NameLookup$Selector;->pkgFragments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-nez p6, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    move-object v2, p6

    check-cast v2, Lorg/eclipse/jdt/core/IPackageFragment;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p5

    move-object v5, p4

    .line 5
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypes(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZILorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V

    goto :goto_0
.end method

.method public seekTypes(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZILorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 6
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypes(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZILorg/eclipse/jdt/internal/core/IJavaElementRequestor;Z)V

    return-void
.end method

.method public seekTypes(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZILorg/eclipse/jdt/internal/core/IJavaElementRequestor;Z)V
    .locals 18

    move-object/from16 v9, p0

    move/from16 v10, p3

    if-eqz v10, :cond_0

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p1

    :goto_0
    if-nez p2, :cond_1

    move/from16 v12, p4

    move-object/from16 v13, p5

    .line 8
    invoke-direct {v9, v11, v10, v12, v13}, Lorg/eclipse/jdt/internal/core/NameLookup;->findAllTypes(Ljava/lang/String;ZILorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V

    return-void

    :cond_1
    move/from16 v12, p4

    move-object/from16 v13, p5

    .line 9
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    .line 10
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->internalKind()I

    move-result v14

    .line 11
    iget-object v0, v9, Lorg/eclipse/jdt/internal/core/NameLookup;->typesInWorkingCopies:Ljava/util/HashMap;

    const/4 v15, 0x0

    const/4 v8, 0x1

    const/16 v7, 0x2e

    const/4 v6, -0x1

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-ne v14, v8, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v16, v1

    move/from16 v17, v6

    goto :goto_3

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-nez v10, :cond_5

    if-ne v0, v6, :cond_4

    move-object v1, v11

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_2
    move/from16 v17, v0

    move-object/from16 v16, v1

    .line 14
    :goto_3
    iget-object v0, v9, Lorg/eclipse/jdt/internal/core/NameLookup;->typesInWorkingCopies:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p2

    move/from16 v3, v17

    move/from16 v4, p3

    move-object/from16 v5, v16

    move v15, v6

    move/from16 v6, p4

    move v15, v7

    move-object/from16 v7, p5

    move v15, v8

    move/from16 v8, p6

    .line 15
    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypesInWorkingCopies(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;IZLjava/lang/String;ILorg/eclipse/jdt/internal/core/IJavaElementRequestor;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_6
    move v15, v8

    :cond_7
    const/16 v8, 0x24

    if-eq v14, v15, :cond_9

    const/4 v0, 0x2

    if-eq v14, v0, :cond_8

    return-void

    :cond_8
    const/16 v0, 0x2e

    .line 16
    invoke-virtual {v11, v0, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 17
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypesInBinaryPackage(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZILorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p2

    move/from16 v3, v17

    move/from16 v4, p3

    move-object/from16 v5, v16

    move/from16 v6, p4

    move-object/from16 v7, p5

    .line 18
    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypesInSourcePackage(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;IZLjava/lang/String;ILorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V

    .line 19
    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/16 v0, 0x2e

    .line 20
    invoke-virtual {v11, v8, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-nez v10, :cond_b

    if-ne v3, v1, :cond_a

    move-object v0, v2

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    .line 22
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v5, v0

    goto :goto_5

    :cond_b
    move-object/from16 v5, v16

    :goto_5
    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    .line 23
    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypesInSourcePackage(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;IZLjava/lang/String;ILorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    :goto_6
    return-void
.end method

.method public seekTypesInBinaryPackage(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;ZILorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v8, p4

    move-object/from16 v9, p5

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    move-wide v10, v2

    goto :goto_1

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0

    :goto_1
    const/4 v12, 0x0

    if-nez p3, :cond_3

    :try_start_0
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->isCanceled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v0, :cond_1

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    :cond_1
    return-void

    :cond_2
    :try_start_1
    new-instance v2, Lorg/eclipse/jdt/internal/core/ClassFile;

    move-object/from16 v3, p2

    check-cast v3, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-direct {v2, v3, v0}, Lorg/eclipse/jdt/internal/core/ClassFile;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/ClassFile;->existsUsingJarTypeCache()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-virtual {v1, v0, v8, v12}, Lorg/eclipse/jdt/internal/core/NameLookup;->acceptType(Lorg/eclipse/jdt/core/IType;IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v9, v0}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptType(Lorg/eclipse/jdt/core/IType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_3
    :try_start_2
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v13
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    array-length v14, v13

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->localTypeName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_2

    :cond_4
    move-object v15, v0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v7, v12

    :goto_3
    if-lt v7, v14, :cond_7

    :cond_5
    :goto_4
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v0, :cond_6

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    :cond_6
    return-void

    :cond_7
    :try_start_4
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->isCanceled()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_9

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v0, :cond_8

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    :cond_8
    return-void

    :cond_9
    :try_start_5
    aget-object v6, v13, v7

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x1

    move-object/from16 v5, p1

    move-object v12, v6

    move/from16 v6, v17

    move/from16 v17, v7

    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_a

    instance-of v2, v12, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    if-eqz v2, :cond_a

    move-object v6, v12

    check-cast v6, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IOrdinaryClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x1

    invoke-virtual {v1, v15, v2, v3}, Lorg/eclipse/jdt/internal/core/NameLookup;->nameMatches(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v1, v2, v8, v4}, Lorg/eclipse/jdt/internal/core/NameLookup;->acceptType(Lorg/eclipse/jdt/core/IType;IZ)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v9, v2}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptType(Lorg/eclipse/jdt/core/IType;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :cond_b
    :goto_5
    add-int/lit8 v7, v17, 0x1

    move v12, v4

    goto :goto_3

    :goto_6
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v2, :cond_c

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    :cond_c
    throw v0

    :catch_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v0, :cond_d

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInBinaryPackage:J

    :cond_d
    return-void
.end method

.method public seekTypesInSourcePackage(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;IZLjava/lang/String;ILorg/eclipse/jdt/internal/core/IJavaElementRequestor;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p3

    move-object/from16 v1, p5

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    move-wide v9, v2

    goto :goto_1

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0

    :goto_1
    const/4 v11, 0x0

    if-nez p4, :cond_8

    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    array-length v3, v2

    move v4, v11

    :goto_2
    if-lt v4, v3, :cond_1

    goto/16 :goto_b

    :cond_1
    invoke-interface/range {p7 .. p7}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->isCanceled()Z

    move-result v5
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v0, :cond_2

    iget-wide v0, v7, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInSourcePackage:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    add-long/2addr v0, v2

    iput-wide v0, v7, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInSourcePackage:J

    :cond_2
    return-void

    :cond_3
    :try_start_1
    aget-object v5, v2, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0x2e

    invoke-virtual {v6, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v12, v13, :cond_4

    invoke-virtual {v1, v11, v6, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_4
    :goto_3
    move/from16 v12, p6

    :cond_5
    move-object/from16 v13, p7

    goto :goto_4

    :cond_6
    instance-of v6, v5, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    check-cast v5, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v5, v1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v5

    invoke-direct {v7, v5, v0, v8}, Lorg/eclipse/jdt/internal/core/NameLookup;->getMemberType(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;I)Lorg/eclipse/jdt/core/IType;

    move-result-object v5

    const/4 v6, 0x1

    move/from16 v12, p6

    invoke-virtual {v7, v5, v12, v6}, Lorg/eclipse/jdt/internal/core/NameLookup;->acceptType(Lorg/eclipse/jdt/core/IType;IZ)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v13, p7

    invoke-interface {v13, v5}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptType(Lorg/eclipse/jdt/core/IType;)V

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    move/from16 v12, p6

    move-object/from16 v13, p7

    const/4 v1, -0x1

    if-ne v8, v1, :cond_9

    move-object v14, v0

    goto :goto_5

    :cond_9
    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    :goto_5
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v15

    array-length v6, v15

    move v5, v11

    :goto_6
    if-lt v5, v6, :cond_a

    goto/16 :goto_b

    :cond_a
    invoke-interface/range {p7 .. p7}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->isCanceled()Z

    move-result v1
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_c

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v0, :cond_b

    iget-wide v0, v7, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInSourcePackage:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    add-long/2addr v0, v2

    iput-wide v0, v7, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInSourcePackage:J

    :cond_b
    return-void

    :cond_c
    :try_start_2
    aget-object v1, v15, v5

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_d

    :catch_0
    :goto_7
    move/from16 v16, v5

    move/from16 v20, v6

    goto :goto_9

    :cond_d
    :try_start_3
    check-cast v1, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v4

    array-length v3, v4

    move v2, v11

    :goto_8
    if-lt v2, v3, :cond_e

    goto :goto_7

    :cond_e
    aget-object v16, v4, v2
    :try_end_3
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v1, p0

    move/from16 v17, v2

    move-object/from16 v2, p1

    move/from16 v18, v3

    move/from16 v3, p3

    move-object/from16 v19, v4

    move-object/from16 v4, v16

    move/from16 v16, v5

    move-object/from16 v5, p7

    move/from16 v20, v6

    move/from16 v6, p6

    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypesInTopLevelType(Ljava/lang/String;ILorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;I)Z
    :try_end_4
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v2, v17, 0x1

    move/from16 v5, v16

    move/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v6, v20

    goto :goto_8

    :catch_1
    :goto_9
    add-int/lit8 v5, v16, 0x1

    move/from16 v6, v20

    goto :goto_6

    :goto_a
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v1, :cond_f

    iget-wide v1, v7, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInSourcePackage:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    add-long/2addr v1, v3

    iput-wide v1, v7, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInSourcePackage:J

    :cond_f
    throw v0

    :catch_2
    :goto_b
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v0, :cond_10

    iget-wide v0, v7, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInSourcePackage:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    add-long/2addr v0, v2

    iput-wide v0, v7, Lorg/eclipse/jdt/internal/core/NameLookup;->timeSpentInSeekTypesInSourcePackage:J

    :cond_10
    return-void
.end method

.method public seekTypesInTopLevelType(Ljava/lang/String;ILorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;I)Z
    .locals 2

    invoke-interface {p3}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p5, p1}, Lorg/eclipse/jdt/internal/core/NameLookup;->acceptType(Lorg/eclipse/jdt/core/IType;IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p4, p3}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptType(Lorg/eclipse/jdt/core/IType;)V

    return p1

    :cond_1
    return v1

    :cond_2
    invoke-virtual/range {p0 .. p5}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypesInType(Ljava/lang/String;ILorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;I)Z

    move-result p1

    return p1
.end method

.method public seekTypesInType(Ljava/lang/String;ILorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;I)Z
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/core/IType;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v3
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v4, v3

    if-nez v4, :cond_0

    return v2

    :cond_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v1, v5, :cond_1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move v7, v6

    goto :goto_0

    :cond_1
    move-object v5, v0

    move v7, v2

    :goto_0
    move v8, v2

    :goto_1
    if-lt v8, v4, :cond_2

    return v2

    :cond_2
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->isCanceled()Z

    move-result v9

    if-eqz v9, :cond_3

    return v2

    :cond_3
    aget-object v13, v3, v8

    invoke-interface {v13}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v7, :cond_4

    add-int/2addr v1, v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/16 v0, 0x2e

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    move-object/from16 v10, p0

    move-object/from16 v14, p4

    move/from16 v15, p5

    invoke-virtual/range {v10 .. v15}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypesInType(Ljava/lang/String;ILorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;I)Z

    move-result v0

    return v0

    :cond_4
    move-object/from16 v9, p0

    move/from16 v10, p5

    invoke-virtual {v9, v13, v10, v6}, Lorg/eclipse/jdt/internal/core/NameLookup;->acceptType(Lorg/eclipse/jdt/core/IType;IZ)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v11, p4

    invoke-interface {v11, v13}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptMemberType(Lorg/eclipse/jdt/core/IType;)V

    return v6

    :cond_5
    move-object/from16 v11, p4

    goto :goto_2

    :cond_6
    move-object/from16 v9, p0

    move-object/from16 v11, p4

    move/from16 v10, p5

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    move-object/from16 v9, p0

    return v2
.end method

.method public seekTypesInWorkingCopies(Ljava/lang/String;Lorg/eclipse/jdt/core/IPackageFragment;IZLjava/lang/String;ILorg/eclipse/jdt/internal/core/IJavaElementRequestor;Z)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move/from16 v8, p3

    move/from16 v9, p6

    move-object/from16 v10, p7

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez p4, :cond_8

    iget-object v2, v6, Lorg/eclipse/jdt/internal/core/NameLookup;->typesInWorkingCopies:Ljava/util/HashMap;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_10

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/eclipse/jdt/core/IType;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/eclipse/jdt/core/IType;

    invoke-direct {v6, v1, v7, v8}, Lorg/eclipse/jdt/internal/core/NameLookup;->getMemberType(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;I)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    if-nez p8, :cond_1

    invoke-direct {v6, v7, v1, v11}, Lorg/eclipse/jdt/internal/core/NameLookup;->isPrimaryType(Ljava/lang/String;Lorg/eclipse/jdt/core/IType;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v11

    :cond_1
    invoke-virtual {v6, v0, v9, v12}, Lorg/eclipse/jdt/internal/core/NameLookup;->acceptType(Lorg/eclipse/jdt/core/IType;IZ)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v10, v0}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptType(Lorg/eclipse/jdt/core/IType;)V

    return v12

    :cond_2
    instance-of v2, v1, [Lorg/eclipse/jdt/core/IType;

    if-eqz v2, :cond_10

    sget-object v2, Lorg/eclipse/jdt/internal/core/NameLookup;->NO_TYPES:[Lorg/eclipse/jdt/core/IType;

    if-ne v1, v2, :cond_4

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v10, v0}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptType(Lorg/eclipse/jdt/core/IType;)V

    :cond_3
    return v12

    :cond_4
    check-cast v1, [Lorg/eclipse/jdt/core/IType;

    array-length v0, v1

    move v2, v11

    :goto_1
    if-lt v2, v0, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-interface/range {p7 .. p7}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_6

    return v11

    :cond_6
    aget-object v3, v1, v2

    invoke-direct {v6, v3, v7, v8}, Lorg/eclipse/jdt/internal/core/NameLookup;->getMemberType(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;I)Lorg/eclipse/jdt/core/IType;

    move-result-object v3

    invoke-virtual {v6, v3, v9, v12}, Lorg/eclipse/jdt/internal/core/NameLookup;->acceptType(Lorg/eclipse/jdt/core/IType;IZ)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v10, v3}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->acceptType(Lorg/eclipse/jdt/core/IType;)V

    return v12

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    iget-object v2, v6, Lorg/eclipse/jdt/internal/core/NameLookup;->typesInWorkingCopies:Ljava/util/HashMap;

    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_a
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    invoke-interface/range {p7 .. p7}, Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_c

    return v11

    :cond_c
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/core/IType;

    if-eqz v1, :cond_e

    if-nez p8, :cond_d

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/core/IType;

    invoke-direct {v6, v7, v1, v12}, Lorg/eclipse/jdt/internal/core/NameLookup;->isPrimaryType(Ljava/lang/String;Lorg/eclipse/jdt/core/IType;Z)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    move-object v3, v0

    check-cast v3, Lorg/eclipse/jdt/core/IType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v4, p7

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypesInTopLevelType(Ljava/lang/String;ILorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;I)Z

    goto :goto_3

    :cond_e
    instance-of v1, v0, [Lorg/eclipse/jdt/core/IType;

    if-eqz v1, :cond_a

    move-object v14, v0

    check-cast v14, [Lorg/eclipse/jdt/core/IType;

    array-length v15, v14

    move v5, v11

    :goto_4
    if-lt v5, v15, :cond_f

    goto :goto_3

    :cond_f
    aget-object v3, v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v4, p7

    move/from16 v16, v5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/NameLookup;->seekTypesInTopLevelType(Ljava/lang/String;ILorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;I)Z

    add-int/lit8 v5, v16, 0x1

    goto :goto_4

    :cond_10
    :goto_5
    return v11
.end method
