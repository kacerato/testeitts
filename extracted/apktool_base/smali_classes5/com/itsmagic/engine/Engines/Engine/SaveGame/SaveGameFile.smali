.class public Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final booleanMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private colorList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/SaveGame/ColorPair;",
            ">;"
        }
    .end annotation
.end field

.field private final colorMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;",
            ">;"
        }
    .end annotation
.end field

.field private floatList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/SaveGame/FloatPair;",
            ">;"
        }
    .end annotation
.end field

.field private final floatMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private intList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/SaveGame/IntPair;",
            ">;"
        }
    .end annotation
.end field

.field private final intMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private quaternionList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/SaveGame/QuaternionPair;",
            ">;"
        }
    .end annotation
.end field

.field private final quaternionMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;",
            ">;"
        }
    .end annotation
.end field

.field private stringList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/SaveGame/StringPair;",
            ">;"
        }
    .end annotation
.end field

.field private final stringMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vector2List:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/SaveGame/Vector2Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final vector2Map:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field private vector3List:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/SaveGame/Vector3Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final vector3Map:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->stringMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->floatMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->intMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->vector3Map:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->vector2Map:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->quaternionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->colorMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->booleanMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->stringMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->floatMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->intMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->vector3Map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->vector2Map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->quaternionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->colorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->booleanMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->booleanMap:Ljava/util/Map;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->colorMap:Ljava/util/Map;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->floatMap:Ljava/util/Map;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->intMap:Ljava/util/Map;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->quaternionMap:Ljava/util/Map;

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->stringMap:Ljava/util/Map;

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->vector2Map:Ljava/util/Map;

    return-object v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->vector3Map:Ljava/util/Map;

    return-object v0
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->stringList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/SaveGame/StringPair;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/StringPair;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/StringPair;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->stringMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/StringPair;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/StringPair;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->floatList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/SaveGame/FloatPair;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/FloatPair;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/FloatPair;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->floatMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/FloatPair;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/FloatPair;->b()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->intList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/SaveGame/IntPair;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/IntPair;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/IntPair;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->intMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/IntPair;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/IntPair;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->vector3List:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/SaveGame/Vector3Pair;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/Vector3Pair;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/Vector3Pair;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->vector3Map:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/Vector3Pair;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/Vector3Pair;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->vector2List:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/SaveGame/Vector2Pair;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/Vector2Pair;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/Vector2Pair;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->vector2Map:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/Vector2Pair;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/Vector2Pair;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->quaternionList:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/SaveGame/QuaternionPair;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/QuaternionPair;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/QuaternionPair;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->quaternionMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/QuaternionPair;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/QuaternionPair;->b()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->colorList:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/SaveGame/ColorPair;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/ColorPair;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/ColorPair;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->colorMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/ColorPair;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/SaveGame/ColorPair;->b()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->stringList:Ljava/util/List;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->floatList:Ljava/util/List;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->intList:Ljava/util/List;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->vector3List:Ljava/util/List;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->vector2List:Ljava/util/List;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->quaternionList:Ljava/util/List;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/SaveGame/SaveGameFile;->colorList:Ljava/util/List;

    return-void
.end method
