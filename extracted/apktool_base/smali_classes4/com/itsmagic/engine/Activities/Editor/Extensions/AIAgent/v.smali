.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v$c;
    }
.end annotation


# static fields
.field public static final j:Lcom/google/gson/Gson;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public transient d:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;

.field public transient e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;

.field public transient f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public transient g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v$c;

.field public h:[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

.field public i:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->j:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->c:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->q()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "callback"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->c:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->a:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;

    .line 14
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->q()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "description",
            "callback"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->c:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;

    .line 9
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->q()V

    return-void
.end method

.method public static synthetic a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->x(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramsJsonString"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/google/gson/JsonObject;-><init>()V

    return-object p0
.end method

.method public static x(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "params",
            "key",
            "fallback"
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->j:Lcom/google/gson/Gson;

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object p2
.end method


# virtual methods
.method public varargs A([Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "specialists"
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->h:[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->h:[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parameterName"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v$b;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v$c;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "description",
            "required"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->d()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->m()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "type"

    const-string v3, "string"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "description"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->n()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->i:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->i:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v$c;

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v$c;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->h:[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    if-eqz v1, :cond_0

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->h:[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->f:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->d()V

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->f:Ljava/util/Map;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->f:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object v0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->f:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "object"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->f:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "properties"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramsJsonString"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->r(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    return-object p1

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v$c;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v$c;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "args"

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-static {v0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->x(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->j:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/Map;
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->f:Ljava/util/Map;

    return-object v0
.end method

.method public l()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->q()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;

    return-object v0
.end method

.method public final m()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->f:Ljava/util/Map;

    const-string v1, "properties"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->f:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->f:Ljava/util/Map;

    const-string v1, "required"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->f:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public o()[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->h:[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    return-object v0

    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    return-object v0
.end method

.method public p()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->i:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;

    return-object v0
.end method

.method public final q()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/e;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->d()V

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->b:Ljava/lang/String;

    return-void
.end method

.method public t(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->c:Ljava/lang/String;

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->a:Ljava/lang/String;

    return-void
.end method

.method public w(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toolToChat"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->i:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;

    return-void
.end method

.method public y(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "specialist"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->h:[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-ne v4, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public z()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v$c;

    return-void
.end method
