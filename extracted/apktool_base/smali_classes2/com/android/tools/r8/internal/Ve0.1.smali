.class public final Lcom/android/tools/r8/internal/Ve0;
.super Lcom/android/tools/r8/internal/VB;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/android/tools/r8/internal/We0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/We0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ve0;->f:Lcom/android/tools/r8/internal/We0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/VB;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e()Lcom/android/tools/r8/internal/QC;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Ue0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Ue0;-><init>(Lcom/android/tools/r8/internal/Ve0;)V

    return-object v0
.end method

.method public final f()Lcom/android/tools/r8/internal/f6;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ve0;->f:Lcom/android/tools/r8/internal/We0;

    return-object v0
.end method

.method public final forEach(Ljava/util/function/BiConsumer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ve0;->f:Lcom/android/tools/r8/internal/We0;

    new-instance v1, Lcom/android/tools/r8/internal/uZ0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/uZ0;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/We0;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ve0;->f:Lcom/android/tools/r8/internal/We0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/We0;->g:[Lcom/android/tools/r8/internal/qC;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/qA;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ve0;->f:Lcom/android/tools/r8/internal/We0;

    iget v3, v2, Lcom/android/tools/r8/internal/We0;->i:I

    and-int/2addr v1, v3

    iget-object v2, v2, Lcom/android/tools/r8/internal/We0;->g:[Lcom/android/tools/r8/internal/qC;

    aget-object v1, v2, v1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/tools/r8/internal/ZB;->c:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, v1, Lcom/android/tools/r8/internal/ZB;->b:Ljava/lang/Object;

    return-object p1

    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qC;->c()Lcom/android/tools/r8/internal/qC;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final i()Lcom/android/tools/r8/internal/QC;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/tC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/tC;-><init>(Lcom/android/tools/r8/internal/nC;)V

    return-object v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final r()Lcom/android/tools/r8/internal/VB;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ve0;->f:Lcom/android/tools/r8/internal/We0;

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ve0;->f:Lcom/android/tools/r8/internal/We0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/We0;->h:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method
