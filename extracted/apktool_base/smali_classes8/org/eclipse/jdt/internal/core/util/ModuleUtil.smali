.class public Lorg/eclipse/jdt/internal/core/util/ModuleUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/util/ModuleUtil$ModuleAccumulatorEnvironment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReferencedModules(Lorg/eclipse/jdt/core/IJavaProject;)[Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ModuleUtil$ModuleAccumulatorEnvironment;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ModuleUtil$ModuleAccumulatorEnvironment;-><init>(Lorg/eclipse/jdt/core/IJavaProject;)V

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ModuleUtil;->newCompiler(Lorg/eclipse/jdt/internal/core/util/ModuleUtil$ModuleAccumulatorEnvironment;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/internal/compiler/Compiler;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/jdt/core/IJavaProject;->getPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    array-length v5, v0

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v5, :cond_1

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-interface {v4, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/Compiler;->compile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/ModuleUtil$ModuleAccumulatorEnvironment;->getModules()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v9, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/ModuleUtil$2;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/util/ModuleUtil$2;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    aget-object v0, v8, v6

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    aget-object v8, v0, v7

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    if-lt v10, v9, :cond_3

    :cond_2
    move-object/from16 v17, v0

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    goto :goto_6

    :cond_3
    aget-object v11, v8, v10

    instance-of v12, v11, Lorg/eclipse/jdt/core/IPackageFragment;

    if-eqz v12, :cond_4

    check-cast v11, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-interface {v11}, Lorg/eclipse/jdt/core/IPackageFragment;->isDefaultPackage()Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_4
    :goto_3
    move-object/from16 v17, v0

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    goto :goto_5

    :cond_5
    invoke-interface {v11}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnits()[Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v12

    array-length v13, v12

    if-eqz v13, :cond_4

    invoke-interface {v11}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object v11

    array-length v13, v12

    const/4 v14, 0x0

    :goto_4
    if-lt v14, v13, :cond_6

    goto :goto_3

    :cond_6
    aget-object v15, v12, v14

    new-instance v6, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;

    invoke-interface {v15}, Lorg/eclipse/jdt/core/ISourceReference;->getSource()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object/from16 v16, v1

    const/16 v1, 0x2e

    move-object/from16 v18, v2

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v1

    invoke-interface {v15}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v1, v2, v15}, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;-><init>([C[[CLjava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v16

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto :goto_4

    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto :goto_2

    :goto_6
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v16

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto/16 :goto_0
.end method

.method private static newCompiler(Lorg/eclipse/jdt/internal/core/util/ModuleUtil$ModuleAccumulatorEnvironment;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/internal/compiler/Compiler;
    .locals 7

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object p1

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v4, p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    iput-boolean v0, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performMethodsFullRecovery:Z

    iput-boolean v0, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->performStatementsRecovery:Z

    new-instance v5, Lorg/eclipse/jdt/internal/core/util/ModuleUtil$1;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/core/util/ModuleUtil$1;-><init>()V

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/Compiler;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->proceedWithAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/builder/ProblemFactory;->getProblemFactory(Ljava/util/Locale;)Lorg/eclipse/jdt/internal/core/builder/ProblemFactory;

    move-result-object v6

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/Compiler;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    return-object p1
.end method
