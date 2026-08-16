.class public final LMe/Y;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/Y$a;,
        LMe/Y$c;,
        LMe/Y$d;,
        LMe/Y$b;
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
.field public final c:[LBe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LBe/y<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([LBe/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LBe/y<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LMe/Y;->c:[LBe/y;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LMe/Y;->c:[LBe/y;

    array-length v1, v0

    invoke-static {}, LBe/l;->a0()I

    move-result v2

    if-gt v1, v2, :cond_0

    new-instance v2, LMe/Y$c;

    invoke-direct {v2, v1}, LMe/Y$c;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v2, LMe/Y$a;

    invoke-direct {v2}, LMe/Y$a;-><init>()V

    :goto_0
    new-instance v3, LMe/Y$b;

    invoke-direct {v3, p1, v1, v2}, LMe/Y$b;-><init>(Lhn/c;ILMe/Y$d;)V

    invoke-interface {p1, v3}, Lhn/c;->j(Lhn/d;)V

    iget-object p1, v3, LMe/Y$b;->g:Lio/reactivex/internal/util/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v3}, LMe/Y$b;->p()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v4, v3}, LBe/y;->d(LBe/v;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
