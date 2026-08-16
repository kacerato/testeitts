.class public Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;
.super Lorg/eclipse/jdt/internal/core/nd/NdNode;
.source "SourceFile"


# static fields
.field public static final PARENT:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_SIGNATURE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;",
            ">;"
        }
    .end annotation
.end field

.field public static final WILDCARD:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

.field public static final WILDCARD_EXTENDS:I = 0x1

.field public static final WILDCARD_NONE:I = 0x0

.field public static final WILDCARD_QUESTION:I = 0x3

.field public static final WILDCARD_SUPER:I = 0x2

.field public static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/NdNode;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->create(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;->TYPE_ARGUMENTS:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->createOwner(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->PARENT:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->USED_AS_TYPE_ARGUMENT:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->TYPE_SIGNATURE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addByte()Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->WILDCARD:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/NdNode;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/NdNode;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    .line 3
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->PARENT:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V

    return-void
.end method


# virtual methods
.method public getParent()Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->PARENT:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;

    return-object v0
.end method

.method public getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->getWildcard()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    return-void

    :cond_1
    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_0

    :cond_2
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->getType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    :cond_3
    return-void
.end method

.method public getType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->TYPE_SIGNATURE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    return-object v0
.end method

.method public getWildcard()I
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->WILDCARD:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)B

    move-result v0

    return v0
.end method

.method public setType(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->TYPE_SIGNATURE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V

    return-void
.end method

.method public setWildcard(I)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->WILDCARD:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    int-to-byte p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JB)V

    return-void
.end method
