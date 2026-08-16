.class public Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;
.super Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;
.source "SourceFile"


# instance fields
.field protected annotationPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected annotationZipFile:Ljava/util/zip/ZipFile;

.field protected closeZipFileAtEnd:Z

.field protected file:Ljava/io/File;

.field protected packageCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/io/File;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;-><init>(Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->file:Ljava/io/File;

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->closeZipFileAtEnd:Z

    return-void
.end method


# virtual methods
.method public acceptModule(Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->acceptModule(Lorg/eclipse/jdt/internal/compiler/env/IModule;)V

    :cond_0
    return-void
.end method

.method public acceptModule([B)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    const-string v1, "module-info.class"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->acceptModule(Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;)V

    :cond_1
    return-void
.end method

.method public addToPackageCache(Ljava/lang/String;Z)V
    .locals 2

    const/16 v0, 0x2f

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    :goto_0
    if-gtz p2, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->packageCache:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->packageCache:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    goto :goto_0
.end method

.method public fetchLinkedJars(Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$ClasspathSectionProblemReporter;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$ClasspathSectionProblemReporter;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->initialize()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    const-string v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;-><init>()V

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->analyzeManifestContents(Ljava/io/InputStream;)Z

    move-result v4

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->getCalledFileNames()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->getClasspathSectionsCount()I

    move-result v4

    if-ne v4, v6, :cond_0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/util/ManifestAnalyzer;->getClasspathSectionsCount()I

    move-result v3

    if-le v3, v6, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$ClasspathSectionProblemReporter;->multipleClasspathSections(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_5

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$ClasspathSectionProblemReporter;->invalidClasspathSection(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->getPath()Ljava/lang/String;

    move-result-object v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, 0x0

    add-int/2addr v4, v6

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->closeZipFileAtEnd:Z

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->destinationPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;-><init>(Ljava/io/File;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    :goto_3
    move-object v0, v2

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_6
    return-object v1

    :goto_5
    if-eqz v0, :cond_7

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_7
    throw p1

    :catch_2
    move-object v2, v0

    :catch_3
    if-eqz v2, :cond_8

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_8
    return-object v0
.end method

.method public findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 3

    .line 2
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 3
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-static {p1, p4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 4
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-nez p3, :cond_1

    move-object p3, p2

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object p3

    .line 5
    :goto_0
    iget-object p5, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    if-nez p5, :cond_2

    .line 6
    iput-object p3, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    goto :goto_1

    :cond_2
    move-object p3, p5

    .line 7
    :goto_1
    iget-object p5, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->annotationPaths:Ljava/util/List;

    if-eqz p5, :cond_6

    .line 8
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    add-int/lit8 p5, p5, -0x6

    const/4 v0, 0x0

    invoke-virtual {p4, v0, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->annotationPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    new-instance p5, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;

    invoke-direct {p5, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;)V

    move-object p1, p5

    goto :goto_2

    .line 11
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    if-nez v2, :cond_5

    .line 13
    invoke-static {v1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->getAnnotationZipFile(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator$ZipFileProducer;)Ljava/util/zip/ZipFile;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    .line 14
    :cond_5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    invoke-static {p1, v1, p5, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->create(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getExternalAnnotationStatus()Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->TYPE_IS_ANNOTATED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v1, v2, :cond_3

    .line 16
    :cond_6
    :goto_2
    :try_start_2
    new-instance p5, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-virtual {p0, p4}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->fetchAccessRestriction(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object p4

    invoke-direct {p5, p1, p4, p3}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p5

    :catch_1
    :cond_7
    return-object p2
.end method

.method public findTypeNames(Ljava/lang/String;Ljava/lang/String;)[[[C
    .locals 8

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, p1, [[[C

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-lez v5, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[C)[[C

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->isAutoModule:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->initialize()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/jar/Manifest;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->createAutomatic(Ljava/lang/String;ZLjava/util/jar/Manifest;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    return-object v0
.end method

.method public declared-synchronized getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)[[C
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->packageCache:Ljava/util/Set;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->singletonModuleNameIf(Z)[[C

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance p2, Ljava/util/HashSet;

    const/16 v0, 0x29

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->packageCache:Ljava/util/Set;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->packageCache:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->singletonModuleNameIf(Z)[[C

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->addToPackageCache(Ljava/lang/String;Z)V

    goto :goto_0

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->path:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnnotationFileFor(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".eea"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x2f

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public initialize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    :cond_0
    return-void
.end method

.method public normalizedPath()[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->normalizedPath:[C

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_0

    const/16 v1, 0x2f

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    :cond_0
    const/16 v1, 0x2e

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->normalizedPath:[C

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->normalizedPath:[C

    return-object v0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->reset()V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->closeZipFileAtEnd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    :cond_1
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->packageCache:Ljava/util/Set;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->annotationPaths:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Classpath for jar file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
