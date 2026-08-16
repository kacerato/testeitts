.class public final LOe/G1;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/G1$a;,
        LOe/G1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;",
        "LBe/B<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final c:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "TB;>;"
        }
    .end annotation
.end field

.field public final d:I


# direct methods
.method public constructor <init>(LBe/G;LBe/G;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LBe/G<",
            "TB;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/G1;->c:LBe/G;

    iput p3, p0, LOe/G1;->d:I

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "LBe/B<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v0, LOe/G1$b;

    iget v1, p0, LOe/G1;->d:I

    invoke-direct {v0, p1, v1}, LOe/G1$b;-><init>(LBe/I;I)V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    iget-object p1, p0, LOe/G1;->c:LBe/G;

    iget-object v1, v0, LOe/G1$b;->d:LOe/G1$a;

    invoke-interface {p1, v1}, LBe/G;->c(LBe/I;)V

    iget-object p1, p0, LOe/a;->b:LBe/G;

    invoke-interface {p1, v0}, LBe/G;->c(LBe/I;)V

    return-void
.end method
