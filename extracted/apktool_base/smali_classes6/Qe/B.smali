.class public final LQe/B;
.super LBe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/B$a;,
        LQe/B$b;
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
.field public final b:LBe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/Q;LFe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/Q<",
            "+TT;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/s;-><init>()V

    iput-object p2, p0, LQe/B;->c:LFe/o;

    iput-object p1, p0, LQe/B;->b:LBe/Q;

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

    iget-object v0, p0, LQe/B;->b:LBe/Q;

    new-instance v1, LQe/B$b;

    iget-object v2, p0, LQe/B;->c:LFe/o;

    invoke-direct {v1, p1, v2}, LQe/B$b;-><init>(LBe/v;LFe/o;)V

    invoke-interface {v0, v1}, LBe/Q;->a(LBe/N;)V

    return-void
.end method
