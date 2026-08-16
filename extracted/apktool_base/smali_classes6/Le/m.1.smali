.class public final LLe/m;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/m$b;,
        LLe/m$c;,
        LLe/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "LLe/a<",
        "TT;TC;>;"
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:I

.field public final f:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;IILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;II",
            "Ljava/util/concurrent/Callable<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput p2, p0, LLe/m;->d:I

    iput p3, p0, LLe/m;->e:I

    iput-object p4, p0, LLe/m;->f:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TC;>;)V"
        }
    .end annotation

    iget v0, p0, LLe/m;->d:I

    iget v1, p0, LLe/m;->e:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, LLe/a;->c:LBe/l;

    new-instance v2, LLe/m$a;

    iget-object v3, p0, LLe/m;->f:Ljava/util/concurrent/Callable;

    invoke-direct {v2, p1, v0, v3}, LLe/m$a;-><init>(Lhn/c;ILjava/util/concurrent/Callable;)V

    invoke-virtual {v1, v2}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v1, LLe/m$c;

    iget v2, p0, LLe/m;->d:I

    iget v3, p0, LLe/m;->e:I

    iget-object v4, p0, LLe/m;->f:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, LLe/m$c;-><init>(Lhn/c;IILjava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v1, LLe/m$b;

    iget v2, p0, LLe/m;->d:I

    iget v3, p0, LLe/m;->e:I

    iget-object v4, p0, LLe/m;->f:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, LLe/m$b;-><init>(Lhn/c;IILjava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    :goto_0
    return-void
.end method
