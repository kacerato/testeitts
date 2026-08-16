.class public final LOe/w;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
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

.field public final d:Lio/reactivex/internal/util/j;

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(LBe/G;LFe/o;Lio/reactivex/internal/util/j;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;",
            "Lio/reactivex/internal/util/j;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/w;->c:LFe/o;

    iput-object p3, p0, LOe/w;->d:Lio/reactivex/internal/util/j;

    iput p4, p0, LOe/w;->e:I

    iput p5, p0, LOe/w;->f:I

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v7, LOe/w$a;

    iget-object v3, p0, LOe/w;->c:LFe/o;

    iget v4, p0, LOe/w;->e:I

    iget v5, p0, LOe/w;->f:I

    iget-object v6, p0, LOe/w;->d:Lio/reactivex/internal/util/j;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, LOe/w$a;-><init>(LBe/I;LFe/o;IILio/reactivex/internal/util/j;)V

    invoke-interface {v0, v7}, LBe/G;->c(LBe/I;)V

    return-void
.end method
