.class public abstract Lcom/android/tools/r8/internal/A0;
.super Lcom/android/tools/r8/internal/S0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient f:Ljava/util/HashMap;

.field public transient g:I


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/S0;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/tools/r8/internal/A0;->f:Ljava/util/HashMap;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/ZB;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/ZB;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic a(Ljava/util/Map$Entry;)Ljava/util/Spliterator;
    .locals 2

    .line 4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    new-instance v1, Lcom/android/tools/r8/internal/iy0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/iy0;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/Se;->a(Ljava/util/Spliterator;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Me;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/S0;->b:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/R0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/R0;-><init>(Lcom/android/tools/r8/internal/A0;)V

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/S0;->b:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/r0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/A0;->f:Ljava/util/HashMap;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/r0;-><init>(Lcom/android/tools/r8/internal/A0;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/A0;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/A0;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/A0;->g:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/A0;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d()Ljava/util/Set;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/u0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/A0;->f:Ljava/util/HashMap;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/u0;-><init>(Lcom/android/tools/r8/internal/A0;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/LY;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/KY;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/KY;-><init>(Lcom/android/tools/r8/internal/S0;)V

    return-object v0
.end method

.method public final g()Ljava/util/Spliterator;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/A0;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/hy0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/hy0;-><init>()V

    iget v2, p0, Lcom/android/tools/r8/internal/A0;->g:I

    int-to-long v2, v2

    const/16 v4, 0x40

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/tools/r8/internal/Se;->a(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Lcom/android/tools/r8/internal/Re;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/A0;->g:I

    return v0
.end method
