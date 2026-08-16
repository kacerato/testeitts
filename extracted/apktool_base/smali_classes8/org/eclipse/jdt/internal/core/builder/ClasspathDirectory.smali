.class public Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;
.super Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;
.source "SourceFile"


# instance fields
.field accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

.field annotationZipFile:Ljava/util/zip/ZipFile;

.field binaryFolder:Lorg/eclipse/core/resources/IContainer;

.field directoryCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field externalAnnotationPath:Ljava/lang/String;

.field isOutputFolder:Z

.field missingPackageHolder:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/resources/IContainer;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->missingPackageHolder:[Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    if-nez p2, :cond_0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IContainer;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->isOutputFolder:Z

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->directoryCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->externalAnnotationPath:Ljava/lang/String;

    :cond_1
    iput-boolean p5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isOnModulePath:Z

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->annotationZipFile:Ljava/util/zip/ZipFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->annotationZipFile:Ljava/util/zip/ZipFile;

    :cond_0
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->directoryCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-void
.end method

.method public debugPathString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public directoryList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->directoryCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->missingPackageHolder:[Ljava/lang/String;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0, p1}, Lorg/eclipse/core/resources/IContainer;->findMember(Ljava/lang/String;)Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/core/resources/IContainer;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    array-length v1, v0

    new-array v3, v1, [Ljava/lang/String;

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-lt v6, v4, :cond_3

    if-ge v7, v1, :cond_2

    new-array v0, v7, [Ljava/lang/String;

    invoke-static {v3, v5, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->directoryCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_3
    aget-object v8, v0, v6

    invoke-interface {v8}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    invoke-static {v9}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v8, v7, 0x1

    aput-object v9, v3, v7
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v8

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->directoryCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->missingPackageHolder:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public doesFileExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->directoryList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    :cond_0
    array-length v0, p2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    return p3

    :cond_2
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isOnModulePath:Z

    iget-boolean v3, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isOnModulePath:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->areAllModuleOptionsEqual(Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 17
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 0
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

    .line 1
    invoke-virtual {p0, p1, p2, p4}, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->doesFileExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    new-instance p3, Lorg/eclipse/core/runtime/Path;

    invoke-direct {p3, p4}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lorg/eclipse/core/resources/IContainer;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->newClassFileReader(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_7

    .line 3
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-nez p3, :cond_1

    move-object p3, p2

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object p3

    .line 4
    :goto_0
    iget-object p5, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    if-nez p5, :cond_2

    .line 5
    iput-object p3, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    goto :goto_1

    :cond_2
    move-object p3, p5

    .line 6
    :goto_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    sget-object p6, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_CLASS:[C

    array-length p6, p6

    sub-int/2addr p5, p6

    const/4 p6, 0x0

    invoke-virtual {p4, p6, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 7
    iget-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->externalAnnotationPath:Ljava/lang/String;

    if-eqz p5, :cond_4

    .line 8
    :try_start_1
    iget-object p6, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->annotationZipFile:Ljava/util/zip/ZipFile;

    if-nez p6, :cond_3

    .line 9
    invoke-static {p5, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->getAnnotationZipFile(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator$ZipFileProducer;)Ljava/util/zip/ZipFile;

    move-result-object p5

    .line 10
    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->annotationZipFile:Ljava/util/zip/ZipFile;

    .line 11
    :cond_3
    iget-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->externalAnnotationPath:Ljava/lang/String;

    .line 12
    iget-object p6, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->annotationZipFile:Ljava/util/zip/ZipFile;

    .line 13
    invoke-static {p1, p5, p4, p6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->create(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    :catch_0
    :cond_4
    iget-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-nez p5, :cond_6

    .line 15
    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-nez p4, :cond_5

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-direct {p3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    goto :goto_2

    :cond_5
    new-instance p4, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-direct {p4, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V

    move-object p3, p4

    :goto_2
    return-object p3

    .line 16
    :cond_6
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    invoke-virtual {p5, p4}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->getViolatedRestriction([C)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object p4

    invoke-direct {p2, p1, p4, p3}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V

    :catch_1
    :cond_7
    return-object p2
.end method

.method public getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IContainer;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

.method public hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->directoryList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    array-length v0, p1

    move v1, p2

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_2

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".java"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_2
    return p2
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public initializeModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_3

    :cond_0
    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "module-info.class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    :try_start_1
    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->newClassFileReader(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object v0
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    :cond_2
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public isExcluded(Lorg/eclipse/core/resources/IResource;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isOutputFolder()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->isOutputFolder:Z

    return v0
.end method

.method public isPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->directoryList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public reset()V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->directoryCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Binary classpath directory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->binaryFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " with "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathDirectory;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
