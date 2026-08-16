.class public final LOe/a0;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/a0$a;
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
            "LBe/y<",
            "+TR;>;>;"
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
            "LBe/y<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/a0;->c:LFe/o;

    iput-boolean p3, p0, LOe/a0;->d:Z

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

    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v1, LOe/a0$a;

    iget-object v2, p0, LOe/a0;->c:LFe/o;

    iget-boolean v3, p0, LOe/a0;->d:Z

    invoke-direct {v1, p1, v2, v3}, LOe/a0$a;-><init>(LBe/I;LFe/o;Z)V

    invoke-interface {v0, v1}, LBe/G;->c(LBe/I;)V

    return-void
.end method
