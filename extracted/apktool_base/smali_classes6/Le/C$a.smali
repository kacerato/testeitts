.class public final LLe/C$a;
.super LTe/t;
.source "SourceFile"

# interfaces
.implements LBe/N;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/C;
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
        "LTe/t<",
        "TT;TT;>;",
        "LBe/N<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final k:J = -0x65f39aa804f9be51L


# instance fields
.field public final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LDe/c;",
            ">;"
        }
    .end annotation
.end field

.field public j:LBe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhn/c;LBe/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "LBe/Q<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LTe/t;-><init>(Lhn/c;)V

    iput-object p2, p0, LLe/C$a;->j:LBe/Q;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LLe/C$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, LUe/j;->CANCELLED:LUe/j;

    iput-object v0, p0, LTe/t;->c:Lhn/d;

    iget-object v0, p0, LLe/C$a;->j:LBe/Q;

    const/4 v1, 0x0

    iput-object v1, p0, LLe/C$a;->j:LBe/Q;

    invoke-interface {v0, p0}, LBe/Q;->a(LBe/N;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, LTe/t;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-super {p0}, LTe/t;->cancel()V

    iget-object v0, p0, LLe/C$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LLe/C$a;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, LTe/t;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LTe/t;->e:J

    iget-object v0, p0, LTe/t;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LTe/t;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
