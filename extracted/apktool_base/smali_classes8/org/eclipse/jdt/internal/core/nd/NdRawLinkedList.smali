.class public Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList$ILinkedListVisitor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ELEMENT_START_POSITION:I = 0x4

.field private static final NEXT_MEMBER_BLOCK:I


# instance fields
.field private final address:J

.field private final elementRecordSize:I

.field private final firstBlockRecordCount:I

.field private lastKnownBlock:J

.field private final metadataBitsPerRecord:I

.field private final nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

.field private final recordCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;JIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->address:J

    iput p5, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->firstBlockRecordCount:I

    iput p6, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->recordCount:I

    iput p4, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->elementRecordSize:I

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->lastKnownBlock:J

    iput p7, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->metadataBitsPerRecord:I

    return-void
.end method

.method private getAddressOfElement(JI)J
    .locals 2

    const-wide/16 v0, 0x4

    add-long/2addr p1, v0

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->elementRecordSize:I

    mul-int/2addr p3, v0

    int-to-long v0, p3

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private getAddressOfMetadata(JI)J
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getAddressOfElement(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method private getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    return-object v0
.end method

.method private getElementsInBlock(JJI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-nez p3, :cond_0

    if-lez p5, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object p3

    add-int/lit8 p5, p5, -0x1

    invoke-direct {p0, p1, p2, p5}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getAddressOfElement(JI)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result p1

    return p1

    :cond_0
    return p5
.end method

.method private isLastBlock(JJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    cmp-long p1, p3, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public static recordSize(III)I
    .locals 1

    if-lez p2, :cond_0

    const/16 v0, 0x10

    div-int/2addr v0, p2

    add-int p2, p1, v0

    add-int/lit8 p2, p2, -0x1

    div-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    mul-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x4

    add-int/2addr p0, p2

    return p0
.end method


# virtual methods
.method public accept(Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList$ILinkedListVisitor;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v7

    iget v0, v6, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->firstBlockRecordCount:I

    iget v1, v6, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->metadataBitsPerRecord:I

    const/4 v2, 0x1

    shl-int v3, v2, v1

    add-int/lit8 v8, v3, -0x1

    if-nez v1, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    div-int/2addr v2, v1

    move v10, v2

    :goto_0
    iget-wide v1, v6, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->address:J

    move v11, v0

    move-wide v12, v1

    const/4 v14, 0x0

    :goto_1
    invoke-virtual {v7, v12, v13}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v3

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v15, v3

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getElementsInBlock(JJI)I

    move-result v0

    invoke-direct {v6, v12, v13, v11}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getAddressOfMetadata(JI)J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_2
    if-lt v3, v0, :cond_2

    iget v11, v6, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->recordCount:I

    move-wide v4, v15

    invoke-direct {v6, v12, v13, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->isLastBlock(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    move-wide v12, v4

    goto :goto_1

    :cond_2
    invoke-direct {v6, v12, v13, v3}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getAddressOfElement(JI)J

    move-result-wide v4

    if-lez v10, :cond_3

    rem-int v11, v3, v10

    div-int v17, v3, v10

    mul-int/lit8 v9, v17, 0x2

    move-object/from16 v17, v7

    int-to-long v6, v9

    add-long/2addr v6, v1

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getShort(J)S

    move-result v6

    mul-int/2addr v11, v6

    ushr-int/2addr v6, v11

    int-to-short v6, v6

    and-int/2addr v6, v8

    int-to-short v6, v6

    goto :goto_3

    :cond_3
    move-object/from16 v17, v7

    const/4 v6, 0x0

    :goto_3
    add-int/lit8 v7, v14, 0x1

    move-object/from16 v9, p1

    invoke-interface {v9, v4, v5, v6, v14}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList$ILinkedListVisitor;->visit(JSI)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, p0

    move v14, v7

    move-object/from16 v7, v17

    goto :goto_2
.end method

.method public addMember(S)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->lastKnownBlock:J

    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->firstBlockRecordCount:I

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v10

    move-object v4, p0

    move-wide v5, v1

    move-wide v7, v10

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getElementsInBlock(JJI)I

    move-result v4

    if-ge v4, v3, :cond_3

    add-int/lit8 v5, v3, -0x1

    invoke-direct {p0, v1, v2, v5}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getAddressOfElement(JI)J

    move-result-wide v6

    const/4 v8, 0x0

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, v1, v2, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    invoke-virtual {v0, v6, v7, v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v6, v7, v5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    :goto_1
    iget v5, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->metadataBitsPerRecord:I

    if-lez v5, :cond_2

    const/4 v6, 0x1

    shl-int v7, v6, v5

    sub-int/2addr v7, v6

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    const/16 v6, 0x10

    div-int v8, v6, v5

    :goto_2
    and-int/2addr p1, v7

    int-to-short p1, p1

    rem-int v5, v4, v8

    invoke-direct {p0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getAddressOfMetadata(JI)J

    move-result-wide v9

    div-int v3, v4, v8

    mul-int/lit8 v3, v3, 0x2

    int-to-long v11, v3

    add-long/2addr v9, v11

    invoke-virtual {v0, v9, v10}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getShort(J)S

    move-result v0

    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->metadataBitsPerRecord:I

    mul-int v6, v5, v3

    shl-int v6, v7, v6

    not-int v6, v6

    and-int/2addr v0, v6

    int-to-short v0, v0

    mul-int/2addr v5, v3

    shl-int/2addr p1, v5

    or-int/2addr p1, v0

    int-to-short p1, p1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    invoke-virtual {v0, v9, v10, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putShort(JS)V

    :cond_2
    iput-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->lastKnownBlock:J

    invoke-direct {p0, v1, v2, v4}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getAddressOfElement(JI)J

    move-result-wide v0

    return-wide v0

    :cond_3
    invoke-direct {p0, v1, v2, v10, v11}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->isLastBlock(JJ)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->elementRecordSize:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->recordCount:I

    iget v4, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->metadataBitsPerRecord:I

    invoke-static {v1, v2, v4}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->recordSize(III)I

    move-result v1

    int-to-long v1, v1

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v2, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloc(JS)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    goto :goto_0

    :cond_4
    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->recordCount:I

    move-wide v1, v10

    goto :goto_0
.end method

.method public destruct()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->address:J

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v3

    const/4 v5, 0x5

    invoke-virtual {v0, v1, v2, v5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->isLastBlock(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    move-wide v1, v3

    goto :goto_0
.end method

.method public getAddress()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->address:J

    return-wide v0
.end method

.method public getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    return-object v0
.end method

.method public size()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->firstBlockRecordCount:I

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->address:J

    const/4 v4, 0x0

    move v10, v1

    :goto_0
    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v11

    move-object v5, p0

    move-wide v6, v2

    move-wide v8, v11

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getElementsInBlock(JJI)I

    move-result v1

    add-int/2addr v4, v1

    invoke-direct {p0, v2, v3, v11, v12}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->isLastBlock(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    iget v10, p0, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->recordCount:I

    move-wide v2, v11

    goto :goto_0
.end method
