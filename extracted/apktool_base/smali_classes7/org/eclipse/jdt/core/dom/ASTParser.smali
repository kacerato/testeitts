.class public Lorg/eclipse/jdt/core/dom/ASTParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final K_CLASS_BODY_DECLARATIONS:I = 0x4

.field public static final K_COMPILATION_UNIT:I = 0x8

.field public static final K_EXPRESSION:I = 0x1

.field public static final K_STATEMENTS:I = 0x2


# instance fields
.field private final apiLevel:I

.field private astKind:I

.field private bits:I

.field private classpaths:[Ljava/lang/String;

.field private compilerOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private focalPointPosition:I

.field private project:Lorg/eclipse/jdt/core/IJavaProject;

.field private rawSource:[C

.field private sourceLength:I

.field private sourceOffset:I

.field private sourcepaths:[Ljava/lang/String;

.field private sourcepathsEncodings:[Ljava/lang/String;

.field private typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

.field private unitName:Ljava/lang/String;

.field private workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->rawSource:[C

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceOffset:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceLength:I

    sget-object v1, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->project:Lorg/eclipse/jdt/core/IJavaProject;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->unitName:Ljava/lang/String;

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_0
    :pswitch_0
    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->apiLevel:I

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->initializeDefaults()V

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getClasspath()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "invalid environment settings"

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/batch/Main;

    new-instance v2, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/batch/Main;-><init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    invoke-static {v9}, Lorg/eclipse/jdt/internal/compiler/util/Util;->collectRunningVMBootclasspath(Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourcepaths:[Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v1, :cond_3

    array-length v11, v1

    move v12, v10

    :goto_1
    if-lt v12, v11, :cond_1

    goto :goto_4

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourcepathsEncodings:[Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    move-object v5, v1

    goto :goto_3

    :cond_2
    aget-object v1, v1, v12

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourcepaths:[Ljava/lang/String;

    aget-object v4, v1, v12

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x4

    move-object v1, v8

    move-object v3, v9

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->processPathEntries(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZZ)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    :goto_4
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->classpaths:[Ljava/lang/String;

    if-eqz v1, :cond_5

    array-length v11, v1

    :goto_5
    if-lt v10, v11, :cond_4

    goto :goto_6

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->classpaths:[Ljava/lang/String;

    aget-object v4, v1, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v1, v8

    move-object v3, v9

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->processPathEntries(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/batch/Main;->pendingErrors:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_7

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_7
    return-object v9

    :goto_8
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private initializeDefaults()V
    .locals 3

    const/16 v0, 0x8

    iput v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->astKind:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->rawSource:[C

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    const/4 v2, -0x1

    iput v2, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceLength:I

    iput v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceOffset:I

    sget-object v1, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->unitName:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->project:Lorg/eclipse/jdt/core/IJavaProject;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->classpaths:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourcepaths:[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourcepathsEncodings:[Ljava/lang/String;

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "org.eclipse.jdt.core.compiler.taskTags"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    return-void
.end method

.method private internalCreateAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 19

    move-object/from16 v1, p0

    iget v0, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget v5, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->astKind:I

    const/4 v6, 0x0

    if-eq v5, v4, :cond_15

    const/4 v7, 0x2

    if-eq v5, v7, :cond_15

    const/4 v8, 0x4

    if-eq v5, v8, :cond_15

    const/16 v8, 0x8

    if-ne v5, v8, :cond_1a

    :try_start_0
    iget-object v5, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    iget-object v8, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    instance-of v9, v8, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;

    if-eqz v9, :cond_1

    check-cast v8, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;->classFile:Lorg/eclipse/jdt/internal/core/AbstractClassFile;

    iput-object v8, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_1
    :goto_1
    iget-object v8, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    instance-of v9, v8, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-eqz v9, :cond_2

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    new-instance v0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;

    invoke-interface {v8}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object v5

    invoke-interface {v8}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getPackageName()[[C

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-interface {v8}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>([C)V

    iget-object v8, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->project:Lorg/eclipse/jdt/core/IJavaProject;

    invoke-direct {v0, v5, v9, v10, v8}, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;-><init>([C[[CLjava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;)V

    iget-object v5, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    check-cast v5, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v5}, Lorg/eclipse/jdt/core/ICompilationUnit;->getOwner()Lorg/eclipse/jdt/core/WorkingCopyOwner;

    move-result-object v5

    goto/16 :goto_7

    :cond_2
    instance-of v9, v8, Lorg/eclipse/jdt/core/IClassFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_7

    :try_start_1
    invoke-interface {v8}, Lorg/eclipse/jdt/core/ISourceReference;->getSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v8, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v9, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    invoke-interface {v9}, Lorg/eclipse/jdt/core/ITypeRoot;->findPrimaryType()Lorg/eclipse/jdt/core/IType;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jdt/internal/core/BinaryType;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-interface {v9}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v9

    const/16 v10, 0x24

    invoke-static {v10, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_class:[C

    array-length v12, v11

    add-int v13, v10, v12

    new-array v13, v13, [C

    invoke-static {v9, v3, v13, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v11, v3, v13, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v13

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_2
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([C)V

    goto :goto_3

    :cond_4
    iget-object v9, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v10

    :goto_3
    new-instance v9, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v8, v8, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/util/Util;->toCharArrays([Ljava/lang/String;)[[C

    move-result-object v8

    iget-object v11, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    invoke-direct {v9, v0, v8, v10, v11}, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;-><init>([C[[CLjava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;)V

    move-object v0, v9

    goto :goto_7

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    :try_start_2
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v3, v6

    :goto_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_6
    throw v0

    :cond_7
    iget-object v2, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->rawSource:[C

    if-eqz v2, :cond_13

    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_9

    iget-object v8, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->unitName:Ljava/lang/String;

    if-eqz v8, :cond_9

    iget-object v8, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->project:Lorg/eclipse/jdt/core/IJavaProject;

    if-nez v8, :cond_8

    iget-object v8, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->classpaths:[Ljava/lang/String;

    if-nez v8, :cond_8

    iget-object v8, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->sourcepaths:[Ljava/lang/String;

    if-nez v8, :cond_8

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    if-eqz v0, :cond_9

    move v0, v4

    goto :goto_6

    :cond_9
    move v0, v3

    :goto_6
    new-instance v8, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;

    iget-object v9, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->unitName:Ljava/lang/String;

    if-nez v9, :cond_a

    const-string v9, ""

    :cond_a
    iget-object v10, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->project:Lorg/eclipse/jdt/core/IJavaProject;

    invoke-direct {v8, v2, v6, v9, v10}, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;-><init>([C[[CLjava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;)V

    move v2, v0

    move-object v0, v8

    :goto_7
    iget v8, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    and-int/2addr v8, v7

    if-eqz v8, :cond_b

    new-instance v8, Lorg/eclipse/jdt/core/dom/NodeSearcher;

    iget v9, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->focalPointPosition:I

    invoke-direct {v8, v9}, Lorg/eclipse/jdt/core/dom/NodeSearcher;-><init>(I)V

    goto :goto_8

    :cond_b
    move-object v8, v6

    :goto_8
    iget v9, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_c

    goto :goto_9

    :cond_c
    move v7, v3

    :goto_9
    if-nez v8, :cond_d

    and-int/lit8 v10, v9, 0x8

    if-eqz v10, :cond_d

    or-int/lit8 v7, v7, 0x8

    :cond_d
    if-eqz v2, :cond_f

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_e

    or-int/lit8 v7, v7, 0x4

    :cond_e
    :try_start_6
    iget-object v12, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->project:Lorg/eclipse/jdt/core/IJavaProject;

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->getClasspath()Ljava/util/List;

    move-result-object v13

    iget-object v15, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    iget-object v9, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    move-object v11, v0

    move-object v14, v8

    move-object/from16 v16, v9

    move/from16 v17, v7

    move-object/from16 v18, p1

    invoke-static/range {v11 .. v18}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->resolve(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/List;Lorg/eclipse/jdt/core/dom/NodeSearcher;Ljava/util/Map;Lorg/eclipse/jdt/core/WorkingCopyOwner;ILorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v8
    :try_end_6
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v12, v2

    :goto_a
    move v15, v7

    :goto_b
    move-object v2, v8

    goto :goto_c

    :catch_1
    and-int/lit8 v2, v7, -0x5

    :try_start_7
    iget-object v7, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    invoke-static {v0, v8, v7, v2}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/core/dom/NodeSearcher;Ljava/util/Map;I)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v8

    move v15, v2

    move v12, v3

    goto :goto_b

    :cond_f
    iget-object v2, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    invoke-static {v0, v8, v2, v7}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/core/dom/NodeSearcher;Ljava/util/Map;I)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v12, v3

    goto :goto_a

    :goto_c
    :try_start_8
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object v9

    iget v10, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->apiLevel:I

    iget-object v11, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    if-eqz v12, :cond_10

    new-instance v6, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    invoke-direct {v6}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;-><init>()V

    :cond_10
    move-object v14, v6

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v6, v2

    goto :goto_f

    :goto_d
    iget-object v0, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->project:Lorg/eclipse/jdt/core/IJavaProject;

    if-eqz v0, :cond_11

    move/from16 v17, v4

    goto :goto_e

    :cond_11
    move/from16 v17, v3

    :goto_e
    move-object v8, v2

    move-object v13, v5

    move-object/from16 v16, p1

    invoke-static/range {v8 .. v17}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->convert(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[CILjava/util/Map;ZLorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;ILorg/eclipse/core/runtime/IProgressMonitor;Z)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object v0

    iget-object v3, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setTypeRoot(Lorg/eclipse/jdt/core/ITypeRoot;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_12

    iget v3, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_12

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    :cond_12
    return-object v0

    :cond_13
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_f
    if-eqz v6, :cond_14

    iget v2, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_14

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    :cond_14
    throw v0

    :cond_15
    iget-object v0, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->rawSource:[C

    if-nez v0, :cond_18

    iget-object v0, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    if-eqz v0, :cond_18

    instance-of v2, v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-eqz v2, :cond_16

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object v0

    iput-object v0, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->rawSource:[C

    goto :goto_11

    :cond_16
    instance-of v2, v0, Lorg/eclipse/jdt/core/IClassFile;

    if-eqz v2, :cond_18

    :try_start_a
    invoke-interface {v0}, Lorg/eclipse/jdt/core/ISourceReference;->getSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->rawSource:[C
    :try_end_a
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_11

    :catch_2
    move-exception v0

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    :try_start_b
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    move-object v6, v3

    goto :goto_10

    :catchall_5
    move-exception v0

    :goto_10
    if-eqz v6, :cond_17

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    :cond_17
    throw v0

    :cond_18
    :goto_11
    iget-object v0, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->rawSource:[C

    if-eqz v0, :cond_1a

    iget v2, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceOffset:I

    iget v3, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceLength:I

    add-int/2addr v2, v3

    array-length v0, v0

    if-gt v2, v0, :cond_19

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->internalCreateASTForKind()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    return-object v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private internalCreateASTForKind()Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 15

    new-instance v0, Lorg/eclipse/jdt/core/dom/ASTConverter;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;-><init>(Ljava/util/Map;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->rawSource:[C

    iput-object v1, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSource:[C

    array-length v2, v1

    iput v2, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->compilationUnitSourceLength:I

    iget-object v2, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    iget v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->apiLevel:I

    invoke-static {v1}, Lorg/eclipse/jdt/core/dom/AST;->newAST(I)Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/AST;->setDefaultNodeFlag(I)V

    new-instance v4, Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-direct {v4}, Lorg/eclipse/jdt/core/dom/BindingResolver;-><init>()V

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/core/dom/AST;->setBindingResolver(Lorg/eclipse/jdt/core/dom/BindingResolver;)V

    iget v4, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/AST;->setFlag(I)V

    :cond_0
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setAST(Lorg/eclipse/jdt/core/dom/AST;)V

    new-instance v4, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;

    iget v6, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    and-int/lit8 v6, v6, 0x8

    const/4 v13, 0x1

    if-eqz v6, :cond_1

    move v6, v13

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    invoke-direct {v4, v6}, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;-><init>(Z)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->newCompilationUnit()Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object v14

    iget v6, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceLength:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->rawSource:[C

    array-length v6, v6

    iput v6, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceLength:I

    :cond_2
    iget v6, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->astKind:I

    if-eq v6, v13, :cond_11

    if-eq v6, v2, :cond_8

    if-ne v6, v5, :cond_7

    iget-object v7, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->rawSource:[C

    iget v8, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceOffset:I

    iget v9, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceLength:I

    iget-object v10, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    iget v2, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    move v12, v13

    goto :goto_1

    :cond_3
    move v12, v3

    :goto_1
    const/4 v11, 0x1

    move-object v6, v4

    invoke-virtual/range {v6 .. v12}, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->parseClassBodyDeclarations([CIILjava/util/Map;ZZ)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v2

    iget-object v5, v4, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->recordedParsingInformation:Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->commentPositions:[[I

    if-eqz v6, :cond_4

    invoke-virtual {v0, v14, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->buildCommentsTable(Lorg/eclipse/jdt/core/dom/CompilationUnit;[[I)V

    :cond_4
    iget-object v6, v5, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->lineEnds:[I

    invoke-virtual {v14, v6}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setLineEndTable([I)V

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert([Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    move-result-object v0

    iget v2, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceOffset:I

    iget v5, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceLength:I

    add-int/2addr v5, v2

    invoke-virtual {v0, v2, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v8

    iget-object v11, v4, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->recordedParsingInformation:Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;

    const/4 v12, 0x0

    move-object v7, p0

    move-object v9, v14

    move-object v10, v0

    invoke-direct/range {v7 .. v12}, Lorg/eclipse/jdt/core/dom/ASTParser;->rootNodeToCompilationUnit(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/core/dom/AST;->setDefaultNodeFlag(I)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->modificationCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/AST;->setOriginalModificationCount(J)V

    return-object v0

    :cond_5
    iget-object v0, v5, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v0, :cond_6

    invoke-virtual {v14, v0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setProblems([Lorg/eclipse/jdt/core/compiler/IProblem;)V

    :cond_6
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/core/dom/AST;->setDefaultNodeFlag(I)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->modificationCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/AST;->setOriginalModificationCount(J)V

    return-object v14

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_8
    iget-object v7, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->rawSource:[C

    iget v8, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceOffset:I

    iget v9, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceLength:I

    iget-object v10, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    iget v2, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_9

    move v12, v13

    goto :goto_2

    :cond_9
    move v12, v3

    :goto_2
    const/4 v11, 0x1

    move-object v6, v4

    invoke-virtual/range {v6 .. v12}, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->parseStatements([CIILjava/util/Map;ZZ)Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    move-result-object v2

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v9, v5, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->recoveryScannerData:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    if-eqz v9, :cond_a

    iget-object v5, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;->removeUnused()Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V

    iput-object v6, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v7, v0, Lorg/eclipse/jdt/core/dom/ASTConverter;->docParser:Lorg/eclipse/jdt/core/dom/DocCommentParser;

    iput-object v6, v7, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    invoke-virtual {v14, v9}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setStatementsRecoveryData(Ljava/lang/Object;)V

    :cond_a
    iget-object v8, v4, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->recordedParsingInformation:Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->commentPositions:[[I

    if-eqz v4, :cond_b

    invoke-virtual {v0, v14, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->buildCommentsTable(Lorg/eclipse/jdt/core/dom/CompilationUnit;[[I)V

    :cond_b
    iget-object v4, v8, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->lineEnds:[I

    invoke-virtual {v14, v4}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setLineEndTable([I)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->newBlock()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v10

    iget v4, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceOffset:I

    iget v5, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceLength:I

    add-int/2addr v5, v4

    invoke-virtual {v10, v4, v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v4, :cond_c

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    if-eq v5, v13, :cond_c

    invoke-virtual {v10}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v2, :cond_10

    array-length v4, v2

    move v5, v3

    :goto_3
    if-lt v5, v4, :cond_d

    goto :goto_5

    :cond_d
    aget-object v6, v2, v5

    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v7, :cond_e

    invoke-virtual {v10}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v2, v5, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->checkAndAddMultipleLocalDeclaration([Lorg/eclipse/jdt/internal/compiler/ast/Statement;ILjava/util/List;)V

    goto :goto_4

    :cond_e
    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)Lorg/eclipse/jdt/core/dom/Statement;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-virtual {v10}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_10
    :goto_5
    move-object v4, p0

    move-object v5, v1

    move-object v6, v14

    move-object v7, v10

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/core/dom/ASTParser;->rootNodeToCompilationUnit(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/core/dom/AST;->setDefaultNodeFlag(I)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->modificationCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/AST;->setOriginalModificationCount(J)V

    return-object v10

    :cond_11
    iget-object v7, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->rawSource:[C

    iget v8, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceOffset:I

    iget v9, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceLength:I

    iget-object v10, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    const/4 v11, 0x1

    move-object v6, v4

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->parseExpression([CIILjava/util/Map;Z)Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v2

    iget-object v5, v4, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->recordedParsingInformation:Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->commentPositions:[[I

    if-eqz v6, :cond_12

    invoke-virtual {v0, v14, v6}, Lorg/eclipse/jdt/core/dom/ASTConverter;->buildCommentsTable(Lorg/eclipse/jdt/core/dom/CompilationUnit;[[I)V

    :cond_12
    iget-object v6, v5, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->lineEnds:[I

    invoke-virtual {v14, v6}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setLineEndTable([I)V

    if-eqz v2, :cond_13

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v8

    iget-object v11, v4, Lorg/eclipse/jdt/internal/core/util/CodeSnippetParsingUtil;->recordedParsingInformation:Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;

    const/4 v12, 0x0

    move-object v7, p0

    move-object v9, v14

    move-object v10, v0

    invoke-direct/range {v7 .. v12}, Lorg/eclipse/jdt/core/dom/ASTParser;->rootNodeToCompilationUnit(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/core/dom/AST;->setDefaultNodeFlag(I)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->modificationCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/AST;->setOriginalModificationCount(J)V

    return-object v0

    :cond_13
    iget-object v0, v5, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v0, :cond_14

    invoke-virtual {v14, v0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setProblems([Lorg/eclipse/jdt/core/compiler/IProblem;)V

    :cond_14
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/core/dom/AST;->setDefaultNodeFlag(I)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->modificationCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/AST;->setOriginalModificationCount(J)V

    return-object v14
.end method

.method public static newParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ASTParser;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTParser;-><init>(I)V

    return-object v0
.end method

.method private propagateErrors(Lorg/eclipse/jdt/core/dom/ASTNode;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/core/dom/ASTSyntaxErrorPropagator;-><init>([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    if-eqz p3, :cond_0

    new-instance v0, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;

    invoke-direct {v0, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTRecoveryPropagator;-><init>([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_0
    return-void
.end method

.method private rootNodeToCompilationUnit(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V
    .locals 3

    iget v0, p4, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->problemsCount:I

    invoke-virtual {p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    instance-of v1, p3, Lorg/eclipse/jdt/core/dom/Expression;

    if-eqz v1, :cond_5

    check-cast p3, Lorg/eclipse/jdt/core/dom/Expression;

    if-eqz v0, :cond_0

    iget-object p4, p4, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-direct {p0, p3, p4, p5}, Lorg/eclipse/jdt/core/dom/ASTParser;->propagateErrors(Lorg/eclipse/jdt/core/dom/ASTNode;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V

    invoke-virtual {p2, p4}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setProblems([Lorg/eclipse/jdt/core/compiler/IProblem;)V

    :cond_0
    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/dom/AST;->newExpressionStatement(Lorg/eclipse/jdt/core/dom/Expression;)Lorg/eclipse/jdt/core/dom/ExpressionStatement;

    move-result-object p3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->newBlock()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p4

    invoke-virtual {p4}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->newInitializer()Lorg/eclipse/jdt/core/dom/Initializer;

    move-result-object p3

    invoke-virtual {p3, p4}, Lorg/eclipse/jdt/core/dom/Initializer;->setBody(Lorg/eclipse/jdt/core/dom/Block;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->newTypeDeclaration()Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast p3, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    if-eqz v0, :cond_2

    iget-object p1, p4, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-direct {p0, p3, p1, p5}, Lorg/eclipse/jdt/core/dom/ASTParser;->propagateErrors(Lorg/eclipse/jdt/core/dom/ASTNode;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setProblems([Lorg/eclipse/jdt/core/compiler/IProblem;)V

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    check-cast p3, Lorg/eclipse/jdt/core/dom/Block;

    if-eqz v0, :cond_4

    iget-object p4, p4, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-direct {p0, p3, p4, p5}, Lorg/eclipse/jdt/core/dom/ASTParser;->propagateErrors(Lorg/eclipse/jdt/core/dom/ASTNode;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V

    invoke-virtual {p2, p4}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setProblems([Lorg/eclipse/jdt/core/compiler/IProblem;)V

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->newTypeDeclaration()Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    move-result-object p4

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->newInitializer()Lorg/eclipse/jdt/core/dom/Initializer;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/core/dom/Initializer;->setBody(Lorg/eclipse/jdt/core/dom/Block;)V

    invoke-virtual {p4}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p1

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->rawSource:[C

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "source not specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTParser;->internalCreateAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->initializeDefaults()V

    return-object p1

    :goto_1
    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->initializeDefaults()V

    throw p1
.end method

.method public createASTs([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lorg/eclipse/jdt/core/dom/FileASTRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 18

    move-object/from16 v1, p0

    .line 8
    :try_start_0
    iget v0, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x8

    :cond_1
    move v8, v2

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_5

    .line 9
    iget-object v2, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->classpaths:[Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->sourcepaths:[Ljava/lang/String;

    if-nez v2, :cond_3

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "no environment is specified"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_1
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    or-int/lit8 v8, v8, 0x4

    :cond_4
    move/from16 v16, v8

    .line 11
    iget v13, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->apiLevel:I

    iget-object v14, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->getClasspath()Ljava/util/List;

    move-result-object v15

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v17}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->resolve([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lorg/eclipse/jdt/core/dom/FileASTRequestor;ILjava/util/Map;Ljava/util/List;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_2

    .line 12
    :cond_5
    iget v6, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->apiLevel:I

    iget-object v7, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v9, p5

    invoke-static/range {v3 .. v9}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->parse([Ljava/lang/String;[Ljava/lang/String;Lorg/eclipse/jdt/core/dom/FileASTRequestor;ILjava/util/Map;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->initializeDefaults()V

    return-void

    :goto_3
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->initializeDefaults()V

    .line 14
    throw v0
.end method

.method public createASTs([Lorg/eclipse/jdt/core/ICompilationUnit;[Ljava/lang/String;Lorg/eclipse/jdt/core/dom/ASTRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    iget v0, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x8

    :cond_1
    move v7, v2

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_4

    .line 2
    iget-object v13, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->project:Lorg/eclipse/jdt/core/IJavaProject;

    if-eqz v13, :cond_3

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    or-int/lit8 v7, v7, 0x4

    :cond_2
    move v15, v7

    .line 3
    iget v11, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->apiLevel:I

    iget-object v12, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    iget-object v14, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v16, p4

    invoke-static/range {v8 .. v16}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->resolve([Lorg/eclipse/jdt/core/ICompilationUnit;[Ljava/lang/String;Lorg/eclipse/jdt/core/dom/ASTRequestor;ILjava/util/Map;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 4
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "project not specified"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_4
    iget v5, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->apiLevel:I

    iget-object v6, v1, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->parse([Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/dom/ASTRequestor;ILjava/util/Map;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->initializeDefaults()V

    return-void

    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->initializeDefaults()V

    .line 7
    throw v0
.end method

.method public createBindings([Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)[Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 7

    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->project:Lorg/eclipse/jdt/core/IJavaProject;

    if-eqz v3, :cond_3

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x4

    :cond_1
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    or-int/lit8 v0, v1, 0x8

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    iget v1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->apiLevel:I

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    move-object v0, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->resolve([Lorg/eclipse/jdt/core/IJavaElement;ILjava/util/Map;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;ILorg/eclipse/core/runtime/IProgressMonitor;)[Lorg/eclipse/jdt/core/dom/IBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->initializeDefaults()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "project or classpath not specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->initializeDefaults()V

    throw p1
.end method

.method public setBindingsRecovery(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    :goto_0
    return-void
.end method

.method public setCompilerOptions(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p1, v0

    :goto_0
    const-string v0, "org.eclipse.jdt.core.compiler.taskTags"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    return-void
.end method

.method public setEnvironment([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->classpaths:[Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourcepaths:[Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourcepathsEncodings:[Ljava/lang/String;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    array-length p1, p2

    array-length p2, p3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    :cond_2
    return-void
.end method

.method public setFocalPosition(I)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->focalPointPosition:I

    return-void
.end method

.method public setIgnoreMethodBodies(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    :goto_0
    return-void
.end method

.method public setKind(I)V
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->astKind:I

    return-void
.end method

.method public setProject(Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 1

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->project:Lorg/eclipse/jdt/core/IJavaProject;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object p1

    const-string v0, "org.eclipse.jdt.core.compiler.taskTags"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public setResolveBindings(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    :goto_0
    return-void
.end method

.method public setSource(Lorg/eclipse/jdt/core/IClassFile;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource(Lorg/eclipse/jdt/core/ITypeRoot;)V

    return-void
.end method

.method public setSource(Lorg/eclipse/jdt/core/ICompilationUnit;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource(Lorg/eclipse/jdt/core/ITypeRoot;)V

    return-void
.end method

.method public setSource(Lorg/eclipse/jdt/core/ITypeRoot;)V
    .locals 1

    .line 5
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->rawSource:[C

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->project:Lorg/eclipse/jdt/core/IJavaProject;

    const/4 v0, 0x1

    .line 8
    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object p1

    .line 9
    const-string v0, "org.eclipse.jdt.core.compiler.taskTags"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->compilerOptions:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public setSource([C)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->rawSource:[C

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->typeRoot:Lorg/eclipse/jdt/core/ITypeRoot;

    return-void
.end method

.method public setSourceRange(II)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceOffset:I

    iput p2, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->sourceLength:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setStatementsRecovery(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->bits:I

    :goto_0
    return-void
.end method

.method public setUnitName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->unitName:Ljava/lang/String;

    return-void
.end method

.method public setWorkingCopyOwner(Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTParser;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    :goto_0
    return-void
.end method
