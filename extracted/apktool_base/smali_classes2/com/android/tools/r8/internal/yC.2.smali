.class public final Lcom/android/tools/r8/internal/yC;
.super Lcom/android/tools/r8/internal/XB;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/iC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/iC;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/XB;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yC;->c:Lcom/android/tools/r8/internal/iC;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/android/tools/r8/internal/yC;->c:Lcom/android/tools/r8/internal/iC;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/iC;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yC;->c:Lcom/android/tools/r8/internal/iC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/iC;->f:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->l()Z

    move-result v0

    return v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/Av0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/yC;->c:Lcom/android/tools/r8/internal/iC;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/xC;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/xC;-><init>(Lcom/android/tools/r8/internal/iC;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yC;->c:Lcom/android/tools/r8/internal/iC;

    iget v0, v0, Lcom/android/tools/r8/internal/iC;->g:I

    return v0
.end method
