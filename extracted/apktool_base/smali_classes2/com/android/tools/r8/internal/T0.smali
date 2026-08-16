.class public final Lcom/android/tools/r8/internal/T0;
.super Lcom/android/tools/r8/internal/Jl0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/V0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/V0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/T0;->b:Lcom/android/tools/r8/internal/V0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jl0;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/T0;->b:Lcom/android/tools/r8/internal/V0;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/T0;->b:Lcom/android/tools/r8/internal/V0;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/T0;->b:Lcom/android/tools/r8/internal/V0;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/T0;->b:Lcom/android/tools/r8/internal/V0;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/T0;->b:Lcom/android/tools/r8/internal/V0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/V0;->d()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/T0;->b:Lcom/android/tools/r8/internal/V0;

    const v1, 0x7fffffff

    invoke-interface {v0, v1, p1}, Lcom/android/tools/r8/internal/LY;->b(ILjava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/T0;->b:Lcom/android/tools/r8/internal/V0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/LY;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
