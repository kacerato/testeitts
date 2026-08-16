.class public Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;
.super Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;
.source "SourceFile"


# static fields
.field protected static final EMPTY_LIST:Ljava/util/ArrayList;


# instance fields
.field protected final jarPath:Lorg/eclipse/core/runtime/IPath;

.field knownToBeModuleLess:Z

.field private multiVersion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->EMPTY_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;-><init>(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    .line 4
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->jarPath:Lorg/eclipse/core/runtime/IPath;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;-><init>(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->jarPath:Lorg/eclipse/core/runtime/IPath;

    return-void
.end method


# virtual methods
.method public computeChildren(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/resources/IResource;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v3, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x1

    :try_start_0
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    sget-object v6, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->EMPTY_LIST:Ljava/util/ArrayList;

    filled-new-array {v6, v6}, [Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->put([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->isEnabled()Z

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getIndex()Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireReadLock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getLocationForElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    invoke-interface {v9}, Lorg/eclipse/core/runtime/IPath;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getResourceFile([C)Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->isUpToDate(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getJdkLevel()J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionFromJdkLevel(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getZipEntries()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getTypes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_0

    move v0, v5

    goto :goto_2

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    new-instance v11, Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/String;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getTypeId()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v10

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getBinaryName()[C

    move-result-object v10

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".class"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v3, v10, v7, v0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->initRawPackageInfo(Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v0

    goto :goto_3

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jdt/internal/core/nd/java/NdZipEntry;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/nd/java/NdZipEntry;->getFileName()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v11

    invoke-interface {v11}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v1, v3, v11, v12, v0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->initRawPackageInfo(Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    move v0, v7

    :goto_2
    if-eqz v8, :cond_7

    :try_start_3
    invoke-interface {v8}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_4

    :goto_3
    if-eqz v8, :cond_3

    invoke-interface {v8}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    if-eqz v6, :cond_4

    if-eq v6, v0, :cond_5

    :try_start_4
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_10

    :cond_4
    move-object v6, v0

    :cond_5
    :goto_5
    throw v6

    :cond_6
    move v0, v7

    :cond_7
    :goto_6
    if-nez v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getJdkLevel(Ljava/lang/Object;)J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    const-string v10, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v0, v10, v5}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_4
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getJar()Ljava/util/zip/ZipFile;

    move-result-object v6

    const-string v12, "META-INF/versions/"

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-wide/32 v14, 0x350000

    cmp-long v10, v10, v14

    if-ltz v10, :cond_a

    invoke-virtual {v6, v12}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->releaseToJDKLevel(Ljava/lang/String;)J

    move-result-wide v10

    const/16 v0, 0x10

    shr-long/2addr v10, v0

    long-to-int v0, v10

    :goto_7
    const/16 v10, 0x35

    if-ge v0, v10, :cond_8

    goto :goto_9

    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v0, -0x2c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :catchall_2
    move-exception v0

    goto/16 :goto_c

    :cond_9
    :goto_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_a
    :goto_9
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_b

    iput-boolean v5, v1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->multiVersion:Z

    :cond_b
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v10, :cond_c

    :try_start_6
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V
    :try_end_6
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_d

    :cond_c
    :try_start_7
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/zip/ZipEntry;

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    iget-boolean v14, v1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->multiVersion:Z

    if-eqz v14, :cond_e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x14

    if-le v14, v15, :cond_e

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/16 v14, 0x2f

    const/16 v15, 0x12

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v14, v5, :cond_d

    :goto_b
    const/4 v5, 0x1

    goto :goto_a

    :cond_d
    invoke-virtual {v11, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-static {v11}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    invoke-static {v8, v9}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionFromJdkLevel(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v3, v11, v5, v10}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->initRawPackageInfo(Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_b

    :goto_c
    :try_start_8
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    throw v0

    :cond_f
    :goto_d
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    iget-object v5, v3, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->keyTable:[[Ljava/lang/Object;

    array-length v5, v5

    move v6, v7

    :goto_e
    if-lt v7, v5, :cond_10

    goto :goto_11

    :cond_10
    iget-object v8, v3, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->keyTable:[[Ljava/lang/Object;

    aget-object v8, v8, v7

    check-cast v8, [Ljava/lang/String;

    if-nez v8, :cond_11

    goto :goto_f

    :cond_11
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v8

    aput-object v8, v0, v6
    :try_end_8
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_8 .. :try_end_8} :catch_0

    move v6, v9

    :goto_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :goto_10
    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/util/zip/ZipException;

    if-eqz v5, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Invalid ZIP archive: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x4

    invoke-static {v5, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(ILjava/lang/String;)V

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    :goto_11
    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setChildren([Lorg/eclipse/jdt/core/IJavaElement;)V

    move-object v0, v2

    check-cast v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRootInfo;

    iput-object v3, v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRootInfo;->rawPackageInfo:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRootInfo;->overriddenClasses:Ljava/util/Map;

    const/4 v2, 0x1

    return v2

    :cond_12
    instance-of v2, v0, Lorg/eclipse/jdt/core/JavaModelException;

    if-eqz v2, :cond_13

    check-cast v0, Lorg/eclipse/jdt/core/JavaModelException;

    throw v0

    :cond_13
    new-instance v2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v2, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v2
.end method

.method public createChildren(Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->keyTable:[[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v2, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v4, p1, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->keyTable:[[Ljava/lang/Object;

    aget-object v4, v4, v2

    check-cast v4, [Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v4

    aput-object v4, v0, v3

    move v3, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public createElementInfo()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRootInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRootInfo;-><init>()V

    return-object v0
.end method

.method public determineKind(Lorg/eclipse/core/resources/IResource;)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->jarPath:Lorg/eclipse/core/runtime/IPath;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->jarPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getClassFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->multiVersion:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRootInfo;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRootInfo;->overriddenClasses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object p1
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->jarPath:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexPath()Ljava/net/URL;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getLibraryIndexLocation()Ljava/net/URL;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJar()Ljava/util/zip/ZipFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getZipFile(Lorg/eclipse/core/runtime/IPath;)Ljava/util/zip/ZipFile;

    move-result-object v0

    return-object v0
.end method

.method public getKind()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getJar()Ljava/util/zip/ZipFile;

    move-result-object v1
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/util/jar/Manifest;

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    throw v0

    :catch_1
    move-object v1, v0

    goto :goto_0

    :goto_2
    return-object v0
.end method

.method public getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->knownToBeModuleLess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->knownToBeModuleLess:Z

    :cond_1
    return-object v0
.end method

.method public getNonJavaResources()[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JarPackageFragment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JarPackageFragment;->storedNonJavaResources()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_1

    return-object v2

    :cond_1
    aget-object v4, v0, v3

    check-cast v4, Lorg/eclipse/jdt/internal/core/JarEntryResource;

    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->clone(Ljava/lang/Object;)Lorg/eclipse/jdt/internal/core/JarEntryResource;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/JarPackageFragment;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/JarPackageFragment;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackageFragment([Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;
    .locals 0

    .line 2
    new-instance p2, Lorg/eclipse/jdt/internal/core/JarPackageFragment;

    invoke-direct {p2, p0, p1}, Lorg/eclipse/jdt/internal/core/JarPackageFragment;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;)V

    return-object p2
.end method

.method public getUnderlyingResource()Lorg/eclipse/core/resources/IResource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newNotPresentException()Lorg/eclipse/jdt/core/JavaModelException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getUnderlyingResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->jarPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public initRawPackageInfo(Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 11

    const/16 v0, 0x2f

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, p2, v3, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->splitOn(CLjava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v4

    move-object v7, v5

    :goto_1
    if-gez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0, v6}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->getKey([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    if-eqz v7, :cond_b

    :goto_2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v8

    :goto_3
    if-lt v6, v4, :cond_7

    if-eqz p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/ArrayList;

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    aget-object p3, p1, v3

    sget-object p4, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->EMPTY_LIST:Ljava/util/ArrayList;

    if-ne p3, p4, :cond_4

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    aput-object p3, p1, v3

    :cond_4
    add-int/2addr v2, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x6

    invoke-virtual {p2, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    aget-object p1, p1, v3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    aget-object p3, p1, v1

    sget-object p4, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->EMPTY_LIST:Ljava/util/ArrayList;

    if-ne p3, p4, :cond_6

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    aput-object p3, p1, v1

    :cond_6
    aget-object p1, p1, v1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    return-void

    :cond_7
    aget-object v9, v0, v6

    invoke-static {v9, v5, p4}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidFolderNameForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    add-int/lit8 v9, v6, 0x1

    new-array v10, v9, [Ljava/lang/String;

    invoke-static {v7, v3, v10, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v7, v0, v6

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v6

    sget-object v6, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->EMPTY_LIST:Ljava/util/ArrayList;

    filled-new-array {v6, v6}, [Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p1, v10, v6}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->put([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v9

    move-object v7, v10

    goto :goto_3

    :cond_8
    if-nez p3, :cond_a

    invoke-virtual {p1, v7}, Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/ArrayList;

    aget-object p3, p1, v1

    sget-object p4, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->EMPTY_LIST:Ljava/util/ArrayList;

    if-ne p3, p4, :cond_9

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    aput-object p3, p1, v1

    :cond_9
    aget-object p1, p1, v1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    return-void

    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1
.end method

.method public internalKind()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x2

    return v0
.end method

.method public internalPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->jarPath:Lorg/eclipse/core/runtime/IPath;

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->internalPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

.method public isArchive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isExternal()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource:Lorg/eclipse/core/resources/IResource;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    return-object p1
.end method

.method public resourceExists(Lorg/eclipse/core/resources/IResource;)Z
    .locals 1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModel;->getExternalTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/Openable;->resourceExists(Lorg/eclipse/core/resources/IResource;)Z

    move-result p1

    return p1
.end method

.method public toStringAncestors(Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringAncestors(Ljava/lang/StringBuffer;)V

    return-void
.end method
