.class public final LOe/o0;
.super LBe/c;
.source "SourceFile"

# interfaces
.implements LIe/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/o0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/c;",
        "LIe/d<",
        "TT;>;"
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


# direct methods
.method public constructor <init>(LBe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LOe/o0;->b:LBe/G;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 2

    iget-object v0, p0, LOe/o0;->b:LBe/G;

    new-instance v1, LOe/o0$a;

    invoke-direct {v1, p1}, LOe/o0$a;-><init>(LBe/f;)V

    invoke-interface {v0, v1}, LBe/G;->c(LBe/I;)V

    return-void
.end method

.method public c()LBe/B;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LOe/n0;

    iget-object v1, p0, LOe/o0;->b:LBe/G;

    invoke-direct {v0, v1}, LOe/n0;-><init>(LBe/G;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method
