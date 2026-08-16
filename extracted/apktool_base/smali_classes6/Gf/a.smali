.class public LGf/a;
.super LFf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGf/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LFf/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()LTf/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, LGf/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LUf/a;

    invoke-direct {v0}, LUf/a;-><init>()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, LEf/m;->b()LTf/f;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c(Ljava/util/regex/MatchResult;Ljava/lang/String;)Lag/o;
    .locals 4
    .param p1    # Ljava/util/regex/MatchResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "matchResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/util/regex/Matcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    new-instance v0, LVf/l;

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->start(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->end(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v2, v3}, LVf/l;-><init>(II)V

    invoke-virtual {v0}, LVf/l;->n()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    new-instance v1, Lag/o;

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "group(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lag/o;-><init>(Ljava/lang/String;LVf/l;)V

    :cond_1
    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Retrieving groups by name is not supported on this platform."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()Lkotlin/time/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, LGf/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LGf/a$b;

    invoke-direct {v0}, LGf/a$b;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, LGf/a$c;

    invoke-direct {v0}, LGf/a$c;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final f(I)Z
    .locals 1

    sget-object v0, LGf/a$a;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
