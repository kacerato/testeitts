.class public Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;
.super Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;
.source "SourceFile"


# static fields
.field public static final ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldList<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONSTANT:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;",
            ">;"
        }
    .end annotation
.end field

.field public static final DECLARING_METHOD:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLG_GENERIC_SIGNATURE_PRESENT:B = 0x1t

.field public static final NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

.field public static final TAG_BITS:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

.field public static final TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldList<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final VARIABLE_FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

.field public static final VARIABLE_ID:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

.field public static type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->create(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->VARIABLES_OF_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addInt()Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->VARIABLE_ID:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->DECLARED_VARIABLES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->DECLARING_METHOD:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addString()Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->PARENT_VARIABLE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->CONSTANT:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addLong()Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->TAG_BITS:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addByte()Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->VARIABLE_FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->TYPE_ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method


# virtual methods
.method public allocateAnnotations(I)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocate(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method

.method public allocateTypeAnnotations(I)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->TYPE_ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocate(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method

.method public createAnnotation()Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->append(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;

    return-object v0
.end method

.method public createTypeAnnotation()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->TYPE_ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->append(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;

    return-object v0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConstant()Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->CONSTANT:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;

    return-object v0
.end method

.method public getName()Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    return-object v0
.end method

.method public getTagBits()J
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->TAG_BITS:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    return-object v0
.end method

.method public getTypeAnnotations()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->TYPE_ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasVariableFlag(I)Z
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->VARIABLE_FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)B

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setConstant(Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->CONSTANT:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V

    return-void
.end method

.method public setName([C)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;J[C)V

    return-void
.end method

.method public setTagBits(J)V
    .locals 6

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->TAG_BITS:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    return-void
.end method

.method public setType(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V

    return-void
.end method

.method public setVariableFlag(B)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->VARIABLE_FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)B

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    int-to-byte p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JB)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->getType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->getName()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->getConstant()Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
