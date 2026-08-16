.class public LJAVARuntime/Json;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Serializer"
    }
.end annotation


# instance fields
.field private transient gson:Lcom/google/gson/Gson;

.field private transient ignorePrivateFields:Z

.field private transient ignoreProtectedFields:Z

.field private transient ignorePublicFields:Z

.field private transient lenient:Z

.field private transient prettyPrinting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LJAVARuntime/Json;->prettyPrinting:Z

    iput-boolean v0, p0, LJAVARuntime/Json;->lenient:Z

    iput-boolean v0, p0, LJAVARuntime/Json;->ignorePrivateFields:Z

    iput-boolean v0, p0, LJAVARuntime/Json;->ignoreProtectedFields:Z

    iput-boolean v0, p0, LJAVARuntime/Json;->ignorePublicFields:Z

    return-void
.end method

.method private static addExclusion(Lcom/google/gson/GsonBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gsonBuilder"
        }
    .end annotation

    new-instance v0, LJAVARuntime/Json$5;

    invoke-direct {v0}, LJAVARuntime/Json$5;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gson/GsonBuilder;->addSerializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    return-void
.end method

.method private static addSerializators(Lcom/google/gson/GsonBuilder;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gsonBuilder"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Ld8/j;->k0()I

    move-result v2

    const-class v3, LJAVARuntime/JsonSerializer;

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Ld8/j;->j0(I)Le8/c;

    move-result-object v2

    invoke-virtual {v2}, Le8/c;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Le8/c;->a()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, v3, :cond_0

    invoke-virtual {v2}, Le8/c;->a()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, LJAVARuntime/Json$1;

    invoke-direct {v4}, LJAVARuntime/Json$1;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    invoke-virtual {v2}, Le8/c;->a()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, LJAVARuntime/Json$2;

    invoke-direct {v4, v2}, LJAVARuntime/Json$2;-><init>(Le8/c;)V

    invoke-virtual {p0, v3, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {}, Ld8/j;->K0()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-static {v0}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v1

    invoke-virtual {v1}, Ld8/r;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ld8/r;->a()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Ld8/r;->a()Ljava/lang/Class;

    move-result-object v2

    new-instance v4, LJAVARuntime/Json$3;

    invoke-direct {v4}, LJAVARuntime/Json$3;-><init>()V

    invoke-virtual {p0, v2, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    invoke-virtual {v1}, Ld8/r;->a()Ljava/lang/Class;

    move-result-object v2

    new-instance v4, LJAVARuntime/Json$4;

    invoke-direct {v4, v1}, LJAVARuntime/Json$4;-><init>(Ld8/r;)V

    invoke-virtual {p0, v2, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private buildGson()V
    .locals 4
    .annotation runtime LH6/g;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Json;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;

    invoke-static {v0}, LJAVARuntime/Json;->addSerializators(Lcom/google/gson/GsonBuilder;)V

    invoke-static {v0}, LJAVARuntime/Json;->addExclusion(Lcom/google/gson/GsonBuilder;)V

    iget-boolean v1, p0, LJAVARuntime/Json;->prettyPrinting:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    :cond_0
    iget-boolean v1, p0, LJAVARuntime/Json;->lenient:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    :cond_1
    iget-boolean v1, p0, LJAVARuntime/Json;->ignorePrivateFields:Z

    if-eqz v1, :cond_2

    iget-boolean v2, p0, LJAVARuntime/Json;->ignoreProtectedFields:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, LJAVARuntime/Json;->ignorePublicFields:Z

    if-eqz v2, :cond_2

    const/16 v1, 0x8f

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, LJAVARuntime/Json;->ignorePublicFields:Z

    if-eqz v2, :cond_3

    iget-boolean v3, p0, LJAVARuntime/Json;->ignoreProtectedFields:Z

    if-eqz v3, :cond_3

    const/16 v1, 0x8d

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    const/16 v1, 0x8b

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    iget-boolean v3, p0, LJAVARuntime/Json;->ignoreProtectedFields:Z

    if-eqz v3, :cond_5

    const/16 v1, 0x8e

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    const/16 v1, 0x8a

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, LJAVARuntime/Json;->ignoreProtectedFields:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x8c

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_8

    const/16 v1, 0x89

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    :cond_8
    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, LJAVARuntime/Json;->gson:Lcom/google/gson/Gson;

    :cond_9
    return-void
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "json",
            "classType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "json",
            "classType"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, LJAVARuntime/Json;->fromJson(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "json",
            "classType",
            "lenient"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "json",
            "classType",
            "lenient"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;

    .line 4
    invoke-static {v0}, LJAVARuntime/Json;->addSerializators(Lcom/google/gson/GsonBuilder;)V

    .line 5
    invoke-static {v0}, LJAVARuntime/Json;->addExclusion(Lcom/google/gson/GsonBuilder;)V

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, LJAVARuntime/Json;->toJson(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJson(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object",
            "prettyPrinting"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "prettyPrinting"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, LJAVARuntime/Json;->toJson(Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJson(Ljava/lang/Object;ZZ)Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object",
            "prettyPrinting",
            "lenient"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "prettyPrinting",
            "lenient"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, p2, v0}, LJAVARuntime/Json;->toJson(Ljava/lang/Object;ZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJson(Ljava/lang/Object;ZZZ)Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object",
            "prettyPrinting",
            "lenient",
            "ignorePrivateFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "prettyPrinting",
            "lenient",
            "ignorePrivateFields"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, p2, p3, v0}, LJAVARuntime/Json;->toJson(Ljava/lang/Object;ZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJson(Ljava/lang/Object;ZZZZ)Ljava/lang/String;
    .locals 6
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object",
            "prettyPrinting",
            "lenient",
            "ignorePrivateFields",
            "ignoreProtectedFields"
        }
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
            "object",
            "prettyPrinting",
            "lenient",
            "ignorePrivateFields",
            "ignoreProtectedFields"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 5
    invoke-static/range {v0 .. v5}, LJAVARuntime/Json;->toJson(Ljava/lang/Object;ZZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJson(Ljava/lang/Object;ZZZZZ)Ljava/lang/String;
    .locals 5
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object",
            "prettyPrinting",
            "lenient",
            "ignorePrivateFields",
            "ignoreProtectedFields",
            "ignorePublicFields"
        }
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
            "object",
            "prettyPrinting",
            "lenient",
            "ignorePrivateFields",
            "ignoreProtectedFields",
            "ignorePublicFields"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-static {}, Ld8/j;->k0()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 8
    invoke-static {v1}, Ld8/j;->j0(I)Le8/c;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JAVARuntime."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Le8/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t serialize engine native classes, it will create deep bugs"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 12
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;

    .line 13
    invoke-static {v0}, LJAVARuntime/Json;->addSerializators(Lcom/google/gson/GsonBuilder;)V

    .line 14
    invoke-static {v0}, LJAVARuntime/Json;->addExclusion(Lcom/google/gson/GsonBuilder;)V

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    :cond_2
    if-eqz p2, :cond_3

    .line 16
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    :cond_3
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    const/16 p1, 0x8f

    .line 17
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    goto :goto_1

    :cond_4
    if-eqz p5, :cond_5

    if-eqz p4, :cond_5

    const/16 p1, 0x8d

    .line 18
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    goto :goto_1

    :cond_5
    if-eqz p5, :cond_6

    if-eqz p3, :cond_6

    const/16 p1, 0x8b

    .line 19
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    const/16 p1, 0x8e

    .line 20
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    goto :goto_1

    :cond_7
    if-eqz p3, :cond_8

    const/16 p1, 0x8a

    .line 21
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    goto :goto_1

    :cond_8
    if-eqz p4, :cond_9

    const/16 p1, 0x8c

    .line 22
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    goto :goto_1

    :cond_9
    if-eqz p5, :cond_a

    const/16 p1, 0x89

    .line 23
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    .line 24
    :cond_a
    :goto_1
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    .line 25
    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fromJsonString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "json",
            "classType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "json",
            "classType"
        }
    .end annotation

    invoke-direct {p0}, LJAVARuntime/Json;->buildGson()V

    iget-object v0, p0, LJAVARuntime/Json;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isIgnorePrivateFields()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-boolean v0, p0, LJAVARuntime/Json;->ignorePrivateFields:Z

    return v0
.end method

.method public isIgnoreProtectedFields()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-boolean v0, p0, LJAVARuntime/Json;->ignoreProtectedFields:Z

    return v0
.end method

.method public isIgnorePublicFields()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-boolean v0, p0, LJAVARuntime/Json;->ignorePublicFields:Z

    return v0
.end method

.method public isLenient()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-boolean v0, p0, LJAVARuntime/Json;->lenient:Z

    return v0
.end method

.method public isPrettyPrinting()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-boolean v0, p0, LJAVARuntime/Json;->prettyPrinting:Z

    return v0
.end method

.method public setIgnorePrivateFields(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignorePrivateFields"
        }
    .end annotation

    iget-boolean v0, p0, LJAVARuntime/Json;->ignorePrivateFields:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, LJAVARuntime/Json;->ignorePrivateFields:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, LJAVARuntime/Json;->gson:Lcom/google/gson/Gson;

    invoke-direct {p0}, LJAVARuntime/Json;->buildGson()V

    :cond_1
    return-void
.end method

.method public setIgnoreProtectedFields(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreProtectedFields"
        }
    .end annotation

    iget-boolean v0, p0, LJAVARuntime/Json;->ignoreProtectedFields:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, LJAVARuntime/Json;->ignoreProtectedFields:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, LJAVARuntime/Json;->gson:Lcom/google/gson/Gson;

    invoke-direct {p0}, LJAVARuntime/Json;->buildGson()V

    :cond_1
    return-void
.end method

.method public setIgnorePublicFields(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignorePublicFields"
        }
    .end annotation

    iget-boolean v0, p0, LJAVARuntime/Json;->ignorePublicFields:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, LJAVARuntime/Json;->ignorePublicFields:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, LJAVARuntime/Json;->gson:Lcom/google/gson/Gson;

    invoke-direct {p0}, LJAVARuntime/Json;->buildGson()V

    :cond_1
    return-void
.end method

.method public setLenient(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lenient"
        }
    .end annotation

    iget-boolean v0, p0, LJAVARuntime/Json;->lenient:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, LJAVARuntime/Json;->lenient:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, LJAVARuntime/Json;->gson:Lcom/google/gson/Gson;

    invoke-direct {p0}, LJAVARuntime/Json;->buildGson()V

    :cond_1
    return-void
.end method

.method public setPrettyPrinting(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prettyPrinting"
        }
    .end annotation

    iget-boolean v0, p0, LJAVARuntime/Json;->prettyPrinting:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, LJAVARuntime/Json;->prettyPrinting:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, LJAVARuntime/Json;->gson:Lcom/google/gson/Gson;

    invoke-direct {p0}, LJAVARuntime/Json;->buildGson()V

    :cond_1
    return-void
.end method

.method public toJsonString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Ld8/j;->k0()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Ld8/j;->j0(I)Le8/c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JAVARuntime."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Le8/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t serialize engine native classes, it will create deep bugs"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0}, LJAVARuntime/Json;->buildGson()V

    iget-object v0, p0, LJAVARuntime/Json;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
