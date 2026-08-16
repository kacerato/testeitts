.class public final LLe/S$a;
.super LTe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final g:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final h:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final i:LFe/a;

.field public final j:LFe/a;


# direct methods
.method public constructor <init>(LIe/a;LFe/g;LFe/g;LFe/a;LFe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LIe/a<",
            "-TT;>;",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            "LFe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LTe/a;-><init>(LIe/a;)V

    iput-object p2, p0, LLe/S$a;->g:LFe/g;

    iput-object p3, p0, LLe/S$a;->h:LFe/g;

    iput-object p4, p0, LLe/S$a;->i:LFe/a;

    iput-object p5, p0, LLe/S$a;->j:LFe/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LTe/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LLe/S$a;->i:LFe/a;

    invoke-interface {v0}, LFe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LTe/a;->e:Z

    iget-object v0, p0, LTe/a;->b:LIe/a;

    invoke-interface {v0}, Lhn/c;->a()V

    :try_start_1
    iget-object v0, p0, LLe/S$a;->j:LFe/a;

    invoke-interface {v0}, LFe/a;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, LTe/a;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LTe/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LTe/a;->f:I

    if-eqz v0, :cond_1

    iget-object p1, p0, LTe/a;->b:LIe/a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lhn/c;->h(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, LLe/S$a;->g:LFe/g;

    invoke-interface {v0, p1}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LTe/a;->b:LIe/a;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, LTe/a;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public m(I)I
    .locals 0

    invoke-virtual {p0, p1}, LTe/a;->e(I)I

    move-result p1

    return p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, LTe/a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LTe/a;->e:Z

    :try_start_0
    iget-object v0, p0, LLe/S$a;->h:LFe/g;

    invoke-interface {v0, p1}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LTe/a;->b:LIe/a;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, LTe/a;->b:LIe/a;

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    iget-object p1, p0, LLe/S$a;->j:LFe/a;

    invoke-interface {p1}, LFe/a;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 3
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LTe/a;->d:LIe/l;

    invoke-interface {v0}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, p0, LLe/S$a;->g:LFe/g;

    invoke-interface {v1, v0}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, LLe/S$a;->j:LFe/a;

    invoke-interface {v1}, LFe/a;->run()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, LLe/S$a;->h:LFe/g;

    invoke-interface {v1, v0}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->d(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v1

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {v0, v1}, [Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v2, v0}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    iget-object v1, p0, LLe/S$a;->j:LFe/a;

    invoke-interface {v1}, LFe/a;->run()V

    throw v0

    :cond_0
    iget v1, p0, LTe/a;->f:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, LLe/S$a;->i:LFe/a;

    invoke-interface {v1}, LFe/a;->run()V

    iget-object v1, p0, LLe/S$a;->j:LFe/a;

    invoke-interface {v1}, LFe/a;->run()V

    :cond_1
    :goto_1
    return-object v0

    :catchall_3
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    :try_start_5
    iget-object v1, p0, LLe/S$a;->h:LFe/g;

    invoke-interface {v1, v0}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->d(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :catchall_4
    move-exception v1

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {v0, v1}, [Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v2, v0}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    throw v2
.end method

.method public u(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-boolean v0, p0, LTe/a;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, LLe/S$a;->g:LFe/g;

    invoke-interface {v0, p1}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LTe/a;->b:LIe/a;

    invoke-interface {v0, p1}, LIe/a;->u(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, LTe/a;->d(Ljava/lang/Throwable;)V

    return v1
.end method
