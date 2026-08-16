.class public final LOe/b1;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/b1$b;,
        LOe/b1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/B<",
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

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-object p1, p0, LOe/b1;->b:LBe/G;

    iput-object p2, p0, LOe/b1;->c:LBe/G;

    iput-object p3, p0, LOe/b1;->d:LFe/d;

    iput p4, p0, LOe/b1;->e:I

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v6, LOe/b1$a;

    iget v2, p0, LOe/b1;->e:I

    iget-object v3, p0, LOe/b1;->b:LBe/G;

    iget-object v4, p0, LOe/b1;->c:LBe/G;

    iget-object v5, p0, LOe/b1;->d:LFe/d;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, LOe/b1$a;-><init>(LBe/I;ILBe/G;LBe/G;LFe/d;)V

    invoke-interface {p1, v6}, LBe/I;->e(LDe/c;)V

    invoke-virtual {v6}, LOe/b1$a;->e()V

    return-void
.end method
