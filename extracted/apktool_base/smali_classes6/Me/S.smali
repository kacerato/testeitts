.class public final LMe/S;
.super LMe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/S$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LMe/a<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(LBe/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LMe/a;-><init>(LBe/y;)V

    return-void
.end method


# virtual methods
.method public t1(LBe/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LMe/a;->b:LBe/y;

    new-instance v1, LMe/S$a;

    invoke-direct {v1, p1}, LMe/S$a;-><init>(LBe/v;)V

    invoke-interface {v0, v1}, LBe/y;->d(LBe/v;)V

    return-void
.end method
