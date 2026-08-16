.class public Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;
.super Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/builder/ClasspathJar$PackageCacheEntry;
    }
.end annotation


# static fields
.field protected static ModuleCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field protected static PackageCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;


# instance fields
.field accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

.field annotationZipFile:Ljava/util/zip/ZipFile;

.field closeZipFileAtEnd:Z

.field compliance:Ljava/lang/String;

.field externalAnnotationPath:Ljava/lang/String;

.field private knownPackageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

.field lastModified:J

.field resource:Lorg/eclipse/core/resources/IFile;

.field zipFile:Ljava/util/zip/ZipFile;

.field zipFilename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->PackageCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->ModuleCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    .line 15
    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->lastModified:J

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    .line 17
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->knownPackageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    .line 18
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-eqz p5, :cond_0

    .line 19
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->externalAnnotationPath:Ljava/lang/String;

    .line 20
    :cond_0
    iput-boolean p6, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isOnModulePath:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)V
    .locals 7

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 24
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;-><init>(Ljava/lang/String;JLorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)V

    if-eqz p3, :cond_0

    .line 25
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->externalAnnotationPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipFile;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)V

    .line 22
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->closeZipFileAtEnd:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;Lorg/eclipse/core/runtime/IPath;Z)V
    .locals 2

    .line 1
    const-string v0, ""

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->resource:Lorg/eclipse/core/resources/IFile;

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getLocationURI()Ljava/net/URI;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->toLocalFile(Ljava/net/URI;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/io/File;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    .line 8
    :goto_0
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    .line 9
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->knownPackageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    .line 10
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-eqz p3, :cond_1

    .line 11
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->externalAnnotationPath:Ljava/lang/String;

    .line 12
    :cond_1
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isOnModulePath:Z

    return-void
.end method

.method public static addToPackageSet(Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;Ljava/lang/String;Z)V
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

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->addIfNotIncluded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    goto :goto_0
.end method

.method private scanContent()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") [ClasspathJar.isPackage(String)] Creating ZipFile on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->closeZipFileAtEnd:Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->findPackageSet()Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->knownPackageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->findPackageSet()Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->knownPackageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->knownPackageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public cleanup()V
    .locals 10

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->closeZipFileAtEnd:Z

    const-string v1, "("

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    const-string v3, "Error closing "

    const-string v4, "org.eclipse.jdt.core"

    const/4 v5, 0x4

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") [ClasspathJar.cleanup()] Closed ZipFile on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/core/runtime/Plugin;->getLog()Lorg/eclipse/core/runtime/ILog;

    move-result-object v6

    new-instance v7, Lorg/eclipse/core/runtime/Status;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v4, v8, v0}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v6, v7}, Lorg/eclipse/core/runtime/ILog;->log(Lorg/eclipse/core/runtime/IStatus;)V

    :cond_0
    :goto_0
    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") [ClasspathJar.cleanup()] Closed Annotation ZipFile on "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/core/runtime/Plugin;->getLog()Lorg/eclipse/core/runtime/ILog;

    move-result-object v1

    new-instance v6, Lorg/eclipse/core/runtime/Status;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v5, v4, v3, v0}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v6}, Lorg/eclipse/core/runtime/ILog;->log(Lorg/eclipse/core/runtime/IStatus;)V

    :cond_2
    :goto_1
    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_4

    sget-boolean v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->size()I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") [ClasspathJar.cleanup()] ZipFile NOT closed on "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_4
    :goto_2
    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->knownPackageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    return-void
.end method

.method public debugPathString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    return v2

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->compliance:Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->compliance:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->equalOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->lastModified()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->lastModified()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isOnModulePath:Z

    iget-boolean v3, p1, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->isOnModulePath:Z

    if-ne v1, v3, :cond_5

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

    .line 21
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

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
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-static {p1, p4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p1

    if-eqz p1, :cond_6

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
    iget-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->externalAnnotationPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p5, :cond_4

    .line 8
    :try_start_1
    iget-object p6, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    if-nez p6, :cond_3

    .line 9
    invoke-static {p5, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->getAnnotationZipFile(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator$ZipFileProducer;)Ljava/util/zip/ZipFile;

    move-result-object p5

    .line 10
    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    .line 11
    :cond_3
    iget-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->externalAnnotationPath:Ljava/lang/String;

    .line 12
    iget-object p6, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->annotationZipFile:Ljava/util/zip/ZipFile;

    .line 13
    invoke-static {p1, p5, p4, p6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->create(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    :catch_0
    :try_start_2
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getExternalAnnotationStatus()Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    move-result-object p5

    sget-object p6, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->NOT_EEA_CONFIGURED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    if-ne p5, p6, :cond_4

    .line 15
    new-instance p5, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;

    invoke-direct {p5, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;)V

    move-object p1, p5

    .line 16
    :cond_4
    iget-object p5, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-nez p5, :cond_5

    .line 17
    new-instance p4, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-direct {p4, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V

    return-object p4

    .line 18
    :cond_5
    new-instance p6, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    .line 19
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    invoke-virtual {p5, p4}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->getViolatedRestriction([C)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    move-result-object p4

    .line 20
    invoke-direct {p6, p1, p4, p3}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;[C)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p6

    :catch_1
    :cond_6
    return-object p2
.end method

.method public findPackageSet()Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->PackageCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar$PackageCacheEntry;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->lastModified()J

    move-result-wide v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    if-eqz v1, :cond_0

    iget-wide v7, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar$PackageCacheEntry;->lastModified:J

    cmp-long v2, v7, v3

    if-nez v2, :cond_0

    iget-wide v7, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar$PackageCacheEntry;->fileSize:J

    cmp-long v2, v7, v5

    if-nez v2, :cond_0

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar$PackageCacheEntry;->packageSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    return-object v0

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    const/16 v2, 0x29

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->readJarContent(Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)Ljava/lang/String;

    sget-object v8, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->PackageCache:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    new-instance v9, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar$PackageCacheEntry;

    move-object v2, v9

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar$PackageCacheEntry;-><init>(JJLorg/eclipse/jdt/internal/compiler/util/SimpleSet;)V

    invoke-virtual {v8, v0, v9}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->scanContent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    const-string v2, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v2, Ljava/util/jar/Manifest;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_1
    return-object v1
.end method

.method public getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->knownPackageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->scanContent()Z

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    return-object v0
.end method

.method public getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->resource:Lorg/eclipse/core/resources/IFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

.method public hasCompilationUnit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v2
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public initializeModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;
    .locals 5

    const-string v0, "module-info.class"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "META-INF/versions/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->compliance:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v3, v1

    :goto_0
    if-nez v3, :cond_0

    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object v1
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :cond_2
    throw v0

    :catch_2
    move-object v2, v1

    :catch_3
    if-eqz v2, :cond_3

    goto :goto_1

    :catch_4
    :cond_3
    :goto_3
    return-object v1
.end method

.method public isPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathLocation;->module:Lorg/eclipse/jdt/internal/compiler/env/IModule;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->knownPackageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    if-nez p2, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->scanContent()Z

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->knownPackageNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->includes(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public lastModified()J
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->lastModified:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->lastModified:J

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->lastModified:J

    return-wide v0
.end method

.method public readJarContent(Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)Ljava/lang/String;
    .locals 5

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

    const-string v3, "META-INF/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "module-info.class"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_2
    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->addToPackageSet(Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Classpath jar file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->zipFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " with "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/ClasspathJar;->accessRuleSet:Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
