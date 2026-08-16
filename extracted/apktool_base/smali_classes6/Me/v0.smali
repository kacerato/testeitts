.class public final LMe/v0;
.super LBe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/v0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LBe/s<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "LBe/y<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;LFe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/y<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/s;-><init>()V

    iput-object p1, p0, LMe/v0;->b:Ljava/lang/Iterable;

    iput-object p2, p0, LMe/v0;->c:LFe/o;

    return-void
.end method


# virtual methods
.method public t1(LBe/v;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TR;>;)V"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [LBe/y;

    :try_start_0
    iget-object v1, p0, LMe/v0;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LBe/y;

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "One of the sources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, LGe/e;->g(Ljava/lang/Throwable;LBe/v;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    array-length v5, v0

    if-ne v3, v5, :cond_1

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LBe/y;

    :cond_1
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    invoke-static {p1}, LGe/e;->b(LBe/v;)V

    return-void

    :cond_3
    const/4 v1, 0x1

    if-ne v3, v1, :cond_4

    aget-object v0, v0, v2

    new-instance v1, LMe/W$a;

    new-instance v2, LMe/v0$a;

    invoke-direct {v2, p0}, LMe/v0$a;-><init>(LMe/v0;)V

    invoke-direct {v1, p1, v2}, LMe/W$a;-><init>(LBe/v;LFe/o;)V

    invoke-interface {v0, v1}, LBe/y;->d(LBe/v;)V

    return-void

    :cond_4
    new-instance v1, LMe/u0$b;

    iget-object v4, p0, LMe/v0;->c:LFe/o;

    invoke-direct {v1, p1, v3, v4}, LMe/u0$b;-><init>(LBe/v;ILFe/o;)V

    invoke-interface {p1, v1}, LBe/v;->e(LDe/c;)V

    :goto_1
    if-ge v2, v3, :cond_6

    invoke-virtual {v1}, LMe/u0$b;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    aget-object p1, v0, v2

    iget-object v4, v1, LMe/u0$b;->d:[LMe/u0$c;

    aget-object v4, v4, v2

    invoke-interface {p1, v4}, LBe/y;->d(LBe/v;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-void

    :goto_2
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LGe/e;->g(Ljava/lang/Throwable;LBe/v;)V

    return-void
.end method
