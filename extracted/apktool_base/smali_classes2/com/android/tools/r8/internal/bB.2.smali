.class public final Lcom/android/tools/r8/internal/bB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/AE;

.field public c:Lcom/android/tools/r8/internal/k3;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/bB;->b:Lcom/android/tools/r8/internal/AE;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/bB;->c:Lcom/android/tools/r8/internal/k3;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bB;->c:Lcom/android/tools/r8/internal/k3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/bB;->c:Lcom/android/tools/r8/internal/k3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/bB;->b:Lcom/android/tools/r8/internal/AE;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/bB;->c:Lcom/android/tools/r8/internal/k3;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
