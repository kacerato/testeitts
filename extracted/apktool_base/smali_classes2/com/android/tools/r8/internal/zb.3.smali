.class public final Lcom/android/tools/r8/internal/zb;
.super Lcom/android/tools/r8/internal/d9;
.source "SourceFile"


# instance fields
.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/d9;-><init>(Lcom/android/tools/r8/graph/y;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/zb;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/d9;-><init>(Lcom/android/tools/r8/graph/y;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/zb;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p1, p2, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/d9;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/d9;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/d9;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/d9;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/zb;->d:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/d9;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v0
.end method
