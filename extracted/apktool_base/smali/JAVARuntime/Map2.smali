.class public LJAVARuntime/Map2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Lists"
    }
.end annotation


# instance fields
.field private transient count:I

.field private transient keyClass:Ljava/lang/Class;

.field private transient keyList:Ljava/util/ArrayList;

.field private transient valueClass:Ljava/lang/Class;

.field private transient valueList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyClass",
            "valueClass"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    iput-object p1, p0, LJAVARuntime/Map2;->keyClass:Ljava/lang/Class;

    iput-object p2, p0, LJAVARuntime/Map2;->valueClass:Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$000(LJAVARuntime/Map2;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$100(LJAVARuntime/Map2;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static fromJson(Ljava/lang/String;)LJAVARuntime/Map2;
    .locals 6
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    :cond_0
    new-instance v1, LJAVARuntime/Map2;

    invoke-direct {v1, v0, v0}, LJAVARuntime/Map2;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "keyClass"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    iput-object p0, v1, LJAVARuntime/Map2;->keyClass:Ljava/lang/Class;

    const-string p0, "valueClass"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    iput-object p0, v1, LJAVARuntime/Map2;->valueClass:Ljava/lang/Class;

    const-string p0, "count"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, LJAVARuntime/Map2;->count:I

    const-string p0, "keyList"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v1, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_1
    const-string p0, "valueList"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, v1, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_4
    return-object v1

    :cond_3
    :goto_5
    return-object v0
.end method

.method public static inspectorController()LP8/h;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/h;

    new-instance v1, LJAVARuntime/Map2$1;

    const-class v2, LJAVARuntime/Map2;

    invoke-direct {v1, v2}, LJAVARuntime/Map2$1;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/h;-><init>(LP8/i;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, LJAVARuntime/Map2;->count:I

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, LJAVARuntime/Map2;->keyClass:Ljava/lang/Class;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const-string p1, "Map2 invalid put: key class type is different from defined at constructor"

    invoke-static {p1}, LJAVARuntime/Terminal;->log(Ljava/lang/String;)V

    return-object v2

    :cond_0
    const-class v0, Ljava/lang/String;

    const/4 v3, 0x0

    if-ne v1, v0, :cond_2

    move v0, v3

    :goto_0
    iget-object v1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, LJAVARuntime/Map2;->keyClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_5

    :cond_3
    move v0, v3

    :goto_1
    iget-object v1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v4, p1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_4

    iget-object p1, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, LJAVARuntime/Map2;->keyClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v0, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    iget-object v0, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_7

    iget-object p1, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    iget-object v0, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    iget-object v0, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    iget-object p1, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    return-object v2
.end method

.method public getDirectKeyList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDirectValueList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getKeyClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Map2;->keyClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getKeyList()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, LJAVARuntime/Map2;->count:I

    return v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Map2;->valueClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getValueList()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, LJAVARuntime/Map2;->keyClass:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    const-string p1, "Map2 invalid put: key class type is different from defined at constructor"

    invoke-static {p1}, LJAVARuntime/Terminal;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, LJAVARuntime/Map2;->valueClass:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    const-string p1, "Map2 invalid put: value class type is different from defined at constructor"

    invoke-static {p1}, LJAVARuntime/Terminal;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, LJAVARuntime/Map2;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LJAVARuntime/Map2;->count:I

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, LJAVARuntime/Map2;->keyClass:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    const-string v0, "Map2 invalid put: key class type is different from defined at constructor"

    invoke-static {v0}, LJAVARuntime/Terminal;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, LJAVARuntime/Map2;->keyClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    :goto_0
    iget-object v1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget p1, p0, LJAVARuntime/Map2;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LJAVARuntime/Map2;->count:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, LJAVARuntime/Map2;->keyClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_5

    :cond_3
    move v0, v2

    :goto_1
    iget-object v1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object p1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget p1, p0, LJAVARuntime/Map2;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LJAVARuntime/Map2;->count:I

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, LJAVARuntime/Map2;->keyClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v0, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    iget-object v0, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_7

    iget-object p1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget p1, p0, LJAVARuntime/Map2;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LJAVARuntime/Map2;->count:I

    return-void

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    iget-object v0, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    iget-object v0, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    iget-object p1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget p1, p0, LJAVARuntime/Map2;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LJAVARuntime/Map2;->count:I

    return-void

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    return-void
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "newValue"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, LJAVARuntime/Map2;->keyClass:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    const-string p1, "Map2 invalid put: key class type is different from defined at constructor"

    invoke-static {p1}, LJAVARuntime/Terminal;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, LJAVARuntime/Map2;->valueClass:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    const-string p1, "Map2 invalid put: value class type is different from defined at constructor"

    invoke-static {p1}, LJAVARuntime/Terminal;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, LJAVARuntime/Map2;->keyClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    move v0, v2

    :goto_0
    iget-object v1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, LJAVARuntime/Map2;->keyClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_6

    :cond_4
    move v0, v2

    :goto_1
    iget-object v1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, LJAVARuntime/Map2;->keyClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_9

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v0, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    iget-object v0, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_8

    iget-object v0, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    iget-object v0, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    iget-object v0, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    iget-object v0, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v2, p0, LJAVARuntime/Map2;->keyClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "keyClass"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, LJAVARuntime/Map2;->valueClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "valueClass"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, LJAVARuntime/Map2;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v2, p0, LJAVARuntime/Map2;->keyList:Ljava/util/ArrayList;

    new-instance v3, LJAVARuntime/Map2$2;

    invoke-direct {v3, p0}, LJAVARuntime/Map2$2;-><init>(LJAVARuntime/Map2;)V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    const-string v3, "keyList"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    iget-object v2, p0, LJAVARuntime/Map2;->valueList:Ljava/util/ArrayList;

    new-instance v3, LJAVARuntime/Map2$3;

    invoke-direct {v3, p0}, LJAVARuntime/Map2$3;-><init>(LJAVARuntime/Map2;)V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    const-string v2, "valueList"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
