.class public Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder$AddExport;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractAddonExport(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder$AddExport;
    .locals 5

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "/"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "/="

    invoke-virtual {v0, v2}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, v3, Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;->pack:[C

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[C

    iput-object v0, v3, Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;->exportedTo:[[C

    const/4 v0, 0x0

    :goto_1
    iget-object v2, v3, Lorg/eclipse/jdt/internal/compiler/env/PackageExportImpl;->exportedTo:[[C

    array-length v4, v2

    if-lt v0, v4, :cond_0

    new-instance p0, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder$AddExport;

    invoke-direct {p0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder$AddExport;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;)V

    return-object p0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "=,"

    invoke-virtual {v0, v3}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public static extractAddonRead(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "="

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method private static extractModuleFromArchive(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 2

    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_0

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "META-INF/versions/"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p3

    if-eqz p3, :cond_0

    move-object p2, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->getModule(Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object p0
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-object p1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    throw p0

    :catch_3
    move-object v0, p1

    :catch_4
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_3
    return-object p1
.end method

.method private static extractModuleFromClass(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 1

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/io/File;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->getModule(Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object p0
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :cond_0
    return-object p1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method private static extractModuleFromSource(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->getDestinationPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;-><init>([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v1, 0x1

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4, v1, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    invoke-virtual {p1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isModuleInfo()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz p1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    invoke-direct {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/BasicModule;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;)V

    return-object p1

    :cond_0
    return-object v2
.end method

.method public static findModule(Ljava/io/File;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/parser/Parser;Ljava/util/Map;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/parser/Parser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    xor-int/lit8 v2, p4, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    move-object v4, p1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v5, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->getClasspath(Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1, p0, p2, p4, p5}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->scanForModule(Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/parser/Parser;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    :cond_1
    return-object p1
.end method

.method public static findModules(Ljava/io/File;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/parser/Parser;Ljava/util/Map;ZLjava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/parser/Parser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v5, v8

    move-object v6, p0

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->scanForModules(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/parser/Parser;Ljava/util/Map;ZZLjava/util/List;Ljava/io/File;Ljava/lang/String;)V

    return-object v8
.end method

.method private static getFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getManifest(Ljava/io/File;)Ljava/util/jar/Manifest;
    .locals 3

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->getModulePathForArchive(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    :goto_0
    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_1

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    move-object p0, v0

    :cond_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v1
.end method

.method private static getModule(Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getModulePathForArchive(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->archiveFormat(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "module-info.class"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "classes/module-info.class"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static scanForModule(Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/parser/Parser;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    new-instance p4, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder$1;

    invoke-direct {p4, p1}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder$1;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, p4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p4

    array-length v0, p4

    if-lez v0, :cond_7

    const/4 v0, 0x0

    aget-object p4, p4, v0

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x2192f5c7

    if-eq v0, v2, :cond_4

    const v2, 0x728aad41

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "module-info.java"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p2, p0}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->extractModuleFromSource(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p2

    if-nez p2, :cond_2

    return-object v1

    :cond_2
    new-instance p4, Ljava/lang/String;

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    invoke-direct {p4, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v1, p2

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "module name "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " does not match expected name "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p2, "module-info.class"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->extractModuleFromClass(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v1

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->getModulePathForArchive(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-static {p1, p0, p2, p4}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->extractModuleFromArchive(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v1

    :cond_7
    :goto_0
    if-eqz p3, :cond_8

    if-nez v1, :cond_8

    instance-of p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJrt;

    if-nez p2, :cond_8

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->getFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p3

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->getManifest(Ljava/io/File;)Ljava/util/jar/Manifest;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->createAutomatic(Ljava/lang/String;ZLjava/util/jar/Manifest;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v1

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {p0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->acceptModule(Lorg/eclipse/jdt/internal/compiler/env/IModule;)V

    :cond_9
    return-object v1
.end method

.method public static scanForModules(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/parser/Parser;Ljava/util/Map;ZZLjava/util/List;Ljava/io/File;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/parser/Parser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    invoke-virtual/range {p6 .. p6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    xor-int/lit8 v2, p3, 0x1

    if-nez v8, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->getClasspath(Ljava/lang/String;Ljava/lang/String;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object/from16 v9, p1

    move/from16 v1, p4

    move-object/from16 v2, p6

    move-object/from16 v10, p7

    invoke-static {v0, v2, v9, v1, v10}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->scanForModule(Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/parser/Parser;ZLjava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v11, p5

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    move-object/from16 v11, p5

    invoke-virtual/range {p6 .. p6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p6 .. p6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    array-length v13, v12

    const/4 v0, 0x0

    move v14, v0

    :goto_2
    if-lt v14, v13, :cond_2

    goto :goto_3

    :cond_2
    aget-object v6, v12, v14

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/batch/ModuleFinder;->scanForModules(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/parser/Parser;Ljava/util/Map;ZZLjava/util/List;Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
