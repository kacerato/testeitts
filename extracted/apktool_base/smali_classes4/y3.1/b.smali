.class public Ly3/b;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly3/b$b;
    }
.end annotation


# static fields
.field public static final k:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Ly3/b;->k:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Ly3/b$a;

    invoke-direct {v0}, Ly3/b$a;-><init>()V

    const-string v1, "io.create_file"

    const-string v2, "Creates a new file inside the current project."

    invoke-direct {p0, v1, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;)V

    const-string v0, "Project-relative file path to create. Also accepts a single-key JSON object where the key is the path."

    const/4 v1, 0x1

    const-string v2, "path"

    invoke-virtual {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "Optional initial text content for the file. When using a single-key JSON object, the value is treated as text."

    const/4 v1, 0x0

    const-string v2, "text"

    invoke-virtual {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->JAVA_CODING:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->LUA_CODING:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->LEVEL_EDITION:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    filled-new-array {v0, v1, v2}, [Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->A([Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)V

    return-void
.end method

.method public static synthetic C(Ljava/lang/String;)Ly3/b$b;
    .locals 0

    invoke-static {p0}, Ly3/b;->D(Ljava/lang/String;)Ly3/b$b;

    move-result-object p0

    return-object p0
.end method

.method public static D(Ljava/lang/String;)Ly3/b$b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    const-string v0, "text"

    const-string v1, "path"

    new-instance v2, Ly3/b$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ly3/b$b;-><init>(Ly3/b$a;)V

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v4, "{"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_1

    iput-object p0, v2, Ly3/b$b;->a:Ljava/lang/String;

    iput-object v5, v2, Ly3/b$b;->b:Ljava/lang/String;

    return-object v2

    :cond_1
    :try_start_0
    sget-object v4, Ly3/b;->k:Lcom/google/gson/Gson;

    const-class v6, Ly3/b$b;

    invoke-virtual {v4, p0, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly3/b$b;

    if-eqz v4, :cond_2

    iget-object v6, v4, Ly3/b$b;->a:Ljava/lang/String;

    iput-object v6, v2, Ly3/b$b;->a:Ljava/lang/String;

    iget-object v4, v4, Ly3/b$b;->b:Ljava/lang/String;

    iput-object v4, v2, Ly3/b$b;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    iget-object v4, v2, Ly3/b$b;->a:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    return-object v2

    :cond_3
    :try_start_1
    sget-object v4, Ly3/b;->k:Lcom/google/gson/Gson;

    const-class v6, Lcom/google/gson/JsonObject;

    invoke-virtual {v4, p0, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Ly3/b$b;->a:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, v2, Ly3/b$b;->b:Ljava/lang/String;

    :cond_8
    iget-object v0, v2, Ly3/b$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    return-object v2

    :cond_9
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Ly3/b$b;->a:Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_a
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonElement;

    invoke-virtual {v4, p0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    iput-object p0, v2, Ly3/b$b;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    nop

    :catch_1
    :cond_b
    :goto_3
    return-object v2
.end method
