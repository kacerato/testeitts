.class public final Lcom/android/tools/r8/internal/Da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/O8;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/H5;

.field public final synthetic b:Lcom/android/tools/r8/graph/G;

.field public final synthetic c:Lcom/android/tools/r8/internal/Ha;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ha;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/G;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Da;->c:Lcom/android/tools/r8/internal/Ha;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Da;->a:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Da;->b:Lcom/android/tools/r8/graph/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Da;->b:Lcom/android/tools/r8/graph/G;

    .line 2
    iget v0, v0, Lcom/android/tools/r8/graph/G;->g:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Da;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Da;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Da;->b:Lcom/android/tools/r8/graph/G;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->G0()I

    move-result v0

    return v0
.end method

.method public final e()Lcom/android/tools/r8/internal/d9;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Da;->c:Lcom/android/tools/r8/internal/Ha;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ha;->b:Lcom/android/tools/r8/internal/zb;

    return-object v0
.end method
