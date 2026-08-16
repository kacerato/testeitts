.class public Lle/h$b;
.super Lae/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/h;->Ff()Lae/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public g:LZd/Q;

.field public h:I

.field public final synthetic i:Lle/h;


# direct methods
.method public constructor <init>(Lle/h;LWd/b0;)V
    .locals 0

    iput-object p1, p0, Lle/h$b;->i:Lle/h;

    invoke-direct {p0, p2}, Lae/a;-><init>(LWd/b0;)V

    iget-object p1, p1, Lle/h;->r:Lbe/e;

    invoke-interface {p1}, LSd/g;->iterator()LZd/Q;

    move-result-object p1

    iput-object p1, p0, Lle/h$b;->g:LZd/Q;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/h$b;->g:LZd/Q;

    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lle/h$b;->g:LZd/Q;

    invoke-interface {v0}, LZd/Q;->next()I

    move-result v0

    iput v0, p0, Lle/h$b;->h:I

    invoke-virtual {p0, v0}, Lae/a;->k(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lle/h$b;->g:LZd/Q;

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LWd/I;->c:LWd/H;

    invoke-virtual {v1}, LWd/H;->kf()V

    iget-object v1, p0, Lle/h$b;->i:Lle/h;

    iget v2, p0, Lle/h$b;->h:I

    invoke-virtual {v1, v2}, Lle/h;->hf(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LWd/I;->c:LWd/H;

    invoke-virtual {v1, v0}, LWd/H;->ff(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, LWd/I;->c:LWd/H;

    invoke-virtual {v2, v0}, LWd/H;->ff(Z)V

    throw v1
.end method
