.class public final LOe/D;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/D$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;LFe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "TU;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/D;->c:LFe/o;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v1, LOe/D$a;

    new-instance v2, LWe/m;

    invoke-direct {v2, p1}, LWe/m;-><init>(LBe/I;)V

    iget-object p1, p0, LOe/D;->c:LFe/o;

    invoke-direct {v1, v2, p1}, LOe/D$a;-><init>(LBe/I;LFe/o;)V

    invoke-interface {v0, v1}, LBe/G;->c(LBe/I;)V

    return-void
.end method
