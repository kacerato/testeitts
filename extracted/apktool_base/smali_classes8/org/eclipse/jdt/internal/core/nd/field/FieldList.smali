.class public Lorg/eclipse/jdt/internal/core/nd/field/FieldList;
.super Lorg/eclipse/jdt/internal/core/nd/field/BaseField;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/eclipse/jdt/internal/core/nd/field/BaseField;",
        "Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final FIRST_BLOCK:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

.field public static final LAST_BLOCK_WITH_ELEMENTS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

.field private static final LIST_HEADER_BYTES:I

.field private static final MAX_BYTES_IN_A_CHUNK:J

.field private static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final allocateTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

.field private final appendTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

.field private final destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

.field private final elementType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final elementsPerBlock:I

.field private final ownerType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBytesThatFitInChunks(I)J

    move-result-wide v0

    sput-wide v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->MAX_BYTES_IN_A_CHUNK:J

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->createAbstract(Ljava/lang/Class;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addPointer()Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->FIRST_BLOCK:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addPointer()Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->LAST_BLOCK_WITH_ELEMENTS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->size()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/util/MathUtils;->roundUpToNearestMultipleOfPowerOfTwo(II)I

    move-result v0

    sput v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->LIST_HEADER_BYTES:I

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "*>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->elementType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iput p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->elementsPerBlock:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->ownerType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getNumFields()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "field "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", a "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in struct "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->setFieldName(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Allocating elements for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->getFieldName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->createTag(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocateTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Appending to "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->getFieldName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->createTag(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->appendTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Deallocating "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->getFieldName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->createTag(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    return-void
.end method

.method private allocateNewBlock(Lorg/eclipse/jdt/internal/core/nd/Nd;I)J
    .locals 10

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->getMemoryPoolId(Lorg/eclipse/jdt/internal/core/nd/Nd;)S

    move-result v0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->getElementSize()I

    move-result v1

    sget v2, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->BLOCK_HEADER_BYTES:I

    mul-int v3, p2, v1

    add-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->MAX_BYTES_IN_A_CHUNK:J

    sub-long v6, v4, v2

    int-to-long v8, v1

    cmp-long v1, v6, v8

    if-gez v1, :cond_0

    move-wide v2, v4

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloc(JS)J

    move-result-wide v0

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->BLOCK_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    int-to-short p2, p2

    invoke-virtual {v2, p1, v0, v1, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JS)V

    return-wide v0
.end method

.method public static create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/FieldList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "*>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;)",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldList<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;I)Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;I)Lorg/eclipse/jdt/internal/core/nd/field/FieldList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "*>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;I)",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldList<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;I)V

    .line 3
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    .line 4
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addDestructableField(Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;)V

    return-object v0
.end method

.method private destructElements(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->elementType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->getElementSize()I

    move-result v1

    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-gez p4, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    int-to-long v2, v1

    add-long/2addr p2, v2

    goto :goto_0
.end method

.method private getElementSize()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->elementType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->getRecordSize()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/util/MathUtils;->roundUpToNearestMultipleOfPowerOfTwo(II)I

    move-result v0

    return v0
.end method

.method private getMemoryPoolId(Lorg/eclipse/jdt/internal/core/nd/Nd;)S
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->ownerType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getTypeRegistry()Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->isRegisteredClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getNodeType(Ljava/lang/Class;)S

    move-result p1

    add-int/lit16 p1, p1, 0x100

    int-to-short p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    return p1
.end method

.method private readElements(Ljava/util/List;Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "JI)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->elementType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->getElementSize()I

    move-result v1

    :goto_0
    if-gtz p5, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-long v2, v1

    add-long/2addr p3, v2

    add-int/lit8 p5, p5, -0x1

    goto :goto_0
.end method


# virtual methods
.method public allocate(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v8, p4

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocateTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->start(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    if-nez v8, :cond_0

    :goto_0
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocateTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    return-void

    :cond_0
    :try_start_0
    iget v2, v1, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v2, v2

    add-long v10, p2, v2

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->LAST_BLOCK_WITH_ELEMENTS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v2, v0, v10, v11}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v3

    sget-wide v5, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->MAX_BYTES_IN_A_CHUNK:J

    sget v7, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->BLOCK_HEADER_BYTES:I

    int-to-long v12, v7

    sub-long/2addr v5, v12

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->getElementSize()I

    move-result v7

    int-to-long v12, v7

    div-long/2addr v5, v12

    long-to-int v12, v5

    const-wide/16 v13, 0x0

    cmp-long v5, v3, v13

    if-nez v5, :cond_1

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v1, v0, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocateNewBlock(Lorg/eclipse/jdt/internal/core/nd/Nd;I)J

    move-result-wide v15

    move-object/from16 v3, p1

    move-wide v4, v10

    move-wide v6, v15

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->FIRST_BLOCK:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    move-object/from16 v3, p1

    move-wide v4, v10

    move-wide v6, v15

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    move-wide v3, v15

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    move-wide v4, v3

    move v2, v8

    :goto_2
    sget-object v3, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->NEXT_BLOCK:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v3, v0, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v6

    sget-object v10, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->ELEMENTS_IN_USE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v10, v0, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v10

    sget-object v11, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->BLOCK_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v11, v0, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v11

    sub-int/2addr v11, v10

    sub-int v10, v2, v11

    if-gtz v10, :cond_2

    goto :goto_0

    :cond_2
    cmp-long v2, v6, v13

    if-nez v2, :cond_3

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocateNewBlock(Lorg/eclipse/jdt/internal/core/nd/Nd;I)J

    move-result-wide v15

    move-object v2, v3

    move-object/from16 v3, p1

    move-wide v6, v15

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v10

    move-wide v4, v15

    goto :goto_2

    :cond_3
    move-wide v4, v6

    move v2, v10

    goto :goto_2

    :goto_3
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocateTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    throw v0
.end method

.method public append(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J)TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->appendTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->start(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    :try_start_0
    iget v2, v1, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v2, v2

    add-long v9, p2, v2

    sget-object v11, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->LAST_BLOCK_WITH_ELEMENTS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v11, v0, v9, v10}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v2

    const-wide/16 v12, 0x0

    cmp-long v4, v2, v12

    if-nez v4, :cond_0

    iget v2, v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->elementsPerBlock:I

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocateNewBlock(Lorg/eclipse/jdt/internal/core/nd/Nd;I)J

    move-result-wide v14

    move-object v2, v11

    move-object/from16 v3, p1

    move-wide v4, v9

    move-wide v6, v14

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->FIRST_BLOCK:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    move-object/from16 v3, p1

    move-wide v4, v9

    move-wide v6, v14

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    move-wide v4, v14

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    move-wide v4, v2

    :goto_0
    sget-object v14, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->ELEMENTS_IN_USE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v14, v0, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v2

    sget-object v3, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->BLOCK_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v3, v0, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v3

    if-lt v2, v3, :cond_2

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->NEXT_BLOCK:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v2, v0, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v6

    cmp-long v3, v6, v12

    if-nez v3, :cond_1

    iget v3, v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->elementsPerBlock:I

    invoke-direct {v1, v0, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocateNewBlock(Lorg/eclipse/jdt/internal/core/nd/Nd;I)J

    move-result-wide v12

    move-object/from16 v3, p1

    move-wide v6, v12

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    goto :goto_1

    :cond_1
    move-wide v12, v6

    :goto_1
    move-object v2, v11

    move-object/from16 v3, p1

    move-wide v4, v9

    move-wide v6, v12

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    invoke-virtual {v14, v0, v12, v13}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v2

    move-wide v4, v12

    :cond_2
    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    invoke-virtual {v14, v0, v4, v5, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JS)V

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->getElementSize()I

    move-result v3

    sget v6, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->BLOCK_HEADER_BYTES:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v4, v2

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->elementType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v2

    invoke-interface {v2, v0, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->appendTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    return-object v0

    :goto_2
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->appendTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    throw v0
.end method

.method public asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v0, v0

    add-long/2addr p2, v0

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->FIRST_BLOCK:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide p2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-object v6

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->NEXT_BLOCK:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v7

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->ELEMENTS_IN_USE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v5

    sget v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->BLOCK_HEADER_BYTES:I

    int-to-long v0, v0

    add-long v3, p2, v0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->readElements(Ljava/util/List;Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    move-wide p2, v7

    goto :goto_0
.end method

.method public destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->start(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->getMemoryPoolId(Lorg/eclipse/jdt/internal/core/nd/Nd;)S

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v2, v2

    add-long/2addr p2, v2

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->FIRST_BLOCK:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v2, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->getRecordSize()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, p2, p3, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->clearRange(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    sget-object v4, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->NEXT_BLOCK:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v4, p1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v4

    sget-object v6, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->ELEMENTS_IN_USE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v6, p1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v6

    sget v7, Lorg/eclipse/jdt/internal/core/nd/field/FieldList$BlockHeader;->BLOCK_HEADER_BYTES:I

    int-to-long v7, v7

    add-long/2addr v7, v2

    invoke-direct {p0, p1, v7, v8, v6}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->destructElements(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    invoke-virtual {v0, v2, v3, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v2, v4

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    throw p1
.end method

.method public getRecordSize()I
    .locals 1

    sget v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->LIST_HEADER_BYTES:I

    return v0
.end method
