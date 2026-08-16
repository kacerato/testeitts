.class Lorg/openjdk/javax/tools/FileManagerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/javax/tools/FileManagerUtils;->lambda$asPaths$0(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static asFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;
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

    new-instance v0, Lorg/openjdk/javax/tools/b;

    invoke-direct {v0, p0}, Lorg/openjdk/javax/tools/b;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static asPaths(Ljava/lang/Iterable;)Ljava/lang/Iterable;
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

    new-instance v0, Lorg/openjdk/javax/tools/a;

    invoke-direct {v0, p0}, Lorg/openjdk/javax/tools/a;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/javax/tools/FileManagerUtils;->lambda$asFiles$1(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$asFiles$1(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/openjdk/javax/tools/FileManagerUtils$2;

    invoke-direct {v0, p0}, Lorg/openjdk/javax/tools/FileManagerUtils$2;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method private static synthetic lambda$asPaths$0(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/openjdk/javax/tools/FileManagerUtils$1;

    invoke-direct {v0, p0}, Lorg/openjdk/javax/tools/FileManagerUtils$1;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method
