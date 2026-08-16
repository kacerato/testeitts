.class public final LOe/T0;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/T0$a;
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
.field public final c:LFe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/B;LFe/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/B<",
            "TT;>;",
            "LFe/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/T0;->c:LFe/d;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LGe/h;

    invoke-direct {v0}, LGe/h;-><init>()V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    new-instance v1, LOe/T0$a;

    iget-object v2, p0, LOe/T0;->c:LFe/d;

    iget-object v3, p0, LOe/a;->b:LBe/G;

    invoke-direct {v1, p1, v2, v0, v3}, LOe/T0$a;-><init>(LBe/I;LFe/d;LGe/h;LBe/G;)V

    invoke-virtual {v1}, LOe/T0$a;->b()V

    return-void
.end method
