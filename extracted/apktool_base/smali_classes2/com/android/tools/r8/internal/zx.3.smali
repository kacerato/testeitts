.class public final Lcom/android/tools/r8/internal/zx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Ljava/util/Iterator;

.field public c:Ljava/util/Iterator;

.field public d:I

.field public final synthetic e:Lcom/android/tools/r8/internal/Ax;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ax;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/zx;->e:Lcom/android/tools/r8/internal/Ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ax;->a:Lcom/android/tools/r8/internal/nl0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/nl0;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/zx;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/zx;->c:Ljava/util/Iterator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/tools/r8/internal/zx;->d:I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zx;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zx;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/zx;->e:Lcom/android/tools/r8/internal/Ax;

    iget-object v3, v2, Lcom/android/tools/r8/internal/Ax;->c:Lcom/android/tools/r8/internal/ny;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Ax;->b:Lcom/android/tools/r8/internal/ny;

    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/ny;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/android/tools/r8/internal/ny;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/android/tools/r8/internal/zx;->c:Ljava/util/Iterator;

    iput v1, p0, Lcom/android/tools/r8/internal/zx;->d:I

    return v1

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/zx;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/zx;->c:Ljava/util/Iterator;

    const/4 v0, 0x0

    return v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/zx;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zx;->a()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/zx;->d:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zx;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/zx;->d:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/zx;->c:Ljava/util/Iterator;

    invoke-static {v0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
