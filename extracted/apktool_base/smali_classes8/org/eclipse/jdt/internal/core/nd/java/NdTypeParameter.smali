.class public Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;
.super Lorg/eclipse/jdt/internal/core/nd/NdStruct;
.source "SourceFile"


# static fields
.field public static final BOUNDS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldList<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeBound;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLG_FIRST_BOUND_IS_A_CLASS:B = 0x1t

.field public static final IDENTIFIER:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

.field public static final TYPE_PARAMETER_FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

.field public static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->create(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addString()Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->IDENTIFIER:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeBound;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->BOUNDS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addByte()Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->TYPE_PARAMETER_FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method

.method public static getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x3c

    .line 8
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x3e

    .line 10
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;

    .line 12
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setFlag(BZ)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->TYPE_PARAMETER_FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)B

    move-result v1

    if-eqz p2, :cond_0

    or-int/2addr p1, v1

    :goto_0
    int-to-byte p1, p1

    goto :goto_1

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object p2

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, p2, v1, v2, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JB)V

    return-void
.end method


# virtual methods
.method public allocateBounds(I)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->BOUNDS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocate(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method

.method public createBound(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->BOUNDS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->append(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeBound;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeBound;->setType(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V

    return-void
.end method

.method public getBounds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeBound;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->BOUNDS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()[C
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->IDENTIFIER:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v0

    return-object v0
.end method

.method public getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->getIdentifier()[C

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->getBounds()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->isFirstBoundAClass()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3a

    .line 4
    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeBound;

    .line 6
    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeBound;->getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    goto :goto_0
.end method

.method public isFirstBoundAClass()Z
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->TYPE_PARAMETER_FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)B

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setFirstBoundIsClass(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->setFlag(BZ)V

    return-void
.end method

.method public setIdentifier([C)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->IDENTIFIER:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;J[C)V

    return-void
.end method
