.class public Lorg/openjdk/tools/javac/file/JavacFileManager;
.super Lorg/openjdk/tools/javac/file/BaseFileManager;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/StandardJavaFileManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;,
        Lorg/openjdk/tools/javac/file/JavacFileManager$DirectoryContainer;,
        Lorg/openjdk/tools/javac/file/JavacFileManager$JRTImageContainer;,
        Lorg/openjdk/tools/javac/file/JavacFileManager$Container;,
        Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;
    }
.end annotation


# static fields
.field private static final MISSING_CONTAINER:Lorg/openjdk/tools/javac/file/JavacFileManager$Container;

.field private static final fileSystemIsCaseSensitive:Z


# instance fields
.field private final containers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/file/Path;",
            "Lorg/openjdk/tools/javac/file/JavacFileManager$Container;",
            ">;"
        }
    .end annotation
.end field

.field private fsInfo:Lorg/openjdk/tools/javac/file/FSInfo;

.field private jrtIndex:Lorg/openjdk/tools/javac/file/JRTIndex;

.field private pathFactory:Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;

.field protected sortFiles:Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;

.field private final sourceOrClass:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileObject$Kind;",
            ">;"
        }
    .end annotation
.end field

.field protected symbolFileEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/file/JavacFileManager$1;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/file/JavacFileManager$1;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/file/JavacFileManager;->MISSING_CONTAINER:Lorg/openjdk/tools/javac/file/JavacFileManager$Container;

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/openjdk/tools/javac/file/JavacFileManager;->fileSystemIsCaseSensitive:Z

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;ZLjava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0, p3}, Lorg/openjdk/tools/javac/file/BaseFileManager;-><init>(Ljava/nio/charset/Charset;)V

    sget-object p3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    sget-object v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-static {p3, v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p3

    iput-object p3, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->sourceOrClass:Ljava/util/Set;

    new-instance p3, Lorg/openjdk/tools/javac/file/d;

    invoke-direct {p3}, Lorg/openjdk/tools/javac/file/d;-><init>()V

    iput-object p3, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->pathFactory:Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->containers:Ljava/util/Map;

    if-eqz p2, :cond_0

    const-class p2, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p1, p2, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->setContext(Lorg/openjdk/tools/javac/util/Context;)V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/javax/tools/JavaFileManager;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->lambda$preRegister$0(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/javax/tools/JavaFileManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/file/JavacFileManager;)Lorg/openjdk/tools/javac/file/JRTIndex;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getJRTIndex()Lorg/openjdk/tools/javac/file/JRTIndex;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/file/JavacFileManager;Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->caseMapCheck(Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lorg/openjdk/tools/javac/file/JavacFileManager;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->isValidFile(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lorg/openjdk/tools/javac/file/JavacFileManager;)Lorg/openjdk/tools/javac/file/FSInfo;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->fsInfo:Lorg/openjdk/tools/javac/file/FSInfo;

    return-object p0
.end method

.method private static asFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/file/c;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/file/c;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method private static asPaths(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/file/b;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/file/b;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->lambda$asFiles$2(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->lambda$asPaths$1(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private caseMapCheck(Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath;)Z
    .locals 7

    sget-boolean v0, Lorg/openjdk/tools/javac/file/JavacFileManager;->fileSystemIsCaseSensitive:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v2}, [Ljava/nio/file/LinkOption;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object p2, p2, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    array-length v3, v2

    sub-int/2addr v3, v1

    array-length v4, p2

    sub-int/2addr v4, v1

    :cond_1
    :goto_0
    if-ltz v3, :cond_5

    if-ltz v4, :cond_5

    :goto_1
    if-ltz v3, :cond_2

    aget-char v5, v2, v3

    if-ne v5, p1, :cond_2

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ltz v4, :cond_3

    aget-char v5, p2, v4

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_3

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    if-ltz v3, :cond_1

    if-ltz v4, :cond_1

    aget-char v5, v2, v3

    aget-char v6, p2, v4

    if-eq v5, v6, :cond_4

    return v0

    :cond_4
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_5
    if-gez v4, :cond_6

    goto :goto_3

    :cond_6
    move v1, v0

    :goto_3
    return v1

    :catch_0
    return v0
.end method

.method private checkModuleOrientedOrOutputLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->isModuleOrientedLocation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->isOutputLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location is not an output location or a module-oriented location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private checkNotModuleOrientedLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->isModuleOrientedLocation()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location is module-oriented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkOutputLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->isOutputLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location is not an output location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getClassOutDir()Ljava/nio/file/Path;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/file/Locations;->getOutputLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method private getFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getLocationAsPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    .line 10
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getContainer(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/JavacFileManager$Container;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager$Container;->getFileObject(Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private getFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 10
    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getClassOutDir()Ljava/nio/file/Path;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getClassOutDir()Ljava/nio/file/Path;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;->basename()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 13
    instance-of p2, p3, Lorg/openjdk/tools/javac/file/PathFileObject;

    if-eqz p2, :cond_1

    .line 14
    check-cast p3, Lorg/openjdk/tools/javac/file/PathFileObject;

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/file/PathFileObject;->getSibling(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/PathFileObject;

    move-result-object p1

    return-object p1

    .line 15
    :cond_1
    new-array p2, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->fsInfo:Lorg/openjdk/tools/javac/file/FSInfo;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->getCanonicalFile(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    .line 17
    invoke-static {p0, p2, p1}, Lorg/openjdk/tools/javac/file/PathFileObject;->forSimplePath(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/PathFileObject;

    move-result-object p1

    return-object p1

    .line 18
    :cond_2
    sget-object p3, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    if-ne p1, p3, :cond_4

    .line 19
    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getSourceOutDir()Ljava/nio/file/Path;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getSourceOutDir()Ljava/nio/file/Path;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getClassOutDir()Ljava/nio/file/Path;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_4
    iget-object p3, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/file/Locations;->getLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/util/Collection;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_6

    .line 22
    :try_start_0
    const-string p1, "user.dir"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 23
    :cond_6
    :goto_1
    iget-object p3, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->fsInfo:Lorg/openjdk/tools/javac/file/FSInfo;

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->getCanonicalFile(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/file/RelativePath;->resolveAgainst(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p3

    .line 24
    invoke-static {p0, p3, p1, p2}, Lorg/openjdk/tools/javac/file/PathFileObject;->forDirectoryPath(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath;)Lorg/openjdk/tools/javac/file/PathFileObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/file/InvalidPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 25
    :goto_2
    new-instance p3, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad filename "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method private declared-synchronized getJRTIndex()Lorg/openjdk/tools/javac/file/JRTIndex;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->jrtIndex:Lorg/openjdk/tools/javac/file/JRTIndex;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/file/JRTIndex;->getSharedInstance()Lorg/openjdk/tools/javac/file/JRTIndex;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->jrtIndex:Lorg/openjdk/tools/javac/file/JRTIndex;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->jrtIndex:Lorg/openjdk/tools/javac/file/JRTIndex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getMessage(Ljava/io/IOException;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private varargs getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->pathFactory:Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public static getRelativeName(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->isRelativeUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid relative path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSourceOutDir()Ljava/nio/file/Path;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/file/Locations;->getOutputLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static isRelativeUri(Ljava/lang/String;)Z
    .locals 1

    .line 6
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->isRelativeUri(Ljava/net/URI;)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isRelativeUri(Ljava/net/URI;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    .line 5
    :cond_2
    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "./"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "../"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method private isValidFile(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileObject$Kind;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getKind(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static isValidName(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\\."

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/openjdk/javax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$asFiles$2(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/file/JavacFileManager$3;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/file/JavacFileManager$3;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method private static synthetic lambda$asPaths$1(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/file/JavacFileManager$2;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/file/JavacFileManager$2;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method private static synthetic lambda$preRegister$0(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/javax/tools/JavaFileManager;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/file/JavacFileManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/openjdk/tools/javac/file/JavacFileManager;-><init>(Lorg/openjdk/tools/javac/util/Context;ZLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static preRegister(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/file/e;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/file/e;-><init>()V

    const-class v1, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Lorg/openjdk/tools/javac/util/Context$Factory;)V

    return-void
.end method

.method private static varargs printAscii(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const-string v0, "US-ASCII"

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static testName(Ljava/lang/String;ZZ)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->validatePackageName(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "Valid package name: \"%s\""

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->printAscii(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package name accepted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez p1, :cond_3

    const-string p1, "Invalid package name: \"%s\""

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->printAscii(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    :try_start_1
    invoke-static {p0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->validateClassName(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string p1, "Valid class name: \"%s\""

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->printAscii(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid class name accepted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-nez p2, :cond_2

    const-string p1, "Invalid class name: \"%s\""

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->printAscii(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Valid class name rejected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Valid package name rejected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static toArray(Ljava/nio/CharBuffer;)[C
    .locals 1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/CharBuffer;

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method private static validateClassName(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->isValidName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validatePackageName(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->isValidName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid packageName name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public asPath(Lorg/openjdk/javax/tools/FileObject;)Ljava/nio/file/Path;
    .locals 1

    instance-of v0, p1, Lorg/openjdk/tools/javac/file/PathFileObject;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/file/PathFileObject;

    iget-object p1, p1, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->deferredCloseTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->deferredClose()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/file/Locations;->close()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->containers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/file/JavacFileManager$Container;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/file/JavacFileManager$Container;->close()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->containers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->contentCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/FileObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->asPath(Lorg/openjdk/javax/tools/FileObject;)Ljava/nio/file/Path;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/file/Locations;->contains(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->contentCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getClassLoader(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;
    .locals 2

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->checkNotModuleOrientedLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->size()I

    move-result p1

    new-array p1, p1, [Ljava/net/URL;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getClassLoader([Ljava/net/URL;)Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getContainer(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/JavacFileManager$Container;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->containers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/file/JavacFileManager$Container;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->fsInfo:Lorg/openjdk/tools/javac/file/FSInfo;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->isFile(Ljava/nio/file/Path;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/file/Locations;->thisSystemModules:Ljava/nio/file/Path;

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->containers:Ljava/util/Map;

    new-instance v2, Lorg/openjdk/tools/javac/file/JavacFileManager$JRTImageContainer;

    invoke-direct {v2, p0, v1}, Lorg/openjdk/tools/javac/file/JavacFileManager$JRTImageContainer;-><init>(Lorg/openjdk/tools/javac/file/JavacFileManager;Lorg/openjdk/tools/javac/file/JavacFileManager$1;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->fsInfo:Lorg/openjdk/tools/javac/file/FSInfo;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->getCanonicalFile(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->containers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/file/JavacFileManager$Container;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->containers:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_2
    :try_start_3
    const-class v3, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v3, v4}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_4
    sget-object v2, Lorg/openjdk/tools/javac/file/JavacFileManager;->MISSING_CONTAINER:Lorg/openjdk/tools/javac/file/JavacFileManager$Container;

    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Lorg/openjdk/tools/javac/file/JavacFileManager$DirectoryContainer;

    invoke-direct {v2, p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager$DirectoryContainer;-><init>(Lorg/openjdk/tools/javac/file/JavacFileManager;Ljava/nio/file/Path;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_3
    :try_start_5
    new-instance v2, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;

    invoke-direct {v2, p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;-><init>(Lorg/openjdk/tools/javac/file/JavacFileManager;Ljava/nio/file/Path;)V
    :try_end_5
    .catch Ljava/nio/file/ProviderNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->containers:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->containers:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public getFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/javax/tools/FileObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->checkNotModuleOrientedLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V

    .line 2
    invoke-static {p2}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lorg/openjdk/tools/javac/file/JavacFileManager;->isRelativeUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;

    invoke-direct {p2, p3}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;

    .line 5
    invoke-static {p2}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;->forPackage(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;-><init>(Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    move-object p2, v0

    .line 6
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid relative name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->checkOutputLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V

    .line 3
    invoke-static {p2}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Lorg/openjdk/tools/javac/file/JavacFileManager;->isRelativeUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;

    invoke-direct {p2, p3}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;

    .line 6
    invoke-static {p2}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;->forPackage(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;-><init>(Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    move-object p2, v0

    .line 7
    :goto_0
    invoke-direct {p0, p1, p2, p4}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid relative name: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFileForOutput(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getJavaFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    return-object p1
.end method

.method public getJavaFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->checkNotModuleOrientedLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->sourceOrClass:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;->forClass(Ljava/lang/CharSequence;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid kind: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getJavaFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->checkOutputLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->sourceOrClass:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;->forClass(Ljava/lang/CharSequence;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid kind: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getJavaFileObject(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 0

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getJavaFileObjects([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/javax/tools/JavaFileObject;

    return-object p1
.end method

.method public getJavaFileObject(Ljava/nio/file/Path;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 2

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/nio/file/Path;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getJavaFileObjects([Ljava/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/javax/tools/JavaFileObject;

    return-object p1
.end method

.method public varargs getJavaFileObjects([Ljava/io/File;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getJavaFileObjectsFromFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public varargs getJavaFileObjects([Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getJavaFileObjectsFromStrings(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public varargs getJavaFileObjects([Ljava/nio/file/Path;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getJavaFileObjectsFromPaths(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public getJavaFileObjectsFromFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->fsInfo:Lorg/openjdk/tools/javac/file/FSInfo;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/file/FSInfo;->getCanonicalFile(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lorg/openjdk/tools/javac/file/PathFileObject;->forSimplePath(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/PathFileObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getJavaFileObjectsFromPaths(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->fsInfo:Lorg/openjdk/tools/javac/file/FSInfo;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/file/FSInfo;->getCanonicalFile(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lorg/openjdk/tools/javac/file/PathFileObject;->forSimplePath(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/PathFileObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getJavaFileObjectsFromStrings(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getJavaFileObjectsFromPaths(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public getLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations;->getLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->asFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public getLocationAsPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations;->getLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->checkModuleOrientedOrOutputLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V

    .line 2
    invoke-static {p2}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getSourceOutDir()Ljava/nio/file/Path;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    sget-object p1, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/file/Locations;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object p1

    return-object p1
.end method

.method public getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->checkModuleOrientedOrOutputLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V

    .line 7
    instance-of v0, p2, Lorg/openjdk/tools/javac/file/PathFileObject;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    check-cast p2, Lorg/openjdk/tools/javac/file/PathFileObject;

    iget-object p2, p2, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/Locations;->normalize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    .line 9
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/file/Locations;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/nio/file/Path;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object p1

    return-object p1
.end method

.method public getServiceLoader(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            "Ljava/lang/Class<",
            "TS;>;)",
            "Ljava/util/ServiceLoader<",
            "TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->getModule(Ljava/lang/Class;)Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->addUses(Ljava/lang/Class;)Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;

    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->isModuleOrientedLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations;->getLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/file/Path;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/Path;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$ModuleFinder;->of([Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JDK9Wrappers$ModuleFinder;

    move-result-object p1

    invoke-static {}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->boot()Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->configuration()Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/Path;

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$ModuleFinder;->of([Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JDK9Wrappers$ModuleFinder;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;->resolveAndBind(Lorg/openjdk/tools/javac/util/JDK9Wrappers$ModuleFinder;Lorg/openjdk/tools/javac/util/JDK9Wrappers$ModuleFinder;Ljava/util/Collection;)Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;

    move-result-object p1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;->defineModulesWithOneLoader(Lorg/openjdk/tools/javac/util/JDK9Wrappers$Configuration;Ljava/lang/ClassLoader;)Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$ServiceLoaderHelper;->load(Lorg/openjdk/tools/javac/util/JDK9Wrappers$Layer;Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getClassLoader(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p1

    return-object p1
.end method

.method public hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z
    .locals 1

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result p1

    return p1
.end method

.method public inferBinaryName(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->checkNotModuleOrientedLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getLocationAsPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    instance-of v0, p2, Lorg/openjdk/tools/javac/file/PathFileObject;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/openjdk/tools/javac/file/PathFileObject;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/file/PathFileObject;->inferBinaryName(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inferModuleName(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->checkNotModuleOrientedLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations;->inferModuleName(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isSameFile(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/FileObject;)Z
    .locals 1

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lorg/openjdk/tools/javac/file/PathFileObject;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/openjdk/tools/javac/file/PathFileObject;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/file/PathFileObject;

    check-cast p2, Lorg/openjdk/tools/javac/file/PathFileObject;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/file/PathFileObject;->isSameFile(Lorg/openjdk/tools/javac/file/PathFileObject;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSymbolFileEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->symbolFileEnabled:Z

    return v0
.end method

.method public list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileObject$Kind;",
            ">;Z)",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->checkNotModuleOrientedLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/util/Collection;)Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getLocationAsPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;->forPackage(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object p2

    new-instance v6, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v6}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/nio/file/Path;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getContainer(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/JavacFileManager$Container;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lorg/openjdk/tools/javac/file/JavacFileManager$Container;->list(Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;Ljava/util/Set;ZLorg/openjdk/tools/javac/util/ListBuffer;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public listLocationsForModules(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->checkModuleOrientedOrOutputLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations;->listLocationsForModules(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public setContext(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->setContext(Lorg/openjdk/tools/javac/util/Context;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/FSInfo;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/file/FSInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->fsInfo:Lorg/openjdk/tools/javac/file/FSInfo;

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v0, "ignore.symbol.file"

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->symbolFileEnabled:Z

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v0, "sortFiles"

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "reverse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;->REVERSE:Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;->FORWARD:Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;

    :goto_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->sortFiles:Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;

    :cond_1
    return-void
.end method

.method public setLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/JavacFileManager;->asPaths(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/file/Locations;->setLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    return-void
.end method

.method public setLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->checkModuleOrientedOrOutputLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p3}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/file/Locations;->setLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/Iterable;)V

    return-void
.end method

.method public setLocationFromPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/BaseFileManager;->nullCheck(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/file/Locations;->setLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    return-void
.end method

.method public setPathFactory(Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->pathFactory:Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations;->setPathFactory(Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;)V

    return-void
.end method

.method public setSymbolFileEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/file/JavacFileManager;->symbolFileEnabled:Z

    return-void
.end method
