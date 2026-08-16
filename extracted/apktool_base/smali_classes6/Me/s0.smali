.class public final LMe/s0;
.super LMe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/s0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LMe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LBe/J;


# direct methods
.method public constructor <init>(LBe/y;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "TT;>;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LMe/a;-><init>(LBe/y;)V

    iput-object p2, p0, LMe/s0;->c:LBe/J;

    return-void
.end method


# virtual methods
.method public t1(LBe/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LMe/a;->b:LBe/y;

    new-instance v1, LMe/s0$a;

    iget-object v2, p0, LMe/s0;->c:LBe/J;

    invoke-direct {v1, p1, v2}, LMe/s0$a;-><init>(LBe/v;LBe/J;)V

    invoke-interface {v0, v1}, LBe/y;->d(LBe/v;)V

    return-void
.end method
