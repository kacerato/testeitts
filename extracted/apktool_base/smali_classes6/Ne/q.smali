.class public final LNe/q;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNe/q$a;
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
.field public final b:LBe/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/B<",
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

.field public final d:Z


# direct methods
.method public constructor <init>(LBe/B;LFe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/B<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-object p1, p0, LNe/q;->b:LBe/B;

    iput-object p2, p0, LNe/q;->c:LFe/o;

    iput-boolean p3, p0, LNe/q;->d:Z

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, LNe/q;->b:LBe/B;

    iget-object v1, p0, LNe/q;->c:LFe/o;

    invoke-static {v0, v1, p1}, LNe/r;->c(Ljava/lang/Object;LFe/o;LBe/I;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LNe/q;->b:LBe/B;

    new-instance v1, LNe/q$a;

    iget-object v2, p0, LNe/q;->c:LFe/o;

    iget-boolean v3, p0, LNe/q;->d:Z

    invoke-direct {v1, p1, v2, v3}, LNe/q$a;-><init>(LBe/I;LFe/o;Z)V

    invoke-virtual {v0, v1}, LBe/B;->c(LBe/I;)V

    :cond_0
    return-void
.end method
