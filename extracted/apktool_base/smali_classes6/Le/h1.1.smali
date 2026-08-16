.class public final LLe/h1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/h1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-",
            "LBe/l<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lhn/b<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;LFe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/o<",
            "-",
            "LBe/l<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lhn/b<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/h1;->d:LFe/o;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcf/e;

    invoke-direct {v0, p1}, Lcf/e;-><init>(Lhn/c;)V

    const/16 v1, 0x8

    invoke-static {v1}, LZe/h;->V8(I)LZe/h;

    move-result-object v1

    invoke-virtual {v1}, LZe/c;->S8()LZe/c;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, LLe/h1;->d:LFe/o;

    invoke-interface {v2, v1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "handler returned a null Publisher"

    invoke-static {v2, v3}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhn/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, LLe/d1$b;

    iget-object v4, p0, LLe/a;->c:LBe/l;

    invoke-direct {v3, v4}, LLe/d1$b;-><init>(Lhn/b;)V

    new-instance v4, LLe/h1$a;

    invoke-direct {v4, v0, v1, v3}, LLe/h1$a;-><init>(Lhn/c;LZe/c;Lhn/d;)V

    iput-object v4, v3, LLe/d1$b;->e:LLe/d1$c;

    invoke-interface {p1, v4}, Lhn/c;->j(Lhn/d;)V

    invoke-interface {v2, v3}, Lhn/b;->l(Lhn/c;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, LLe/d1$b;->h(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LUe/g;->b(Ljava/lang/Throwable;Lhn/c;)V

    return-void
.end method
