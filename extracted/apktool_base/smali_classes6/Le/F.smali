.class public final LLe/F;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/F$f;,
        LLe/F$c;,
        LLe/F$e;,
        LLe/F$d;,
        LLe/F$h;,
        LLe/F$g;,
        LLe/F$b;,
        LLe/F$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:LBe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:LBe/b;


# direct methods
.method public constructor <init>(LBe/o;LBe/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/o<",
            "TT;>;",
            "LBe/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LLe/F;->c:LBe/o;

    iput-object p2, p0, LLe/F;->d:LBe/b;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    sget-object v0, LLe/F$a;->a:[I

    iget-object v1, p0, LLe/F;->d:LBe/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, LLe/F$c;

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    invoke-direct {v0, p1, v1}, LLe/F$c;-><init>(Lhn/c;I)V

    goto :goto_0

    :cond_0
    new-instance v0, LLe/F$f;

    invoke-direct {v0, p1}, LLe/F$f;-><init>(Lhn/c;)V

    goto :goto_0

    :cond_1
    new-instance v0, LLe/F$d;

    invoke-direct {v0, p1}, LLe/F$d;-><init>(Lhn/c;)V

    goto :goto_0

    :cond_2
    new-instance v0, LLe/F$e;

    invoke-direct {v0, p1}, LLe/F$e;-><init>(Lhn/c;)V

    goto :goto_0

    :cond_3
    new-instance v0, LLe/F$g;

    invoke-direct {v0, p1}, LLe/F$g;-><init>(Lhn/c;)V

    :goto_0
    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    :try_start_0
    iget-object p1, p0, LLe/F;->c:LBe/o;

    invoke-interface {p1, v0}, LBe/o;->subscribe(LBe/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, LLe/F$b;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
