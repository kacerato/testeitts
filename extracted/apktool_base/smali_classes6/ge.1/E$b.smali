.class public Lge/E$b;
.super LWd/J;
.source "SourceFile"

# interfaces
.implements LZd/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Lge/E;


# direct methods
.method public constructor <init>(Lge/E;Lge/E;)V
    .locals 0

    iput-object p1, p0, Lge/E$b;->e:Lge/E;

    invoke-direct {p0, p2}, LWd/J;-><init>(LWd/c0;)V

    return-void
.end method


# virtual methods
.method public d(J)J
    .locals 4

    invoke-virtual {p0}, Lge/E$b;->value()J

    move-result-wide v0

    iget-object v2, p0, Lge/E$b;->e:Lge/E;

    iget-object v2, v2, Lge/E;->v:[J

    iget v3, p0, LWd/J;->d:I

    aput-wide p1, v2, v3

    return-wide v0
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, LWd/J;->j()V

    return-void
.end method

.method public key()F
    .locals 2

    iget-object v0, p0, Lge/E$b;->e:Lge/E;

    iget-object v0, v0, LWd/F;->q:[F

    iget v1, p0, LWd/J;->d:I

    aget v0, v0, v1

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

    iget-object v1, p0, Lge/E$b;->e:Lge/E;

    iget v2, p0, LWd/J;->d:I

    invoke-virtual {v1, v2}, Lge/E;->hf(I)V
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

.method public value()J
    .locals 3

    iget-object v0, p0, Lge/E$b;->e:Lge/E;

    iget-object v0, v0, Lge/E;->v:[J

    iget v1, p0, LWd/J;->d:I

    aget-wide v1, v0, v1

    return-wide v1
.end method
