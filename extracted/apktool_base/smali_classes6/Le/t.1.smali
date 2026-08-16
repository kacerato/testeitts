.class public final LLe/t;
.super LBe/K;
.source "SourceFile"

# interfaces
.implements LIe/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "TU;>;",
        "LIe/b<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TU;>;"
        }
    .end annotation
.end field

.field public final d:LFe/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/b<",
            "-TU;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;Ljava/util/concurrent/Callable;LFe/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "LFe/b<",
            "-TU;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LLe/t;->b:LBe/l;

    iput-object p2, p0, LLe/t;->c:Ljava/util/concurrent/Callable;

    iput-object p3, p0, LLe/t;->d:LFe/b;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TU;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LLe/t;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The initialSupplier returned a null value"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LLe/t;->b:LBe/l;

    new-instance v2, LLe/t$a;

    iget-object v3, p0, LLe/t;->d:LFe/b;

    invoke-direct {v2, p1, v0, v3}, LLe/t$a;-><init>(LBe/N;Ljava/lang/Object;LFe/b;)V

    invoke-virtual {v1, v2}, LBe/l;->l6(LBe/q;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0, p1}, LGe/e;->i(Ljava/lang/Throwable;LBe/N;)V

    return-void
.end method

.method public f()LBe/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, LLe/s;

    iget-object v1, p0, LLe/t;->b:LBe/l;

    iget-object v2, p0, LLe/t;->c:Ljava/util/concurrent/Callable;

    iget-object v3, p0, LLe/t;->d:LFe/b;

    invoke-direct {v0, v1, v2, v3}, LLe/s;-><init>(LBe/l;Ljava/util/concurrent/Callable;LFe/b;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method
