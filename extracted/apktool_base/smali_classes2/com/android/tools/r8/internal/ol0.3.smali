.class public final Lcom/android/tools/r8/internal/ol0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lcom/android/tools/r8/internal/fi;


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Lcom/android/tools/r8/internal/fi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lcom/android/tools/r8/internal/Hj0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/tools/r8/internal/ol0;->b:I

    return-void
.end method

.method public final getContext()Lcom/android/tools/r8/internal/Lt;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Lt;->b:Lcom/android/tools/r8/internal/Lt;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/ol0;->b:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state of the iterator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/tools/r8/internal/ol0;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator has failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :goto_1
    throw v0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    return v3

    :cond_4
    invoke-static {v2}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    throw v2

    :cond_5
    iput v1, p0, Lcom/android/tools/r8/internal/ol0;->b:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/ol0;->d:Lcom/android/tools/r8/internal/fi;

    invoke-static {v0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/ol0;->d:Lcom/android/tools/r8/internal/fi;

    sget-object v1, Lcom/android/tools/r8/internal/iv0;->a:Lcom/android/tools/r8/internal/iv0;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/fi;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/ol0;->b:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state of the iterator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/tools/r8/internal/ol0;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator has failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :goto_0
    throw v0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/ol0;->b:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/ol0;->c:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/tools/r8/internal/ol0;->c:Ljava/lang/Object;

    return-object v0

    :cond_3
    iput v1, p0, Lcom/android/tools/r8/internal/ol0;->b:I

    invoke-static {v3}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    throw v3

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ol0;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ol0;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_5
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
