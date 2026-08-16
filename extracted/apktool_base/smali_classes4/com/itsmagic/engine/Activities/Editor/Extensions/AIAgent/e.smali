.class public final Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/o;


# static fields
.field public static final b:Lcom/google/gson/Gson;


# instance fields
.field public final a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->b:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toolObject"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "toolObject cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->b:Lcom/google/gson/Gson;

    const-string v1, "result"

    invoke-static {v1, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->k()Ljava/util/Map;

    move-result-object v1

    const-string v2, "parameters"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->b:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramsJsonString"
        }
    .end annotation

    const-string v0, "] result:"

    const-string v1, "<font color=\"yellow\">Sys.call["

    const-string v2, "] args:"

    const-string v3, "Tool call["

    :try_start_0
    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->g()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;

    move-result-object v4

    if-nez v4, :cond_0

    const-string p1, "ERROR: tool callback is missing"

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto/16 :goto_0

    :cond_0
    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    invoke-virtual {v4, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    iget-object v5, v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->v(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->p()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    iget-object v6, v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</font>\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->g()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->p()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</font>\n\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->v(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
