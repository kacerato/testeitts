.class public final LOe/c1;
.super LBe/K;
.source "SourceFile"

# interfaces
.implements LIe/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/c1$b;,
        LOe/c1$a;
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
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:LFe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(LBe/G;LBe/G;LFe/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "+TT;>;",
            "LBe/G<",
            "+TT;>;",
            "LFe/d<",
            "-TT;-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LOe/c1;->b:LBe/G;

    iput-object p2, p0, LOe/c1;->c:LBe/G;

    iput-object p3, p0, LOe/c1;->d:LFe/d;

    iput p4, p0, LOe/c1;->e:I

    return-void
.end method


# virtual methods
.method public c()LBe/B;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, LOe/b1;

    iget-object v1, p0, LOe/c1;->b:LBe/G;

    iget-object v2, p0, LOe/c1;->c:LBe/G;

    iget-object v3, p0, LOe/c1;->d:LFe/d;

    iget v4, p0, LOe/c1;->e:I

    invoke-direct {v0, v1, v2, v3, v4}, LOe/b1;-><init>(LBe/G;LBe/G;LFe/d;I)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public d1(LBe/N;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v6, LOe/c1$a;

    iget v2, p0, LOe/c1;->e:I

    iget-object v3, p0, LOe/c1;->b:LBe/G;

    iget-object v4, p0, LOe/c1;->c:LBe/G;

    iget-object v5, p0, LOe/c1;->d:LFe/d;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, LOe/c1$a;-><init>(LBe/N;ILBe/G;LBe/G;LFe/d;)V

    invoke-interface {p1, v6}, LBe/N;->e(LDe/c;)V

    invoke-virtual {v6}, LOe/c1$a;->e()V

    return-void
.end method
