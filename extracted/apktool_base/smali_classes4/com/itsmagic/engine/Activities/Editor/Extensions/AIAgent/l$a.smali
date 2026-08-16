.class public final Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l;
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
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;-><init>()V

    return-void
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;Ljava/lang/String;ILk0/a;Ljava/lang/String;ILjava/lang/Object;)Lk0/h;
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/16 p2, 0x7d00

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;->d(Ljava/lang/String;ILk0/a;Ljava/lang/String;)Lk0/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lk0/f;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lk0/C;",
            ">;Z)",
            "Lk0/f;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    invoke-static {p2}, Lag/P;->Q3(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    invoke-static {p3}, Lag/P;->Q3(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "\nConversation JSON:\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\nUse this as the previous conversation history. Answer the latest user message sent after this context.\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lk0/f;

    sget-object v0, Lcom/google/ai/edge/litertlm/b;->b:Lcom/google/ai/edge/litertlm/b$a;

    invoke-virtual {v0, p2}, Lcom/google/ai/edge/litertlm/b$a;->b(Ljava/lang/String;)Lcom/google/ai/edge/litertlm/b;

    move-result-object v1

    new-instance p2, Lcom/google/ai/edge/litertlm/SamplerConfig;

    const-wide v4, 0x3fee666666666666L    # 0.95

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/16 v3, 0x40

    move-object v2, p2

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/ai/edge/litertlm/SamplerConfig;-><init>(IDDI)V

    const/16 v8, 0x62

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v3, p4

    move-object v4, p2

    move v5, p5

    invoke-direct/range {v0 .. v9}, Lk0/f;-><init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/x;)V

    return-object p3
.end method

.method public final b(ILcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;)Lk0/f;
    .locals 7
    .param p2    # Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "toolToChat"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/f;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;)Ljava/util/List;

    move-result-object v5

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/j;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lk0/f;

    move-result-object p1

    return-object p1
.end method

.method public final c(ILjava/lang/String;Ljava/lang/String;[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;)Lk0/f;
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p4, :cond_0

    const/4 p4, 0x0

    new-array p4, p4, [Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    :cond_0
    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    invoke-static {p4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/f;->c([Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    move-object p4, v4

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    xor-int/lit8 v5, p4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lk0/f;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;ILk0/a;Ljava/lang/String;)Lk0/h;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lk0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "modelPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backend"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDir"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lk0/h;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v9, 0x2c

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v10}, Lk0/h;-><init>(Ljava/lang/String;Lk0/a;Lk0/a;Lk0/a;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/x;)V

    return-object v0
.end method
