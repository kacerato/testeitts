.class public Lorg/eclipse/jdt/internal/compiler/batch/ClasspathSourceJar;
.super Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;
.source "SourceFile"


# instance fields
.field private encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;-><init>(Ljava/io/File;ZLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Ljava/lang/String;)V

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathSourceJar;->encoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public findClass([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 3

    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    add-int/lit8 p5, p5, -0x6

    const/4 v0, 0x0

    invoke-virtual {p4, v0, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p5, ".java"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_4

    :try_start_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p3, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathSourceJar;->encoding:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {p1, v1, p3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getInputStreamAsCharArray(Ljava/io/InputStream;ILjava/lang/String;)[C

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {p4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathSourceJar;->encoding:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->destinationPath:Ljava/lang/String;

    invoke-direct {p1, p3, p5, v0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;-><init>([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-nez p3, :cond_2

    move-object p3, p2

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object p3

    :goto_0
    iput-object p3, p1, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->module:[C

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-virtual {p0, p4}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathLocation;->fetchAccessRestriction(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object p4

    invoke-direct {p3, p1, p4}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return-object p3

    :catchall_0
    move-exception p3

    goto :goto_1

    :catchall_1
    move-exception p3

    move-object p1, p2

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    throw p3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_4
    return-object p2
.end method

.method public getMode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
