.class public LPl/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/util/Vector;

.field public c:Ljava/util/Vector;

.field public d:[B

.field public e:[B

.field public f:[B

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:LBi/y;


# direct methods
.method public constructor <init>(LBi/y;[[B[I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPl/n;->l:LBi/y;

    const/4 p1, 0x0

    aget v0, p3, p1

    iput v0, p0, LPl/n;->a:I

    const/4 v0, 0x1

    aget v1, p3, v0

    iput v1, p0, LPl/n;->g:I

    const/4 v1, 0x2

    aget v2, p3, v1

    iput v2, p0, LPl/n;->h:I

    const/4 v2, 0x3

    aget v2, p3, v2

    if-ne v2, v0, :cond_0

    iput-boolean v0, p0, LPl/n;->j:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, LPl/n;->j:Z

    :goto_0
    const/4 v2, 0x4

    aget v2, p3, v2

    if-ne v2, v0, :cond_1

    iput-boolean v0, p0, LPl/n;->i:Z

    goto :goto_1

    :cond_1
    iput-boolean p1, p0, LPl/n;->i:Z

    :goto_1
    const/4 v2, 0x5

    aget v2, p3, v2

    if-ne v2, v0, :cond_2

    iput-boolean v0, p0, LPl/n;->k:Z

    goto :goto_2

    :cond_2
    iput-boolean p1, p0, LPl/n;->k:Z

    :goto_2
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, LPl/n;->c:Ljava/util/Vector;

    move v2, p1

    :goto_3
    iget v3, p0, LPl/n;->g:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, LPl/n;->c:Ljava/util/Vector;

    add-int/lit8 v4, v2, 0x6

    aget v4, p3, v4

    invoke-static {v4}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    aget-object p3, p2, p1

    iput-object p3, p0, LPl/n;->d:[B

    aget-object p3, p2, v0

    iput-object p3, p0, LPl/n;->e:[B

    aget-object p3, p2, v1

    iput-object p3, p0, LPl/n;->f:[B

    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    iput-object p3, p0, LPl/n;->b:Ljava/util/Vector;

    :goto_4
    iget p3, p0, LPl/n;->g:I

    if-ge p1, p3, :cond_4

    iget-object p3, p0, LPl/n;->b:Ljava/util/Vector;

    add-int/lit8 v0, p1, 0x3

    aget-object v0, p2, v0

    invoke-virtual {p3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;ILBi/y;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPl/n;->b:Ljava/util/Vector;

    iput p2, p0, LPl/n;->a:I

    const/4 p1, 0x0

    iput-object p1, p0, LPl/n;->d:[B

    const/4 p1, 0x0

    iput-boolean p1, p0, LPl/n;->i:Z

    iput-boolean p1, p0, LPl/n;->j:Z

    iput-boolean p1, p0, LPl/n;->k:Z

    iput-object p3, p0, LPl/n;->l:LBi/y;

    invoke-interface {p3}, LBi/y;->f()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, LPl/n;->f:[B

    iget-object p1, p0, LPl/n;->l:LBi/y;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, LPl/n;->e:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, LPl/n;->i:Z

    iput-boolean v0, p0, LPl/n;->j:Z

    const/4 v1, 0x0

    iput-object v1, p0, LPl/n;->d:[B

    iput v0, p0, LPl/n;->g:I

    const/4 v0, -0x1

    iput v0, p0, LPl/n;->h:I

    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, LPl/n;->d:[B

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, LPl/n;->d:[B

    if-nez v0, :cond_0

    iget v0, p0, LPl/n;->a:I

    return v0

    :cond_0
    iget v0, p0, LPl/n;->h:I

    return v0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, LPl/n;->d:[B

    if-nez v0, :cond_0

    iget v0, p0, LPl/n;->a:I

    return v0

    :cond_0
    iget v0, p0, LPl/n;->g:I

    if-nez v0, :cond_1

    iget v0, p0, LPl/n;->h:I

    return v0

    :cond_1
    iget v0, p0, LPl/n;->h:I

    iget-object v1, p0, LPl/n;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, LPl/n;->e:[B

    return-object v0
.end method

.method public f()[[B
    .locals 5

    iget v0, p0, LPl/n;->g:I

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, LPl/n;->l:LBi/y;

    invoke-interface {v1}, LBi/y;->f()I

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget-object v3, p0, LPl/n;->d:[B

    aput-object v3, v0, v1

    iget-object v3, p0, LPl/n;->e:[B

    aput-object v3, v0, v4

    iget-object v3, p0, LPl/n;->f:[B

    aput-object v3, v0, v2

    :goto_0
    iget v2, p0, LPl/n;->g:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x3

    iget-object v3, p0, LPl/n;->b:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public g()[I
    .locals 5

    iget v0, p0, LPl/n;->g:I

    add-int/lit8 v1, v0, 0x6

    new-array v1, v1, [I

    iget v2, p0, LPl/n;->a:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x2

    iget v4, p0, LPl/n;->h:I

    aput v4, v1, v0

    iget-boolean v0, p0, LPl/n;->j:Z

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    aput v2, v1, v4

    goto :goto_0

    :cond_0
    aput v3, v1, v4

    :goto_0
    iget-boolean v0, p0, LPl/n;->i:Z

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    aput v2, v1, v4

    goto :goto_1

    :cond_1
    aput v3, v1, v4

    :goto_1
    iget-boolean v0, p0, LPl/n;->k:Z

    const/4 v4, 0x5

    if-eqz v0, :cond_2

    aput v2, v1, v4

    goto :goto_2

    :cond_2
    aput v3, v1, v4

    :goto_2
    iget v0, p0, LPl/n;->g:I

    if-ge v3, v0, :cond_3

    add-int/lit8 v0, v3, 0x6

    iget-object v2, p0, LPl/n;->c:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method public h()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, LPl/n;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public i()V
    .locals 4

    iget-boolean v0, p0, LPl/n;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LPl/n;->c:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, LPl/n;->g:I

    const/4 v1, 0x0

    iput-object v1, p0, LPl/n;->d:[B

    const/4 v1, -0x1

    iput v1, p0, LPl/n;->h:I

    const/4 v1, 0x1

    iput-boolean v1, p0, LPl/n;->i:Z

    iget-object v1, p0, LPl/n;->f:[B

    iget-object v2, p0, LPl/n;->e:[B

    iget-object v3, p0, LPl/n;->l:LBi/y;

    invoke-interface {v3}, LBi/y;->f()I

    move-result v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LPl/n;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j([B)V
    .locals 3

    iget-object v0, p0, LPl/n;->f:[B

    iget-object v1, p0, LPl/n;->l:LBi/y;

    invoke-interface {v1}, LBi/y;->f()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LPl/n;->k:Z

    return-void
.end method

.method public k([B)V
    .locals 1

    iget-boolean v0, p0, LPl/n;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, LPl/n;->i()V

    :cond_0
    iput-object p1, p0, LPl/n;->d:[B

    iget p1, p0, LPl/n;->a:I

    iput p1, p0, LPl/n;->h:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LPl/n;->j:Z

    return-void
.end method

.method public l(LQl/a;[B)V
    .locals 6

    iget-boolean v0, p0, LPl/n;->j:Z

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "No more update possible for treehash instance!"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, LPl/n;->i:Z

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "Treehash instance not initialized before update"

    goto :goto_0

    :cond_1
    iget-object v0, p0, LPl/n;->l:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v0, p0, LPl/n;->e:[B

    invoke-virtual {p1, v0}, LQl/a;->c([B)[B

    iget-object p1, p0, LPl/n;->d:[B

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iput-object p2, p0, LPl/n;->d:[B

    iput v1, p0, LPl/n;->h:I

    goto/16 :goto_2

    :cond_2
    move p1, v1

    :goto_1
    iget v2, p0, LPl/n;->g:I

    if-lez v2, :cond_3

    iget-object v2, p0, LPl/n;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, LPl/n;->l:LBi/y;

    invoke-interface {v2}, LBi/y;->f()I

    move-result v2

    shl-int/2addr v2, v0

    new-array v3, v2, [B

    iget-object v4, p0, LPl/n;->b:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, LPl/n;->l:LBi/y;

    invoke-interface {v5}, LBi/y;->f()I

    move-result v5

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, LPl/n;->b:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v4, p0, LPl/n;->c:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v4, p0, LPl/n;->l:LBi/y;

    invoke-interface {v4}, LBi/y;->f()I

    move-result v4

    iget-object v5, p0, LPl/n;->l:LBi/y;

    invoke-interface {v5}, LBi/y;->f()I

    move-result v5

    invoke-static {p2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, LPl/n;->l:LBi/y;

    invoke-interface {p2, v3, v1, v2}, LBi/y;->update([BII)V

    iget-object p2, p0, LPl/n;->l:LBi/y;

    invoke-interface {p2}, LBi/y;->f()I

    move-result p2

    new-array p2, p2, [B

    iget-object v2, p0, LPl/n;->l:LBi/y;

    invoke-interface {v2, p2, v1}, LBi/y;->c([BI)I

    add-int/lit8 p1, p1, 0x1

    iget v2, p0, LPl/n;->g:I

    sub-int/2addr v2, v0

    iput v2, p0, LPl/n;->g:I

    goto :goto_1

    :cond_3
    iget-object v2, p0, LPl/n;->b:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p2, p0, LPl/n;->c:Ljava/util/Vector;

    invoke-static {p1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget p1, p0, LPl/n;->g:I

    add-int/2addr p1, v0

    iput p1, p0, LPl/n;->g:I

    iget-object p1, p0, LPl/n;->c:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, LPl/n;->h:I

    if-ne p1, p2, :cond_4

    iget-object p1, p0, LPl/n;->l:LBi/y;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    shl-int/2addr p1, v0

    new-array p2, p1, [B

    iget-object v2, p0, LPl/n;->d:[B

    iget-object v3, p0, LPl/n;->l:LBi/y;

    invoke-interface {v3}, LBi/y;->f()I

    move-result v3

    invoke-static {v2, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, LPl/n;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, LPl/n;->l:LBi/y;

    invoke-interface {v3}, LBi/y;->f()I

    move-result v3

    iget-object v4, p0, LPl/n;->l:LBi/y;

    invoke-interface {v4}, LBi/y;->f()I

    move-result v4

    invoke-static {v2, v1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, LPl/n;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v2, p0, LPl/n;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v2, p0, LPl/n;->l:LBi/y;

    invoke-interface {v2, p2, v1, p1}, LBi/y;->update([BII)V

    iget-object p1, p0, LPl/n;->l:LBi/y;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, LPl/n;->d:[B

    iget-object p2, p0, LPl/n;->l:LBi/y;

    invoke-interface {p2, p1, v1}, LBi/y;->c([BI)I

    iget p1, p0, LPl/n;->h:I

    add-int/2addr p1, v0

    iput p1, p0, LPl/n;->h:I

    iput v1, p0, LPl/n;->g:I

    :cond_4
    :goto_2
    iget p1, p0, LPl/n;->h:I

    iget p2, p0, LPl/n;->a:I

    if-ne p1, p2, :cond_5

    iput-boolean v0, p0, LPl/n;->j:Z

    :cond_5
    return-void
.end method

.method public m(LQl/a;)V
    .locals 1

    iget-object v0, p0, LPl/n;->f:[B

    invoke-virtual {p1, v0}, LQl/a;->c([B)[B

    return-void
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, LPl/n;->j:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, LPl/n;->i:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "Treehash    : "

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, LPl/n;->g:I

    add-int/lit8 v3, v3, 0x6

    const-string v4, " "

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LPl/n;->g()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v2, p0, LPl/n;->g:I

    add-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, LPl/n;->f()[[B

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, LPl/n;->f()[[B

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Lem/h;->h([B)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "null "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LPl/n;->l:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
