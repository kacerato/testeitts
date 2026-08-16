.class public final LQe/v;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LBe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:LBe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/Q;LBe/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LQe/v;->b:LBe/Q;

    iput-object p2, p0, LQe/v;->c:LBe/Q;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [Ljava/lang/Object;

    move-result-object v7

    new-instance v8, LDe/b;

    invoke-direct {v8}, LDe/b;-><init>()V

    invoke-interface {p1, v8}, LBe/N;->e(LDe/c;)V

    iget-object v9, p0, LQe/v;->b:LBe/Q;

    new-instance v10, LQe/v$a;

    const/4 v1, 0x0

    move-object v0, v10

    move-object v2, v8

    move-object v3, v7

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, LQe/v$a;-><init>(ILDe/b;[Ljava/lang/Object;LBe/N;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v9, v10}, LBe/Q;->a(LBe/N;)V

    iget-object v9, p0, LQe/v;->c:LBe/Q;

    new-instance v10, LQe/v$a;

    const/4 v1, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, LQe/v$a;-><init>(ILDe/b;[Ljava/lang/Object;LBe/N;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v9, v10}, LBe/Q;->a(LBe/N;)V

    return-void
.end method
