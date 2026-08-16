.class public final LQe/g;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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

.field public final c:LBe/i;


# direct methods
.method public constructor <init>(LBe/Q;LBe/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/Q<",
            "TT;>;",
            "LBe/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LQe/g;->b:LBe/Q;

    iput-object p2, p0, LQe/g;->c:LBe/i;

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

    iget-object v0, p0, LQe/g;->c:LBe/i;

    new-instance v1, LQe/g$a;

    iget-object v2, p0, LQe/g;->b:LBe/Q;

    invoke-direct {v1, p1, v2}, LQe/g$a;-><init>(LBe/N;LBe/Q;)V

    invoke-interface {v0, v1}, LBe/i;->b(LBe/f;)V

    return-void
.end method
