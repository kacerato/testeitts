.class public final Lk0/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/ai/edge/litertlm/SamplerConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v0}, Lk0/u;-><init>(Lcom/google/ai/edge/litertlm/SamplerConfig;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/ai/edge/litertlm/SamplerConfig;)V
    .locals 0
    .param p1    # Lcom/google/ai/edge/litertlm/SamplerConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "samplerConfig"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/u;->a:Lcom/google/ai/edge/litertlm/SamplerConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/ai/edge/litertlm/SamplerConfig;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lk0/u;-><init>(Lcom/google/ai/edge/litertlm/SamplerConfig;)V

    return-void
.end method

.method public static synthetic c(Lk0/u;Lcom/google/ai/edge/litertlm/SamplerConfig;ILjava/lang/Object;)Lk0/u;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lk0/u;->a:Lcom/google/ai/edge/litertlm/SamplerConfig;

    :cond_0
    invoke-virtual {p0, p1}, Lk0/u;->b(Lcom/google/ai/edge/litertlm/SamplerConfig;)Lk0/u;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/ai/edge/litertlm/SamplerConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lk0/u;->a:Lcom/google/ai/edge/litertlm/SamplerConfig;

    return-object v0
.end method

.method public final b(Lcom/google/ai/edge/litertlm/SamplerConfig;)Lk0/u;
    .locals 1
    .param p1    # Lcom/google/ai/edge/litertlm/SamplerConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "samplerConfig"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lk0/u;

    invoke-direct {v0, p1}, Lk0/u;-><init>(Lcom/google/ai/edge/litertlm/SamplerConfig;)V

    return-object v0
.end method

.method public final d()Lcom/google/ai/edge/litertlm/SamplerConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lk0/u;->a:Lcom/google/ai/edge/litertlm/SamplerConfig;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
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
    instance-of v1, p1, Lk0/u;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk0/u;

    iget-object v1, p0, Lk0/u;->a:Lcom/google/ai/edge/litertlm/SamplerConfig;

    iget-object p1, p1, Lk0/u;->a:Lcom/google/ai/edge/litertlm/SamplerConfig;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lk0/u;->a:Lcom/google/ai/edge/litertlm/SamplerConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/ai/edge/litertlm/SamplerConfig;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lk0/u;->a:Lcom/google/ai/edge/litertlm/SamplerConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SessionConfig(samplerConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
