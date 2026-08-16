.class public Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;
.super Lorg/eclipse/jdt/internal/core/Openable;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IPackageFragmentRoot;


# static fields
.field protected static final ATTACHMENT_PROPERTY_DELIMITER:C = '*'

.field public static final NO_SOURCE_ATTACHMENT:Ljava/lang/String; = ""


# instance fields
.field protected resource:Lorg/eclipse/core/resources/IResource;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/Openable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource:Lorg/eclipse/core/resources/IResource;

    return-void
.end method

.method private findSourceAttachmentRecommendation()Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_0

    return-object v3

    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_1

    goto :goto_2

    :cond_1
    aget-object v6, v3, v5

    check-cast v6, Lorg/eclipse/jdt/internal/core/JavaProject;
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v6, v1, :cond_2

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-static {v7, v2}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v7
    :try_end_3
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v7, :cond_3

    return-object v6

    :catch_1
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_2
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSourceModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_2

    :cond_0
    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getKind()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    aget-object v0, v0, v2

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    const-string v1, "module-info.java"

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->getModule()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    aget-object v0, v0, v2

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragment;->getModularClassFile()Lorg/eclipse/jdt/core/IModularClassFile;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IModularClassFile;->getModule()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_1
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isComplianceJava9OrHigher(Lorg/eclipse/jdt/core/IJavaProject;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3
    :cond_0
    const-string v1, "org.eclipse.jdt.core.compiler.compliance"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/32 v5, 0x350000

    cmp-long p0, v3, v5

    if-ltz p0, :cond_1

    return v2

    :cond_1
    return v0
.end method


# virtual methods
.method public attachSource(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->verifyAttachSource(Lorg/eclipse/core/runtime/IPath;)V

    if-eqz p3, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->element_attachingSource:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p3, v1, v2}, Lorg/eclipse/core/runtime/IProgressMonitor;->beginTask(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->setSourceMapper(Lorg/eclipse/jdt/internal/core/SourceMapper;)V

    move v3, v2

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    if-eqz p3, :cond_2

    invoke-interface {p3, v2}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    :cond_2
    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    if-eqz v4, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v5

    :goto_1
    invoke-static {p1, v5}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->createSourceMapper(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v4

    if-nez p2, :cond_5

    iget-object v5, v4, Lorg/eclipse/jdt/internal/core/SourceMapper;->rootPath:Ljava/lang/String;

    if-eqz v5, :cond_5

    new-instance p2, Lorg/eclipse/core/runtime/Path;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/core/SourceMapper;->rootPath:Ljava/lang/String;

    invoke-direct {p2, v5}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->setSourceMapper(Lorg/eclipse/jdt/internal/core/SourceMapper;)V

    :goto_2
    if-nez p1, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->setSourceAttachmentProperty(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_7

    const-string p1, ""

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v6, 0x2a

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->setSourceAttachmentProperty(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)V

    :goto_4
    if-eqz v3, :cond_b

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/SourceMapper;->close()V

    :cond_8
    invoke-static {}, Lorg/eclipse/jdt/internal/core/BufferManager;->getDefaultBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/BufferManager;->getOpenBuffers()Ljava/util/Enumeration;

    move-result-object p1

    :cond_9
    :goto_5
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-nez p2, :cond_a

    if-eqz p3, :cond_b

    invoke-interface {p3, v2}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    goto :goto_6

    :cond_a
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/core/IBuffer;

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IBuffer;->getOwner()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->isAncestorOf(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IBuffer;->close()V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_b
    :goto_6
    if-eqz p3, :cond_c

    invoke-interface {p3}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_c
    return-void

    :cond_d
    :try_start_1
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3d3

    invoke-direct {v1, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/core/runtime/IPath;)V

    invoke-direct {p2, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p2
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-static {p2, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->setSourceAttachmentProperty(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_8
    if-eqz p3, :cond_e

    invoke-interface {p3}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_e
    throw p1
.end method

.method public buildStructure(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/util/Map;Lorg/eclipse/core/resources/IResource;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;

    invoke-virtual {p0, p4}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->determineKind(Lorg/eclipse/core/resources/IResource;)I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->setRootKind(I)V

    invoke-virtual {p0, p1, p4}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->computeChildren(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/resources/IResource;)Z

    move-result p1

    return p1
.end method

.method public computeChildren(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/resources/IResource;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, p2

    check-cast v5, Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullInclusionPatternChars()[[C

    move-result-object v9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullExclusionPatternChars()[[C

    move-result-object v10

    invoke-static {v5, v9, v10}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result p2

    xor-int/lit8 v6, p2, 0x1

    sget-object v7, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    move-object v4, p0

    move-object v8, v1

    invoke-virtual/range {v4 .. v10}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->computeFolderChildren(Lorg/eclipse/core/resources/IContainer;Z[Ljava/lang/String;Ljava/util/ArrayList;[[C[[C)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setChildren([Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_1

    :cond_1
    sget-object p2, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setChildren([Lorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return v3

    :goto_2
    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setChildren([Lorg/eclipse/jdt/core/IJavaElement;)V

    throw p2
.end method

.method public computeFolderChildren(Lorg/eclipse/core/resources/IContainer;Z[Ljava/lang/String;Ljava/util/ArrayList;[[C[[C)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    if-eqz p2, :cond_0

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v12

    array-length v13, v12

    if-lez v13, :cond_6

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/core/resources/IContainer;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.compiler.source"

    const/4 v14, 0x1

    invoke-interface {v1, v2, v14}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    const-string v2, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v1, v2, v14}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v5

    const/4 v1, 0x0

    move/from16 v16, p2

    move v4, v1

    :goto_0
    if-lt v4, v13, :cond_1

    goto/16 :goto_2

    :cond_1
    aget-object v1, v12, v4

    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v3

    if-eq v3, v14, :cond_4

    const/4 v14, 0x2

    if-eq v3, v14, :cond_3

    :cond_2
    move/from16 v18, v4

    move-object v14, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v12

    const/16 v17, 0x1

    move-object v12, v7

    goto :goto_1

    :cond_3
    invoke-static {v2, v15, v7}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidFolderNameForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v6, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->contains(Lorg/eclipse/core/resources/IResource;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v5, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->arrayConcat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v10, v11}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v2

    const/16 v17, 0x1

    xor-int/lit8 v3, v2, 0x1

    move-object v2, v1

    check-cast v2, Lorg/eclipse/core/resources/IFolder;

    move-object/from16 v1, p0

    move/from16 v18, v4

    move-object v4, v14

    move-object v14, v5

    move-object/from16 v5, p4

    move-object/from16 v19, v6

    move-object/from16 v6, p5

    move-object/from16 v20, v12

    move-object v12, v7

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->computeFolderChildren(Lorg/eclipse/core/resources/IContainer;Z[Ljava/lang/String;Ljava/util/ArrayList;[[C[[C)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_4
    move/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v12

    move/from16 v17, v14

    move-object v14, v5

    move-object v12, v7

    if-nez v16, :cond_5

    invoke-static {v2, v15, v12}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidCompilationUnitName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1, v10, v11}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v16, v17

    :cond_5
    :goto_1
    add-int/lit8 v4, v18, 0x1

    move-object v7, v12

    move-object v5, v14

    move/from16 v14, v17

    move-object/from16 v6, v19

    move-object/from16 v12, v20

    goto/16 :goto_0

    :cond_6
    :goto_2
    return-void

    :goto_3
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v1

    :goto_4
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v2, 0x3c9

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public copy(Lorg/eclipse/core/runtime/IPath;IILorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v6, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;-><init>(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/core/runtime/IPath;IILorg/eclipse/jdt/core/IClasspathEntry;)V

    invoke-virtual {v6, p5}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public createElementInfo()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;-><init>()V

    return-object v0
.end method

.method public createPackageFragment(Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/IPackageFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/CreatePackageFragmentOperation;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/CreatePackageFragmentOperation;-><init>(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Ljava/lang/String;Z)V

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/CreatePackageFragmentOperation;->pkgName:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p1

    return-object p1
.end method

.method public createSourceMapper(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/SourceMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getSourceAttachmentEncoding()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Lorg/eclipse/jdt/internal/core/SourceMapper;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p2

    const/4 v3, 0x1

    invoke-interface {p2, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object p2

    invoke-direct {v2, p1, v1, p2, v0}, Lorg/eclipse/jdt/internal/core/SourceMapper;-><init>(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-object v2
.end method

.method public delete(IILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;-><init>(Lorg/eclipse/jdt/core/IPackageFragmentRoot;II)V

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public determineKind(Lorg/eclipse/core/resources/IResource;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getContentKind()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public fullExclusionPatternChars()[[C
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getKind()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getRawClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars()[[C

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public fullInclusionPatternChars()[[C
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getKind()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getRawClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullInclusionPatternChars()[[C

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getAutomaticModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getResolvedClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getAutomaticModuleDescription(Lorg/eclipse/jdt/core/IClasspathEntry;)Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    return-object v0
.end method

.method public getAutomaticModuleDescription(Lorg/eclipse/jdt/core/IClasspathEntry;)Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 5

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getElementName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getManifest()Ljava/util/jar/Manifest;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getElementName()Ljava/lang/String;

    move-result-object p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getManifest()Ljava/util/jar/Manifest;

    move-result-object p1

    .line 10
    :goto_0
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/env/AutomaticModuleNaming;->determineAutomaticModuleNameFromManifest(Ljava/util/jar/Manifest;)[C

    move-result-object p1

    if-nez p1, :cond_3

    .line 11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result p1

    invoke-static {v0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/env/AutomaticModuleNaming;->determineAutomaticModuleNameFromFileName(Ljava/lang/String;ZZ)[C

    move-result-object p1

    const/4 v2, 0x0

    .line 12
    :cond_3
    new-instance v0, Lorg/eclipse/jdt/internal/core/AbstractModule$AutoModule;

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, v2}, Lorg/eclipse/jdt/internal/core/AbstractModule$AutoModule;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getClassFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public getElementName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/core/resources/IFolder;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/core/resources/IFolder;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IFolder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getElementType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x3c

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x28

    if-eq v1, v3, :cond_2

    const/16 v3, 0x27

    if-eq v1, v3, :cond_2

    const/16 v3, 0x7b

    if-eq v1, v3, :cond_2

    const/16 v3, 0x21

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, p1, v0, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->splitOn(CLjava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    move-object v2, p1

    move-object p1, v0

    goto :goto_1

    :cond_3
    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p1

    if-nez v2, :cond_4

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1, v2, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public getHandleMemento(Ljava/lang/StringBuffer;)V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleMemento(Ljava/lang/StringBuffer;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getHandleMementoDelimiter()C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->escapeMementoName(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isJrt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x60

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->escapeMementoName(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x2f

    return v0
.end method

.method public getKind()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->getRootKind()I

    move-result v0

    return v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isComplianceJava9OrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getSourceModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNonJavaResources()[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->getNonJavaResources(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPackageFragment(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragment;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getTrimmedSimpleNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p1

    return-object p1
.end method

.method public getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;
    .locals 1

    .line 3
    new-instance v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragment;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackageFragment([Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;
    .locals 0

    .line 4
    new-instance p2, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-direct {p2, p0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragment;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;)V

    return-object p2
.end method

.method public getPackageName(Lorg/eclipse/core/resources/IFolder;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFolder;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v3, v0

    :goto_0
    if-lt v3, v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-le v3, v0, :cond_1

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-interface {p1, v3}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->internalPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

.method public getRawClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rootPathToRawEntries:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IClasspathEntry;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3ee

    invoke-direct {v1, v2, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0
.end method

.method public getResolvedClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rootPathToResolvedEntries:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IClasspathEntry;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3ee

    invoke-direct {v1, v2, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0
.end method

.method public getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getKind()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getSourceAttachmentProperty(Lorg/eclipse/core/runtime/IPath;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v0, 0x2a

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v1, v0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->findSourceAttachmentRecommendation()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    return-object v2
.end method

.method public getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getKind()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getSourceAttachmentProperty(Lorg/eclipse/core/runtime/IPath;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v0, 0x2a

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    new-instance v1, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v1, v0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->findSourceAttachmentRecommendation()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    return-object v2
.end method

.method public getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->createSourceMapper(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->createSourceMapper(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->setSourceMapper(Lorg/eclipse/jdt/internal/core/SourceMapper;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public getUnderlyingResource()Lorg/eclipse/core/resources/IResource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newNotPresentException()Lorg/eclipse/jdt/core/JavaModelException;

    move-result-object v0

    throw v0
.end method

.method public hasChildren()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/16 p2, 0x2f

    const/16 v0, 0x2e

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragment;->containsJavaResources()Z

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public ignoreOptionalProblems()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->ignoreOptionalProblems(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Z

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public internalKind()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->peekAtInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->createElementInfo()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->openWhenClosed(Ljava/lang/Object;ZLorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->getRootKind()I

    move-result v0

    return v0
.end method

.method public internalPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

.method public isArchive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isComplianceJava9OrHigher()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isComplianceJava9OrHigher(Lorg/eclipse/jdt/core/IJavaProject;)Z

    move-result v0

    return v0
.end method

.method public isExternal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public move(Lorg/eclipse/core/runtime/IPath;IILorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v6, Lorg/eclipse/jdt/internal/core/MovePackageFragmentRootOperation;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/MovePackageFragmentRootOperation;-><init>(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/core/runtime/IPath;IILorg/eclipse/jdt/core/IClasspathEntry;)V

    invoke-virtual {v6, p5}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public resource()Lorg/eclipse/core/resources/IResource;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource:Lorg/eclipse/core/resources/IResource;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    return-object v0
.end method

.method public resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;
    .locals 0

    .line 3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource:Lorg/eclipse/core/resources/IResource;

    return-object p1
.end method

.method public setSourceMapper(Lorg/eclipse/jdt/internal/core/SourceMapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;->setSourceMapper(Lorg/eclipse/jdt/internal/core/SourceMapper;)V

    return-void
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isExternal()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p4

    invoke-interface {p4}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    const-string p1, "<project root>"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->makeRelative()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_0
    if-nez p3, :cond_3

    const-string p1, " (not open)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    return-void
.end method

.method public validateExistence(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IStatus;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->validateOnClasspath()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/Openable;->resourceExists(Lorg/eclipse/core/resources/IResource;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newDoesNotExistStatus()Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object p1
.end method

.method public validateOnClasspath()Lorg/eclipse/core/runtime/IStatus;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/core/runtime/Status;->OK_STATUS:Lorg/eclipse/core/runtime/IStatus;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3ee

    invoke-direct {v0, v1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    return-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/JavaModelException;->getJavaModelStatus()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    return-object v0
.end method

.method public verifyAttachSource(Lorg/eclipse/core/runtime/IPath;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getKind()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3cc

    invoke-direct {v1, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/core/runtime/IPath;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3c7

    invoke-direct {v0, v1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newNotPresentException()Lorg/eclipse/jdt/core/JavaModelException;

    move-result-object p1

    throw p1
.end method
