.class public Lcom/android/tools/r8/internal/Z5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Lcom/android/tools/r8/internal/W5;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/ListIterator;

.field public c:Lcom/android/tools/r8/internal/W5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/fB;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/W5;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/N31;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/N31;-><init>(Lcom/android/tools/r8/internal/W5;)V

    .line 3
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/xK;->a(Lcom/android/tools/r8/internal/Z5;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    return-void
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/O31;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/O31;-><init>(Lcom/android/tools/r8/internal/W5;)V

    .line 3
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/xK;->a(Lcom/android/tools/r8/internal/Z5;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    return-object p1
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->U0()Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    iput-object v1, v0, Lcom/android/tools/r8/internal/CE;->d:Lcom/android/tools/r8/internal/zE;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/tools/r8/internal/CE;->e:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
