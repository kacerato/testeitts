.class public final Lag/s$b;
.super Lpf/b;
.source "SourceFile"

# interfaces
.implements Lag/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lag/s;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf/b<",
        "Lag/o;",
        ">;",
        "Lag/q;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lag/s;


# direct methods
.method public constructor <init>(Lag/s;)V
    .locals 0

    iput-object p1, p0, Lag/s$b;->b:Lag/s;

    invoke-direct {p0}, Lpf/b;-><init>()V

    return-void
.end method

.method public static synthetic d(Lag/s$b;I)Lag/o;
    .locals 0

    invoke-static {p0, p1}, Lag/s$b;->f(Lag/s$b;I)Lag/o;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lag/s$b;I)Lag/o;
    .locals 0

    invoke-virtual {p0, p1}, Lag/s$b;->get(I)Lag/o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, Lag/s$b;->b:Lag/s;

    invoke-static {v0}, Lag/s;->d(Lag/s;)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lag/o;

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lag/o;

    invoke-virtual {p0, p1}, Lag/s$b;->e(Lag/o;)Z

    move-result p1

    return p1
.end method

.method public bridge e(Lag/o;)Z
    .locals 0

    invoke-super {p0, p1}, Lpf/b;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Lag/o;
    .locals 3

    .line 1
    iget-object v0, p0, Lag/s$b;->b:Lag/s;

    invoke-static {v0}, Lag/s;->d(Lag/s;)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-static {v0, p1}, Lag/w;->d(Ljava/util/regex/MatchResult;I)LVf/l;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, LVf/l;->n()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 3
    new-instance v1, Lag/o;

    iget-object v2, p0, Lag/s$b;->b:Lag/s;

    invoke-static {v2}, Lag/s;->d(Lag/s;)Ljava/util/regex/MatchResult;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "group(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lag/o;-><init>(Ljava/lang/String;LVf/l;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public get(Ljava/lang/String;)Lag/o;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, LEf/n;->a:LEf/m;

    iget-object v1, p0, Lag/s$b;->b:Lag/s;

    invoke-static {v1}, Lag/s;->d(Lag/s;)Ljava/util/regex/MatchResult;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, LEf/m;->c(Ljava/util/regex/MatchResult;Ljava/lang/String;)Lag/o;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lag/o;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lpf/H;->K(Ljava/util/Collection;)LVf/l;

    move-result-object v0

    invoke-static {v0}, Lpf/S;->E1(Ljava/lang/Iterable;)LXf/m;

    move-result-object v0

    new-instance v1, Lag/t;

    invoke-direct {v1, p0}, Lag/t;-><init>(Lag/s$b;)V

    invoke-static {v0, v1}, LXf/K;->N1(LXf/m;LMf/l;)LXf/m;

    move-result-object v0

    invoke-interface {v0}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
