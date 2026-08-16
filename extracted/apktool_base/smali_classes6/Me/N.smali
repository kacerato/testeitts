.class public final LMe/N;
.super LBe/s;
.source "SourceFile"

# interfaces
.implements LIe/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/N$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/s<",
        "TT;>;",
        "LIe/i<",
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


# direct methods
.method public constructor <init>(LBe/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/Q<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/s;-><init>()V

    iput-object p1, p0, LMe/N;->b:LBe/Q;

    return-void
.end method


# virtual methods
.method public source()LBe/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/Q<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LMe/N;->b:LBe/Q;

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

    iget-object v0, p0, LMe/N;->b:LBe/Q;

    new-instance v1, LMe/N$a;

    invoke-direct {v1, p1}, LMe/N$a;-><init>(LBe/v;)V

    invoke-interface {v0, v1}, LBe/Q;->a(LBe/N;)V

    return-void
.end method
