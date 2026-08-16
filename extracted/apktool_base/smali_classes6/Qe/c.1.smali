.class public final LQe/c;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "Ljava/lang/Boolean;",
        ">;"
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

.field public final c:Ljava/lang/Object;

.field public final d:LFe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/Q;Ljava/lang/Object;LFe/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/Q<",
            "TT;>;",
            "Ljava/lang/Object;",
            "LFe/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LQe/c;->b:LBe/Q;

    iput-object p2, p0, LQe/c;->c:Ljava/lang/Object;

    iput-object p3, p0, LQe/c;->d:LFe/d;

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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LQe/c;->b:LBe/Q;

    new-instance v1, LQe/c$a;

    invoke-direct {v1, p0, p1}, LQe/c$a;-><init>(LQe/c;LBe/N;)V

    invoke-interface {v0, v1}, LBe/Q;->a(LBe/N;)V

    return-void
.end method
