.class public final Lcom/android/tools/r8/internal/Hk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Ljava/util/Stack;

.field public c:Lcom/android/tools/r8/internal/ET;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/l8;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hk0;->b:Ljava/util/Stack;

    :goto_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/Jk0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/internal/Jk0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hk0;->b:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Jk0;->e:Lcom/android/tools/r8/internal/l8;

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/ET;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Hk0;->c:Lcom/android/tools/r8/internal/ET;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/ET;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hk0;->c:Lcom/android/tools/r8/internal/ET;

    if-eqz v0, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Hk0;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Hk0;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Jk0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Jk0;->f:Lcom/android/tools/r8/internal/l8;

    :goto_1
    instance-of v2, v1, Lcom/android/tools/r8/internal/Jk0;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/tools/r8/internal/Jk0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Hk0;->b:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Jk0;->e:Lcom/android/tools/r8/internal/l8;

    goto :goto_1

    :cond_1
    check-cast v1, Lcom/android/tools/r8/internal/ET;

    iget-object v2, v1, Lcom/android/tools/r8/internal/ET;->d:[B

    array-length v2, v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    iput-object v1, p0, Lcom/android/tools/r8/internal/Hk0;->c:Lcom/android/tools/r8/internal/ET;

    return-object v0

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hk0;->c:Lcom/android/tools/r8/internal/ET;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Hk0;->a()Lcom/android/tools/r8/internal/ET;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
