.class final enum Lorg/openjdk/tools/javac/main/Option$38;
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
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/javac/main/Option$OptionKind;Lorg/openjdk/tools/javac/main/Option$OptionGroup;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/main/Option;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/javac/main/Option$OptionKind;Lorg/openjdk/tools/javac/main/Option$OptionGroup;Lorg/openjdk/tools/javac/main/Option$1;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/main/Option$38;->lambda$process$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSupportedRuntimeOptions()[Lorg/openjdk/tools/javac/main/Option;
    .locals 6

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->ADD_EXPORTS:Lorg/openjdk/tools/javac/main/Option;

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->ADD_MODULES:Lorg/openjdk/tools/javac/main/Option;

    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->LIMIT_MODULES:Lorg/openjdk/tools/javac/main/Option;

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->MODULE_PATH:Lorg/openjdk/tools/javac/main/Option;

    sget-object v4, Lorg/openjdk/tools/javac/main/Option;->UPGRADE_MODULE_PATH:Lorg/openjdk/tools/javac/main/Option;

    sget-object v5, Lorg/openjdk/tools/javac/main/Option;->PATCH_MODULE:Lorg/openjdk/tools/javac/main/Option;

    filled-new-array/range {v0 .. v5}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/main/Option$38;->lambda$process$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$process$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid runtime option:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$process$1(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALL-DEFAULT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public process(Lorg/openjdk/tools/javac/main/OptionHelper;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/main/Option$InvalidValueException;
        }
    .end annotation

    const/4 p2, 0x1

    const-string v0, ","

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "jdk.internal.misc.VM"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$VMHelper;->getRuntimeArguments()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    invoke-direct {p0}, Lorg/openjdk/tools/javac/main/Option$38;->getSupportedRuntimeOptions()[Lorg/openjdk/tools/javac/main/Option;

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    invoke-virtual {v9, v5}, Lorg/openjdk/tools/javac/main/Option;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v6, Lorg/openjdk/tools/javac/main/Option$40;->$SwitchMap$com$sun$tools$javac$main$Option:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-virtual {v9, p1, v5, v6}, Lorg/openjdk/tools/javac/main/Option;->handleOption(Lorg/openjdk/tools/javac/main/OptionHelper;Ljava/lang/String;Ljava/util/Iterator;)V

    goto :goto_3

    :cond_0
    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_1

    move v7, p2

    goto :goto_2

    :cond_1
    move v7, v1

    :goto_2
    new-instance v8, Lorg/openjdk/tools/javac/main/s;

    invoke-direct {v8, v5}, Lorg/openjdk/tools/javac/main/s;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/util/function/Supplier;)V

    add-int/2addr v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lorg/openjdk/tools/javac/main/t;

    invoke-direct {v8}, Lorg/openjdk/tools/javac/main/t;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-virtual {v9, p1, v5, v6}, Lorg/openjdk/tools/javac/main/Option;->handleOption(Lorg/openjdk/tools/javac/main/OptionHelper;Ljava/lang/String;Ljava/util/Iterator;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_2
    add-int/2addr v8, p2

    goto :goto_1

    :cond_3
    :goto_3
    add-int/2addr v4, p2

    goto :goto_0

    :cond_4
    return-void

    :catch_0
    const-string p2, "err.cannot.access.runtime.env"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/openjdk/tools/javac/main/OptionHelper;->newInvalidValueException(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/main/Option$InvalidValueException;

    move-result-object p1

    throw p1
.end method
