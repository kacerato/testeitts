.class public final LOe/K1;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/K1$b;,
        LOe/K1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final c:LFe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field public final d:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;LFe/c;LBe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;",
            "LBe/G<",
            "+TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/K1;->c:LFe/c;

    iput-object p3, p0, LOe/K1;->d:LBe/G;

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

    new-instance v0, LWe/m;

    invoke-direct {v0, p1}, LWe/m;-><init>(LBe/I;)V

    new-instance p1, LOe/K1$a;

    iget-object v1, p0, LOe/K1;->c:LFe/c;

    invoke-direct {p1, v0, v1}, LOe/K1$a;-><init>(LBe/I;LFe/c;)V

    invoke-virtual {v0, p1}, LWe/m;->e(LDe/c;)V

    iget-object v0, p0, LOe/K1;->d:LBe/G;

    new-instance v1, LOe/K1$b;

    invoke-direct {v1, p0, p1}, LOe/K1$b;-><init>(LOe/K1;LOe/K1$a;)V

    invoke-interface {v0, v1}, LBe/G;->c(LBe/I;)V

    iget-object v0, p0, LOe/a;->b:LBe/G;

    invoke-interface {v0, p1}, LBe/G;->c(LBe/I;)V

    return-void
.end method
