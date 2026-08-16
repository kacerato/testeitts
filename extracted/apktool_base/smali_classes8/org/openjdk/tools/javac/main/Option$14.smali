.class final enum Lorg/openjdk/tools/javac/main/Option$14;
.super Lorg/openjdk/tools/javac/main/Option;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/main/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/javac/main/Option$OptionKind;Lorg/openjdk/tools/javac/main/Option$OptionGroup;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/openjdk/tools/javac/main/Option;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/javac/main/Option$OptionKind;Lorg/openjdk/tools/javac/main/Option$OptionGroup;Lorg/openjdk/tools/javac/main/Option$1;)V

    return-void
.end method

.method public static synthetic g(Lorg/openjdk/tools/javac/platform/PlatformProvider;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/main/Option$14;->lambda$help$0(Lorg/openjdk/tools/javac/platform/PlatformProvider;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$help$0(Lorg/openjdk/tools/javac/platform/PlatformProvider;)Ljava/util/stream/Stream;
    .locals 1

    invoke-interface {p0}, Lorg/openjdk/tools/javac/platform/PlatformProvider;->getSupportedPlatformNames()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public help(Lorg/openjdk/tools/javac/util/Log;)V
    .locals 4

    const-class v0, Lorg/openjdk/tools/javac/main/Arguments;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lorg/openjdk/tools/javac/platform/PlatformProvider;

    invoke-static {v1, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/main/q;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/main/q;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/main/r;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/main/r;-><init>()V

    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/Option;->descrKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lorg/openjdk/tools/javac/util/Log;->localize(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lorg/openjdk/tools/javac/main/Option;->help(Lorg/openjdk/tools/javac/util/Log;Ljava/lang/String;)V

    return-void
.end method
