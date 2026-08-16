.class public abstract LOm/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYm/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public E()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "LUm/v;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const-class v1, LNm/e;

    const-class v2, LNm/c;

    const-class v3, LNm/a;

    const-class v4, LNm/d;

    const-class v5, LNm/b;

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(LUm/v;)V
    .locals 1

    instance-of v0, p1, LNm/a;

    if-eqz v0, :cond_0

    check-cast p1, LNm/a;

    invoke-virtual {p0, p1}, LOm/c;->b(LNm/a;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LNm/d;

    if-eqz v0, :cond_1

    check-cast p1, LNm/d;

    invoke-virtual {p0, p1}, LOm/c;->e(LNm/d;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, LNm/b;

    if-eqz v0, :cond_2

    check-cast p1, LNm/b;

    invoke-virtual {p0, p1}, LOm/c;->c(LNm/b;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, LNm/e;

    if-eqz v0, :cond_3

    check-cast p1, LNm/e;

    invoke-virtual {p0, p1}, LOm/c;->f(LNm/e;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, LNm/c;

    if-eqz v0, :cond_4

    check-cast p1, LNm/c;

    invoke-virtual {p0, p1}, LOm/c;->d(LNm/c;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public abstract b(LNm/a;)V
.end method

.method public abstract c(LNm/b;)V
.end method

.method public abstract d(LNm/c;)V
.end method

.method public abstract e(LNm/d;)V
.end method

.method public abstract f(LNm/e;)V
.end method
