.class public final Lcom/google/ai/edge/litertlm/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ai/edge/litertlm/b;
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
    invoke-direct {p0}, Lcom/google/ai/edge/litertlm/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ai/edge/litertlm/b;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/google/ai/edge/litertlm/b;

    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ai/edge/litertlm/b;-><init>(Ljava/util/List;Lkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/ai/edge/litertlm/b;
    .locals 3
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

    new-instance v1, Lcom/google/ai/edge/litertlm/a$e;

    invoke-direct {v1, p1}, Lcom/google/ai/edge/litertlm/a$e;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/google/ai/edge/litertlm/a;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {v0, p1}, Lcom/google/ai/edge/litertlm/b$a;->d([Lcom/google/ai/edge/litertlm/a;)Lcom/google/ai/edge/litertlm/b;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/List;)Lcom/google/ai/edge/litertlm/b;
    .locals 2
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
            "Lcom/google/ai/edge/litertlm/b;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/ai/edge/litertlm/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/ai/edge/litertlm/b;-><init>(Ljava/util/List;Lkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final varargs d([Lcom/google/ai/edge/litertlm/a;)Lcom/google/ai/edge/litertlm/b;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/ai/edge/litertlm/b;->b:Lcom/google/ai/edge/litertlm/b$a;

    invoke-static {p1}, Lpf/A;->cz([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/ai/edge/litertlm/b$a;->c(Ljava/util/List;)Lcom/google/ai/edge/litertlm/b;

    move-result-object p1

    return-object p1
.end method
