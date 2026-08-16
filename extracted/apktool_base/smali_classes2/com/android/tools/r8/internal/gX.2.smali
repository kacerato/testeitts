.class public abstract Lcom/android/tools/r8/internal/gX;
.super Lcom/android/tools/r8/internal/dX;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/m80;

.field public b:Lcom/android/tools/r8/internal/j80;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/dX;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    new-instance v0, Lcom/android/tools/r8/internal/j80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j80;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/gX;->b:Lcom/android/tools/r8/internal/j80;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->b:Lcom/android/tools/r8/internal/j80;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void
.end method

.method public c()Lcom/android/tools/r8/internal/E8;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/D8;->a:Lcom/android/tools/r8/internal/D8;

    return-object v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->b:Lcom/android/tools/r8/internal/j80;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    iput-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->b:Lcom/android/tools/r8/internal/j80;

    iput-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    sget-object v0, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    new-instance v0, Lcom/android/tools/r8/internal/j80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j80;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/gX;->b:Lcom/android/tools/r8/internal/j80;

    return-void
.end method
