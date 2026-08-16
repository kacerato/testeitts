.class public final LQe/P;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/P$a;
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
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LBe/Q<",
            "+TT;>;>;"
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
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LBe/Q<",
            "+TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LQe/P;->b:LBe/Q;

    iput-object p2, p0, LQe/P;->c:LFe/o;

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

    iget-object v0, p0, LQe/P;->b:LBe/Q;

    new-instance v1, LQe/P$a;

    iget-object v2, p0, LQe/P;->c:LFe/o;

    invoke-direct {v1, p1, v2}, LQe/P$a;-><init>(LBe/N;LFe/o;)V

    invoke-interface {v0, v1}, LBe/Q;->a(LBe/N;)V

    return-void
.end method
