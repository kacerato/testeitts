.class public final LMe/G;
.super LBe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/G$b;,
        LMe/G$a;
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
.field public final b:LBe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/y<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/y;LFe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/s;-><init>()V

    iput-object p1, p0, LMe/G;->b:LBe/y;

    iput-object p2, p0, LMe/G;->c:LFe/o;

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

    iget-object v0, p0, LMe/G;->b:LBe/y;

    new-instance v1, LMe/G$a;

    iget-object v2, p0, LMe/G;->c:LFe/o;

    invoke-direct {v1, p1, v2}, LMe/G$a;-><init>(LBe/v;LFe/o;)V

    invoke-interface {v0, v1}, LBe/y;->d(LBe/v;)V

    return-void
.end method
