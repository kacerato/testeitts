.class public Lcom/jme3/util/struct/fields/IntArrayField;
.super Lcom/jme3/util/struct/StructField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/util/struct/StructField<",
        "[",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    new-array p3, p3, [Ljava/lang/Integer;

    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/util/struct/StructField;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lcom/jme3/util/struct/fields/IntArrayField;->initializeToZero()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/util/struct/StructField;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/jme3/util/struct/fields/IntArrayField;->initializeToZero()V

    return-void
.end method

.method private initializeToZero()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/jme3/util/struct/StructField;->value:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Ljava/lang/Integer;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    move-object v3, v2

    check-cast v3, [Ljava/lang/Integer;

    aget-object v3, v3, v1

    if-nez v3, :cond_0

    check-cast v2, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getValueForUpdate()[Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/util/struct/StructField;->isUpdateNeeded:Z

    iget-object v0, p0, Lcom/jme3/util/struct/StructField;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Integer;

    return-object v0
.end method
