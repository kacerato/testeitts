.class public final LOe/m;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/m$b;,
        LOe/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "LOe/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final c:I

.field public final d:I

.field public final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;IILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;II",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput p2, p0, LOe/m;->c:I

    iput p3, p0, LOe/m;->d:I

    iput-object p4, p0, LOe/m;->e:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TU;>;)V"
        }
    .end annotation

    iget v0, p0, LOe/m;->d:I

    iget v1, p0, LOe/m;->c:I

    if-ne v0, v1, :cond_0

    new-instance v0, LOe/m$a;

    iget-object v2, p0, LOe/m;->e:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2}, LOe/m$a;-><init>(LBe/I;ILjava/util/concurrent/Callable;)V

    invoke-virtual {v0}, LOe/m$a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LOe/a;->b:LBe/G;

    invoke-interface {p1, v0}, LBe/G;->c(LBe/I;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v1, LOe/m$b;

    iget v2, p0, LOe/m;->c:I

    iget v3, p0, LOe/m;->d:I

    iget-object v4, p0, LOe/m;->e:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, LOe/m$b;-><init>(LBe/I;IILjava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, LBe/G;->c(LBe/I;)V

    :cond_1
    :goto_0
    return-void
.end method
