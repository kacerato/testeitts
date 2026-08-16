.class public LF0/k;
.super LF0/c;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LF0/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LF0/b;)V
    .locals 0
    .param p1    # LF0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, LF0/c;-><init>(LF0/b;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, LF0/c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, LF0/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LF0/c;->c:I

    if-nez v0, :cond_1

    iget-object v0, p0, LF0/c;->b:LF0/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LF0/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LF0/k;->d:Ljava/lang/Object;

    instance-of v1, v0, LF0/f;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataBuffer reference of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not movable"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, LF0/k;->d:Ljava/lang/Object;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF0/f;

    iget v1, p0, LF0/c;->c:I

    invoke-virtual {v0, v1}, LF0/f;->n(I)V

    :goto_0
    iget-object v0, p0, LF0/k;->d:Ljava/lang/Object;

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, LF0/c;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot advance the iterator beyond "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
