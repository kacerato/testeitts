.class public final LLe/Z1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/Z1$a;,
        LLe/Z1$c;,
        LLe/Z1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final d:[Lhn/b;
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhn/b<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Iterable;
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;Ljava/lang/Iterable;LFe/o;)V
    .locals 0
    .param p1    # LBe/l;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p3    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "*>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, LLe/Z1;->d:[Lhn/b;

    .line 7
    iput-object p2, p0, LLe/Z1;->e:Ljava/lang/Iterable;

    .line 8
    iput-object p3, p0, LLe/Z1;->f:LFe/o;

    return-void
.end method

.method public constructor <init>(LBe/l;[Lhn/b;LFe/o;)V
    .locals 0
    .param p1    # LBe/l;
        .annotation build LCe/f;
        .end annotation
    .end param
    .param p2    # [Lhn/b;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;[",
            "Lhn/b<",
            "*>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    .line 2
    iput-object p2, p0, LLe/Z1;->d:[Lhn/b;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, LLe/Z1;->e:Ljava/lang/Iterable;

    .line 4
    iput-object p3, p0, LLe/Z1;->f:LFe/o;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/Z1;->d:[Lhn/b;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Lhn/b;

    :try_start_0
    iget-object v1, p0, LLe/Z1;->e:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhn/b;

    array-length v4, v0

    if-ne v2, v4, :cond_0

    shr-int/lit8 v4, v2, 0x1

    add-int/2addr v4, v2

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhn/b;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v4, v2, 0x1

    aput-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    goto :goto_0

    :goto_2
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LUe/g;->b(Ljava/lang/Throwable;Lhn/c;)V

    return-void

    :cond_1
    array-length v2, v0

    :cond_2
    if-nez v2, :cond_3

    new-instance v0, LLe/C0;

    iget-object v1, p0, LLe/a;->c:LBe/l;

    new-instance v2, LLe/Z1$a;

    invoke-direct {v2, p0}, LLe/Z1$a;-><init>(LLe/Z1;)V

    invoke-direct {v0, v1, v2}, LLe/C0;-><init>(LBe/l;LFe/o;)V

    invoke-virtual {v0, p1}, LLe/C0;->m6(Lhn/c;)V

    return-void

    :cond_3
    new-instance v1, LLe/Z1$b;

    iget-object v3, p0, LLe/Z1;->f:LFe/o;

    invoke-direct {v1, p1, v3, v2}, LLe/Z1$b;-><init>(Lhn/c;LFe/o;I)V

    invoke-interface {p1, v1}, Lhn/c;->j(Lhn/d;)V

    invoke-virtual {v1, v0, v2}, LLe/Z1$b;->f([Lhn/b;I)V

    iget-object p1, p0, LLe/a;->c:LBe/l;

    invoke-virtual {p1, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
