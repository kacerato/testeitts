.class public final LOe/X;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/X$a;,
        LOe/X$b;
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
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(LBe/G;LFe/o;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/X;->c:LFe/o;

    iput-boolean p3, p0, LOe/X;->d:Z

    iput p4, p0, LOe/X;->e:I

    iput p5, p0, LOe/X;->f:I

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TU;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/a;->b:LBe/G;

    iget-object v1, p0, LOe/X;->c:LFe/o;

    invoke-static {v0, p1, v1}, LOe/Y0;->b(LBe/G;LBe/I;LFe/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v7, LOe/X$b;

    iget-object v3, p0, LOe/X;->c:LFe/o;

    iget-boolean v4, p0, LOe/X;->d:Z

    iget v5, p0, LOe/X;->e:I

    iget v6, p0, LOe/X;->f:I

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, LOe/X$b;-><init>(LBe/I;LFe/o;ZII)V

    invoke-interface {v0, v7}, LBe/G;->c(LBe/I;)V

    return-void
.end method
