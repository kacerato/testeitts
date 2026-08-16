.class public final Lcom/android/tools/r8/internal/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Ljava/util/Iterator;

.field public c:I

.field public d:Ljava/lang/Object;

.field public final synthetic e:Lcom/android/tools/r8/internal/cx;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/bx;->e:Lcom/android/tools/r8/internal/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/tools/r8/internal/cx;->a:Lcom/android/tools/r8/internal/nl0;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/nl0;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/bx;->b:Ljava/util/Iterator;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/bx;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/bx;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bx;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/bx;->e:Lcom/android/tools/r8/internal/cx;

    iget-object v1, v1, Lcom/android/tools/r8/internal/cx;->c:Lcom/android/tools/r8/internal/ny;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/ny;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v4, p0, Lcom/android/tools/r8/internal/bx;->e:Lcom/android/tools/r8/internal/cx;

    iget-boolean v4, v4, Lcom/android/tools/r8/internal/cx;->b:Z

    if-ne v1, v4, :cond_0

    iput-object v0, p0, Lcom/android/tools/r8/internal/bx;->d:Ljava/lang/Object;

    iput v3, p0, Lcom/android/tools/r8/internal/bx;->c:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/android/tools/r8/internal/bx;->c:I

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/bx;->c:I

    if-ne v0, v3, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/bx;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/bx;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bx;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/bx;->e:Lcom/android/tools/r8/internal/cx;

    iget-object v2, v2, Lcom/android/tools/r8/internal/cx;->c:Lcom/android/tools/r8/internal/ny;

    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/ny;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/bx;->e:Lcom/android/tools/r8/internal/cx;

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/cx;->b:Z

    if-ne v2, v3, :cond_0

    iput-object v0, p0, Lcom/android/tools/r8/internal/bx;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/bx;->c:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/bx;->c:I

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/bx;->c:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/bx;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/tools/r8/internal/bx;->d:Ljava/lang/Object;

    iput v1, p0, Lcom/android/tools/r8/internal/bx;->c:I

    return-object v0

    :cond_3
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
