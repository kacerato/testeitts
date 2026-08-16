.class public final LOe/j;
.super LBe/K;
.source "SourceFile"

# interfaces
.implements LIe/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "Ljava/lang/Boolean;",
        ">;",
        "LIe/d<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LFe/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/r<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;LFe/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LFe/r<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LOe/j;->b:LBe/G;

    iput-object p2, p0, LOe/j;->c:LFe/r;

    return-void
.end method


# virtual methods
.method public c()LBe/B;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, LOe/i;

    iget-object v1, p0, LOe/j;->b:LBe/G;

    iget-object v2, p0, LOe/j;->c:LFe/r;

    invoke-direct {v0, v1, v2}, LOe/i;-><init>(LBe/G;LFe/r;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public d1(LBe/N;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/j;->b:LBe/G;

    new-instance v1, LOe/j$a;

    iget-object v2, p0, LOe/j;->c:LFe/r;

    invoke-direct {v1, p1, v2}, LOe/j$a;-><init>(LBe/N;LFe/r;)V

    invoke-interface {v0, v1}, LBe/G;->c(LBe/I;)V

    return-void
.end method
