.class public final LOe/O;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/O$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final d:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final e:LFe/a;

.field public final f:LFe/a;


# direct methods
.method public constructor <init>(LBe/G;LFe/g;LFe/g;LFe/a;LFe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            "LFe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/O;->c:LFe/g;

    iput-object p3, p0, LOe/O;->d:LFe/g;

    iput-object p4, p0, LOe/O;->e:LFe/a;

    iput-object p5, p0, LOe/O;->f:LFe/a;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v7, LOe/O$a;

    iget-object v3, p0, LOe/O;->c:LFe/g;

    iget-object v4, p0, LOe/O;->d:LFe/g;

    iget-object v5, p0, LOe/O;->e:LFe/a;

    iget-object v6, p0, LOe/O;->f:LFe/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, LOe/O$a;-><init>(LBe/I;LFe/g;LFe/g;LFe/a;LFe/a;)V

    invoke-interface {v0, v7}, LBe/G;->c(LBe/I;)V

    return-void
.end method
