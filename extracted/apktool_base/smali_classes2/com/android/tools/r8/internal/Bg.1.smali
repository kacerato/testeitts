.class public final Lcom/android/tools/r8/internal/Bg;
.super Lcom/android/tools/r8/internal/ey;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:Lcom/android/tools/r8/internal/MY;

.field public final synthetic c:Lcom/android/tools/r8/internal/Ag;

.field public final synthetic d:Lcom/android/tools/r8/internal/Dg;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Dg;Lcom/android/tools/r8/internal/Ag;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Bg;->d:Lcom/android/tools/r8/internal/Dg;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Bg;->c:Lcom/android/tools/r8/internal/Ag;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ey;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bg;->c:Lcom/android/tools/r8/internal/Ag;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bg;->c:Lcom/android/tools/r8/internal/Ag;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/e0;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bg;->c:Lcom/android/tools/r8/internal/Ag;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/e0;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/MY;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Bg;->b:Lcom/android/tools/r8/internal/MY;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bg;->b:Lcom/android/tools/r8/internal/MY;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Bg;->d:Lcom/android/tools/r8/internal/Dg;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Dg;->a(Ljava/lang/Object;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Bg;->b:Lcom/android/tools/r8/internal/MY;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
