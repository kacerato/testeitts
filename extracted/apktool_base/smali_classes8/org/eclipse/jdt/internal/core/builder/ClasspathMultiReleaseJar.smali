.class public Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;
.super Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;
.source "SourceFile"


# static fields
.field private static final META_INF_LENGTH:I = 0x12

.field private static final META_INF_VERSIONS:Ljava/lang/String; = "META-INF/versions/"


# instance fields
.field supportedVersions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p6}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;-><init>(Ljava/lang/String;JLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)V

    .line 5
    iput-object p7, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->compliance:Ljava/lang/String;

    .line 6
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;->initializeVersions(Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)V
    .locals 8

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 10
    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;-><init>(Ljava/lang/String;JLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)V

    if-eqz p3, :cond_0

    .line 11
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->externalAnnotationPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipFile;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)V
    .locals 6

    .line 7
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)V

    .line 8
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->closeZipFileAtEnd:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;-><init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)V

    .line 2
    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->compliance:Ljava/lang/String;

    .line 3
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;->initializeVersions(Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;)V

    return-void
.end method

.method private static declared-synchronized initializeVersions(Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;)V
    .locals 5

    const-class v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    if-nez v1, :cond_1

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") [ClasspathMultiReleaseJar.initializeVersions(String)] Creating ZipFile on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->closeZipFileAtEnd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->compliance:Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v1

    const/16 v3, 0x10

    shr-long/2addr v1, v3

    long-to-int v1, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    const/16 v3, 0x35

    if-ge v1, v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;->supportedVersions:[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "META-INF/versions/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v1, -0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method


# virtual methods
.method public findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;->supportedVersions:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-lt v8, v6, :cond_1

    invoke-super/range {p0 .. p6}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v0

    return-object v0

    :cond_1
    aget-object v0, v5, v8

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "META-INF/versions/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_7

    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    move-object/from16 v13, p4

    goto/16 :goto_9

    :cond_3
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-static {v0, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v11, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-nez v11, :cond_4

    move-object v11, v4

    goto :goto_1

    :cond_4
    invoke-interface {v11}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v11

    :goto_1
    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    if-nez v12, :cond_5

    iput-object v11, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_2
    move-object/from16 v13, p4

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_5
    move-object v11, v12

    :goto_3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v12

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_CLASS:[C

    array-length v13, v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_2 .. :try_end_2} :catch_0

    sub-int/2addr v12, v13

    move-object/from16 v13, p4

    :try_start_3
    invoke-virtual {v13, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    iget-object v14, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->externalAnnotationPath:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v14, :cond_7

    :try_start_4
    iget-object v15, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    if-nez v15, :cond_6

    invoke-static {v14, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->getAnnotationZipFile(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator$ZipFileProducer;)Ljava/util/zip/ZipFile;

    move-result-object v14

    iput-object v14, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_8

    :cond_6
    :goto_4
    iget-object v14, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->externalAnnotationPath:Ljava/lang/String;

    iget-object v15, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    invoke-static {v0, v14, v12, v15}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->create(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_3
    :try_start_5
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getExternalAnnotationStatus()Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    move-result-object v14

    sget-object v15, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->NOT_EEA_CONFIGURED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    if-ne v14, v15, :cond_7

    new-instance v14, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;

    invoke-direct {v14, v0, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;)V

    move-object v0, v14

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_8

    :cond_7
    :goto_5
    iget-object v14, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-nez v14, :cond_8

    new-instance v12, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-direct {v12, v0, v4, v11}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V

    return-object v12

    :cond_8
    new-instance v15, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    invoke-virtual {v14, v12}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->getViolatedRestriction([C)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object v12

    invoke-direct {v15, v0, v12, v11}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_5 .. :try_end_5} :catch_2

    return-object v15

    :catch_5
    move-exception v0

    :goto_6
    move-object/from16 v13, p4

    move-object v9, v4

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    :goto_7
    move-object/from16 v10, p1

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_7

    :goto_8
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to find class for: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " in: "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method public initializeModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 11

    const-string v0, "Failed to initialize module for: "

    const-string v1, "module-info.class"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;->supportedVersions:[Ljava/lang/String;

    array-length v5, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    move-object v7, v2

    :goto_0
    if-lt v6, v5, :cond_0

    goto :goto_2

    :cond_0
    :try_start_2
    aget-object v8, v4, v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x2f

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v7, v2

    :goto_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_2
    if-nez v7, :cond_2

    invoke-static {v3, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object v7

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v3

    goto :goto_5

    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v3

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_5

    :catchall_3
    move-exception v3

    move-object v1, v2

    :goto_5
    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_5

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_2
    move-exception v2

    goto :goto_7

    :catch_3
    move-exception v2

    goto :goto_7

    :cond_4
    move-object v2, v3

    :cond_5
    :goto_6
    throw v2
    :try_end_6
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_8
    return-object v1
.end method

.method public readJarContent(Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "META-INF/versions/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x2f

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sget v5, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiReleaseJar;->META_INF_LENGTH:I

    if-le v3, v5, :cond_1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v3, "META-INF/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "module-info.class"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, v2

    :cond_3
    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->addToPackageSet(Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;Ljava/lang/String;Z)V

    goto :goto_0
.end method
