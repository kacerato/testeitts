.class public final Lcom/android/tools/r8/shaking/W3;
.super Lcom/android/tools/r8/shaking/Y3;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/q3$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/Y3;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/shaking/q3$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/W3;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/q3$a;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/W3;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/android/tools/r8/shaking/Y3;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/W3;->b()Lcom/android/tools/r8/shaking/W3;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/shaking/W3;->d:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/W3;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/tools/r8/shaking/W3;->d:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/shaking/Y3;->a(Ljava/lang/String;ILjava/lang/String;ILjava/util/List;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/W3;->d:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/shaking/Db;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/Db;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return p1
.end method

.method public final b()Lcom/android/tools/r8/shaking/W3;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/W3;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/Eb;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/Eb;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/shaking/q3$a;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/W3;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/shaking/q3$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance v0, Lcom/android/tools/r8/shaking/W3;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/W3;-><init>(Lcom/android/tools/r8/shaking/q3$a;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/shaking/W3;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/W3;->c:Ljava/lang/String;

    check-cast p1, Lcom/android/tools/r8/shaking/W3;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/W3;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/W3;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/W3;->c:Ljava/lang/String;

    return-object v0
.end method
