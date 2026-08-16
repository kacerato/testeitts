.class public Lcom/jme3/util/struct/StructUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final fieldComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/jme3/util/struct/StructField<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/util/struct/StructUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/util/struct/StructUtils;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/util/struct/StructUtils$1;

    invoke-direct {v0}, Lcom/jme3/util/struct/StructUtils$1;-><init>()V

    sput-object v0, Lcom/jme3/util/struct/StructUtils;->fieldComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFields(Lcom/jme3/util/struct/Struct;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/util/struct/Struct;",
            ")",
            "Ljava/util/List<",
            "Lcom/jme3/util/struct/StructField<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/jme3/util/struct/StructUtils;->getFields(Lcom/jme3/util/struct/Struct;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getFields(Lcom/jme3/util/struct/Struct;ILjava/util/ArrayList;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/util/struct/Struct;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/util/struct/StructField<",
            "*>;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 5
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 6
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    const/4 v6, 0x1

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 8
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 9
    instance-of v7, v6, Lcom/jme3/util/struct/StructField;

    if-eqz v7, :cond_1

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_6

    .line 11
    :cond_0
    :goto_1
    check-cast v6, Lcom/jme3/util/struct/StructField;

    .line 12
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v0}, Lcom/jme3/util/struct/StructUtils;->sortFields(Ljava/util/List;)Ljava/util/List;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 15
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/util/struct/StructField;

    .line 17
    invoke-virtual {v4}, Lcom/jme3/util/struct/StructField;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/jme3/util/struct/Struct;

    if-eqz v5, :cond_3

    .line 18
    invoke-virtual {v4}, Lcom/jme3/util/struct/StructField;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/util/struct/Struct;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v4, v5, p2}, Lcom/jme3/util/struct/StructUtils;->getFields(Lcom/jme3/util/struct/Struct;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    .line 19
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 20
    :cond_3
    invoke-virtual {v4}, Lcom/jme3/util/struct/StructField;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_4

    const-class v5, Lcom/jme3/util/struct/Struct;

    invoke-virtual {v4}, Lcom/jme3/util/struct/StructField;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 21
    invoke-virtual {v4}, Lcom/jme3/util/struct/StructField;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/jme3/util/struct/Struct;

    move v5, v3

    .line 22
    :goto_3
    array-length v6, v4

    if-ge v5, v6, :cond_5

    .line 23
    aget-object v6, v4, v5

    add-int/lit8 v7, p1, 0x1

    .line 24
    invoke-static {v6, v7, p2}, Lcom/jme3/util/struct/StructUtils;->getFields(Lcom/jme3/util/struct/Struct;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v6

    .line 25
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 26
    :cond_4
    invoke-virtual {v4, p1}, Lcom/jme3/util/struct/StructField;->setDepth(I)V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/jme3/util/struct/StructField;->setGroup(I)V

    .line 28
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 29
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/util/struct/StructField;

    .line 30
    invoke-virtual {p1, v3}, Lcom/jme3/util/struct/StructField;->setPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    return-object v1

    .line 31
    :goto_6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getFields(Lcom/jme3/util/struct/Struct;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/util/struct/Struct;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/util/struct/StructField<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/jme3/util/struct/StructUtils;->getFields(Lcom/jme3/util/struct/Struct;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setStd140BufferLayout(Ljava/util/List;Lcom/jme3/shader/bufferobject/layout/Std140Layout;Lcom/jme3/shader/bufferobject/BufferObject;)Lcom/jme3/shader/bufferobject/BufferObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/struct/StructField<",
            "*>;>;",
            "Lcom/jme3/shader/bufferobject/layout/Std140Layout;",
            "Lcom/jme3/shader/bufferobject/BufferObject;",
            ")",
            "Lcom/jme3/shader/bufferobject/BufferObject;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/util/struct/StructField;

    invoke-virtual {v3}, Lcom/jme3/util/struct/StructField;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->getBasicAlignment(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p1, v4}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->estimateSize(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v5}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->align(II)I

    move-result v1

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_1

    invoke-virtual {v3}, Lcom/jme3/util/struct/StructField;->getGroup()I

    move-result v3

    add-int/lit8 v5, v2, 0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/util/struct/StructField;

    invoke-virtual {v5}, Lcom/jme3/util/struct/StructField;->getGroup()I

    move-result v5

    if-eq v3, v5, :cond_0

    goto :goto_1

    :cond_0
    move v3, v4

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v3, 0x10

    invoke-virtual {p1, v4, v3}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->align(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    new-instance v4, Lcom/jme3/shader/bufferobject/BufferRegion;

    invoke-direct {v4, v1, v3}, Lcom/jme3/shader/bufferobject/BufferRegion;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Lcom/jme3/shader/bufferobject/BufferObject;->setRegions(Ljava/util/List;)V

    return-object p2
.end method

.method public static sortFields(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/struct/StructField<",
            "*>;>;)",
            "Ljava/util/List<",
            "Lcom/jme3/util/struct/StructField<",
            "*>;>;"
        }
    .end annotation

    sget-object v0, Lcom/jme3/util/struct/StructUtils;->fieldComparator:Ljava/util/Comparator;

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object p0
.end method

.method public static updateBufferData(Ljava/util/List;ZLcom/jme3/shader/bufferobject/layout/BufferLayout;Lcom/jme3/shader/bufferobject/BufferObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/struct/StructField<",
            "*>;>;Z",
            "Lcom/jme3/shader/bufferobject/layout/BufferLayout;",
            "Lcom/jme3/shader/bufferobject/BufferObject;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/util/struct/StructField;

    if-nez p1, :cond_2

    invoke-virtual {v2}, Lcom/jme3/util/struct/StructField;->isUpdateNeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/jme3/util/struct/StructUtils;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Already up to date. Skip {0}  "

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/jme3/util/struct/StructField;->getPosition()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/jme3/shader/bufferobject/BufferObject;->getRegion(I)Lcom/jme3/shader/bufferobject/BufferRegion;

    move-result-object v1

    sget-object v3, Lcom/jme3/util/struct/StructUtils;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "Serialize {0} in {1} "

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1}, Lcom/jme3/shader/bufferobject/BufferRegion;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/jme3/util/struct/StructField;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->write(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/jme3/shader/bufferobject/BufferRegion;->markDirty()V

    invoke-virtual {v2}, Lcom/jme3/util/struct/StructField;->clearUpdateNeeded()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p3, v0}, Lcom/jme3/shader/bufferobject/BufferObject;->setUpdateNeeded(Z)V

    :cond_5
    return-void
.end method
