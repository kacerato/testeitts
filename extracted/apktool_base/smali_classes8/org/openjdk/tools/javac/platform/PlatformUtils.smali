.class public Lorg/openjdk/tools/javac/platform/PlatformUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lorg/openjdk/tools/javac/platform/PlatformProvider;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/platform/PlatformUtils;->lambda$lookupPlatformDescription$0(Ljava/lang/String;Lorg/openjdk/tools/javac/platform/PlatformProvider;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/javac/platform/PlatformProvider;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/openjdk/tools/javac/platform/PlatformUtils;->lambda$lookupPlatformDescription$1(Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/javac/platform/PlatformProvider;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$lookupPlatformDescription$0(Ljava/lang/String;Lorg/openjdk/tools/javac/platform/PlatformProvider;)Z
    .locals 1

    invoke-interface {p1}, Lorg/openjdk/tools/javac/platform/PlatformProvider;->getSupportedPlatformNames()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/tools/r8/kotlin/Y3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/Y3;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$lookupPlatformDescription$1(Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/javac/platform/PlatformProvider;)Ljava/util/Optional;
    .locals 0

    :try_start_0
    invoke-interface {p2, p0, p1}, Lorg/openjdk/tools/javac/platform/PlatformProvider;->getPlatform(Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/platform/PlatformDescription;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0
    :try_end_0
    .catch Lorg/openjdk/tools/javac/platform/PlatformProvider$PlatformNotSupported; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static lookupPlatformDescription(Ljava/lang/String;)Lorg/openjdk/tools/javac/platform/PlatformDescription;
    .locals 4

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    const-class v0, Lorg/openjdk/tools/javac/main/Arguments;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v2, Lorg/openjdk/tools/javac/platform/PlatformProvider;

    invoke-static {v2, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/platform/d;

    invoke-direct {v1, v3}, Lorg/openjdk/tools/javac/platform/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/platform/e;

    invoke-direct {v1, v3, p0}, Lorg/openjdk/tools/javac/platform/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/platform/PlatformDescription;

    return-object p0
.end method
