.class public final Lcom/android/tools/r8/internal/y0;
.super Lcom/android/tools/r8/internal/w0;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic e:Lcom/android/tools/r8/internal/z0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/z0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/internal/y0;->e:Lcom/android/tools/r8/internal/z0;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/w0;-><init>(Lcom/android/tools/r8/internal/x0;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/z0;I)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/y0;->e:Lcom/android/tools/r8/internal/z0;

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    .line 4
    check-cast v0, Ljava/util/List;

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/w0;-><init>(Lcom/android/tools/r8/internal/z0;Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ListIterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/w0;->d:Lcom/android/tools/r8/internal/x0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/w0;->d:Lcom/android/tools/r8/internal/x0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    iget-object v1, p0, Lcom/android/tools/r8/internal/w0;->c:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/w0;->b:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/y0;->e:Lcom/android/tools/r8/internal/z0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/y0;->a()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/y0;->e:Lcom/android/tools/r8/internal/z0;

    iget-object v1, p1, Lcom/android/tools/r8/internal/z0;->g:Lcom/android/tools/r8/internal/A0;

    iget v2, v1, Lcom/android/tools/r8/internal/A0;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/tools/r8/internal/A0;->g:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/x0;->a()V

    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/y0;->a()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/y0;->a()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/y0;->a()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/y0;->a()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/y0;->a()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
