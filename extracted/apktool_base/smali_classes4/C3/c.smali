.class public LC3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x7d

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v0, :cond_0

    if-lt v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/StopOnOrchestrator;

    const-string v0, "Failed to inspect prompt files: invalid response."

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/StopOnOrchestrator;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, LC3/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/StopOnOrchestrator;

    const-string v0, "Failed to inspect prompt files: invalid response."

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/StopOnOrchestrator;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/StopOnOrchestrator;

    const-string v0, "Failed to inspect prompt files: empty response."

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/StopOnOrchestrator;-><init>(Ljava/lang/String;)V

    throw p0
.end method
