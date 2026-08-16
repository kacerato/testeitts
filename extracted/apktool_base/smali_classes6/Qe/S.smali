.class public final LQe/S;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/S$b;,
        LQe/S$a;
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
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/Q<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/Q;Lhn/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/Q<",
            "TT;>;",
            "Lhn/b<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LQe/S;->b:LBe/Q;

    iput-object p2, p0, LQe/S;->c:Lhn/b;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LQe/S$a;

    invoke-direct {v0, p1}, LQe/S$a;-><init>(LBe/N;)V

    invoke-interface {p1, v0}, LBe/N;->e(LDe/c;)V

    iget-object p1, p0, LQe/S;->c:Lhn/b;

    iget-object v1, v0, LQe/S$a;->c:LQe/S$b;

    invoke-interface {p1, v1}, Lhn/b;->l(Lhn/c;)V

    iget-object p1, p0, LQe/S;->b:LBe/Q;

    invoke-interface {p1, v0}, LBe/Q;->a(LBe/N;)V

    return-void
.end method
