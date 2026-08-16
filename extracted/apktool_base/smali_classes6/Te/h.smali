.class public abstract LTe/h;
.super LUe/f;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LUe/f<",
        "TR;>;",
        "LBe/q<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final p:J = 0x296b17edcf9c299fL


# instance fields
.field public n:Lhn/d;

.field public o:Z


# direct methods
.method public constructor <init>(Lhn/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LUe/f;-><init>(Lhn/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LTe/h;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LUe/f;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, LUe/f;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LUe/f;->c:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-super {p0}, LUe/f;->cancel()V

    iget-object v0, p0, LTe/h;->n:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LTe/h;->n:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LTe/h;->n:Lhn/d;

    iget-object v0, p0, LUe/f;->c:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LUe/f;->d:Ljava/lang/Object;

    iget-object v0, p0, LUe/f;->c:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
