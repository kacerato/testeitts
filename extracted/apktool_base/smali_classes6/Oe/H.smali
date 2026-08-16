.class public final LOe/H;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/H$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "LBe/B<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;LBe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-object p1, p0, LOe/H;->b:LBe/G;

    iput-object p2, p0, LOe/H;->c:LBe/G;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LGe/h;

    invoke-direct {v0}, LGe/h;-><init>()V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    new-instance v1, LOe/H$a;

    invoke-direct {v1, p0, v0, p1}, LOe/H$a;-><init>(LOe/H;LGe/h;LBe/I;)V

    iget-object p1, p0, LOe/H;->c:LBe/G;

    invoke-interface {p1, v1}, LBe/G;->c(LBe/I;)V

    return-void
.end method
