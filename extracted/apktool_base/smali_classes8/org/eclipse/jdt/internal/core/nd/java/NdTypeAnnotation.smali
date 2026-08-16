.class public Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;
.super Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/IDestructable;


# static fields
.field private static final NO_TYPE_PATH:[B

.field public static final PATH:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

.field public static final PATH_LENGTH:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

.field public static final TARGET_ARG0:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

.field public static final TARGET_ARG1:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

.field public static final TARGET_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

.field public static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->create(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addByte()Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->TARGET_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addByte()Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->TARGET_ARG0:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addByte()Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->TARGET_ARG1:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addByte()Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->PATH_LENGTH:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addPointer()Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->PATH:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->NO_TYPE_PATH:[B

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method

.method private freePath()V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->PATH:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    return-void
.end method


# virtual methods
.method public destruct()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->freePath()V

    return-void
.end method

.method public getTarget()I
    .locals 5

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->TARGET_ARG0:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->TARGET_ARG1:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v2

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public getTargetInfoArg0()B
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->TARGET_ARG0:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)B

    move-result v0

    return v0
.end method

.method public getTargetInfoArg1()B
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->TARGET_ARG1:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)B

    move-result v0

    return v0
.end method

.method public getTargetType()I
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->TARGET_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)B

    move-result v0

    return v0
.end method

.method public getTypePath()[B
    .locals 6

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->PATH:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->NO_TYPE_PATH:[B

    return-object v0

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->PATH_LENGTH:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v3

    iget-wide v4, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)B

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBytes(J[B)V

    return-object v2
.end method

.method public setPath([B)V
    .locals 10

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->freePath()V

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->PATH_LENGTH:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    array-length v4, p1

    int-to-byte v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JB)V

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    array-length v1, p1

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloc(JS)J

    move-result-wide v0

    sget-object v4, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->PATH:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    move-wide v8, v0

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v0, v1, p1, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putBytes(J[BI)V

    :cond_0
    return-void
.end method

.method public setTargetInfo(BB)V
    .locals 4

    .line 3
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->TARGET_ARG0:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JB)V

    .line 4
    sget-object p1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->TARGET_ARG1:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {p1, v0, v1, v2, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JB)V

    return-void
.end method

.method public setTargetInfo(I)V
    .locals 5

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->TARGET_ARG0:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JB)V

    .line 2
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->TARGET_ARG1:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JB)V

    return-void
.end method

.method public setTargetType(I)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->TARGET_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    int-to-byte p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JB)V

    return-void
.end method
