.class public final Lcom/android/tools/r8/internal/A50;
.super Lcom/android/tools/r8/internal/R2;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/hC;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/R2;-><init>(Lcom/android/tools/r8/internal/I50;)V

    .line 2
    iput-object p2, p0, Lcom/android/tools/r8/internal/A50;->c:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lcom/android/tools/r8/internal/A50;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/y50;Ljava/lang/Runnable;)V
    .locals 0

    .line 4
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 5
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/R2;-><init>(Lcom/android/tools/r8/internal/I50;)V

    .line 6
    iput-object p2, p0, Lcom/android/tools/r8/internal/A50;->c:Ljava/util/List;

    .line 7
    iput-object p3, p0, Lcom/android/tools/r8/internal/A50;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/A50;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/y50;

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/py0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/py0;-><init>(Lcom/android/tools/r8/internal/A50;)V

    invoke-interface {v1, v2, p1}, Lcom/android/tools/r8/internal/y50;->a(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 7
    :cond_1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/A50;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/y50;

    .line 12
    new-instance v2, Lcom/android/tools/r8/internal/py0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/py0;-><init>(Lcom/android/tools/r8/internal/A50;)V

    invoke-interface {v1, p1, v2, p2}, Lcom/android/tools/r8/internal/y50;->a(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 13
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    const/4 p1, 0x0

    throw p1
.end method

.method public final a()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/A50;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 15
    invoke-super {p0}, Lcom/android/tools/r8/internal/Q2;->a()V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/A50;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/y50;

    .line 3
    new-instance v2, Lcom/android/tools/r8/internal/py0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/py0;-><init>(Lcom/android/tools/r8/internal/A50;)V

    invoke-interface {v1, p2, v2, p1}, Lcom/android/tools/r8/internal/y50;->a(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/A50;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/y50;

    .line 9
    new-instance v2, Lcom/android/tools/r8/internal/py0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/py0;-><init>(Lcom/android/tools/r8/internal/A50;)V

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/tools/r8/internal/y50;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 10
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
