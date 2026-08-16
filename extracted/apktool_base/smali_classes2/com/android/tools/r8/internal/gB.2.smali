.class public final Lcom/android/tools/r8/internal/gB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/AE;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Z5;

.field public c:Lcom/android/tools/r8/internal/Y5;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/gB;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/gB;->c:Lcom/android/tools/r8/internal/Y5;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gB;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gB;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gB;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gB;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/gB;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/gB;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/gB;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/gB;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gB;->c:Lcom/android/tools/r8/internal/Y5;

    sget-boolean v1, Lcom/android/tools/r8/internal/gB;->d:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/gB;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    return-object v0

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previous()Lcom/android/tools/r8/internal/zE;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/gB;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/gB;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/gB;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/gB;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/gB;->c:Lcom/android/tools/r8/internal/Y5;

    sget-boolean v1, Lcom/android/tools/r8/internal/gB;->d:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/gB;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    return-object v0

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
