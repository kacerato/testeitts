.class public Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$AbstractFileVisitor;,
        Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;
    }
.end annotation


# static fields
.field static final DEFAULT_MODULE:[Ljava/lang/String;

.field static final DEFAULT_PACKAGE:Ljava/lang/String; = ""

.field public static final JAVA_BASE:Ljava/lang/String; = "java.base"

.field public static final JAVA_BASE_CHAR:[C

.field public static final JRT_FS_JAR:Ljava/lang/String; = "jrt-fs.jar"

.field static JRT_URI:Ljava/net/URI; = null

.field static final MODULES_SUBDIR:Ljava/lang/String; = "/modules"

.field static MODULE_TO_LOAD:Ljava/lang/String; = null

.field static final MULTIPLE:Ljava/lang/String; = "MU"

.field public static NOTIFY_ALL:I

.field public static NOTIFY_FILES:I

.field public static NOTIFY_MODULES:I

.field public static NOTIFY_PACKAGES:I

.field static final NO_MODULE:[Ljava/lang/String;

.field private static images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;",
            ">;"
        }
    .end annotation
.end field

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "java.base"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->JAVA_BASE_CHAR:[C

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->DEFAULT_MODULE:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NO_MODULE:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->MODULE_TO_LOAD:Ljava/lang/String;

    const-string v1, "jrt:/"

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->JRT_URI:Ljava/net/URI;

    const/4 v1, 0x1

    sput v1, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_FILES:I

    const/4 v2, 0x2

    sput v2, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_PACKAGES:I

    const/4 v3, 0x4

    sput v3, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_MODULES:I

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    sput v1, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->NOTIFY_ALL:I

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->images:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassfile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getJrtSystem(Ljava/io/File;)Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->getClassfile(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0

    return-object p0
.end method

.method public static getClassfile(Ljava/io/File;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IModule;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getJrtSystem(Ljava/io/File;)Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->getClassfile(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IModule;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0

    return-object p0
.end method

.method public static getClassfileContent(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getJrtSystem(Ljava/io/File;)Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->getClassfileContent(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getContentFromJrt(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getJrtSystem(Ljava/io/File;)Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->getContentFromJrt(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getJrtSystem(Ljava/io/File;)Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getJrtSystem(Ljava/io/File;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;

    move-result-object p0

    return-object p0
.end method

.method public static getJrtSystem(Ljava/io/File;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;
    .locals 4

    .line 2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->images:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->images:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->images:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_1
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_2
    monitor-enter v0

    .line 10
    :try_start_1
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->images:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_3

    .line 11
    :try_start_2
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->images:Ljava/util/Map;

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->getNewJrtFileSystem(Ljava/io/File;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 12
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :cond_3
    :goto_3
    monitor-exit v0

    return-object v2

    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static getModulesDeclaringPackage(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getJrtSystem(Ljava/io/File;)Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static hasCompilationUnit(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getJrtSystem(Ljava/io/File;)Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->hasClassFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->images:Ljava/util/Map;

    const-string v0, "modules.to.load"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->MODULE_TO_LOAD:Ljava/lang/String;

    return-void
.end method

.method public static safeReadBytes(Ljava/nio/file/Path;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static sanitizedFileName(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static walkModuleImage(Ljava/io/File;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor<",
            "Ljava/nio/file/Path;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getJrtSystem(Ljava/io/File;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->walkModuleImage(Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V

    return-void
.end method

.method public static walkModuleImage(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor<",
            "Ljava/nio/file/Path;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getJrtSystem(Ljava/io/File;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->walkModuleImage(Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V

    return-void
.end method
