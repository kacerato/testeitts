.class public final LMe/i0;
.super LMe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/i0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "LMe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LBe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/y<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/y;LBe/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "TT;>;",
            "LBe/y<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LMe/a;-><init>(LBe/y;)V

    iput-object p2, p0, LMe/i0;->c:LBe/y;

    return-void
.end method


# virtual methods
.method public t1(LBe/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LMe/i0$a;

    invoke-direct {v0, p1}, LMe/i0$a;-><init>(LBe/v;)V

    invoke-interface {p1, v0}, LBe/v;->e(LDe/c;)V

    iget-object p1, p0, LMe/i0;->c:LBe/y;

    iget-object v1, v0, LMe/i0$a;->c:LMe/i0$a$a;

    invoke-interface {p1, v1}, LBe/y;->d(LBe/v;)V

    iget-object p1, p0, LMe/a;->b:LBe/y;

    invoke-interface {p1, v0}, LBe/y;->d(LBe/v;)V

    return-void
.end method
