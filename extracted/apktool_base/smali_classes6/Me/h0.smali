.class public final LMe/h0;
.super LBe/K;
.source "SourceFile"

# interfaces
.implements LIe/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/h0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "TT;>;",
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

.field public final c:LBe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/y;LBe/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "TT;>;",
            "LBe/Q<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LMe/h0;->b:LBe/y;

    iput-object p2, p0, LMe/h0;->c:LBe/Q;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LMe/h0;->b:LBe/y;

    new-instance v1, LMe/h0$a;

    iget-object v2, p0, LMe/h0;->c:LBe/Q;

    invoke-direct {v1, p1, v2}, LMe/h0$a;-><init>(LBe/N;LBe/Q;)V

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

    iget-object v0, p0, LMe/h0;->b:LBe/y;

    return-object v0
.end method
