.class public final Lcom/google/ai/edge/litertlm/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ai/edge/litertlm/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ai/edge/litertlm/d$a;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/google/ai/edge/litertlm/d$a;Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/ai/edge/litertlm/d;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Lcom/google/ai/edge/litertlm/b;->b:Lcom/google/ai/edge/litertlm/b$a;

    invoke-virtual {p1}, Lcom/google/ai/edge/litertlm/b$a;->a()Lcom/google/ai/edge/litertlm/b;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    invoke-static {}, Lpf/o0;->z()Ljava/util/Map;

    move-result-object p3

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ai/edge/litertlm/d$a;->a(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/Map;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/Map;)Lcom/google/ai/edge/litertlm/d;
    .locals 2
    .param p1    # Lcom/google/ai/edge/litertlm/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "contents",
            "toolCalls",
            "channels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ai/edge/litertlm/b;",
            "Ljava/util/List<",
            "Lk0/w;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ai/edge/litertlm/d;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolCalls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channels"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/ai/edge/litertlm/d;

    sget-object v1, Lk0/t;->MODEL:Lk0/t;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/ai/edge/litertlm/d;-><init>(Lk0/t;Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/Map;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/ai/edge/litertlm/d;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/ai/edge/litertlm/b;->b:Lcom/google/ai/edge/litertlm/b$a;

    invoke-virtual {v0, p1}, Lcom/google/ai/edge/litertlm/b$a;->b(Ljava/lang/String;)Lcom/google/ai/edge/litertlm/b;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/google/ai/edge/litertlm/d$a;->c(Lcom/google/ai/edge/litertlm/d$a;Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Lcom/google/ai/edge/litertlm/d;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation runtime Lnf/o;
        message = "Use factory methods like user(), model() or Contents.of()."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/ai/edge/litertlm/d$a;->k(Ljava/lang/String;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/util/List;)Lcom/google/ai/edge/litertlm/d;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/ai/edge/litertlm/a;",
            ">;)",
            "Lcom/google/ai/edge/litertlm/d;"
        }
    .end annotation

    .annotation runtime Lnf/o;
        message = "Use factory methods like user(), model() or Contents.of()."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/ai/edge/litertlm/b;->b:Lcom/google/ai/edge/litertlm/b$a;

    invoke-virtual {v0, p1}, Lcom/google/ai/edge/litertlm/b$a;->c(Ljava/util/List;)Lcom/google/ai/edge/litertlm/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/ai/edge/litertlm/d$a;->j(Lcom/google/ai/edge/litertlm/b;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p1

    return-object p1
.end method

.method public final varargs f([Lcom/google/ai/edge/litertlm/a;)Lcom/google/ai/edge/litertlm/d;
    .locals 1
    .param p1    # [Lcom/google/ai/edge/litertlm/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .annotation runtime Lnf/o;
        message = "Use factory methods like user(), model() or Contents.of()."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/ai/edge/litertlm/b;->b:Lcom/google/ai/edge/litertlm/b$a;

    invoke-static {p1}, Lpf/A;->cz([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/ai/edge/litertlm/b$a;->c(Ljava/util/List;)Lcom/google/ai/edge/litertlm/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/ai/edge/litertlm/d$a;->j(Lcom/google/ai/edge/litertlm/b;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lcom/google/ai/edge/litertlm/b;)Lcom/google/ai/edge/litertlm/d;
    .locals 8
    .param p1    # Lcom/google/ai/edge/litertlm/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/ai/edge/litertlm/d;

    sget-object v2, Lk0/t;->SYSTEM:Lk0/t;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/ai/edge/litertlm/d;-><init>(Lk0/t;Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Lcom/google/ai/edge/litertlm/d;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/ai/edge/litertlm/b;->b:Lcom/google/ai/edge/litertlm/b$a;

    invoke-virtual {v0, p1}, Lcom/google/ai/edge/litertlm/b$a;->b(Ljava/lang/String;)Lcom/google/ai/edge/litertlm/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/ai/edge/litertlm/d$a;->g(Lcom/google/ai/edge/litertlm/b;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lcom/google/ai/edge/litertlm/b;)Lcom/google/ai/edge/litertlm/d;
    .locals 8
    .param p1    # Lcom/google/ai/edge/litertlm/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/ai/edge/litertlm/d;

    sget-object v2, Lk0/t;->TOOL:Lk0/t;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/ai/edge/litertlm/d;-><init>(Lk0/t;Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final j(Lcom/google/ai/edge/litertlm/b;)Lcom/google/ai/edge/litertlm/d;
    .locals 8
    .param p1    # Lcom/google/ai/edge/litertlm/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/ai/edge/litertlm/d;

    sget-object v2, Lk0/t;->USER:Lk0/t;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/ai/edge/litertlm/d;-><init>(Lk0/t;Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final k(Ljava/lang/String;)Lcom/google/ai/edge/litertlm/d;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/ai/edge/litertlm/b;->b:Lcom/google/ai/edge/litertlm/b$a;

    invoke-virtual {v0, p1}, Lcom/google/ai/edge/litertlm/b$a;->b(Ljava/lang/String;)Lcom/google/ai/edge/litertlm/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/ai/edge/litertlm/d$a;->j(Lcom/google/ai/edge/litertlm/b;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p1

    return-object p1
.end method
