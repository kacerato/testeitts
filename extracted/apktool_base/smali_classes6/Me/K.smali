.class public final LMe/K;
.super LBe/s;
.source "SourceFile"

# interfaces
.implements LIe/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/K$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/s<",
        "TT;>;",
        "LIe/e;"
    }
.end annotation


# instance fields
.field public final b:LBe/i;


# direct methods
.method public constructor <init>(LBe/i;)V
    .locals 0

    invoke-direct {p0}, LBe/s;-><init>()V

    iput-object p1, p0, LMe/K;->b:LBe/i;

    return-void
.end method


# virtual methods
.method public source()LBe/i;
    .locals 1

    iget-object v0, p0, LMe/K;->b:LBe/i;

    return-object v0
.end method

.method public t1(LBe/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LMe/K;->b:LBe/i;

    new-instance v1, LMe/K$a;

    invoke-direct {v1, p1}, LMe/K$a;-><init>(LBe/v;)V

    invoke-interface {v0, v1}, LBe/i;->b(LBe/f;)V

    return-void
.end method
