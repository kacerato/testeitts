.class public Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;
.super Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;
.source "SourceFile"


# static fields
.field public static final DECLARED_TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdType;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_DESCRIPTOR:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey<",
            "Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIMPLE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey<",
            "Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdType;",
            ">;"
        }
    .end annotation
.end field

.field public static final USED_AS_COMPLEX_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->create(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->FIELD_DESCRIPTOR:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->SIMPLE_INDEX:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->SIMPLE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->TYPENAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;I)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;->RAW_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->USED_AS_COMPLEX_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->DECLARING_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->DECLARED_TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->useStandardRefCounting()Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;[C)V
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->fieldDescriptorToJavaName([CZ)[C

    move-result-object v0

    .line 4
    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->FIELD_DESCRIPTOR:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v1, p1, v2, v3, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;J[C)V

    .line 5
    sget-object p2, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->SIMPLE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {p2, p1, v1, v2, v0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;J[C)V

    return-void
.end method


# virtual methods
.method public findTypeByResourceAddress(J)Lorg/eclipse/jdt/internal/core/nd/java/NdType;
    .locals 6

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->size(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v3

    iget-wide v4, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v2, v3, v4, v5, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getResourceAddress()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getArrayDimensionType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBinaryName()[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getFieldDescriptor()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->fieldDescriptorToBinaryName([C)[C

    move-result-object v0

    return-object v0
.end method

.method public getComplexTypes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->USED_AS_COMPLEX_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredTypes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->DECLARED_TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringTypeChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldDescriptor()Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->FIELD_DESCRIPTOR:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    return-object v0
.end method

.method public getFieldDescriptorWithoutTrailingSemicolon()[C
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getFieldDescriptor()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v0

    array-length v1, v0

    array-length v2, v0

    if-lez v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget-char v2, v0, v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->subarray([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public getRawType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;
    .locals 0

    return-object p0
.end method

.method public getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getFieldDescriptor()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getFieldDescriptorWithoutTrailingSemicolon()[C

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_0
    return-void
.end method

.method public getSimpleName()Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->SIMPLE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleNameCharArray()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->fName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getSimpleName()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->fName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->fName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getSubTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getSubTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getComplexTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getSubTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getTypeArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasFieldDescriptor(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getFieldDescriptor()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->compare(Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasSimpleName(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->fName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getSimpleName()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isArrayType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTypeVariable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setSimpleName(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->fName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->fName:Ljava/lang/String;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->SIMPLE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLjava/lang/String;)V

    return-void
.end method
