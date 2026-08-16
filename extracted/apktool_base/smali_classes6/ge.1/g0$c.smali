.class public Lge/g0$c;
.super LWd/J;
.source "SourceFile"

# interfaces
.implements LZd/n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic e:Lge/g0;


# direct methods
.method public constructor <init>(Lge/g0;Lge/g0;)V
    .locals 0

    iput-object p1, p0, Lge/g0$c;->e:Lge/g0;

    invoke-direct {p0, p2}, LWd/J;-><init>(LWd/c0;)V

    return-void
.end method


# virtual methods
.method public b(B)B
    .locals 3

    invoke-virtual {p0}, Lge/g0$c;->value()B

    move-result v0

    iget-object v1, p0, Lge/g0$c;->e:Lge/g0;

    iget-object v1, v1, Lge/g0;->v:[B

    iget v2, p0, LWd/J;->d:I

    aput-byte p1, v1, v2

    return v0
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, LWd/J;->j()V

    return-void
.end method

.method public key()S
    .locals 2

    iget-object v0, p0, Lge/g0$c;->e:Lge/g0;

    iget-object v0, v0, LWd/d0;->q:[S

    iget v1, p0, LWd/J;->d:I

    aget-short v0, v0, v1

    return v0
.end method

.method public remove()V
    .locals 3

    iget v0, p0, LWd/J;->c:I

    iget-object v1, p0, LWd/J;->b:LWd/c0;

    invoke-virtual {v1}, LWd/H;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LWd/J;->b:LWd/c0;

    invoke-virtual {v1}, LWd/H;->kf()V

    iget-object v1, p0, Lge/g0$c;->e:Lge/g0;

    iget v2, p0, LWd/J;->d:I

    invoke-virtual {v1, v2}, Lge/g0;->hf(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LWd/J;->b:LWd/c0;

    invoke-virtual {v1, v0}, LWd/H;->ff(Z)V

    iget v0, p0, LWd/J;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LWd/J;->c:I

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, LWd/J;->b:LWd/c0;

    invoke-virtual {v2, v0}, LWd/H;->ff(Z)V

    throw v1

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public value()B
    .locals 2

    iget-object v0, p0, Lge/g0$c;->e:Lge/g0;

    iget-object v0, v0, Lge/g0;->v:[B

    iget v1, p0, LWd/J;->d:I

    aget-byte v0, v0, v1

    return v0
.end method
