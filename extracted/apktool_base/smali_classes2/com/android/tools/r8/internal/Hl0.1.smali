.class public final Lcom/android/tools/r8/internal/Hl0;
.super Lcom/android/tools/r8/internal/e0;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/BitSet;

.field public final synthetic e:Lcom/android/tools/r8/internal/Il0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Il0;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Hl0;->e:Lcom/android/tools/r8/internal/Il0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/e0;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Il0;->c:Lcom/android/tools/r8/internal/nC;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hl0;->d:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hl0;->d:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hl0;->d:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Hl0;->e:Lcom/android/tools/r8/internal/Il0;

    iget v2, v2, Lcom/android/tools/r8/internal/Il0;->b:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hl0;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Hl0;->d:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/Hl0;->e:Lcom/android/tools/r8/internal/Il0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Il0;->c:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/tools/r8/internal/e0;->b:I

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/Hl0;->d:Ljava/util/BitSet;

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v1, v0}, Ljava/util/BitSet;->set(II)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Hl0;->d:Ljava/util/BitSet;

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->clear(II)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hl0;->d:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hl0;->d:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    new-instance v1, Lcom/android/tools/r8/internal/Gl0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Gl0;-><init>(Lcom/android/tools/r8/internal/Hl0;Ljava/util/BitSet;)V

    return-object v1
.end method
