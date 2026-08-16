.class public final Lcom/android/tools/r8/internal/d40;
.super Lcom/android/tools/r8/internal/gX;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/eX;

.field public final d:Lcom/android/tools/r8/internal/Ef;

.field public e:Lcom/android/tools/r8/internal/qm0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/m80;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/gX;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/d40;->c:Lcom/android/tools/r8/internal/eX;

    iput-object p2, p0, Lcom/android/tools/r8/internal/d40;->d:Lcom/android/tools/r8/internal/Ef;

    iput-object p3, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/internal/c40;Lcom/android/tools/r8/graph/H5;I)V
    .locals 0

    .line 6
    iget-object p3, p0, Lcom/android/tools/r8/internal/d40;->d:Lcom/android/tools/r8/internal/Ef;

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Df;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/android/tools/r8/internal/c40;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/c40;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    new-instance v1, Lcom/android/tools/r8/internal/g81;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/g81;-><init>(Lcom/android/tools/r8/internal/d40;Lcom/android/tools/r8/internal/c40;)V

    sget-object v2, Lcom/android/tools/r8/internal/Kr0$a;->c:Lcom/android/tools/r8/internal/Kr0$a;

    invoke-static {v0, v1, p2, p3, v2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/zT;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/Kr0$a;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gX;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()Lcom/android/tools/r8/internal/E8;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/d40;->e:Lcom/android/tools/r8/internal/qm0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/D8;->a:Lcom/android/tools/r8/internal/D8;

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final d()Lcom/android/tools/r8/internal/fX;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/d40;->c:Lcom/android/tools/r8/internal/eX;

    return-object v0
.end method
