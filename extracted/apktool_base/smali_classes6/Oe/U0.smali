.class public final LOe/U0;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/U0$a;
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
.field public final c:LFe/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final d:J


# direct methods
.method public constructor <init>(LBe/B;JLFe/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/B<",
            "TT;>;J",
            "LFe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p4, p0, LOe/U0;->c:LFe/r;

    iput-wide p2, p0, LOe/U0;->d:J

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

    new-instance v5, LGe/h;

    invoke-direct {v5}, LGe/h;-><init>()V

    invoke-interface {p1, v5}, LBe/I;->e(LDe/c;)V

    new-instance v7, LOe/U0$a;

    iget-wide v2, p0, LOe/U0;->d:J

    iget-object v4, p0, LOe/U0;->c:LFe/r;

    iget-object v6, p0, LOe/a;->b:LBe/G;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, LOe/U0$a;-><init>(LBe/I;JLFe/r;LGe/h;LBe/G;)V

    invoke-virtual {v7}, LOe/U0$a;->b()V

    return-void
.end method
