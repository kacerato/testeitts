.class public final LQe/y;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/c;"
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

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;"
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
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LQe/y;->b:LBe/Q;

    iput-object p2, p0, LQe/y;->c:LFe/o;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 2

    new-instance v0, LQe/y$a;

    iget-object v1, p0, LQe/y;->c:LFe/o;

    invoke-direct {v0, p1, v1}, LQe/y$a;-><init>(LBe/f;LFe/o;)V

    invoke-interface {p1, v0}, LBe/f;->e(LDe/c;)V

    iget-object p1, p0, LQe/y;->b:LBe/Q;

    invoke-interface {p1, v0}, LBe/Q;->a(LBe/N;)V

    return-void
.end method
