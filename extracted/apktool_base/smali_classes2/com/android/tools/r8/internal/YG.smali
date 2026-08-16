.class public final Lcom/android/tools/r8/internal/YG;
.super Lcom/android/tools/r8/internal/c0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/dH;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/dH;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/YG;->b:Lcom/android/tools/r8/internal/dH;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/YG;->b:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dH;->clear()V

    return-void
.end method

.method public final h(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/YG;->b:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/dH;->a(I)Z

    move-result p1

    return p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/PH;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/XG;

    iget-object v1, p0, Lcom/android/tools/r8/internal/YG;->b:Lcom/android/tools/r8/internal/dH;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/XG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/XG;

    iget-object v1, p0, Lcom/android/tools/r8/internal/YG;->b:Lcom/android/tools/r8/internal/dH;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/XG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    return-object v0
.end method

.method public final remove(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/YG;->b:Lcom/android/tools/r8/internal/dH;

    iget v1, v0, Lcom/android/tools/r8/internal/dH;->h:I

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/dH;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/tools/r8/internal/YG;->b:Lcom/android/tools/r8/internal/dH;

    iget p1, p1, Lcom/android/tools/r8/internal/dH;->h:I

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/YG;->b:Lcom/android/tools/r8/internal/dH;

    iget v0, v0, Lcom/android/tools/r8/internal/dH;->h:I

    return v0
.end method
