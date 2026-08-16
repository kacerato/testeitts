.class public final LPe/a$a;
.super LTe/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LPe/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "LTe/h<",
        "TT;TC;>;"
    }
.end annotation


# static fields
.field public static final t:J = -0x42292ea02dae7f04L


# instance fields
.field public final q:LFe/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/b<",
            "-TC;-TT;>;"
        }
    .end annotation
.end field

.field public r:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field public s:Z


# direct methods
.method public constructor <init>(Lhn/c;Ljava/lang/Object;LFe/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TC;>;TC;",
            "LFe/b<",
            "-TC;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LTe/h;-><init>(Lhn/c;)V

    iput-object p2, p0, LPe/a$a;->r:Ljava/lang/Object;

    iput-object p3, p0, LPe/a$a;->q:LFe/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, LPe/a$a;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LPe/a$a;->s:Z

    iget-object v0, p0, LPe/a$a;->r:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, LPe/a$a;->r:Ljava/lang/Object;

    invoke-virtual {p0, v0}, LUe/f;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-super {p0}, LTe/h;->cancel()V

    iget-object v0, p0, LTe/h;->n:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LPe/a$a;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LPe/a$a;->q:LFe/b;

    iget-object v1, p0, LPe/a$a;->r:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, LFe/b;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LPe/a$a;->cancel()V

    invoke-virtual {p0, p1}, LPe/a$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
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

    iget-boolean v0, p0, LPe/a$a;->s:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LPe/a$a;->s:Z

    const/4 v0, 0x0

    iput-object v0, p0, LPe/a$a;->r:Ljava/lang/Object;

    iget-object v0, p0, LUe/f;->c:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
