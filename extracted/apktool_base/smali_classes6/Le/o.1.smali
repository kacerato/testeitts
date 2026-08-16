.class public final LLe/o;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/o$a;,
        LLe/o$b;
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
        "LLe/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lhn/b<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lhn/b<",
            "TB;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/o;->d:Ljava/util/concurrent/Callable;

    iput-object p3, p0, LLe/o;->e:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TU;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v1, LLe/o$b;

    new-instance v2, Lcf/e;

    invoke-direct {v2, p1}, Lcf/e;-><init>(Lhn/c;)V

    iget-object p1, p0, LLe/o;->e:Ljava/util/concurrent/Callable;

    iget-object v3, p0, LLe/o;->d:Ljava/util/concurrent/Callable;

    invoke-direct {v1, v2, p1, v3}, LLe/o$b;-><init>(Lhn/c;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
