.class public abstract Lorg/eclipse/jdt/internal/core/nd/NdNode;
.super Lorg/eclipse/jdt/internal/core/nd/NdStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/IDestructable;


# static fields
.field public static final NODE_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

.field public static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/NdNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/NdNode;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->create(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/NdNode;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addShort()Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/NdNode;->NODE_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V
    .locals 5

    const-wide/16 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getNodeType(Ljava/lang/Class;)S

    move-result v1

    .line 5
    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getTypeFactory(S)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->getRecordSize()I

    move-result v2

    int-to-long v2, v2

    add-int/lit16 v4, v1, 0x100

    int-to-short v4, v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloc(JS)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    .line 7
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/NdNode;->NODE_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JS)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method

.method public static getBit(II)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getNodeId(II)I
    .locals 1

    shl-int/lit8 p0, p0, 0x10

    const v0, 0xffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static load(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/INdStruct;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            ">(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;)TT;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    :try_start_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/NdNode;->NODE_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getNode(JS)Lorg/eclipse/jdt/internal/core/nd/NdNode;

    move-result-object v1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/core/nd/db/IndexException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructClass()Ljava/lang/Class;

    move-result-object p3

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p0

    .line 8
    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Lorg/eclipse/jdt/internal/core/nd/field/IField;J)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Found wrong data type at address "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ". Expected a subclass of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but found "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p0

    .line 12
    throw p0

    :catch_0
    move-exception p3

    .line 13
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p0

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/NdNode;->NODE_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Lorg/eclipse/jdt/internal/core/nd/field/IField;J)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->attachTo(Lorg/eclipse/jdt/internal/core/nd/db/IndexException;)V

    .line 14
    throw p3
.end method

.method public static load(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/NdNode;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    :try_start_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/NdNode;->NODE_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getNode(JS)Lorg/eclipse/jdt/internal/core/nd/NdNode;

    move-result-object p0
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/core/nd/db/IndexException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p0

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/NdNode;->NODE_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {p0, v1, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Lorg/eclipse/jdt/internal/core/nd/field/IField;J)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->attachTo(Lorg/eclipse/jdt/internal/core/nd/db/IndexException;)V

    .line 3
    throw v0
.end method


# virtual methods
.method public final delete()V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->delete(J)V

    return-void
.end method

.method public destruct()V
    .locals 0

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/nd/NdNode;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/core/nd/NdNode;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    iget-wide v3, p1, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAddress()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    return-wide v0
.end method

.method public final getBindingID()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    return-wide v0
.end method

.method public getByte(J)B
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getByte(J)B

    move-result p1

    return p1
.end method

.method public getNodeType()S
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getNodeType(Ljava/lang/Class;)S

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    const/4 v2, 0x3

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
