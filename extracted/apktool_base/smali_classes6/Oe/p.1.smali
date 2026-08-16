.class public final LOe/p;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/p$a;,
        LOe/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final c:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "TB;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;LBe/G;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LBe/G<",
            "TB;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/p;->c:LBe/G;

    iput-object p3, p0, LOe/p;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TU;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v1, LOe/p$b;

    new-instance v2, LWe/m;

    invoke-direct {v2, p1}, LWe/m;-><init>(LBe/I;)V

    iget-object p1, p0, LOe/p;->d:Ljava/util/concurrent/Callable;

    iget-object v3, p0, LOe/p;->c:LBe/G;

    invoke-direct {v1, v2, p1, v3}, LOe/p$b;-><init>(LBe/I;Ljava/util/concurrent/Callable;LBe/G;)V

    invoke-interface {v0, v1}, LBe/G;->c(LBe/I;)V

    return-void
.end method
