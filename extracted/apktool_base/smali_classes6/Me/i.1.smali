.class public final LMe/i;
.super LBe/K;
.source "SourceFile"

# interfaces
.implements LIe/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "Ljava/lang/Long;",
        ">;",
        "LIe/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/y<",
            "TT;>;"
        }
    .end annotation
.end field


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

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LMe/i;->b:LBe/y;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LMe/i;->b:LBe/y;

    new-instance v1, LMe/i$a;

    invoke-direct {v1, p1}, LMe/i$a;-><init>(LBe/N;)V

    invoke-interface {v0, v1}, LBe/y;->d(LBe/v;)V

    return-void
.end method

.method public source()LBe/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/y<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LMe/i;->b:LBe/y;

    return-object v0
.end method
