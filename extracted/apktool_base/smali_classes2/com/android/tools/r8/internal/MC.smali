.class public abstract Lcom/android/tools/r8/internal/MC;
.super Lcom/android/tools/r8/internal/JC;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/JC;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/JC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/hC;->a(I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/CC;

    iget-object v1, v0, Lcom/android/tools/r8/internal/CC;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Lcom/android/tools/r8/internal/CC;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/MY;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract get(I)Ljava/lang/Object;
.end method

.method public final iterator()Lcom/android/tools/r8/internal/Av0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/JC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/JC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/internal/hC;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/LC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/LC;-><init>(Lcom/android/tools/r8/internal/MC;)V

    return-object v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 4

    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/CC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/CC;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lcom/android/tools/r8/internal/CM0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/CM0;-><init>(Lcom/android/tools/r8/internal/MC;)V

    const/4 v2, 0x0

    const/16 v3, 0x511

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/Se;->a(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Lcom/android/tools/r8/internal/Oe;

    move-result-object v0

    return-object v0
.end method
