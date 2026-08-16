.class public final Lcom/android/tools/r8/internal/S5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/AE;

.field public c:Lcom/android/tools/r8/internal/zE;

.field public final synthetic d:Lcom/android/tools/r8/internal/zE;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V
    .locals 1

    iput-object p2, p0, Lcom/android/tools/r8/internal/S5;->d:Lcom/android/tools/r8/internal/zE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/S5;->b:Lcom/android/tools/r8/internal/AE;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/S5;->c:Lcom/android/tools/r8/internal/zE;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/S5;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/S5;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/S5;->b:Lcom/android/tools/r8/internal/AE;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/S5;->b:Lcom/android/tools/r8/internal/AE;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    iget-object v2, p0, Lcom/android/tools/r8/internal/S5;->d:Lcom/android/tools/r8/internal/zE;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/tools/r8/internal/S5;->c:Lcom/android/tools/r8/internal/zE;

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
