.class public final Lpg/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LMf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/q<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lpg/o$a;->b:Lpg/o$a;

    sput-object v0, Lpg/o;->a:LMf/q;

    new-instance v0, Lmg/T;

    const-string v1, "STATE_REG"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lpg/o;->f:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "STATE_COMPLETED"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lpg/o;->g:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "STATE_CANCELLED"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lpg/o;->h:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "NO_RESULT"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lpg/o;->i:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "PARAM_CLAUSE_0"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lpg/o;->j:Lmg/T;

    return-void
.end method

.method public static synthetic a()V
    .locals 0
    .annotation build Leg/F0;
    .end annotation

    return-void
.end method

.method public static synthetic b()V
    .locals 0
    .annotation build Leg/F0;
    .end annotation

    return-void
.end method

.method public static synthetic c()V
    .locals 0
    .annotation build Leg/F0;
    .end annotation

    return-void
.end method

.method public static final d(I)Lpg/r;
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lpg/r;->ALREADY_SELECTED:Lpg/r;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected internal result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lpg/r;->CANCELLED:Lpg/r;

    goto :goto_0

    :cond_2
    sget-object p0, Lpg/r;->REREGISTER:Lpg/r;

    goto :goto_0

    :cond_3
    sget-object p0, Lpg/r;->SUCCESSFUL:Lpg/r;

    :goto_0
    return-object p0
.end method

.method public static final synthetic e(I)Lpg/r;
    .locals 0

    invoke-static {p0}, Lpg/o;->d(I)Lpg/r;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f()LMf/q;
    .locals 1

    sget-object v0, Lpg/o;->a:LMf/q;

    return-object v0
.end method

.method public static final synthetic g()Lmg/T;
    .locals 1

    sget-object v0, Lpg/o;->i:Lmg/T;

    return-object v0
.end method

.method public static final synthetic h()Lmg/T;
    .locals 1

    sget-object v0, Lpg/o;->h:Lmg/T;

    return-object v0
.end method

.method public static final synthetic i()Lmg/T;
    .locals 1

    sget-object v0, Lpg/o;->g:Lmg/T;

    return-object v0
.end method

.method public static final synthetic j()Lmg/T;
    .locals 1

    sget-object v0, Lpg/o;->f:Lmg/T;

    return-object v0
.end method

.method public static final synthetic k(Leg/p;LMf/l;)Z
    .locals 0

    invoke-static {p0, p1}, Lpg/o;->o(Leg/p;LMf/l;)Z

    move-result p0

    return p0
.end method

.method public static final l()Lmg/T;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lpg/o;->j:Lmg/T;

    return-object v0
.end method

.method public static final m(LMf/l;Lyf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/l<",
            "-",
            "Lpg/c<",
            "-TR;>;",
            "Lnf/P0;",
            ">;",
            "Lyf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lpg/l;

    invoke-interface {p1}, Lyf/f;->getContext()Lyf/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lpg/l;-><init>(Lyf/j;)V

    invoke-interface {p0, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lpg/l;->X(Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final n(LMf/l;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/l<",
            "-",
            "Lpg/c<",
            "-TR;>;",
            "Lnf/P0;",
            ">;",
            "Lyf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p0, Lpg/l;

    const/4 p0, 0x3

    invoke-static {p0}, Lkotlin/jvm/internal/J;->e(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final o(Leg/p;LMf/l;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/p<",
            "-",
            "Lnf/P0;",
            ">;",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lnf/P0;->a:Lnf/P0;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Leg/p;->k(Ljava/lang/Object;Ljava/lang/Object;LMf/l;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Leg/p;->B(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
