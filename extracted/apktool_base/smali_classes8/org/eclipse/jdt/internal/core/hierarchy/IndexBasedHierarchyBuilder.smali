.class public Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;
.super Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;
    }
.end annotation


# static fields
.field public static final MAXTICKS:I = 0x320


# instance fields
.field protected binariesFromIndexMatches:Ljava/util/Map;

.field protected cuToHandle:Ljava/util/Map;

.field protected scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;-><init>(Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;)V

    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->cuToHandle:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->binariesFromIndexMatches:Ljava/util/Map;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    return-void
.end method

.method private buildForProject(Lorg/eclipse/jdt/internal/core/JavaProject;Ljava/util/ArrayList;[Lorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {p5, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    new-array v1, v0, [Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p2

    array-length v2, p2

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-direct {v3, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v0, :cond_8

    const/4 p2, 0x1

    invoke-virtual {p5, p2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    new-instance v0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$1;

    invoke-direct {v0, p0, v3}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$1;-><init>(Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, p2

    goto :goto_1

    :cond_0
    move v2, v4

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v3

    if-eqz v3, :cond_4

    if-nez p3, :cond_1

    move v5, v4

    goto :goto_2

    :cond_1
    array-length v5, p3

    :goto_2
    if-nez v5, :cond_2

    new-array p3, p2, [Lorg/eclipse/jdt/core/ICompilationUnit;

    aput-object v3, p3, v4

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v5, 0x1

    new-array v6, v6, [Lorg/eclipse/jdt/core/ICompilationUnit;

    aput-object v3, v6, v4

    invoke-static {p3, v4, v6, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v6

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    :cond_4
    :goto_3
    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/core/JavaProject;->newSearchableNameEnvironment([Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    move-result-object p3

    iget-object v3, p3, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object p1

    const-string p2, "org.eclipse.jdt.core.compiler.taskTags"

    const-string v3, ""

    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    invoke-direct {p2, p3, p1, p0, v3}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchyResolver:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;

    const/16 p1, 0x9

    if-eqz v0, :cond_7

    move-object p2, v0

    check-cast p2, Lorg/eclipse/jdt/internal/core/Member;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/Member;->getOuterMostLocalContext()Lorg/eclipse/jdt/internal/core/Member;

    move-result-object p2

    if-nez p2, :cond_5

    if-nez v2, :cond_7

    const/16 p2, 0x2e

    invoke-interface {v0, p2}, Lorg/eclipse/jdt/core/IType;->getTypeQualifiedName(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->toCharArrays([Ljava/lang/String;)[[C

    move-result-object v0

    invoke-interface {p3, p2, v0}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->findType([C[[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p2

    if-nez p2, :cond_7

    return-void

    :cond_5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/Member;->isBinary()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/Member;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/Openable;

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/Openable;

    :goto_4
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchyResolver:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;

    filled-new-array {p2}, [Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object p2

    invoke-virtual {p5, p1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p1

    invoke-virtual {p4, p2, p3, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->resolve([Lorg/eclipse/jdt/internal/core/Openable;Ljava/util/HashSet;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchyResolver:Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;

    invoke-virtual {p5, p1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p1

    invoke-virtual {p2, v1, p4, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyResolver;->resolve([Lorg/eclipse/jdt/internal/core/Openable;Ljava/util/HashSet;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_7

    :cond_8
    aget-object v6, v1, v5

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/core/JavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v6

    move v7, v4

    :goto_5
    if-lt v7, v2, :cond_9

    goto :goto_6

    :cond_9
    aget-object v8, p2, v7

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :goto_6
    aget-object v6, v1, v5

    invoke-virtual {v3, v6, v7}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_b
    :goto_7
    return-void
.end method

.method private buildFromPotentialSubtypes([Ljava/lang/String;Ljava/util/HashSet;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const/16 v1, 0x64

    move-object/from16 v8, p3

    invoke-static {v8, v1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v9

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v7, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object v11, v2, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->workingCopies:[Lorg/eclipse/jdt/core/ICompilationUnit;

    const/4 v2, 0x0

    if-eqz v11, :cond_1

    array-length v3, v11

    if-lez v3, :cond_1

    new-array v4, v3, [Ljava/lang/String;

    move v5, v2

    :goto_0
    if-lt v5, v3, :cond_0

    array-length v5, v0

    add-int v6, v5, v3

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v0, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v2, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v6

    goto :goto_1

    :cond_0
    aget-object v6, v11, v5

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v12, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    array-length v3, v0

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lorg/eclipse/jdt/internal/core/Openable;

    const/4 v14, 0x1

    if-eqz v12, :cond_3

    invoke-interface {v12}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-lez v3, :cond_2

    add-int/lit8 v5, v3, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v4, v5, v3

    move-object v0, v5

    goto :goto_2

    :cond_2
    new-array v0, v14, [Ljava/lang/String;

    aput-object v4, v0, v2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v15, v3

    move-object v6, v4

    goto :goto_3

    :cond_3
    move v15, v3

    const/4 v6, 0x0

    :goto_3
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v4, 0x5f

    :try_start_0
    invoke-virtual {v1, v4}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v4

    new-instance v1, Lorg/eclipse/jdt/internal/core/util/HandleFactory;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;-><init>()V

    const/4 v13, 0x0

    move-object/from16 v24, v3

    move v3, v2

    move-object/from16 v2, v24

    :goto_4
    if-lt v3, v15, :cond_9

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v13, :cond_5

    :try_start_1
    invoke-interface {v9}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v13

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :catch_0
    move-object v0, v4

    goto :goto_6

    :cond_4
    invoke-interface {v9}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_5
    move-object v0, v13

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v4, v14}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v6
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move-object v2, v0

    move-object/from16 v3, v16

    move-object v0, v4

    move-object v4, v11

    move-object/from16 v5, p2

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->buildForProject(Lorg/eclipse/jdt/internal/core/JavaProject;Ljava/util/ArrayList;[Lorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :goto_6
    :try_start_3
    invoke-virtual {v0, v14}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->contains(Lorg/eclipse/jdt/core/IType;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_7

    :try_start_4
    invoke-interface {v9}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_6
    invoke-interface {v9}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0, v14}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v6

    move-object/from16 v1, p0

    move-object v4, v11

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->buildForProject(Lorg/eclipse/jdt/internal/core/JavaProject;Ljava/util/ArrayList;[Lorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_4
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    :cond_7
    :try_start_5
    iget-object v0, v7, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {v0, v9}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->contains(Lorg/eclipse/jdt/core/IType;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v7, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {v0, v9}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->addRootClass(Lorg/eclipse/jdt/core/IType;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    invoke-static/range {p3 .. p3}, Lorg/eclipse/core/runtime/SubMonitor;->done(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_9
    move-object/from16 v16, v2

    sub-int v2, v15, v3

    add-int/2addr v2, v14

    :try_start_6
    invoke-virtual {v4, v2}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    aget-object v2, v0, v3

    if-lez v3, :cond_a

    add-int/lit8 v17, v3, -0x1

    aget-object v14, v0, v17

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_10

    :catch_3
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move/from16 v17, v3

    move-object/from16 v22, v4

    move v0, v5

    move-object/from16 v23, v6

    goto/16 :goto_11

    :cond_a
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-eqz v14, :cond_b

    check-cast v14, Lorg/eclipse/jdt/internal/core/Openable;

    goto :goto_a

    :cond_b
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    move-object v14, v12

    goto :goto_8

    :cond_c
    iget-object v14, v7, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    invoke-virtual {v1, v2, v14}, Lorg/eclipse/jdt/internal/core/util/HandleFactory;->createOpenable(Ljava/lang/String;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object v2

    move-object v14, v2

    :goto_8
    if-nez v14, :cond_d

    :goto_9
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move/from16 v17, v3

    move-object/from16 v22, v4

    move v0, v5

    move-object/from16 v23, v6

    move-object/from16 v2, v16

    goto/16 :goto_13

    :cond_d
    :goto_a
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2
    :try_end_7
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v13, :cond_e

    :try_start_8
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_8
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object v1, v2

    move/from16 v17, v3

    move-object/from16 v22, v4

    move v0, v5

    move-object/from16 v23, v6

    move-object v2, v13

    :goto_b
    const/4 v13, 0x0

    goto/16 :goto_f

    :catch_4
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object v1, v2

    move/from16 v17, v3

    move-object/from16 v22, v4

    move v0, v5

    move-object/from16 v23, v6

    :goto_c
    move-object/from16 v2, v16

    const/4 v13, 0x0

    goto/16 :goto_12

    :cond_e
    :try_start_9
    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17
    :try_end_9
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-nez v17, :cond_f

    :try_start_a
    move-object/from16 v17, v13

    check-cast v17, Lorg/eclipse/jdt/internal/core/JavaProject;
    :try_end_a
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v19, v0

    const/4 v0, 0x1

    :try_start_b
    invoke-virtual {v4, v0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v18
    :try_end_b
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v20, v1

    move-object/from16 v1, p0

    move-object/from16 v21, v2

    move-object/from16 v2, v17

    move/from16 v17, v3

    move-object/from16 v3, v16

    move-object/from16 v22, v4

    move-object v4, v11

    move v0, v5

    move-object/from16 v5, p2

    move-object/from16 v23, v6

    move-object/from16 v6, v18

    :try_start_c
    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->buildForProject(Lorg/eclipse/jdt/internal/core/JavaProject;Ljava/util/ArrayList;[Lorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_c
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object v1, v13

    move-object/from16 v13, v21

    goto :goto_f

    :catch_5
    :goto_d
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move/from16 v17, v3

    move-object/from16 v22, v4

    move v0, v5

    move-object/from16 v23, v6

    goto :goto_e

    :catch_6
    move-object/from16 v19, v0

    goto :goto_d

    :catch_7
    :goto_e
    move-object v1, v13

    move-object/from16 v2, v16

    move-object/from16 v13, v21

    goto :goto_12

    :cond_f
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move/from16 v17, v3

    move-object/from16 v22, v4

    move v0, v5

    move-object/from16 v23, v6

    move-object v1, v13

    move-object/from16 v2, v16

    goto :goto_b

    :goto_f
    :try_start_d
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v13, :cond_10

    goto :goto_13

    :cond_10
    move-object v13, v1

    goto :goto_13

    :goto_10
    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_11
    move-object v1, v13

    goto :goto_c

    :catch_8
    :goto_12
    if-eqz v13, :cond_10

    :goto_13
    add-int/lit8 v3, v17, 0x1

    move v5, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v4, v22

    move-object/from16 v6, v23

    const/4 v14, 0x1

    goto/16 :goto_4

    :goto_14
    invoke-static/range {p3 .. p3}, Lorg/eclipse/core/runtime/SubMonitor;->done(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    throw v0
.end method

.method private static createBinaryTypeFrom(Lorg/eclipse/jdt/internal/core/nd/java/NdType;)Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getDeclaringType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getRawType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getBinaryName()[C

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->getTypeParameterSignatures()[[C

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getTypeId()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v2

    new-instance v8, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->getModifiers()I

    move-result v3

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getBinaryName()[C

    move-result-object v4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getSourceName()[C

    move-result-object v5

    array-length v2, v0

    if-nez v2, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, v0

    :goto_1
    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;-><init>(I[C[C[C[[C)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getSuperclass()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getRawType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getBinaryName()[C

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->recordSuperclass([C)V

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getInterfaces()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v8

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->getInterface()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getRawType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getBinaryName()[C

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->recordInterface([C)V

    goto :goto_2
.end method

.method private determinePossibleSubTypes(Ljava/util/HashSet;Lorg/eclipse/core/runtime/IProgressMonitor;)[Ljava/lang/String;
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$1PathCollector;

    invoke-direct {v6, p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$1PathCollector;-><init>(Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;Ljava/util/HashSet;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->scope:Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->binariesFromIndexMatches:Ljava/util/Map;

    const/4 v4, 0x3

    move-object v3, v6

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->searchAllPossibleSubTypes(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Ljava/util/Map;Lorg/eclipse/jdt/internal/core/IPathRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    iget-object p1, v6, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$1PathCollector;->paths:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p2, v0

    move v0, v1

    goto :goto_0
.end method

.method private static legacySearchAllPossibleSubTypes(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Ljava/util/Map;Lorg/eclipse/jdt/internal/core/IPathRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6

    const/16 v0, 0x64

    invoke-static {p5, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p5

    new-instance v1, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;-><init>()V

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object v3

    new-instance v4, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$2;

    invoke-direct {v4, p3, p2, v2, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$2;-><init>(Lorg/eclipse/jdt/internal/core/IPathRequestor;Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IType;->isClass()Z

    move-result p3
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_0

    const/4 p2, 0x2

    :catch_0
    :cond_0
    new-instance p3, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-direct {p3, v5, v5, p2, v2}, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;-><init>([C[CII)V

    invoke-static {p3, p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->setFocus(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/IJavaElement;)V

    new-instance p2, Lorg/eclipse/jdt/internal/core/search/SubTypeSearchJob;

    new-instance v2, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;-><init>()V

    invoke-direct {p2, p3, v2, p1, v4}, Lorg/eclipse/jdt/internal/core/search/SubTypeSearchJob;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;)V

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->add([C)V

    :cond_1
    :try_start_1
    iget p0, v1, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->start:I

    iget p1, v1, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->end:I

    if-le p0, p1, :cond_2

    goto :goto_0

    :cond_2
    sub-int/2addr p1, p0

    const/4 p0, 0x1

    add-int/2addr p1, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p5, p1}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$Queue;->retrieve()[C

    move-result-object p1

    sget-object v2, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->OBJECT:[C

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object p1, v5

    :cond_3
    iput-object p1, p3, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superSimpleName:[C

    invoke-virtual {p5, p0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p0

    invoke-virtual {v3, p2, p4, p0}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->performConcurrentJob(Lorg/eclipse/jdt/internal/core/search/processing/IJob;ILorg/eclipse/core/runtime/IProgressMonitor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/search/SubTypeSearchJob;->finished()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/search/SubTypeSearchJob;->finished()V

    throw p0
.end method

.method private static newSearchAllPossibleSubTypes(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Ljava/util/Map;Lorg/eclipse/jdt/internal/core/IPathRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 9

    const/4 v0, 0x2

    invoke-static {p5, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p5

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getIndex()Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->getInstance()Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p5, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v3

    invoke-virtual {v1, p4, v3}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->waitForIndex(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object p4

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->fullyQualifiedNameToFieldDescriptor([C)[C

    move-result-object p0

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireReadLock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->findType([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p0, :cond_1

    if-eqz p4, :cond_0

    :try_start_2
    invoke-interface {p4}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getTypes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_3

    if-eqz p4, :cond_2

    :try_start_4
    invoke-interface {p4}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    return-void

    :cond_3
    :try_start_5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getTypeId()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-static {p0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->getIndexPathFor(Lorg/eclipse/jdt/internal/core/nd/java/NdType;Lorg/eclipse/core/resources/IWorkspaceRoot;)[C

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, v6}, Lorg/eclipse/jdt/core/search/IJavaSearchScope;->encloses(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v7

    const/16 v8, 0xbb8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p5, v7}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->isLocal()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->isAnonymous()Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v3, p0

    goto :goto_4

    :cond_5
    move v7, v2

    :goto_2
    invoke-interface {p3, v6, v7}, Lorg/eclipse/jdt/internal/core/IPathRequestor;->acceptPath(Ljava/lang/String;Z)V

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;

    if-nez v7, :cond_6

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->createBinaryTypeFrom(Lorg/eclipse/jdt/internal/core/nd/java/NdType;)Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;

    move-result-object p0

    invoke-interface {p2, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getSubTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_1

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :goto_4
    if-eqz p4, :cond_9

    :try_start_6
    invoke-interface {p4}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_9
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_5
    if-eqz v3, :cond_b

    if-eq v3, p0, :cond_a

    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    move-object p0, v3

    :cond_b
    throw p0
.end method

.method public static searchAllPossibleSubTypes(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Ljava/util/Map;Lorg/eclipse/jdt/internal/core/IPathRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 14

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-static/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->newSearchAllPossibleSubTypes(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Ljava/util/Map;Lorg/eclipse/jdt/internal/core/IPathRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/search/UnindexedSearchScope;->filterEntriesCoveredByTheNewIndex(Lorg/eclipse/jdt/core/search/IJavaSearchScope;)Lorg/eclipse/jdt/core/search/IJavaSearchScope;

    move-result-object v9

    invoke-virtual {v0, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v13

    move-object v8, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {v8 .. v13}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->legacySearchAllPossibleSubTypes(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Ljava/util/Map;Lorg/eclipse/jdt/internal/core/IPathRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p5

    invoke-static/range {p0 .. p5}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->legacySearchAllPossibleSubTypes(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Ljava/util/Map;Lorg/eclipse/jdt/internal/core/IPathRequestor;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public build(Z)V
    .locals 5

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cacheZipFiles(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->OBJECT:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/16 v1, 0x50

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual {v2, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    check-cast p1, Lorg/eclipse/jdt/internal/core/Member;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Member;->getOuterMostLocalContext()Lorg/eclipse/jdt/internal/core/Member;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-direct {p0, v3, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->determinePossibleSubTypes(Ljava/util/HashSet;Lorg/eclipse/core/runtime/IProgressMonitor;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    :goto_1
    if-eqz p1, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    rsub-int/lit8 v1, v1, 0x64

    invoke-virtual {v2, v1}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    array-length v4, p1

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->initialize(I)V

    invoke-direct {p0, p1, v3, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->buildFromPotentialSubtypes([Ljava/lang/String;Ljava/util/HashSet;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->initialize(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->buildSupertypes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->flushZipFiles(Ljava/lang/Object;)V

    return-void

    :goto_3
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->flushZipFiles(Ljava/lang/Object;)V

    throw p1
.end method

.method public createCompilationUnitFromPath(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IFile;[C)Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->createCompilationUnitFromPath(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IFile;[C)Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->cuToHandle:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public createInfoFromClassFile(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->binariesFromIndexMatches:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    if-eqz v0, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->infoToHandle:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->createInfoFromClassFile(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object p1

    return-object p1
.end method

.method public createInfoFromClassFileInJar(Lorg/eclipse/jdt/internal/core/Openable;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    const/16 v2, 0x24

    invoke-interface {v1, v2}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName(C)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v1

    const-string v3, "|"

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->binariesFromIndexMatches:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->infoToHandle:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBuilder;->createInfoFromClassFileInJar(Lorg/eclipse/jdt/internal/core/Openable;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object p1

    return-object p1
.end method
