.class public Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lcom/github/javaparser/printer/lexicalpreservation/LookaheadIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lcom/github/javaparser/printer/lexicalpreservation/LookaheadIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private exhausted:Z

.field private final iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private slot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private slotFilled:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ListIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "iterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method private fill()V
    .locals 2

    iget-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->exhausted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->slotFilled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->slot:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->slotFilled:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->exhausted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->slot:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->slotFilled:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->slotFilled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "peek() or element() called before add()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public currentIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->previousIndex()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->fill()V

    iget-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->exhausted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->slot:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->exhausted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->slotFilled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->slotFilled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->slot:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->slot:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->slotFilled:Z

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->fill()V

    iget-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->exhausted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->slot:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public peekingIterator(Ljava/util/ListIterator;)Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "iterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ListIterator<",
            "TE;>;)",
            "Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "iterator"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;

    return-object p1

    :cond_0
    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;

    invoke-direct {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;-><init>(Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->slotFilled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "peek() or element() called before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->slotFilled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "peek() or element() called before set()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
