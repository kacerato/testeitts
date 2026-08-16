.class public final LQe/k;
.super LBe/s;
.source "SourceFile"


# annotations
.annotation build LCe/e;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LBe/s<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/K;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/K<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;",
            "LBe/A<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/K;LFe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/K<",
            "TT;>;",
            "LFe/o<",
            "-TT;",
            "LBe/A<",
            "TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/s;-><init>()V

    iput-object p1, p0, LQe/k;->b:LBe/K;

    iput-object p2, p0, LQe/k;->c:LFe/o;

    return-void
.end method


# virtual methods
.method public t1(LBe/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, LQe/k;->b:LBe/K;

    new-instance v1, LQe/k$a;

    iget-object v2, p0, LQe/k;->c:LFe/o;

    invoke-direct {v1, p1, v2}, LQe/k$a;-><init>(LBe/v;LFe/o;)V

    invoke-virtual {v0, v1}, LBe/K;->a(LBe/N;)V

    return-void
.end method
