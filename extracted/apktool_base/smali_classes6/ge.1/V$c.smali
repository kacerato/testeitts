.class public Lge/V$c;
.super LWd/J;
.source "SourceFile"

# interfaces
.implements LZd/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic e:Lge/V;


# direct methods
.method public constructor <init>(Lge/V;Lge/V;)V
    .locals 0

    iput-object p1, p0, Lge/V$c;->e:Lge/V;

    invoke-direct {p0, p2}, LWd/J;-><init>(LWd/c0;)V

    return-void
.end method


# virtual methods
.method public e(I)I
    .locals 3

    invoke-virtual {p0}, Lge/V$c;->value()I

    move-result v0

    iget-object v1, p0, Lge/V$c;->e:Lge/V;

    iget-object v1, v1, Lge/V;->v:[I

    iget v2, p0, LWd/J;->d:I

    aput p1, v1, v2

    return v0
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, LWd/J;->j()V

    return-void
.end method

.method public key()J
    .locals 3

    iget-object v0, p0, Lge/V$c;->e:Lge/V;

    iget-object v0, v0, LWd/Y;->q:[J

    iget v1, p0, LWd/J;->d:I

    aget-wide v1, v0, v1

    return-wide v1
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

    iget-object v1, p0, Lge/V$c;->e:Lge/V;

    iget v2, p0, LWd/J;->d:I

    invoke-virtual {v1, v2}, Lge/V;->hf(I)V
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

.method public value()I
    .locals 2

    iget-object v0, p0, Lge/V$c;->e:Lge/V;

    iget-object v0, v0, Lge/V;->v:[I

    iget v1, p0, LWd/J;->d:I

    aget v0, v0, v1

    return v0
.end method
