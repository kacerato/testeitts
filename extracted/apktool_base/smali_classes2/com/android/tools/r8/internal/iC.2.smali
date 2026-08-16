.class public Lcom/android/tools/r8/internal/iC;
.super Lcom/android/tools/r8/internal/P5;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/xT;
.implements Ljava/io/Serializable;


# instance fields
.field public final transient f:Lcom/android/tools/r8/internal/nC;

.field public final transient g:I


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/nC;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/P5;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/iC;->f:Lcom/android/tools/r8/internal/nC;

    iput p1, p0, Lcom/android/tools/r8/internal/iC;->g:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/S0;->b:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/yC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/yC;-><init>(Lcom/android/tools/r8/internal/iC;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/S0;->b:Ljava/util/Collection;

    :cond_0
    check-cast v0, Lcom/android/tools/r8/internal/XB;

    return-object v0
.end method

.method public bridge synthetic b()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iC;->g()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iC;->f:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d()Ljava/util/Set;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final e()Lcom/android/tools/r8/internal/LY;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/zC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/zC;-><init>(Lcom/android/tools/r8/internal/iC;)V

    return-object v0
.end method

.method public final f()Lcom/android/tools/r8/internal/LY;
    .locals 1

    invoke-super {p0}, Lcom/android/tools/r8/internal/S0;->f()Lcom/android/tools/r8/internal/LY;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/EC;

    return-object v0
.end method

.method public g()Lcom/android/tools/r8/internal/nC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iC;->f:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iC;->f:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/hC;

    if-nez p1, :cond_0

    sget p1, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object p1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    :cond_0
    return-object p1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/iC;->f:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/iC;->g:I

    return v0
.end method
