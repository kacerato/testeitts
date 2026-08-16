.class public final LLe/T$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/T;
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
        "Ljava/lang/Object;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;"
    }
.end annotation


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-",
            "Lhn/d;",
            ">;"
        }
    .end annotation
.end field

.field public final d:LFe/q;

.field public final e:LFe/a;

.field public f:Lhn/d;


# direct methods
.method public constructor <init>(Lhn/c;LFe/g;LFe/q;LFe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Lhn/d;",
            ">;",
            "LFe/q;",
            "LFe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLe/T$a;->b:Lhn/c;

    iput-object p2, p0, LLe/T$a;->c:LFe/g;

    iput-object p4, p0, LLe/T$a;->e:LFe/a;

    iput-object p3, p0, LLe/T$a;->d:LFe/q;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LLe/T$a;->f:Lhn/d;

    sget-object v1, LUe/j;->CANCELLED:LUe/j;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LLe/T$a;->b:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, LLe/T$a;->f:Lhn/d;

    sget-object v1, LUe/j;->CANCELLED:LUe/j;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, LLe/T$a;->f:Lhn/d;

    :try_start_0
    iget-object v1, p0, LLe/T$a;->e:LFe/a;

    invoke-interface {v1}, LFe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    invoke-interface {v0}, Lhn/d;->cancel()V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/T$a;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public i(J)V
    .locals 1

    :try_start_0
    iget-object v0, p0, LLe/T$a;->d:LFe/q;

    invoke-interface {v0, p1, p2}, LFe/q;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, LLe/T$a;->f:Lhn/d;

    invoke-interface {v0, p1, p2}, Lhn/d;->i(J)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, LLe/T$a;->c:LFe/g;

    invoke-interface {v0, p1}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LLe/T$a;->f:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/T$a;->f:Lhn/d;

    iget-object p1, p0, LLe/T$a;->b:Lhn/c;

    invoke-interface {p1, p0}, Lhn/c;->j(Lhn/d;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lhn/d;->cancel()V

    sget-object p1, LUe/j;->CANCELLED:LUe/j;

    iput-object p1, p0, LLe/T$a;->f:Lhn/d;

    iget-object p1, p0, LLe/T$a;->b:Lhn/c;

    invoke-static {v0, p1}, LUe/g;->b(Ljava/lang/Throwable;Lhn/c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LLe/T$a;->f:Lhn/d;

    sget-object v1, LUe/j;->CANCELLED:LUe/j;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LLe/T$a;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
