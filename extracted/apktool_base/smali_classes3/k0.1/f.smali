.class public final Lk0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/ai/edge/litertlm/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ai/edge/litertlm/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk0/C;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/google/ai/edge/litertlm/SamplerConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Z

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk0/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10
    .annotation build LLf/k;
    .end annotation

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v9}, Lk0/f;-><init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/ai/edge/litertlm/b;)V
    .locals 10
    .param p1    # Lcom/google/ai/edge/litertlm/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "systemInstruction"
        }
    .end annotation

    const/16 v8, 0x7e

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v9}, Lk0/f;-><init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;)V
    .locals 11
    .param p1    # Lcom/google/ai/edge/litertlm/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "systemInstruction",
            "initialMessages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ai/edge/litertlm/b;",
            "Ljava/util/List<",
            "Lcom/google/ai/edge/litertlm/d;",
            ">;)V"
        }
    .end annotation

    .line 3
    const-string v0, "initialMessages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x7c

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lk0/f;-><init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .param p1    # Lcom/google/ai/edge/litertlm/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "systemInstruction",
            "initialMessages",
            "tools"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ai/edge/litertlm/b;",
            "Ljava/util/List<",
            "Lcom/google/ai/edge/litertlm/d;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lk0/C;",
            ">;)V"
        }
    .end annotation

    .line 4
    const-string v0, "initialMessages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tools"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x78

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Lk0/f;-><init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;)V
    .locals 11
    .param p1    # Lcom/google/ai/edge/litertlm/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/ai/edge/litertlm/SamplerConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "systemInstruction",
            "initialMessages",
            "tools",
            "samplerConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ai/edge/litertlm/b;",
            "Ljava/util/List<",
            "Lcom/google/ai/edge/litertlm/d;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lk0/C;",
            ">;",
            "Lcom/google/ai/edge/litertlm/SamplerConfig;",
            ")V"
        }
    .end annotation

    .line 5
    const-string v0, "initialMessages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tools"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x70

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v10}, Lk0/f;-><init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;Z)V
    .locals 11
    .param p1    # Lcom/google/ai/edge/litertlm/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/ai/edge/litertlm/SamplerConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "systemInstruction",
            "initialMessages",
            "tools",
            "samplerConfig",
            "automaticToolCalling"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ai/edge/litertlm/b;",
            "Ljava/util/List<",
            "Lcom/google/ai/edge/litertlm/d;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lk0/C;",
            ">;",
            "Lcom/google/ai/edge/litertlm/SamplerConfig;",
            "Z)V"
        }
    .end annotation

    .line 6
    const-string v0, "initialMessages"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tools"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x60

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lk0/f;-><init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;)V
    .locals 11
    .param p1    # Lcom/google/ai/edge/litertlm/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/ai/edge/litertlm/SamplerConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "systemInstruction",
            "initialMessages",
            "tools",
            "samplerConfig",
            "automaticToolCalling",
            "channels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ai/edge/litertlm/b;",
            "Ljava/util/List<",
            "Lcom/google/ai/edge/litertlm/d;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lk0/C;",
            ">;",
            "Lcom/google/ai/edge/litertlm/SamplerConfig;",
            "Z",
            "Ljava/util/List<",
            "Lk0/d;",
            ">;)V"
        }
    .end annotation

    .line 7
    const-string v0, "initialMessages"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tools"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v10}, Lk0/f;-><init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/google/ai/edge/litertlm/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/ai/edge/litertlm/SamplerConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "systemInstruction",
            "initialMessages",
            "tools",
            "samplerConfig",
            "automaticToolCalling",
            "channels",
            "extraContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ai/edge/litertlm/b;",
            "Ljava/util/List<",
            "Lcom/google/ai/edge/litertlm/d;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lk0/C;",
            ">;",
            "Lcom/google/ai/edge/litertlm/SamplerConfig;",
            "Z",
            "Ljava/util/List<",
            "Lk0/d;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "initialMessages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tools"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraContext"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lk0/f;->a:Lcom/google/ai/edge/litertlm/b;

    .line 10
    iput-object p2, p0, Lk0/f;->b:Ljava/util/List;

    .line 11
    iput-object p3, p0, Lk0/f;->c:Ljava/util/List;

    .line 12
    iput-object p4, p0, Lk0/f;->d:Lcom/google/ai/edge/litertlm/SamplerConfig;

    .line 13
    iput-boolean p5, p0, Lk0/f;->e:Z

    .line 14
    iput-object p6, p0, Lk0/f;->f:Ljava/util/List;

    .line 15
    iput-object p7, p0, Lk0/f;->g:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/x;)V
    .locals 5

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p9, v0

    goto :goto_0

    :cond_0
    move-object p9, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    .line 16
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p2

    :cond_1
    move-object v1, p2

    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    .line 17
    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object p3

    :cond_2
    move-object v2, p3

    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_1

    :cond_3
    move-object v3, p4

    :goto_1
    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x1

    :cond_4
    move v4, p5

    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, p6

    :goto_2
    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_6

    .line 18
    invoke-static {}, Lpf/o0;->z()Ljava/util/Map;

    move-result-object p7

    :cond_6
    move-object p8, p7

    move-object p1, p0

    move-object p2, p9

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move p6, v4

    move-object p7, v0

    .line 19
    invoke-direct/range {p1 .. p8}, Lk0/f;-><init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic i(Lk0/f;Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;Ljava/util/Map;ILjava/lang/Object;)Lk0/f;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lk0/f;->a:Lcom/google/ai/edge/litertlm/b;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lk0/f;->b:Ljava/util/List;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lk0/f;->c:Ljava/util/List;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lk0/f;->d:Lcom/google/ai/edge/litertlm/SamplerConfig;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lk0/f;->e:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lk0/f;->f:Ljava/util/List;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lk0/f;->g:Ljava/util/Map;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lk0/f;->h(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;Ljava/util/Map;)Lk0/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/ai/edge/litertlm/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lk0/f;->a:Lcom/google/ai/edge/litertlm/b;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/ai/edge/litertlm/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lk0/f;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk0/C;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lk0/f;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d()Lcom/google/ai/edge/litertlm/SamplerConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lk0/f;->d:Lcom/google/ai/edge/litertlm/SamplerConfig;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lk0/f;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk0/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk0/f;

    iget-object v1, p0, Lk0/f;->a:Lcom/google/ai/edge/litertlm/b;

    iget-object v3, p1, Lk0/f;->a:Lcom/google/ai/edge/litertlm/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lk0/f;->b:Ljava/util/List;

    iget-object v3, p1, Lk0/f;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lk0/f;->c:Ljava/util/List;

    iget-object v3, p1, Lk0/f;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lk0/f;->d:Lcom/google/ai/edge/litertlm/SamplerConfig;

    iget-object v3, p1, Lk0/f;->d:Lcom/google/ai/edge/litertlm/SamplerConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lk0/f;->e:Z

    iget-boolean v3, p1, Lk0/f;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lk0/f;->f:Ljava/util/List;

    iget-object v3, p1, Lk0/f;->f:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lk0/f;->g:Ljava/util/Map;

    iget-object p1, p1, Lk0/f;->g:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk0/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lk0/f;->f:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lk0/f;->g:Ljava/util/Map;

    return-object v0
.end method

.method public final h(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;Ljava/util/Map;)Lk0/f;
    .locals 9
    .param p1    # Lcom/google/ai/edge/litertlm/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/ai/edge/litertlm/SamplerConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "systemInstruction",
            "initialMessages",
            "tools",
            "samplerConfig",
            "automaticToolCalling",
            "channels",
            "extraContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ai/edge/litertlm/b;",
            "Ljava/util/List<",
            "Lcom/google/ai/edge/litertlm/d;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lk0/C;",
            ">;",
            "Lcom/google/ai/edge/litertlm/SamplerConfig;",
            "Z",
            "Ljava/util/List<",
            "Lk0/d;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lk0/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "initialMessages"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tools"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraContext"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lk0/f;

    move-object v1, v0

    move-object v2, p1

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lk0/f;-><init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;Ljava/util/Map;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lk0/f;->a:Lcom/google/ai/edge/litertlm/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lk0/f;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lk0/f;->c:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lk0/f;->d:Lcom/google/ai/edge/litertlm/SamplerConfig;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/google/ai/edge/litertlm/SamplerConfig;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lk0/f;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lk0/f;->f:Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lk0/f;->g:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lk0/f;->e:Z

    return v0
.end method

.method public final k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk0/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lk0/f;->f:Ljava/util/List;

    return-object v0
.end method

.method public final l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lk0/f;->g:Ljava/util/Map;

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/ai/edge/litertlm/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lk0/f;->b:Ljava/util/List;

    return-object v0
.end method

.method public final n()Lcom/google/ai/edge/litertlm/SamplerConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lk0/f;->d:Lcom/google/ai/edge/litertlm/SamplerConfig;

    return-object v0
.end method

.method public final o()Lcom/google/ai/edge/litertlm/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lk0/f;->a:Lcom/google/ai/edge/litertlm/b;

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk0/C;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lk0/f;->c:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lk0/f;->a:Lcom/google/ai/edge/litertlm/b;

    iget-object v1, p0, Lk0/f;->b:Ljava/util/List;

    iget-object v2, p0, Lk0/f;->c:Ljava/util/List;

    iget-object v3, p0, Lk0/f;->d:Lcom/google/ai/edge/litertlm/SamplerConfig;

    iget-boolean v4, p0, Lk0/f;->e:Z

    iget-object v5, p0, Lk0/f;->f:Ljava/util/List;

    iget-object v6, p0, Lk0/f;->g:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConversationConfig(systemInstruction="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", initialMessages="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", tools="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", samplerConfig="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", automaticToolCalling="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", channels="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", extraContext="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
