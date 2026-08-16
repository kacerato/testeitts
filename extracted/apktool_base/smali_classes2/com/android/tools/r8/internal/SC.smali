.class public final Lcom/android/tools/r8/internal/SC;
.super Lcom/android/tools/r8/internal/TB;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/android/tools/r8/internal/TC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/TC;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/SC;->d:Lcom/android/tools/r8/internal/TC;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/TB;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/SC;->k(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final j()Lcom/android/tools/r8/internal/XB;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/SC;->d:Lcom/android/tools/r8/internal/TC;

    return-object v0
.end method

.method public final k(I)Ljava/util/Map$Entry;
    .locals 3

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p0, Lcom/android/tools/r8/internal/SC;->d:Lcom/android/tools/r8/internal/TC;

    iget-object v1, v1, Lcom/android/tools/r8/internal/TC;->e:Lcom/android/tools/r8/internal/UC;

    iget-object v1, v1, Lcom/android/tools/r8/internal/UC;->f:Lcom/android/tools/r8/internal/ff0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/JC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/SC;->d:Lcom/android/tools/r8/internal/TC;

    iget-object v2, v2, Lcom/android/tools/r8/internal/TC;->e:Lcom/android/tools/r8/internal/UC;

    iget-object v2, v2, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/SC;->d:Lcom/android/tools/r8/internal/TC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TC;->k()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/UC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/UC;->size()I

    move-result v0

    new-instance v1, Lcom/android/tools/r8/internal/ZV0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/ZV0;-><init>(Lcom/android/tools/r8/internal/SC;)V

    const/4 v2, 0x0

    const/16 v3, 0x511

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/Se;->a(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Lcom/android/tools/r8/internal/Oe;

    move-result-object v0

    return-object v0
.end method
