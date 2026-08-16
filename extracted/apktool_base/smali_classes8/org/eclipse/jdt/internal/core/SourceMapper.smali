.class public Lorg/eclipse/jdt/internal/core/SourceMapper;
.super Lorg/eclipse/jdt/internal/core/util/ReferenceInfoAdapter;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;,
        Lorg/eclipse/jdt/internal/core/SourceMapper$LocalVariableElementKey;
    }
.end annotation


# static fields
.field public static final UNKNOWN_RANGE:Lorg/eclipse/jdt/core/SourceRange;

.field public static VERBOSE:Z = false


# instance fields
.field anonymousClassName:I

.field anonymousCounter:I

.field private areRootPathsComputed:Z

.field protected binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

.field protected categories:Ljava/util/HashMap;

.field defaultEncoding:Ljava/lang/String;

.field encoding:Ljava/lang/String;

.field protected finalParameters:Ljava/util/HashSet;

.field private importsCounterTable:Ljava/util/HashMap;

.field private importsTable:Ljava/util/HashMap;

.field protected memberDeclarationStart:[I

.field protected memberName:[Ljava/lang/String;

.field protected memberNameRange:[Lorg/eclipse/jdt/core/SourceRange;

.field protected methodParameterNames:[[[C

.field protected methodParameterTypes:[[[C

.field moduleDeclarationStart:I

.field moduleModifiers:I

.field moduleNameRange:Lorg/eclipse/jdt/core/SourceRange;

.field options:Ljava/util/Map;

.field protected parameterNames:Ljava/util/HashMap;

.field protected parametersRanges:Ljava/util/HashMap;

.field protected rootPath:Ljava/lang/String;

.field protected rootPaths:Ljava/util/ArrayList;

.field protected searchedElement:Lorg/eclipse/jdt/core/IJavaElement;

.field protected sourcePath:Lorg/eclipse/core/runtime/IPath;

.field protected sourceRanges:Ljava/util/HashMap;

.field typeDeclarationStarts:[I

.field typeDepth:I

.field typeModifiers:[I

.field typeNameRanges:[Lorg/eclipse/jdt/core/SourceRange;

.field types:[Lorg/eclipse/jdt/core/IType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/SourceRange;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/SourceMapper;->UNKNOWN_RANGE:Lorg/eclipse/jdt/core/SourceRange;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ReferenceInfoAdapter;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->rootPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->areRootPathsComputed:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/SourceMapper;-><init>(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ReferenceInfoAdapter;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->rootPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->areRootPathsComputed:Z

    .line 8
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->options:Ljava/util/Map;

    .line 9
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->encoding:Ljava/lang/String;

    .line 10
    :try_start_0
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p3

    invoke-interface {p3}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p3

    invoke-interface {p3}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getDefaultCharset()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->defaultEncoding:Ljava/lang/String;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz p2, :cond_0

    .line 11
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->rootPath:Ljava/lang/String;

    .line 12
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->rootPaths:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourcePath:Lorg/eclipse/core/runtime/IPath;

    .line 15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourceRanges:Ljava/util/HashMap;

    .line 16
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->parametersRanges:Ljava/util/HashMap;

    .line 17
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->parameterNames:Ljava/util/HashMap;

    .line 18
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->importsTable:Ljava/util/HashMap;

    .line 19
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->importsCounterTable:Ljava/util/HashMap;

    return-void
.end method

.method private addCategories(Lorg/eclipse/jdt/core/IJavaElement;[[C)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->categories:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->categories:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->categories:Ljava/util/HashMap;

    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized computeAllRootPaths(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 20

    move-object/from16 v9, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, v9, Lorg/eclipse/jdt/internal/core/SourceMapper;->areRootPathsComputed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    move-object/from16 v1, p1

    :try_start_1
    invoke-interface {v1, v0}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/SourceMapper;->VERBOSE:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "compute all root paths for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    move-wide v11, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    :goto_1
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    iget-object v2, v9, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourcePath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v14, 0x0

    const/4 v15, 0x1

    xor-int/lit8 v16, v2, 0x1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isJrt(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    :try_start_2
    new-instance v8, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v3, v13

    move/from16 v6, v18

    move/from16 v7, v16

    move-object v15, v8

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;-><init>(Lorg/eclipse/jdt/internal/core/SourceMapper;Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;ZZLorg/eclipse/jdt/core/IPackageFragmentRoot;)V

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object v0

    sget v1, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_FILES:I

    invoke-static {v0, v15, v1}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->walkModuleImage(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V

    iget-boolean v1, v15, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->containsADefaultPackage:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v0, v15, Lorg/eclipse/jdt/internal/core/SourceMapper$JrtPackageNamesAdderVisitor;->containsJavaSource:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v16, v0

    move v4, v1

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move/from16 v18, v1

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    :try_start_4
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/SourceMapper;->VERBOSE:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_2
    :cond_2
    :goto_3
    move/from16 v4, v18

    goto/16 :goto_a

    :cond_3
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_a

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getZipFile(Lorg/eclipse/core/runtime/IPath;)Ljava/util/zip/ZipFile;

    move-result-object v1
    :try_end_5
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    :cond_4
    :goto_4
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7
    :try_end_6
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v7, :cond_5

    :catch_3
    :goto_5
    :try_start_7
    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :cond_5
    :try_start_8
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v8}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v7, 0x2f

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v15, -0x1

    if-eq v7, v15, :cond_8

    invoke-virtual {v8, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v4, :cond_6

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v4

    const-string v5, "org.eclipse.jdt.core.compiler.source"

    const/4 v8, 0x1

    invoke-interface {v4, v5, v8}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const-string v15, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v4, v15, v8}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v5

    move-object v5, v4

    move-object/from16 v4, v19

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_6
    :goto_6
    invoke-static {v7, v4, v5}, Lorg/eclipse/jdt/core/JavaConventions;->validatePackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v8

    invoke-interface {v8}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result v15

    if-nez v15, :cond_7

    invoke-interface {v8}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result v8

    if-ne v8, v3, :cond_4

    :cond_7
    invoke-virtual {v13, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const/16 v18, 0x1

    goto :goto_4

    :cond_9
    if-nez v16, :cond_4

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v7
    :try_end_8
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v7, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v1, v17

    :goto_7
    :try_start_9
    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    throw v0

    :catch_4
    move-object/from16 v1, v17

    goto :goto_5

    :cond_a
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/eclipse/core/resources/IResource;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/eclipse/core/resources/IResource;

    instance-of v2, v1, Lorg/eclipse/core/resources/IContainer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v2, :cond_2

    :try_start_a
    check-cast v1, Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    array-length v2, v1

    move v6, v14

    :goto_8
    if-lt v6, v2, :cond_b

    goto/16 :goto_3

    :cond_b
    aget-object v7, v1, v6

    invoke-interface {v7}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v7

    if-ne v7, v3, :cond_e

    if-nez v4, :cond_c

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v4

    const-string v5, "org.eclipse.jdt.core.compiler.source"

    const/4 v7, 0x1

    invoke-interface {v4, v5, v7}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const-string v15, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v4, v15, v7}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v5

    move-object v5, v4

    move-object/from16 v4, v19

    :cond_c
    invoke-static {v8, v4, v5}, Lorg/eclipse/jdt/core/JavaConventions;->validatePackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v7

    invoke-interface {v7}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result v15

    if-nez v15, :cond_d

    invoke-interface {v7}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result v7

    if-ne v7, v3, :cond_10

    :cond_d
    invoke-virtual {v13, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    invoke-static {v8}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/16 v18, 0x1

    goto :goto_9

    :cond_f
    if-nez v16, :cond_10

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v7
    :try_end_a
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v7, :cond_10

    const/16 v16, 0x1

    :cond_10
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :goto_a
    if-eqz v16, :cond_18

    :try_start_b
    iget-object v0, v9, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourcePath:Lorg/eclipse/core/runtime/IPath;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/core/resources/IContainer;

    if-eqz v1, :cond_11

    move-object v2, v0

    check-cast v2, Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v6

    move-object/from16 v1, p0

    move-object v3, v13

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/SourceMapper;->computeRootPath(Lorg/eclipse/core/resources/IContainer;Ljava/util/HashSet;ZLjava/util/Set;I)V

    goto/16 :goto_10

    :cond_11
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object v0, v9, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourcePath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getZipFile(Lorg/eclipse/core/runtime/IPath;)Ljava/util/zip/ZipFile;

    move-result-object v2
    :try_end_c
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :cond_12
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3
    :try_end_d
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-nez v3, :cond_13

    :catch_5
    :goto_c
    :try_start_e
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_10

    :cond_13
    :try_start_f
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v5, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v5, v3}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_17

    invoke-interface {v5}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    move v7, v14

    :goto_d
    if-lt v7, v6, :cond_14

    goto :goto_b

    :cond_14
    invoke-interface {v5, v7}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v5, v7}, Lorg/eclipse/core/runtime/IPath;->uptoSegment(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_3
    move-exception v0

    goto :goto_f

    :cond_15
    :goto_e
    add-int/lit8 v8, v3, -0x2

    if-ne v7, v8, :cond_16

    if-eqz v4, :cond_16

    invoke-interface {v5, v6}, Lorg/eclipse/core/runtime/IPath;->uptoSegment(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_17
    if-eqz v4, :cond_12

    new-instance v3, Lorg/eclipse/core/runtime/Path;

    const-string v5, ""

    invoke-direct {v3, v5}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v2, v17

    :goto_f
    :try_start_10
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    throw v0

    :catch_6
    move-object/from16 v2, v17

    goto :goto_c

    :cond_18
    :goto_10
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object v1, v9, Lorg/eclipse/jdt/internal/core/SourceMapper;->rootPaths:Ljava/util/ArrayList;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v0, v9, Lorg/eclipse/jdt/internal/core/SourceMapper;->rootPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_12

    :cond_19
    new-instance v1, Lorg/eclipse/core/runtime/Path;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v9, Lorg/eclipse/jdt/internal/core/SourceMapper;->rootPaths:Ljava/util/ArrayList;

    :goto_12
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x1

    if-le v0, v2, :cond_1b

    new-instance v2, Lorg/eclipse/jdt/internal/core/SourceMapper$1;

    invoke-direct {v2, v9}, Lorg/eclipse/jdt/internal/core/SourceMapper$1;-><init>(Lorg/eclipse/jdt/internal/core/SourceMapper;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1c
    const/4 v1, 0x1

    goto :goto_14

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/core/runtime/IPath;

    iget-object v3, v9, Lorg/eclipse/jdt/internal/core/SourceMapper;->rootPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :goto_14
    iput-boolean v1, v9, Lorg/eclipse/jdt/internal/core/SourceMapper;->areRootPathsComputed:Z

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/SourceMapper;->VERBOSE:Z

    if-eqz v1, :cond_1f

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Spent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " root paths"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, v9, Lorg/eclipse/jdt/internal/core/SourceMapper;->rootPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_16

    :cond_1e
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "root["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_15

    :cond_1f
    :goto_16
    monitor-exit p0

    return-void

    :goto_17
    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    throw v0
.end method

.method private computeRootPath(Lorg/eclipse/core/resources/IContainer;Ljava/util/HashSet;ZLjava/util/Set;I)V
    .locals 14

    move-object/from16 v0, p4

    move/from16 v7, p5

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-lt v11, v9, :cond_0

    goto/16 :goto_6

    :cond_0
    aget-object v1, v8, v11

    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v12, 0x0

    if-ne v2, v3, :cond_3

    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v13, p2

    invoke-virtual {v13, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {v2, v7}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {v2, v12}, Lorg/eclipse/core/runtime/IPath;->setDevice(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_1
    :goto_1
    move-object v2, v1

    check-cast v2, Lorg/eclipse/core/resources/IFolder;

    move-object v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/SourceMapper;->computeRootPath(Lorg/eclipse/core/resources/IContainer;Ljava/util/HashSet;ZLjava/util/Set;I)V

    goto :goto_2

    :cond_2
    move-object v2, v1

    check-cast v2, Lorg/eclipse/core/resources/IFolder;

    move-object v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/SourceMapper;->computeRootPath(Lorg/eclipse/core/resources/IContainer;Ljava/util/HashSet;ZLjava/util/Set;I)V

    goto :goto_2

    :cond_3
    move-object/from16 v13, p2

    :goto_2
    add-int/lit8 v1, v9, -0x1

    if-ne v11, v1, :cond_6

    if-eqz p3, :cond_6

    move v1, v10

    :goto_3
    if-lt v1, v9, :cond_4

    goto :goto_4

    :cond_4
    aget-object v2, v8, v11

    invoke-interface {v2}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v1, v7}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v1, v12}, Lorg/eclipse/core/runtime/IPath;->setDevice(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :goto_5
    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    :goto_6
    return-void
.end method

.method private enterAbstractMethod(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V
    .locals 10

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    if-ltz v0, :cond_c

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberName:[Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->name:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    aput-object v2, v1, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberNameRange:[Lorg/eclipse/jdt/core/SourceRange;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    new-instance v2, Lorg/eclipse/jdt/core/SourceRange;

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->nameSourceStart:I

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->nameSourceEnd:I

    sub-int/2addr v4, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberDeclarationStart:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->declarationStart:I

    aput v2, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeModifiers:[I

    aget v1, v2, v1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterTypes:[[C

    iget-boolean v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->isConstructor:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v1

    if-eqz v2, :cond_0

    array-length v3, v2

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    add-int/lit8 v6, v3, 0x1

    new-array v6, v6, [[C

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2e

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aput-object v1, v6, v4

    if-eqz v3, :cond_1

    invoke-static {v2, v4, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->methodParameterTypes:[[[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    aput-object v6, v1, v2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    array-length v1, v2

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    add-int/lit8 v6, v1, 0x1

    new-array v6, v6, [[C

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v6, v4

    if-eqz v1, :cond_4

    invoke-static {v2, v4, v6, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->methodParameterTypes:[[[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    aput-object v6, v1, v2

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->methodParameterTypes:[[[C

    iget v3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    aput-object v2, v1, v3

    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->methodParameterNames:[[[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterNames:[[C

    aput-object v3, v1, v2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberName:[Ljava/lang/String;

    aget-object v1, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->methodParameterTypes:[[[C

    aget-object v2, v3, v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->convertTypeNamesToSigs([[C)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object v0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    if-eqz v1, :cond_7

    array-length v1, v1

    move v2, v4

    :goto_3
    if-lt v2, v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    aget-object v3, v3, v2

    new-instance v6, Ljava/lang/String;

    iget-object v7, v3, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->name:[C

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v6}, Lorg/eclipse/jdt/core/IMethod;->getTypeParameter(Ljava/lang/String;)Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object v6

    new-instance v7, Lorg/eclipse/jdt/core/SourceRange;

    iget v8, v3, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->declarationStart:I

    iget v9, v3, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->declarationEnd:I

    sub-int/2addr v9, v8

    add-int/2addr v9, v5

    invoke-direct {v7, v8, v9}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    new-instance v8, Lorg/eclipse/jdt/core/SourceRange;

    iget v9, v3, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->nameSourceStart:I

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->nameSourceEnd:I

    sub-int/2addr v3, v9

    add-int/2addr v3, v5

    invoke-direct {v8, v9, v3}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    invoke-virtual {p0, v6, v7, v8}, Lorg/eclipse/jdt/internal/core/SourceMapper;->setSourceRange(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/SourceRange;Lorg/eclipse/jdt/core/SourceRange;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterInfos:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;

    if-eqz v1, :cond_b

    array-length v1, v1

    :goto_5
    if-lt v4, v1, :cond_8

    goto :goto_6

    :cond_8
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->parameterInfos:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;

    aget-object v2, v2, v4

    new-instance v3, Lorg/eclipse/jdt/internal/core/SourceMapper$LocalVariableElementKey;

    new-instance v6, Ljava/lang/String;

    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;->name:[C

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v3, v0, v6}, Lorg/eclipse/jdt/internal/core/SourceMapper$LocalVariableElementKey;-><init>(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;)V

    new-instance v6, Lorg/eclipse/jdt/core/SourceRange;

    iget v7, v2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;->declarationStart:I

    iget v8, v2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;->declarationEnd:I

    sub-int/2addr v8, v7

    add-int/2addr v8, v5

    invoke-direct {v6, v7, v8}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    new-instance v7, Lorg/eclipse/jdt/core/SourceRange;

    iget v8, v2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;->nameSourceStart:I

    iget v9, v2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;->nameSourceEnd:I

    sub-int/2addr v9, v8

    add-int/2addr v9, v5

    invoke-direct {v7, v8, v9}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    filled-new-array {v6, v7}, [Lorg/eclipse/jdt/core/SourceRange;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->parametersRanges:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;->modifiers:I

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->finalParameters:Ljava/util/HashSet;

    if-nez v2, :cond_9

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->finalParameters:Ljava/util/HashSet;

    :cond_9
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->finalParameters:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;->categories:[[C

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/SourceMapper;->addCategories(Lorg/eclipse/jdt/core/IJavaElement;[[C)V

    :cond_c
    return-void
.end method

.method private exitAbstractMethod(I)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    aget-object v1, v1, v0

    new-instance v2, Lorg/eclipse/jdt/core/SourceRange;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberDeclarationStart:[I

    aget v0, v3, v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v2, v0, p1}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberName:[Ljava/lang/String;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    aget-object p1, p1, v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->methodParameterTypes:[[[C

    aget-object v0, v3, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->convertTypeNamesToSigs([[C)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberNameRange:[Lorg/eclipse/jdt/core/SourceRange;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v2, v0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->setSourceRange(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/SourceRange;Lorg/eclipse/jdt/core/SourceRange;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->methodParameterNames:[[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->setMethodParameterNames(Lorg/eclipse/jdt/core/IMethod;[[C)V

    :cond_0
    return-void
.end method

.method private findMatchingGenericEnd([CI)I
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt p2, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    aget-char v2, p1, p2

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_3

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    return p2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private getSourceForRootPath(Ljava/lang/String;Ljava/lang/String;)[C
    .locals 1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->findSource(Ljava/lang/String;)[C

    move-result-object p1

    return-object p1
.end method

.method private getUnqualifiedTypeSignature(Ljava/lang/String;IILjava/lang/StringBuffer;Z)I
    .locals 17

    move-object/from16 v6, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move/from16 v1, p2

    move v2, v0

    move v0, v1

    :goto_0
    const/16 v5, 0x54

    const/16 v9, 0x4c

    const/16 v10, 0x3c

    const/16 v11, 0x3b

    const/16 v12, 0x51

    const/16 v13, 0x3e

    if-lt v0, v7, :cond_0

    move v0, v3

    goto :goto_2

    :cond_0
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v14, 0x2a

    if-eq v15, v14, :cond_e

    const/16 v14, 0x2b

    if-eq v15, v14, :cond_d

    const/16 v14, 0x2d

    if-eq v15, v14, :cond_d

    const/16 v14, 0x2e

    if-eq v15, v14, :cond_c

    if-eq v15, v11, :cond_5

    if-eq v15, v10, :cond_5

    if-eq v15, v13, :cond_4

    const/16 v10, 0x46

    if-eq v15, v10, :cond_3

    if-eq v15, v9, :cond_1

    if-eq v15, v12, :cond_1

    const/16 v9, 0x49

    if-eq v15, v9, :cond_3

    const/16 v9, 0x4a

    if-eq v15, v9, :cond_3

    const/16 v9, 0x53

    if-eq v15, v9, :cond_3

    if-eq v15, v5, :cond_1

    const/16 v5, 0x5a

    if-eq v15, v5, :cond_3

    const/16 v5, 0x5b

    if-eq v15, v5, :cond_d

    packed-switch v15, :pswitch_data_0

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    const/4 v4, 0x1

    :cond_2
    :goto_1
    const/4 v5, 0x1

    goto/16 :goto_7

    :cond_3
    :pswitch_0
    if-nez v4, :cond_2

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :cond_4
    return v0

    :cond_5
    :goto_2
    if-eq v2, v9, :cond_6

    if-eq v2, v12, :cond_6

    if-eq v2, v5, :cond_6

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v0

    :cond_6
    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_7

    const/16 v2, 0x24

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-le v0, v1, :cond_7

    const/4 v2, 0x1

    add-int/lit8 v1, v0, 0x1

    :cond_7
    :goto_3
    if-lt v1, v7, :cond_8

    return v7

    :cond_8
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v11, :cond_b

    if-eq v0, v10, :cond_9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    const/4 v3, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getUnqualifiedTypeSignature(Ljava/lang/String;IILjava/lang/StringBuffer;Z)I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v13, :cond_a

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_4

    :goto_5
    add-int/2addr v1, v3

    goto :goto_3

    :cond_b
    const/4 v3, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/2addr v1, v3

    return v1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_1

    :cond_d
    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_6
    const/4 v5, 0x1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_7

    :cond_e
    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_6

    :goto_7
    add-int/2addr v0, v5

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private hasToRetrieveSourceRangesForLocalClass([C)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    const/16 v2, 0x24

    invoke-static {v2, p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_2

    return v0

    :cond_2
    aget-char v4, p1, v3

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    invoke-static {v2, p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v3

    goto :goto_0
.end method

.method private internalFindSource(Lorg/eclipse/jdt/internal/core/NamedMember;Ljava/lang/String;)[C
    .locals 7

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/SourceMapper;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->cacheZipFiles(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->rootPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-direct {p0, v3, p2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getSourceForRootPath(Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    invoke-direct {p0, v3, p2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getSourceForRootPath(Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-nez v3, :cond_5

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    instance-of v4, v4, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    if-nez v4, :cond_5

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceMapper;->computeAllRootPaths(Lorg/eclipse/jdt/core/IJavaElement;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->rootPaths:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->rootPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0, v5, p2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getSourceForRootPath(Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object v3

    if-eqz v3, :cond_3

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->rootPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->flushZipFiles(Ljava/lang/Object;)V

    sget-boolean p2, Lorg/eclipse/jdt/internal/core/SourceMapper;->VERBOSE:Z

    if-eqz p2, :cond_6

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "spent "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    return-object v3

    :goto_3
    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->flushZipFiles(Ljava/lang/Object;)V

    throw p1
.end method

.method private readSource(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/lang/String;)[C
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getZipEntryByteContent(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->encoding:Ljava/lang/String;

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->defaultEncoding:Ljava/lang/String;

    :cond_0
    invoke-static {p1, p3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->bytesToChar([BLjava/lang/String;)[C

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public acceptImport(IIII[[CZI)V
    .locals 0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->importsTable:Ljava/util/HashMap;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[C

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x5

    new-array p1, p1, [[C

    move p3, p2

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->importsCounterTable:Ljava/util/HashMap;

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :goto_0
    array-length p4, p1

    if-ne p4, p3, :cond_1

    mul-int/lit8 p4, p3, 0x2

    new-array p4, p4, [[C

    invoke-static {p1, p2, p4, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p4

    :cond_1
    const/16 p4, 0x2e

    invoke-static {p5, p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p5

    if-eqz p6, :cond_2

    array-length p6, p5

    add-int/lit8 p7, p6, 0x2

    new-array p7, p7, [C

    invoke-static {p5, p2, p7, p2, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-char p4, p7, p6

    add-int/lit8 p6, p6, 0x1

    const/16 p2, 0x2a

    aput-char p2, p7, p6

    move-object p5, p7

    :cond_2
    add-int/lit8 p2, p3, 0x1

    aput-object p5, p1, p3

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->importsTable:Ljava/util/HashMap;

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->importsCounterTable:Ljava/util/HashMap;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public acceptLineSeparatorPositions([I)V
    .locals 0

    return-void
.end method

.method public acceptPackage(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V
    .locals 0

    return-void
.end method

.method public acceptProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourceRanges:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->parameterNames:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->parametersRanges:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->finalParameters:Ljava/util/HashSet;

    return-void
.end method

.method public convertTypeNamesToSigs([[C)[Ljava/lang/String;
    .locals 14

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object p1

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object p1

    :cond_1
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_2

    return-object v1

    :cond_2
    aget-object v4, p1, v3

    invoke-static {v4, v2}, Lorg/eclipse/jdt/core/Signature;->createCharArrayTypeSignature([CZ)[C

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    move v8, v2

    move v9, v8

    :goto_1
    if-lt v8, v5, :cond_4

    if-nez v6, :cond_3

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    aput-object v5, v1, v3

    goto :goto_2

    :cond_3
    sub-int/2addr v5, v9

    invoke-virtual {v6, v4, v9, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    aget-char v10, v4, v8

    const/16 v11, 0x2e

    if-eq v10, v11, :cond_b

    const/16 v12, 0x51

    if-eq v10, v12, :cond_a

    const/16 v13, 0x3b

    if-eq v10, v13, :cond_8

    const/16 v13, 0x3c

    if-eq v10, v13, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v10, v8, 0x1

    invoke-direct {p0, v4, v10}, Lorg/eclipse/jdt/internal/core/SourceMapper;->findMatchingGenericEnd([CI)I

    move-result v10

    if-lez v10, :cond_8

    add-int/lit8 v13, v10, 0x1

    if-ge v13, v5, :cond_8

    aget-char v13, v4, v13

    if-ne v13, v11, :cond_8

    if-nez v6, :cond_6

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v4, v2, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v10, 0x2

    :cond_7
    :goto_3
    move v9, v8

    goto :goto_4

    :cond_8
    if-le v7, v9, :cond_c

    if-nez v6, :cond_9

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v4, v2, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v7, 0x1

    sub-int v10, v8, v7

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v4, v9, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_a
    if-eqz v6, :cond_7

    sub-int v10, v8, v9

    invoke-virtual {v6, v4, v9, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_b
    move v7, v8

    :cond_c
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public enterCompilationUnit()V
    .locals 0

    return-void
.end method

.method public enterConstructor(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceMapper;->enterAbstractMethod(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V

    return-void
.end method

.method public enterField(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;)V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberDeclarationStart:[I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->declarationStart:I

    aput v2, v1, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberNameRange:[Lorg/eclipse/jdt/core/SourceRange;

    new-instance v2, Lorg/eclipse/jdt/core/SourceRange;

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->nameSourceStart:I

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->nameSourceEnd:I

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    aput-object v2, v1, v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->name:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberName:[Ljava/lang/String;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Lorg/eclipse/jdt/core/IType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object v0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;->categories:[[C

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/SourceMapper;->addCategories(Lorg/eclipse/jdt/core/IJavaElement;[[C)V

    :cond_0
    return-void
.end method

.method public enterInitializer(II)V
    .locals 0

    return-void
.end method

.method public enterMethod(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceMapper;->enterAbstractMethod(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V

    return-void
.end method

.method public enterModule(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;)V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/SourceRange;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->nameSourceStart:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->nameSourceEnd:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->moduleNameRange:Lorg/eclipse/jdt/core/SourceRange;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->declarationStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->moduleDeclarationStart:I

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->modifiers:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->moduleModifiers:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    instance-of v1, v0, Lorg/eclipse/jdt/core/IModuleDescription;

    if-eqz v1, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;->categories:[[C

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/SourceMapper;->addCategories(Lorg/eclipse/jdt/core/IJavaElement;[[C)V

    :cond_0
    return-void
.end method

.method public enterType(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V
    .locals 8

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/core/IType;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeNameRanges:[Lorg/eclipse/jdt/core/SourceRange;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/core/SourceRange;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeNameRanges:[Lorg/eclipse/jdt/core/SourceRange;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDeclarationStarts:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDeclarationStarts:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberName:[Ljava/lang/String;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberName:[Ljava/lang/String;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberDeclarationStart:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberDeclarationStart:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberNameRange:[Lorg/eclipse/jdt/core/SourceRange;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/core/SourceRange;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberNameRange:[Lorg/eclipse/jdt/core/SourceRange;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->methodParameterTypes:[[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [[[C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->methodParameterTypes:[[[C

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->methodParameterNames:[[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [[[C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->methodParameterNames:[[[C

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeModifiers:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeModifiers:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->name:[C

    array-length v1, v0

    if-nez v1, :cond_2

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->anonymousCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->anonymousCounter:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->anonymousClassName:I

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    aput-object v0, v1, v2

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeNameRanges:[Lorg/eclipse/jdt/core/SourceRange;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    new-instance v2, Lorg/eclipse/jdt/core/SourceRange;

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->nameSourceStart:I

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->nameSourceEnd:I

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v2, v4, v5}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDeclarationStarts:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->declarationStart:I

    aput v2, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    aget-object v0, v0, v1

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    if-eqz v1, :cond_4

    array-length v1, v1

    :goto_1
    if-lt v3, v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;

    aget-object v2, v2, v3

    new-instance v4, Ljava/lang/String;

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->name:[C

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v4}, Lorg/eclipse/jdt/core/IType;->getTypeParameter(Ljava/lang/String;)Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object v4

    new-instance v5, Lorg/eclipse/jdt/core/SourceRange;

    iget v6, v2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->declarationStart:I

    iget v7, v2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->declarationEnd:I

    sub-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v5, v6, v7}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    new-instance v6, Lorg/eclipse/jdt/core/SourceRange;

    iget v7, v2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->nameSourceStart:I

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;->nameSourceEnd:I

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v6, v7, v2}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    invoke-virtual {p0, v4, v5, v6}, Lorg/eclipse/jdt/internal/core/SourceMapper;->setSourceRange(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/SourceRange;Lorg/eclipse/jdt/core/SourceRange;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeModifiers:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->modifiers:I

    aput v3, v1, v2

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;->categories:[[C

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/SourceMapper;->addCategories(Lorg/eclipse/jdt/core/IJavaElement;[[C)V

    return-void
.end method

.method public exitCompilationUnit(I)V
    .locals 0

    return-void
.end method

.method public exitConstructor(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceMapper;->exitAbstractMethod(I)V

    return-void
.end method

.method public exitField(III)V
    .locals 2

    iget p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    if-ltz p1, :cond_0

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    aget-object p3, p3, p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberName:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-interface {p3, p1}, Lorg/eclipse/jdt/core/IType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object p1

    new-instance p3, Lorg/eclipse/jdt/core/SourceRange;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberDeclarationStart:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    aget v0, v0, v1

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p3, v0, p2}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberNameRange:[Lorg/eclipse/jdt/core/SourceRange;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    aget-object p2, p2, v0

    invoke-virtual {p0, p1, p3, p2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->setSourceRange(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/SourceRange;Lorg/eclipse/jdt/core/SourceRange;)V

    :cond_0
    return-void
.end method

.method public exitInitializer(I)V
    .locals 0

    return-void
.end method

.method public exitMethod(ILorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceMapper;->exitAbstractMethod(I)V

    return-void
.end method

.method public exitModule(I)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    new-instance v1, Lorg/eclipse/jdt/core/SourceRange;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->moduleDeclarationStart:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v1, v2, p1}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->moduleNameRange:Lorg/eclipse/jdt/core/SourceRange;

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/SourceMapper;->setSourceRange(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/SourceRange;Lorg/eclipse/jdt/core/SourceRange;)V

    return-void
.end method

.method public exitType(I)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    aget-object v1, v1, v0

    new-instance v2, Lorg/eclipse/jdt/core/SourceRange;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDeclarationStarts:[I

    aget v0, v3, v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v2, v0, p1}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeNameRanges:[Lorg/eclipse/jdt/core/SourceRange;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    aget-object p1, p1, v0

    invoke-virtual {p0, v1, v2, p1}, Lorg/eclipse/jdt/internal/core/SourceMapper;->setSourceRange(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/SourceRange;Lorg/eclipse/jdt/core/SourceRange;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    :cond_0
    return-void
.end method

.method public findSource(Ljava/lang/String;)[C
    .locals 5

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourcePath:Lorg/eclipse/core/runtime/IPath;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v0

    .line 10
    instance-of v2, v0, Lorg/eclipse/core/resources/IContainer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 11
    check-cast v0, Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0, p1}, Lorg/eclipse/core/resources/IContainer;->findMember(Ljava/lang/String;)Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    .line 12
    instance-of v0, p1, Lorg/eclipse/core/resources/IFile;

    if-eqz v0, :cond_6

    .line 13
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/eclipse/core/resources/IFile;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->encoding:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IFile;->getCharset(Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v0, v4

    .line 14
    :goto_1
    :try_start_1
    check-cast p1, Lorg/eclipse/core/resources/IFile;

    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->encoding:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->defaultEncoding:Ljava/lang/String;

    .line 16
    :cond_1
    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getResourceContentsAsCharArray(Lorg/eclipse/core/resources/IFile;Ljava/lang/String;)[C

    move-result-object v4
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    .line 17
    :cond_2
    :try_start_2
    instance-of v2, v0, Lorg/eclipse/core/resources/IFile;

    if-eqz v2, :cond_4

    .line 18
    check-cast v0, Lorg/eclipse/core/resources/IFile;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->encoding:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IFile;->getCharset(Z)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    :cond_4
    move-object v0, v4

    .line 19
    :goto_3
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    .line 20
    :try_start_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourcePath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getZipFile(Lorg/eclipse/core/runtime/IPath;)Ljava/util/zip/ZipFile;

    move-result-object v2
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    :try_start_4
    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 22
    invoke-direct {p0, p1, v2, v0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->readSource(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/lang/String;)[C

    move-result-object v4
    :try_end_4
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v4, v2

    goto :goto_6

    .line 23
    :cond_5
    :goto_4
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    :catch_2
    :cond_6
    :goto_5
    return-object v4

    :catchall_1
    move-exception p1

    :goto_6
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    .line 24
    throw p1

    :catch_3
    move-object v2, v4

    .line 25
    :catch_4
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    return-object v4
.end method

.method public findSource(Lorg/eclipse/jdt/core/IModuleDescription;)[C
    .locals 1

    .line 7
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/NamedMember;

    const-string v0, "module-info.java"

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->internalFindSource(Lorg/eclipse/jdt/internal/core/NamedMember;Ljava/lang/String;)[C

    move-result-object p1

    return-object p1
.end method

.method public findSource(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;)[C
    .locals 2

    .line 4
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    .line 5
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-static {v0, p2, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p2

    .line 6
    check-cast p1, Lorg/eclipse/jdt/internal/core/NamedMember;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->internalFindSource(Lorg/eclipse/jdt/internal/core/NamedMember;Ljava/lang/String;)[C

    move-result-object p1

    return-object p1
.end method

.method public findSource(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)[C
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/BinaryType;->getSourceFileName(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->findSource(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;)[C

    move-result-object p1

    return-object p1
.end method

.method public getFlags(Lorg/eclipse/jdt/core/IJavaElement;)I
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/SourceMapper$LocalVariableElementKey;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/SourceMapper$LocalVariableElementKey;-><init>(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->finalParameters:Ljava/util/HashSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x10

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getImports(Lorg/eclipse/jdt/internal/core/Member;)[[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->importsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[C

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->importsCounterTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    array-length v2, v0

    if-eq v2, v1, :cond_0

    new-array v2, v1, [[C

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->importsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getMethodParameterNames(Lorg/eclipse/jdt/core/IMethod;)[[C
    .locals 5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getUnqualifiedMethodHandle(Lorg/eclipse/jdt/core/IMethod;Z)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->parameterNames:Ljava/util/HashMap;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getUnqualifiedMethodHandle(Lorg/eclipse/jdt/core/IMethod;Z)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    aget-object p1, p1, v0

    check-cast p1, Lorg/eclipse/jdt/core/IMethod;

    goto :goto_0

    :cond_0
    aget-object p1, v1, v0

    check-cast p1, Lorg/eclipse/jdt/core/IMethod;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->parameterNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[C

    if-nez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    return-object p1
.end method

.method public getNameRange(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/SourceRange;
    .locals 6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/16 v4, 0xe

    if-eq v0, v4, :cond_2

    const/16 v4, 0xf

    if-eq v0, v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v4

    if-ne v4, v1, :cond_6

    check-cast v0, Lorg/eclipse/jdt/core/IMethod;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getUnqualifiedMethodHandle(Lorg/eclipse/jdt/core/IMethod;Z)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    aget-object v4, v1, v2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourceRanges:Ljava/util/HashMap;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getUnqualifiedMethodHandle(Lorg/eclipse/jdt/core/IMethod;Z)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Lorg/eclipse/jdt/core/IMethod;

    goto :goto_0

    :cond_1
    aget-object v0, v1, v3

    check-cast v0, Lorg/eclipse/jdt/core/IMethod;

    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/IMethod;->getTypeParameter(Ljava/lang/String;)Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/core/SourceMapper$LocalVariableElementKey;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/SourceMapper$LocalVariableElementKey;-><init>(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->parametersRanges:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/core/SourceRange;

    if-nez p1, :cond_3

    sget-object p1, Lorg/eclipse/jdt/internal/core/SourceMapper;->UNKNOWN_RANGE:Lorg/eclipse/jdt/core/SourceRange;

    return-object p1

    :cond_3
    aget-object p1, p1, v2

    return-object p1

    :cond_4
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/IMember;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_6

    check-cast p1, Lorg/eclipse/jdt/core/IMethod;

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getUnqualifiedMethodHandle(Lorg/eclipse/jdt/core/IMethod;Z)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    aget-object v1, v0, v2

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourceRanges:Ljava/util/HashMap;

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getUnqualifiedMethodHandle(Lorg/eclipse/jdt/core/IMethod;Z)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    aget-object p1, p1, v3

    goto :goto_1

    :cond_5
    aget-object p1, v0, v3

    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourceRanges:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/core/SourceRange;

    if-nez p1, :cond_7

    sget-object p1, Lorg/eclipse/jdt/internal/core/SourceMapper;->UNKNOWN_RANGE:Lorg/eclipse/jdt/core/SourceRange;

    return-object p1

    :cond_7
    aget-object p1, p1, v2

    return-object p1
.end method

.method public getSourceRange(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/SourceRange;
    .locals 6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/16 v4, 0xe

    if-eq v0, v4, :cond_2

    const/16 v4, 0xf

    if-eq v0, v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v4

    if-ne v4, v1, :cond_6

    check-cast v0, Lorg/eclipse/jdt/core/IMethod;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getUnqualifiedMethodHandle(Lorg/eclipse/jdt/core/IMethod;Z)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    aget-object v4, v1, v2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourceRanges:Ljava/util/HashMap;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getUnqualifiedMethodHandle(Lorg/eclipse/jdt/core/IMethod;Z)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Lorg/eclipse/jdt/core/IMethod;

    goto :goto_0

    :cond_1
    aget-object v0, v1, v3

    check-cast v0, Lorg/eclipse/jdt/core/IMethod;

    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/IMethod;->getTypeParameter(Ljava/lang/String;)Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/core/SourceMapper$LocalVariableElementKey;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/SourceMapper$LocalVariableElementKey;-><init>(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->parametersRanges:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/core/SourceRange;

    if-nez p1, :cond_3

    sget-object p1, Lorg/eclipse/jdt/internal/core/SourceMapper;->UNKNOWN_RANGE:Lorg/eclipse/jdt/core/SourceRange;

    return-object p1

    :cond_3
    aget-object p1, p1, v3

    return-object p1

    :cond_4
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/IMember;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_6

    check-cast p1, Lorg/eclipse/jdt/core/IMethod;

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getUnqualifiedMethodHandle(Lorg/eclipse/jdt/core/IMethod;Z)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    aget-object v1, v0, v2

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourceRanges:Ljava/util/HashMap;

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getUnqualifiedMethodHandle(Lorg/eclipse/jdt/core/IMethod;Z)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    aget-object p1, p1, v3

    goto :goto_1

    :cond_5
    aget-object p1, v0, v3

    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourceRanges:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/core/SourceRange;

    if-nez p1, :cond_7

    sget-object p1, Lorg/eclipse/jdt/internal/core/SourceMapper;->UNKNOWN_RANGE:Lorg/eclipse/jdt/core/SourceRange;

    return-object p1

    :cond_7
    aget-object p1, p1, v3

    return-object p1
.end method

.method public getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    instance-of v1, v0, Lorg/eclipse/jdt/core/IType;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x24

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-le v0, v4, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->anonymousCounter:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    new-instance v1, Lorg/eclipse/jdt/internal/core/BinaryType;

    new-instance v2, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/eclipse/jdt/internal/core/ClassFile;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Lorg/eclipse/jdt/internal/core/BinaryType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    iget v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_1
    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    return-object p1
.end method

.method public getUnqualifiedMethodHandle(Lorg/eclipse/jdt/core/IMethod;Z)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 13

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, v0

    const/4 v6, 0x1

    if-lt v3, v5, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object p1

    aput-object p1, p2, v2

    if-eqz v4, :cond_0

    aput-object p1, p2, v6

    :cond_0
    return-object p2

    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v8, v0, v3

    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    move-object v7, p0

    move-object v11, v5

    move v12, p2

    invoke-direct/range {v7 .. v12}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getUnqualifiedTypeSignature(Ljava/lang/String;IILjava/lang/StringBuffer;Z)I

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    const/16 v7, 0x24

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    or-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized mapSource(Lorg/eclipse/jdt/internal/core/NamedMember;[CLorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/ISourceRange;
    .locals 11

    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourceRanges:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getNameRange(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/SourceRange;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 4
    :cond_1
    :try_start_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->importsTable:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->importsCounterTable:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->searchedElement:Lorg/eclipse/jdt/core/IJavaElement;

    const/4 p1, 0x1

    .line 7
    new-array v1, p1, [Lorg/eclipse/jdt/core/IType;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    .line 8
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDeclarationStarts:[I

    .line 9
    new-array v1, p1, [Lorg/eclipse/jdt/core/SourceRange;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeNameRanges:[Lorg/eclipse/jdt/core/SourceRange;

    .line 10
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeModifiers:[I

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    .line 12
    new-array v2, p1, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberDeclarationStart:[I

    .line 13
    new-array v2, p1, [Ljava/lang/String;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberName:[Ljava/lang/String;

    .line 14
    new-array v2, p1, [Lorg/eclipse/jdt/core/SourceRange;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->memberNameRange:[Lorg/eclipse/jdt/core/SourceRange;

    .line 15
    new-array v2, p1, [[[C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->methodParameterTypes:[[[C

    .line 16
    new-array v2, p1, [[[C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->methodParameterNames:[[[C

    const/4 v2, 0x0

    .line 17
    iput v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->anonymousCounter:I

    if-eqz p4, :cond_2

    .line 18
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourceRanges:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 19
    :goto_1
    :try_start_2
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;

    invoke-direct {v6}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    .line 20
    iput v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->anonymousClassName:I

    .line 21
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    instance-of v5, v4, Lorg/eclipse/jdt/internal/core/BinaryType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_6

    if-nez p3, :cond_4

    .line 22
    :try_start_3
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    :try_end_3
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :catch_0
    if-eqz p4, :cond_3

    .line 23
    :try_start_4
    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourceRanges:Ljava/util/HashMap;

    .line 24
    :cond_3
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    .line 25
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->searchedElement:Lorg/eclipse/jdt/core/IJavaElement;

    .line 26
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    .line 27
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDeclarationStarts:[I

    .line 28
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeNameRanges:[Lorg/eclipse/jdt/core/SourceRange;

    .line 29
    iput v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    monitor-exit p0

    return-object v0

    .line 31
    :cond_4
    :goto_2
    :try_start_5
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    check-cast v4, Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v4, p3}, Lorg/eclipse/jdt/internal/core/BinaryType;->sourceFileName(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isAnonymous()Z

    move-result v5

    .line 33
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getName()[C

    move-result-object p3

    if-eqz v5, :cond_5

    .line 34
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x24

    .line 35
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/2addr v7, p1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v5, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 36
    :try_start_6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->anonymousClassName:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 37
    :catch_1
    :cond_5
    :try_start_7
    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/SourceMapper;->hasToRetrieveSourceRangesForLocalClass([C)Z

    move-result p1

    :goto_3
    move-object p3, v4

    goto :goto_4

    .line 38
    :cond_6
    const-string v4, "module-info.class"

    move p1, v2

    goto :goto_3

    .line 39
    :goto_4
    new-instance v10, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->options:Ljava/util/Map;

    invoke-direct {v7, v4}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    const/4 v9, 0x1

    move-object v4, v10

    move-object v5, p0

    move v8, p1

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;-><init>(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;ZZ)V

    .line 40
    iget-object v4, v10, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->javadocParser:Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;

    iput-boolean v2, v4, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    .line 41
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v2

    if-nez v2, :cond_7

    .line 42
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    .line 43
    :cond_7
    new-instance v4, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;

    invoke-direct {v4, p2, v0, p3, v2}, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;-><init>([C[[CLjava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 44
    invoke-virtual {v10, v4, p1, v0}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;->parseCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz p4, :cond_8

    .line 45
    invoke-virtual {p0, p4}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getNameRange(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/SourceRange;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 46
    :try_start_8
    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourceRanges:Ljava/util/HashMap;

    .line 47
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    .line 48
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->searchedElement:Lorg/eclipse/jdt/core/IJavaElement;

    .line 49
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    .line 50
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDeclarationStarts:[I

    .line 51
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeNameRanges:[Lorg/eclipse/jdt/core/SourceRange;

    .line 52
    iput v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 53
    monitor-exit p0

    return-object p1

    :cond_8
    if-eqz p4, :cond_9

    .line 54
    :try_start_9
    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourceRanges:Ljava/util/HashMap;

    .line 55
    :cond_9
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    .line 56
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->searchedElement:Lorg/eclipse/jdt/core/IJavaElement;

    .line 57
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    .line 58
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDeclarationStarts:[I

    .line 59
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeNameRanges:[Lorg/eclipse/jdt/core/SourceRange;

    .line 60
    iput v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 61
    monitor-exit p0

    return-object v0

    :goto_5
    if-eqz p4, :cond_a

    .line 62
    :try_start_a
    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourceRanges:Ljava/util/HashMap;

    .line 63
    :cond_a
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->binaryTypeOrModule:Lorg/eclipse/jdt/internal/core/NamedMember;

    .line 64
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->searchedElement:Lorg/eclipse/jdt/core/IJavaElement;

    .line 65
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->types:[Lorg/eclipse/jdt/core/IType;

    .line 66
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDeclarationStarts:[I

    .line 67
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeNameRanges:[Lorg/eclipse/jdt/core/SourceRange;

    .line 68
    iput v1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->typeDepth:I

    .line 69
    throw p1

    :goto_6
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p1
.end method

.method public mapSource(Lorg/eclipse/jdt/internal/core/NamedMember;[CLorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->mapSource(Lorg/eclipse/jdt/internal/core/NamedMember;[CLorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/ISourceRange;

    return-void
.end method

.method public setMethodParameterNames(Lorg/eclipse/jdt/core/IMethod;[[C)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->parameterNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSourceRange(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/SourceRange;Lorg/eclipse/jdt/core/SourceRange;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMapper;->sourceRanges:Ljava/util/HashMap;

    filled-new-array {p2, p3}, [Lorg/eclipse/jdt/core/SourceRange;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
