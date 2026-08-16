.class public final Lcom/android/tools/r8/internal/K9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/O8;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/d9;

.field public final b:Lcom/android/tools/r8/graph/G;

.field public final c:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->f0:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/zb;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/zb;-><init>(Lcom/android/tools/r8/graph/y;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/d9;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/d9;-><init>(Lcom/android/tools/r8/graph/y;)V

    :goto_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/K9;->a:Lcom/android/tools/r8/internal/d9;

    iput-object p2, p0, Lcom/android/tools/r8/internal/K9;->b:Lcom/android/tools/r8/graph/G;

    iput-object p3, p0, Lcom/android/tools/r8/internal/K9;->c:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/K9;->b:Lcom/android/tools/r8/graph/G;

    .line 2
    iget v0, v0, Lcom/android/tools/r8/graph/G;->g:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/K9;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/K9;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/K9;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->G0()I

    move-result v0

    return v0
.end method

.method public final e()Lcom/android/tools/r8/internal/d9;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/K9;->a:Lcom/android/tools/r8/internal/d9;

    return-object v0
.end method
