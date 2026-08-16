.class public final LNe/j;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNe/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LBe/B<",
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
            "LBe/G<",
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
            "LBe/G<",
            "+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-object p1, p0, LNe/j;->b:LBe/y;

    iput-object p2, p0, LNe/j;->c:LFe/o;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TR;>;)V"
        }
    .end annotation

    new-instance v0, LNe/j$a;

    iget-object v1, p0, LNe/j;->c:LFe/o;

    invoke-direct {v0, p1, v1}, LNe/j$a;-><init>(LBe/I;LFe/o;)V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    iget-object p1, p0, LNe/j;->b:LBe/y;

    invoke-interface {p1, v0}, LBe/y;->d(LBe/v;)V

    return-void
.end method
