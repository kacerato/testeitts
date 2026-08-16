.class public final Lcom/android/tools/r8/internal/cF;
.super Lcom/android/tools/r8/internal/c0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/hF;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/cF;->b:Lcom/android/tools/r8/internal/hF;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cF;->b:Lcom/android/tools/r8/internal/hF;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hF;->clear()V

    return-void
.end method

.method public final h(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cF;->b:Lcom/android/tools/r8/internal/hF;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hF;->a(I)Z

    move-result p1

    return p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/PH;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/bF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cF;->b:Lcom/android/tools/r8/internal/hF;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/bF;-><init>(Lcom/android/tools/r8/internal/hF;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/bF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cF;->b:Lcom/android/tools/r8/internal/hF;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/bF;-><init>(Lcom/android/tools/r8/internal/hF;)V

    return-object v0
.end method

.method public final remove(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/cF;->b:Lcom/android/tools/r8/internal/hF;

    iget v1, v0, Lcom/android/tools/r8/internal/hF;->i:I

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hF;->remove(I)I

    iget-object p1, p0, Lcom/android/tools/r8/internal/cF;->b:Lcom/android/tools/r8/internal/hF;

    iget p1, p1, Lcom/android/tools/r8/internal/hF;->i:I

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cF;->b:Lcom/android/tools/r8/internal/hF;

    iget v0, v0, Lcom/android/tools/r8/internal/hF;->i:I

    return v0
.end method
