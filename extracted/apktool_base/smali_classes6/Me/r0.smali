.class public final LMe/r0;
.super LMe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LMe/a<",
        "TT;TT;>;"
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LMe/a;->b:LBe/y;

    invoke-interface {v0, p1}, LBe/y;->d(LBe/v;)V

    return-void
.end method
