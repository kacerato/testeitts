.class public final Lcom/android/tools/r8/internal/p0;
.super Lcom/android/tools/r8/internal/nV;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/r0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/r0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/p0;->b:Lcom/android/tools/r8/internal/r0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/nV;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/p0;->b:Lcom/android/tools/r8/internal/r0;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/p0;->b:Lcom/android/tools/r8/internal/r0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/r0;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/q0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/p0;->b:Lcom/android/tools/r8/internal/r0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/q0;-><init>(Lcom/android/tools/r8/internal/r0;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/p0;->b:Lcom/android/tools/r8/internal/r0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/r0;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/android/tools/r8/internal/p0;->b:Lcom/android/tools/r8/internal/r0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/r0;->e:Lcom/android/tools/r8/internal/A0;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/internal/A0;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 p1, 0x0

    :goto_1
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget p1, v0, Lcom/android/tools/r8/internal/A0;->g:I

    sub-int/2addr p1, v1

    iput p1, v0, Lcom/android/tools/r8/internal/A0;->g:I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/p0;->b:Lcom/android/tools/r8/internal/r0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/r0;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/p0;->b:Lcom/android/tools/r8/internal/r0;

    new-instance v2, Lcom/android/tools/r8/internal/kp1;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/kp1;-><init>(Lcom/android/tools/r8/internal/r0;)V

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/Se;->a(Ljava/util/Spliterator;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Me;

    move-result-object v0

    return-object v0
.end method
