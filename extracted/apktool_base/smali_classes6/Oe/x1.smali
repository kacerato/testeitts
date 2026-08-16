.class public final LOe/x1;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/x1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;",
        "Laf/d<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final c:LBe/J;

.field public final d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(LBe/G;Ljava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p3, p0, LOe/x1;->c:LBe/J;

    iput-object p2, p0, LOe/x1;->d:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "Laf/d<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v1, LOe/x1$a;

    iget-object v2, p0, LOe/x1;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, LOe/x1;->c:LBe/J;

    invoke-direct {v1, p1, v2, v3}, LOe/x1$a;-><init>(LBe/I;Ljava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-interface {v0, v1}, LBe/G;->c(LBe/I;)V

    return-void
.end method
