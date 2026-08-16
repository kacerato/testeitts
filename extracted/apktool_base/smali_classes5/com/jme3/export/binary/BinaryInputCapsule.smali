.class final Lcom/jme3/export/binary/BinaryInputCapsule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/InputCapsule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/export/binary/BinaryInputCapsule$ID;,
        Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;,
        Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;
    }
.end annotation


# instance fields
.field protected cObj:Lcom/jme3/export/binary/BinaryClassObject;

.field protected fieldData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected importer:Lcom/jme3/export/binary/BinaryImporter;

.field protected index:I

.field protected savable:Lcom/jme3/export/Savable;


# direct methods
.method public constructor <init>(Lcom/jme3/export/binary/BinaryImporter;Lcom/jme3/export/Savable;Lcom/jme3/export/binary/BinaryClassObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    iput-object p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->importer:Lcom/jme3/export/binary/BinaryImporter;

    iput-object p3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iput-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->savable:Lcom/jme3/export/Savable;

    return-void
.end method

.method private checkedByteCount(II[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    int-to-long v0, p1

    int-to-long p1, p2

    mul-long/2addr v0, p1

    const-wide/32 p1, 0x7fffffff

    cmp-long p1, v0, p1

    if-gtz p1, :cond_0

    long-to-int p1, v0

    invoke-direct {p0, p3, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    return p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "J3O byte size too large: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkedLength(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p1

    :cond_0
    if-ltz p1, :cond_1

    return p1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid negative J3O length/count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflateFrom([BI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Truncated J3O compressed number at payload offset "

    if-ltz p1, :cond_5

    array-length v1, p0

    if-ge p1, v1, :cond_5

    aget-byte v1, p0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {v2}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    invoke-static {v2}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x0

    if-nez v1, :cond_2

    new-array p0, v2, [B

    return-object p0

    :cond_2
    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v3, v1

    if-lt v3, p1, :cond_4

    array-length v4, p0

    if-gt v3, v4, :cond_4

    new-array v0, v1, [B

    :goto_0
    if-ge v2, v1, :cond_3

    add-int/lit8 v3, v2, 0x1

    add-int v4, v3, p1

    aget-byte v4, p0, v4

    aput-byte v4, v0, v2

    move v2, v3

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private intSavableMapFromKV([I[Lcom/jme3/export/Savable;)Lcom/jme3/util/IntMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Lcom/jme3/export/Savable;",
            ")",
            "Lcom/jme3/util/IntMap<",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/jme3/util/IntMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Lcom/jme3/util/IntMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v0, v2, v3}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private requireRemaining([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int v1, v0, p2

    if-lt v1, v0, :cond_0

    add-int/2addr v0, p2

    array-length p1, p1

    if-gt v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Truncated J3O payload at offset "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private resolveIDs([Ljava/lang/Object;)[Lcom/jme3/export/Savable;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    new-array v1, v1, [Lcom/jme3/export/Savable;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget-object v3, p1, v2

    check-cast v3, Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->importer:Lcom/jme3/export/binary/BinaryImporter;

    iget v3, v3, Lcom/jme3/export/binary/BinaryInputCapsule$ID;->id:I

    invoke-virtual {v4, v3}, Lcom/jme3/export/binary/BinaryImporter;->readObject(I)Lcom/jme3/export/Savable;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v0

    :goto_1
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    return-object v0
.end method

.method private savableArrayListFromArray([Lcom/jme3/export/Savable;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/jme3/export/Savable;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private savableMapFrom2DArray([[Lcom/jme3/export/Savable;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Lcom/jme3/export/Savable;",
            ")",
            "Ljava/util/Map<",
            "Lcom/jme3/export/Savable;",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget-object v3, p1, v2

    aget-object v4, v3, v1

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private stringSavableMapFromKV([Ljava/lang/String;[Lcom/jme3/export/Savable;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Lcom/jme3/export/Savable;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getSavableVersion(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/export/Savable;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->savable:Lcom/jme3/export/Savable;

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->classHierarchyVersions:[I

    iget-object v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->importer:Lcom/jme3/export/binary/BinaryImporter;

    invoke-virtual {v2}, Lcom/jme3/export/binary/BinaryImporter;->getFormatVersion()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/jme3/export/SavableClassUtil;->getSavedSavableVersion(Ljava/lang/Object;Ljava/lang/Class;[II)I

    move-result p1

    return p1
.end method

.method public readBitSet(Ljava/lang/String;Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/BitSet;

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readBitSet([B)Ljava/util/BitSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    .line 6
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readBoolean([B)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method public readBoolean([B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    .line 5
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-static {p1, v1}, Lcom/jme3/export/binary/ByteUtils;->convertBooleanFromBytes([BI)Z

    move-result p1

    .line 6
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    return p1
.end method

.method public readBooleanArray(Ljava/lang/String;[Z)[Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readBooleanArray([B)[Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedByteCount(II[B)I

    .line 6
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readBoolean([B)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readBooleanArray2D(Ljava/lang/String;[[Z)[[Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readBooleanArray2D([B)[[Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    new-array v1, v0, [[Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readBooleanArray([B)[Z

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readByte(Ljava/lang/String;B)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method public readByte([B)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    .line 5
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    aget-byte p1, p1, v1

    add-int/2addr v1, v0

    .line 6
    iput v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    return p1
.end method

.method public readByteArray(Ljava/lang/String;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readByteArray([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    .line 6
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByte([B)B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readByteArray2D(Ljava/lang/String;[[B)[[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readByteArray2D([B)[[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    new-array v1, v0, [[B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByteArray([B)[B

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/jme3/export/binary/BinaryImporter;->canUseFastBuffers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    .line 7
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 8
    iget v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-virtual {v1, p1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 9
    iget p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    return-object v1

    .line 10
    :cond_1
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 11
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByteForBuffer([B)B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1
.end method

.method public readByteBufferArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readByteBufferArrayList([B)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readByteForBuffer([B)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    aget-byte p1, p1, v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    return p1
.end method

.method public readDouble(Ljava/lang/String;D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_1
    :goto_0
    return-wide p2
.end method

.method public readDouble([B)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    .line 5
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-static {p1, v1}, Lcom/jme3/export/binary/ByteUtils;->convertDoubleFromBytes([BI)D

    move-result-wide v1

    .line 6
    iget p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    return-wide v1
.end method

.method public readDoubleArray(Ljava/lang/String;[D)[D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readDoubleArray([B)[D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v1, 0x8

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedByteCount(II[B)I

    .line 6
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readDouble([B)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readDoubleArray2D(Ljava/lang/String;[[D)[[D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readDoubleArray2D([B)[[D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    new-array v1, v0, [[D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readDoubleArray([B)[D

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/jme3/export/binary/BinaryInputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p2, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public readFloat(Ljava/lang/String;F)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method public readFloat([B)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    .line 5
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-static {p1, v1}, Lcom/jme3/export/binary/ByteUtils;->convertFloatFromBytes([BI)F

    move-result p1

    .line 6
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    return p1
.end method

.method public readFloatArray(Ljava/lang/String;[F)[F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readFloatArray([B)[F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x4

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedByteCount(II[B)I

    .line 6
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloat([B)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readFloatArray2D(Ljava/lang/String;[[F)[[F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readFloatArray2D([B)[[F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    new-array v1, v0, [[F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloatArray([B)[F

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readFloatBuffer(Ljava/lang/String;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/FloatBuffer;

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readFloatBuffer([B)Ljava/nio/FloatBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/jme3/export/binary/BinaryImporter;->canUseFastBuffers()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 6
    invoke-direct {p0, v0, v1, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedByteCount(II[B)I

    move-result v0

    .line 7
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 8
    iget v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-virtual {v1, p1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 9
    iget p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 12
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloatForBuffer([B)F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1
.end method

.method public readFloatBufferArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/nio/FloatBuffer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readFloatBufferArrayList([B)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloatBuffer([B)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readFloatForBuffer([B)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readIntForBuffer([B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method public readInt([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-static {p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->inflateFrom([BI)[B

    move-result-object p1

    .line 5
    iget v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 6
    array-length v0, p1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_2

    .line 7
    invoke-static {p1, v1}, Lcom/jme3/export/binary/ByteUtils;->rightAlignBytes([BI)[B

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/jme3/export/binary/ByteUtils;->convertIntFromBytes([B)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 9
    :cond_0
    iget v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    :cond_1
    return p1

    .line 10
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid J3O int byte length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readIntArray(Ljava/lang/String;[I)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readIntArray([B)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    .line 6
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readIntArray2D(Ljava/lang/String;[[I)[[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readIntArray2D([B)[[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    new-array v1, v0, [[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readIntArray([B)[I

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readIntBuffer(Ljava/lang/String;Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/IntBuffer;

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readIntBuffer([B)Ljava/nio/IntBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/jme3/export/binary/BinaryImporter;->canUseFastBuffers()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 6
    invoke-direct {p0, v0, v1, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedByteCount(II[B)I

    move-result v0

    .line 7
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 8
    iget v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-virtual {v1, p1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 9
    iget p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 12
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readIntForBuffer([B)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1
.end method

.method public readIntForBuffer([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v2, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    return v2
.end method

.method public readIntSavableMap([B)Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readIntArray([B)[I

    move-result-object v0

    .line 12
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray([B)[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object p1

    .line 13
    new-instance v1, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;

    invoke-direct {v1, v2}, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;-><init>(Lcom/jme3/export/binary/BinaryInputCapsule$1;)V

    .line 14
    iput-object v0, v1, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;->keys:[I

    .line 15
    iput-object p1, v1, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;->values:[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    return-object v1
.end method

.method public readIntSavableMap(Ljava/lang/String;Lcom/jme3/util/IntMap;)Lcom/jme3/util/IntMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jme3/util/IntMap<",
            "+",
            "Lcom/jme3/export/Savable;",
            ">;)",
            "Lcom/jme3/util/IntMap<",
            "+",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v0, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    instance-of v0, p2, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;

    if-eqz v0, :cond_1

    .line 5
    check-cast p2, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;

    .line 6
    iget-object v0, p2, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;->values:[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->resolveIDs([Ljava/lang/Object;)[Lcom/jme3/export/Savable;

    move-result-object v0

    .line 7
    iget-object p2, p2, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;->keys:[I

    invoke-direct {p0, p2, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->intSavableMapFromKV([I[Lcom/jme3/export/Savable;)Lcom/jme3/util/IntMap;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    check-cast p2, Lcom/jme3/util/IntMap;

    :cond_2
    :goto_0
    return-object p2
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_1
    :goto_0
    return-wide p2
.end method

.method public readLong([B)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-static {p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->inflateFrom([BI)[B

    move-result-object p1

    .line 5
    iget v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 6
    array-length v0, p1

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 7
    invoke-static {p1, v1}, Lcom/jme3/export/binary/ByteUtils;->rightAlignBytes([BI)[B

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/jme3/export/binary/ByteUtils;->convertLongFromBytes([B)J

    move-result-wide v0

    return-wide v0

    .line 9
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid J3O long byte length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLongArray(Ljava/lang/String;[J)[J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readLongArray([B)[J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    .line 6
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readLong([B)J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readLongArray2D(Ljava/lang/String;[[J)[[J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[J

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readLongArray2D([B)[[J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    new-array v1, v0, [[J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readLongArray([B)[J

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    instance-of v1, v0, Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    if-eqz v1, :cond_2

    .line 5
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->importer:Lcom/jme3/export/binary/BinaryImporter;

    check-cast v0, Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    iget v0, v0, Lcom/jme3/export/binary/BinaryInputCapsule$ID;->id:I

    invoke-virtual {p2, v0}, Lcom/jme3/export/binary/BinaryImporter;->readObject(I)Lcom/jme3/export/Savable;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object p2
.end method

.method public readSavable([B)Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    new-instance v0, Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    invoke-direct {v0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule$ID;-><init>(I)V

    return-object v0
.end method

.method public readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 4
    instance-of v1, v0, [Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->resolveIDs([Ljava/lang/Object;)[Lcom/jme3/export/Savable;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    check-cast p2, [Lcom/jme3/export/Savable;

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readSavableArray([B)[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    .line 10
    new-array v1, v0, [Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavable([B)Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readSavableArray2D(Ljava/lang/String;[[Lcom/jme3/export/Savable;)[[Lcom/jme3/export/Savable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v0, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Ljava/lang/Object;

    .line 4
    instance-of v0, p2, [[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    if-eqz v0, :cond_3

    .line 5
    array-length v0, p2

    new-array v0, v0, [[Lcom/jme3/export/Savable;

    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 7
    aget-object v2, p2, v1

    if-eqz v2, :cond_1

    .line 8
    invoke-direct {p0, v2}, Lcom/jme3/export/binary/BinaryInputCapsule;->resolveIDs([Ljava/lang/Object;)[Lcom/jme3/export/Savable;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 9
    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v0

    .line 11
    :cond_3
    check-cast p2, [[Lcom/jme3/export/Savable;

    :cond_4
    :goto_2
    return-object p2
.end method

.method public readSavableArray2D([B)[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 13
    :cond_0
    new-array v1, v0, [[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 14
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray([B)[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readSavableArray3D(Ljava/lang/String;[[[Lcom/jme3/export/Savable;)[[[Lcom/jme3/export/Savable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[Ljava/lang/Object;

    .line 4
    instance-of v1, v0, [[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    if-eqz v1, :cond_4

    .line 5
    array-length p2, v0

    new-array p2, p2, [[[Lcom/jme3/export/Savable;

    const/4 v1, 0x0

    move v2, v1

    .line 6
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 7
    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 8
    array-length v3, v3

    new-array v3, v3, [[Lcom/jme3/export/Savable;

    aput-object v3, p2, v2

    move v3, v1

    .line 9
    :goto_1
    aget-object v4, v0, v2

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 10
    aget-object v5, p2, v2

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lcom/jme3/export/binary/BinaryInputCapsule;->resolveIDs([Ljava/lang/Object;)[Lcom/jme3/export/Savable;

    move-result-object v4

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 11
    aput-object v3, p2, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-object p2
.end method

.method public readSavableArray3D([B)[[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 14
    :cond_0
    new-array v1, v0, [[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 15
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray2D([B)[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v1, p2, [Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->savableArrayListFromArray([Lcom/jme3/export/Savable;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v0, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast p2, Ljava/util/ArrayList;

    :cond_2
    :goto_0
    return-object p2
.end method

.method public readSavableArrayListArray(Ljava/lang/String;[Ljava/util/ArrayList;)[Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray2D(Ljava/lang/String;[[Lcom/jme3/export/Savable;)[[Lcom/jme3/export/Savable;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length p2, p1

    new-array p2, p2, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/jme3/export/binary/BinaryInputCapsule;->savableArrayListFromArray([Lcom/jme3/export/Savable;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v0, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p2

    :cond_2
    check-cast v1, [Ljava/util/ArrayList;

    return-object v1

    :cond_3
    :goto_1
    return-object p2
.end method

.method public readSavableArrayListArray2D(Ljava/lang/String;[[Ljava/util/ArrayList;)[[Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray3D(Ljava/lang/String;[[[Lcom/jme3/export/Savable;)[[[Lcom/jme3/export/Savable;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    array-length p2, p1

    new-array p2, p2, [[Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    array-length v3, v3

    new-array v3, v3, [Ljava/util/ArrayList;

    aput-object v3, p2, v2

    move v3, v1

    :goto_1
    aget-object v4, p1, v2

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v5, p2, v2

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lcom/jme3/export/binary/BinaryInputCapsule;->savableArrayListFromArray([Lcom/jme3/export/Savable;)Ljava/util/ArrayList;

    move-result-object v4

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v0, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p2

    :cond_3
    check-cast v1, [[Ljava/util/ArrayList;

    return-object v1

    :cond_4
    :goto_2
    return-object p2
.end method

.method public readSavableMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "+",
            "Lcom/jme3/export/Savable;",
            "+",
            "Lcom/jme3/export/Savable;",
            ">;)",
            "Ljava/util/Map<",
            "+",
            "Lcom/jme3/export/Savable;",
            "+",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    instance-of v1, p2, [[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray2D(Ljava/lang/String;[[Lcom/jme3/export/Savable;)[[Lcom/jme3/export/Savable;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->savableMapFrom2DArray([[Lcom/jme3/export/Savable;)Ljava/util/Map;

    move-result-object p2

    .line 7
    iget-object p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v0, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    check-cast p2, Ljava/util/Map;

    :cond_2
    :goto_0
    return-object p2
.end method

.method public readSavableMap([B)[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_0
    new-array v1, v0, [[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray([B)[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readShort(Ljava/lang/String;S)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method public readShort([B)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    .line 5
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-static {p1, v1}, Lcom/jme3/export/binary/ByteUtils;->convertShortFromBytes([BI)S

    move-result p1

    .line 6
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    return p1
.end method

.method public readShortArray(Ljava/lang/String;[S)[S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readShortArray([B)[S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x2

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedByteCount(II[B)I

    .line 6
    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readShort([B)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readShortArray2D(Ljava/lang/String;[[S)[[S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readShortArray2D([B)[[S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    new-array v1, v0, [[S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readShortArray([B)[S

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readShortBuffer(Ljava/lang/String;Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ShortBuffer;

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readShortBuffer([B)Ljava/nio/ShortBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/jme3/export/binary/BinaryImporter;->canUseFastBuffers()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 6
    invoke-direct {p0, v0, v1, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedByteCount(II[B)I

    move-result v0

    .line 7
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 8
    iget v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-virtual {v1, p1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 9
    iget p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 12
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readShortForBuffer([B)S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1
.end method

.method public readShortForBuffer([B)S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr v2, p1

    int-to-short p1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    return p1
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readString([B)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    .line 6
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    iget v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readStringArray([B)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->requireRemaining([BI)V

    .line 6
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readStringArray2D(Ljava/lang/String;[[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public readStringArray2D([B)[[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readStringArray([B)[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readStringSavableMap([B)Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->checkedLength(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readStringArray([B)[Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray([B)[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object p1

    .line 13
    new-instance v1, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;

    invoke-direct {v1, v2}, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;-><init>(Lcom/jme3/export/binary/BinaryInputCapsule$1;)V

    .line 14
    iput-object v0, v1, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;->keys:[Ljava/lang/String;

    .line 15
    iput-object p1, v1, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;->values:[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    return-object v1
.end method

.method public readStringSavableMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/jme3/export/Savable;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v0, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    instance-of v0, p2, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;

    if-eqz v0, :cond_1

    .line 5
    check-cast p2, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;

    .line 6
    iget-object v0, p2, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;->values:[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    invoke-direct {p0, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->resolveIDs([Ljava/lang/Object;)[Lcom/jme3/export/Savable;

    move-result-object v0

    .line 7
    iget-object p2, p2, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;->keys:[Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/jme3/export/binary/BinaryInputCapsule;->stringSavableMapFromKV([Ljava/lang/String;[Lcom/jme3/export/Savable;)Ljava/util/Map;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte p1, p1, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    check-cast p2, Ljava/util/Map;

    :cond_2
    :goto_0
    return-object p2
.end method

.method public setContent([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iput p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    :goto_0
    iget p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    if-ge p2, p3, :cond_1

    aget-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    iget-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object p2, p2, Lcom/jme3/export/binary/BinaryClassObject;->aliasFields:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/export/binary/BinaryClassField;

    if-eqz p2, :cond_0

    iget-byte v1, p2, Lcom/jme3/export/binary/BinaryClassField;->type:B

    sparse-switch v1, :sswitch_data_0

    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown J3O field type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p2, p2, Lcom/jme3/export/binary/BinaryClassField;->type:B

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readShortBuffer([B)Ljava/nio/ShortBuffer;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readIntBuffer([B)Ljava/nio/IntBuffer;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloatBuffer([B)Ljava/nio/FloatBuffer;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByteBufferArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloatBufferArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readIntSavableMap([B)Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readStringSavableMap([B)Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableMap([B)[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray3D([B)[[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray2D([B)[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_b
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray([B)[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray2D([B)[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_d
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray([B)[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_e
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavable([B)Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_f
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readBitSet([B)Ljava/util/BitSet;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_10
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readStringArray2D([B)[[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_11
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readStringArray([B)[Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_12
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readString([B)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_13
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readBooleanArray2D([B)[[Z

    move-result-object p2

    goto/16 :goto_1

    :sswitch_14
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readBooleanArray([B)[Z

    move-result-object p2

    goto/16 :goto_1

    :sswitch_15
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readBoolean([B)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_1

    :sswitch_16
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readShortArray2D([B)[[S

    move-result-object p2

    goto/16 :goto_1

    :sswitch_17
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readShortArray([B)[S

    move-result-object p2

    goto/16 :goto_1

    :sswitch_18
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readShort([B)S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    goto :goto_1

    :sswitch_19
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readLongArray2D([B)[[J

    move-result-object p2

    goto :goto_1

    :sswitch_1a
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readLongArray([B)[J

    move-result-object p2

    goto :goto_1

    :sswitch_1b
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readLong([B)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_1

    :sswitch_1c
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readDoubleArray2D([B)[[D

    move-result-object p2

    goto :goto_1

    :sswitch_1d
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readDoubleArray([B)[D

    move-result-object p2

    goto :goto_1

    :sswitch_1e
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readDouble([B)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_1

    :sswitch_1f
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloatArray2D([B)[[F

    move-result-object p2

    goto :goto_1

    :sswitch_20
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloatArray([B)[F

    move-result-object p2

    goto :goto_1

    :sswitch_21
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloat([B)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_1

    :sswitch_22
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readIntArray2D([B)[[I

    move-result-object p2

    goto :goto_1

    :sswitch_23
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readIntArray([B)[I

    move-result-object p2

    goto :goto_1

    :sswitch_24
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :sswitch_25
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByteArray2D([B)[[B

    move-result-object p2

    goto :goto_1

    :sswitch_26
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByteArray([B)[B

    move-result-object p2

    goto :goto_1

    :sswitch_27
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByte([B)B

    move-result p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    :goto_1
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown J3O field alias: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p3, v0, 0xff

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_27
        0x1 -> :sswitch_26
        0x2 -> :sswitch_25
        0xa -> :sswitch_24
        0xb -> :sswitch_23
        0xc -> :sswitch_22
        0x14 -> :sswitch_21
        0x15 -> :sswitch_20
        0x16 -> :sswitch_1f
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1d
        0x20 -> :sswitch_1c
        0x28 -> :sswitch_1b
        0x29 -> :sswitch_1a
        0x2a -> :sswitch_19
        0x32 -> :sswitch_18
        0x33 -> :sswitch_17
        0x34 -> :sswitch_16
        0x3c -> :sswitch_15
        0x3d -> :sswitch_14
        0x3e -> :sswitch_13
        0x46 -> :sswitch_12
        0x47 -> :sswitch_11
        0x48 -> :sswitch_10
        0x50 -> :sswitch_f
        0x5a -> :sswitch_e
        0x5b -> :sswitch_d
        0x5c -> :sswitch_c
        0x64 -> :sswitch_b
        0x65 -> :sswitch_a
        0x66 -> :sswitch_9
        0x69 -> :sswitch_8
        0x6a -> :sswitch_7
        0x6b -> :sswitch_6
        0x6e -> :sswitch_5
        0x6f -> :sswitch_4
        0x78 -> :sswitch_3
        0x79 -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method
