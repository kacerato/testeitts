.class public final LLe/b2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
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
            "-TV;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final d:LFe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/c<",
            "-TT;-TU;+TV;>;"
        }
    .end annotation
.end field

.field public e:Lhn/d;

.field public f:Z


# direct methods
.method public constructor <init>(Lhn/c;Ljava/util/Iterator;LFe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TV;>;",
            "Ljava/util/Iterator<",
            "TU;>;",
            "LFe/c<",
            "-TT;-TU;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLe/b2$a;->b:Lhn/c;

    iput-object p2, p0, LLe/b2$a;->c:Ljava/util/Iterator;

    iput-object p3, p0, LLe/b2$a;->d:LFe/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LLe/b2$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/b2$a;->f:Z

    iget-object v0, p0, LLe/b2$a;->b:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/b2$a;->f:Z

    iget-object v0, p0, LLe/b2$a;->e:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    iget-object v0, p0, LLe/b2$a;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, LLe/b2$a;->e:Lhn/d;

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

    iget-boolean v0, p0, LLe/b2$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LLe/b2$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The iterator returned a null value"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, LLe/b2$a;->d:LFe/c;

    invoke-interface {v1, p1, v0}, LFe/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The zipper function returned a null value"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, LLe/b2$a;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    :try_start_2
    iget-object p1, p0, LLe/b2$a;->c:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/b2$a;->f:Z

    iget-object p1, p0, LLe/b2$a;->e:Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    iget-object p1, p0, LLe/b2$a;->b:Lhn/c;

    invoke-interface {p1}, Lhn/c;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, LLe/b2$a;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, LLe/b2$a;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, LLe/b2$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, LLe/b2$a;->e:Lhn/d;

    invoke-interface {v0, p1, p2}, Lhn/d;->i(J)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LLe/b2$a;->e:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/b2$a;->e:Lhn/d;

    iget-object p1, p0, LLe/b2$a;->b:Lhn/c;

    invoke-interface {p1, p0}, Lhn/c;->j(Lhn/d;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LLe/b2$a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/b2$a;->f:Z

    iget-object v0, p0, LLe/b2$a;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
