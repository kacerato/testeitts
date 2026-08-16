.class public Lcom/jme3/util/struct/fields/SubStructArrayField;
.super Lcom/jme3/util/struct/StructField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/jme3/util/struct/Struct;",
        ">",
        "Lcom/jme3/util/struct/StructField<",
        "[TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    .line 3
    invoke-static {p4, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/jme3/util/struct/Struct;

    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/util/struct/StructField;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, p4}, Lcom/jme3/util/struct/fields/SubStructArrayField;->initializeToZero(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Lcom/jme3/util/struct/Struct;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/util/struct/StructField;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    aget-object p1, p3, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/util/struct/fields/SubStructArrayField;->initializeToZero(Ljava/lang/Class;)V

    return-void
.end method

.method private initializeToZero(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/util/struct/StructField;->value:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [Lcom/jme3/util/struct/Struct;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    check-cast v1, [Lcom/jme3/util/struct/Struct;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v3, p0, Lcom/jme3/util/struct/StructField;->value:Ljava/lang/Object;

    check-cast v3, [Lcom/jme3/util/struct/Struct;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/struct/Struct;

    aput-object v1, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t create new instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " default constructor is missing? "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
