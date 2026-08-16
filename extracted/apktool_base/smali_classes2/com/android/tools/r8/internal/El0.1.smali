.class public final Lcom/android/tools/r8/internal/El0;
.super Lcom/android/tools/r8/internal/Kl0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/El0;->b:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/internal/El0;->c:Ljava/util/Set;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Kl0;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic b(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/El0;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/El0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/El0;->c:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/internal/El0;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Dl0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Dl0;-><init>(Lcom/android/tools/r8/internal/El0;)V

    return-object v0
.end method

.method public final parallelStream()Ljava/util/stream/Stream;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/El0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/El0;->c:Ljava/util/Set;

    new-instance v2, Lcom/android/tools/r8/internal/RD0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/RD0;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/El0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/El0;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final stream()Ljava/util/stream/Stream;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/El0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/El0;->c:Ljava/util/Set;

    new-instance v2, Lcom/android/tools/r8/internal/QD0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/QD0;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
