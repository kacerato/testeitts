.class public Lcom/jme3/util/struct/fields/FloatArrayField;
.super Lcom/jme3/util/struct/StructField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/util/struct/StructField<",
        "[",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 3
    new-array p3, p3, [Ljava/lang/Float;

    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/util/struct/StructField;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lcom/jme3/util/struct/fields/FloatArrayField;->initializeToZero()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Ljava/lang/Float;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/util/struct/StructField;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/jme3/util/struct/fields/FloatArrayField;->initializeToZero()V

    return-void
.end method

.method private initializeToZero()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/util/struct/StructField;->value:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [Ljava/lang/Float;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    move-object v2, v1

    check-cast v2, [Ljava/lang/Float;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    check-cast v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getValueForUpdate()[Ljava/lang/Float;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/util/struct/StructField;->isUpdateNeeded:Z

    iget-object v0, p0, Lcom/jme3/util/struct/StructField;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Float;

    return-object v0
.end method
