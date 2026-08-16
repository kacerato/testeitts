.class public final LOe/Z;
.super LBe/c;
.source "SourceFile"

# interfaces
.implements LIe/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/Z$a;
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

.field public final d:Z


# direct methods
.method public constructor <init>(LBe/G;LFe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LOe/Z;->b:LBe/G;

    iput-object p2, p0, LOe/Z;->c:LFe/o;

    iput-boolean p3, p0, LOe/Z;->d:Z

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 4

    iget-object v0, p0, LOe/Z;->b:LBe/G;

    new-instance v1, LOe/Z$a;

    iget-object v2, p0, LOe/Z;->c:LFe/o;

    iget-boolean v3, p0, LOe/Z;->d:Z

    invoke-direct {v1, p1, v2, v3}, LOe/Z$a;-><init>(LBe/f;LFe/o;Z)V

    invoke-interface {v0, v1}, LBe/G;->c(LBe/I;)V

    return-void
.end method

.method public c()LBe/B;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LOe/Y;

    iget-object v1, p0, LOe/Z;->b:LBe/G;

    iget-object v2, p0, LOe/Z;->c:LFe/o;

    iget-boolean v3, p0, LOe/Z;->d:Z

    invoke-direct {v0, v1, v2, v3}, LOe/Y;-><init>(LBe/G;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method
