.class Lorg/openjdk/tools/doclint/Messages$Options;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/doclint/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# static fields
.field private static final ALL:Ljava/lang/String; = "all"


# instance fields
.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/doclint/Env$AccessKind;",
            ">;"
        }
    .end annotation
.end field

.field private final stats:Lorg/openjdk/tools/doclint/Messages$Stats;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/doclint/Messages$Stats;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/doclint/Messages$Options;->map:Ljava/util/Map;

    iput-object p1, p0, Lorg/openjdk/tools/doclint/Messages$Options;->stats:Lorg/openjdk/tools/doclint/Messages$Stats;

    return-void
.end method

.method private static isValidOption(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    const-string v0, "stats"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_2

    const-string v0, "all"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {v4}, Lorg/openjdk/tools/doclint/Messages$Group;->accepts(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    if-eq v2, v3, :cond_5

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/doclint/Env$AccessKind;->accepts(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1
.end method

.method public static isValidOptions(Ljava/lang/String;)Z
    .locals 4

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/doclint/Messages$Options;->isValidOption(Ljava/lang/String;)Z

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

.method private setOption(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const-string v0, "stats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lorg/openjdk/tools/doclint/Messages$Options;->stats:Lorg/openjdk/tools/doclint/Messages$Stats;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/doclint/Messages$Stats;->setEnabled(Z)V

    return-void

    .line 3
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/StringUtils;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/doclint/Env$AccessKind;->valueOf(Ljava/lang/String;)Lorg/openjdk/tools/doclint/Env$AccessKind;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/openjdk/tools/doclint/Messages$Options;->setOption(Ljava/lang/String;Lorg/openjdk/tools/doclint/Env$AccessKind;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/doclint/Messages$Options;->setOption(Ljava/lang/String;Lorg/openjdk/tools/doclint/Env$AccessKind;)V

    :goto_0
    return-void
.end method

.method private setOption(Ljava/lang/String;Lorg/openjdk/tools/doclint/Env$AccessKind;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Messages$Options;->map:Ljava/util/Map;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "-"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lorg/openjdk/tools/doclint/Env$AccessKind;->PUBLIC:Lorg/openjdk/tools/doclint/Env$AccessKind;

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/openjdk/tools/doclint/Env$AccessKind;->PRIVATE:Lorg/openjdk/tools/doclint/Env$AccessKind;

    .line 9
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public isEnabled(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/tools/doclint/Env$AccessKind;)Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Messages$Options;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "all"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Messages$Options;->map:Ljava/util/Map;

    sget-object v2, Lorg/openjdk/tools/doclint/Env$AccessKind;->PROTECTED:Lorg/openjdk/tools/doclint/Env$AccessKind;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Messages$Options;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/openjdk/tools/doclint/Messages$Group;->optName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/doclint/Env$AccessKind;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Messages$Options;->map:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/doclint/Env$AccessKind;

    if-eqz v0, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Messages$Options;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/openjdk/tools/doclint/Messages$Group;->notOptName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/doclint/Env$AccessKind;

    if-eqz p1, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-lez p1, :cond_3

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public setOptions(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "all"

    sget-object v0, Lorg/openjdk/tools/doclint/Env$AccessKind;->PRIVATE:Lorg/openjdk/tools/doclint/Env$AccessKind;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/doclint/Messages$Options;->setOption(Ljava/lang/String;Lorg/openjdk/tools/doclint/Env$AccessKind;)V

    goto :goto_1

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/openjdk/tools/doclint/Messages$Options;->setOption(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
