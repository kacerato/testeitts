.class public final LQe/r;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/r$a;
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

.field public final c:LFe/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/b<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/Q;LFe/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/Q<",
            "TT;>;",
            "LFe/b<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LQe/r;->b:LBe/Q;

    iput-object p2, p0, LQe/r;->c:LFe/b;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LQe/r;->b:LBe/Q;

    new-instance v1, LQe/r$a;

    invoke-direct {v1, p0, p1}, LQe/r$a;-><init>(LQe/r;LBe/N;)V

    invoke-interface {v0, v1}, LBe/Q;->a(LBe/N;)V

    return-void
.end method
