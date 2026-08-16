.class public Lsd/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lsd/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsd/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lsd/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsd/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:[Lqd/z;


# direct methods
.method public constructor <init>(Lsd/c;Lsd/b;[Lqd/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsd/c<",
            "TT;>;",
            "Lsd/b<",
            "TT;>;[",
            "Lqd/z;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsd/d;->a:Lsd/c;

    iput-object p2, p0, Lsd/d;->b:Lsd/b;

    iput-object p3, p0, Lsd/d;->c:[Lqd/z;

    return-void
.end method


# virtual methods
.method public a(Lsd/d;)Lsd/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsd/d<",
            "TT;>;)",
            "Lsd/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lsd/d;->c:[Lqd/z;

    array-length v1, v0

    iget-object v2, p1, Lsd/d;->c:[Lqd/z;

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [Lqd/z;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lsd/d;->c:[Lqd/z;

    iget-object v0, p0, Lsd/d;->c:[Lqd/z;

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lsd/d;

    iget-object v0, p0, Lsd/d;->a:Lsd/c;

    iget-object v2, p0, Lsd/d;->b:Lsd/b;

    invoke-direct {p1, v0, v2, v1}, Lsd/d;-><init>(Lsd/c;Lsd/b;[Lqd/z;)V

    return-object p1
.end method

.method public varargs b([Lqd/j;)Lsd/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lqd/j;",
            ")",
            "Lsd/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lsd/d;->c:[Lqd/z;

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Lqd/z;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lsd/d;->b:Lsd/b;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Lsd/b;->a(Lqd/j;)V

    aget-object v3, p1, v2

    invoke-interface {v3}, Lqd/j;->R()Lqd/z;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lsd/d;->c:[Lqd/z;

    array-length p1, p1

    array-length v3, v2

    invoke-static {v2, v1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lsd/d;

    iget-object v1, p0, Lsd/d;->a:Lsd/c;

    iget-object v2, p0, Lsd/d;->b:Lsd/b;

    invoke-direct {p1, v1, v2, v0}, Lsd/d;-><init>(Lsd/c;Lsd/b;[Lqd/z;)V

    return-object p1
.end method

.method public c()Lqd/A;
    .locals 2

    iget-object v0, p0, Lsd/d;->a:Lsd/c;

    invoke-virtual {v0}, Lsd/c;->k()Lqd/y;

    move-result-object v0

    iget-object v1, p0, Lsd/d;->c:[Lqd/z;

    invoke-virtual {v0, v1}, Lqd/y;->i([Lqd/z;)Lqd/A;

    move-result-object v0

    return-object v0
.end method

.method public varargs d([Lqd/i;)Lsd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lqd/i<",
            "TT;>;)",
            "Lsd/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lsd/d;->a:Lsd/c;

    iget-object v1, p0, Lsd/d;->c:[Lqd/z;

    invoke-virtual {v0, v1, p1}, Lsd/c;->e([Lqd/z;[Lqd/i;)Lsd/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs e([Lqd/K;)Lsd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lqd/K<",
            "TT;>;)",
            "Lsd/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lsd/d;->a:Lsd/c;

    iget-object v1, p0, Lsd/d;->c:[Lqd/z;

    invoke-virtual {v0, v1, p1}, Lsd/c;->f([Lqd/z;[Lqd/K;)Lsd/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs f([Lqd/i;)Lsd/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lqd/i<",
            "TT;>;)",
            "Lsd/d<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsd/d;->d([Lqd/i;)Lsd/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs g([Lqd/K;)Lsd/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lqd/K<",
            "TT;>;)",
            "Lsd/d<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsd/d;->e([Lqd/K;)Lsd/d;

    move-result-object p1

    return-object p1
.end method
