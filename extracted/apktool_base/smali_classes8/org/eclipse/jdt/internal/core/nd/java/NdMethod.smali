.class public Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;
.super Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;
.source "SourceFile"


# static fields
.field public static final ANNOTATION_DATA:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DECLARATION_POSITION:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

.field public static final DECLARED_VARIABLES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXCEPTIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldList<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdMethodException;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLG_GENERIC_SIGNATURE_PRESENT:B = 0x1t

.field public static final FLG_THROWS_SIGNATURE_PRESENT:B = 0x2t

.field public static final METHOD_FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

.field public static final METHOD_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

.field public static final PARAMETERS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldList<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETURN_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->create(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addString()Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->METHOD_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addShort()Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->METHOD_FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->PARAMETERS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->DECLARING_METHOD:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->DECLARED_VARIABLES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->PARENT_METHOD:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->DEFAULT_VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodException;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->EXCEPTIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->USED_AS_RETURN_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->RETURN_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;->METHOD:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->ANNOTATION_DATA:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addInt()Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->DECLARATION_POSITION:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method

.method private getAnnotationData()Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->ANNOTATION_DATA:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;

    return-object v0
.end method


# virtual methods
.method public allocateAnnotations(I)V
    .locals 1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->createAnnotationData()Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;->allocateAnnotations(I)V

    :cond_0
    return-void
.end method

.method public allocateExceptions(I)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->EXCEPTIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocate(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method

.method public allocateParameters(I)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->PARAMETERS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocate(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method

.method public allocateTypeAnnotations(I)V
    .locals 1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->createAnnotationData()Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;->allocateTypeAnnotations(I)V

    :cond_0
    return-void
.end method

.method public createAnnotation()Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->createAnnotationData()Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;->createAnnotation()Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public createAnnotationData()Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getAnnotationData()Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;-><init>(Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;)V

    :cond_0
    return-object v0
.end method

.method public createException(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)Lorg/eclipse/jdt/internal/core/nd/java/NdMethodException;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->EXCEPTIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->append(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodException;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodException;->setExceptionType(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V

    return-object v0
.end method

.method public createNewParameter()Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->PARAMETERS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->append(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;

    return-object v0
.end method

.method public createTypeAnnotation()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->createAnnotationData()Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;->createTypeAnnotation()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getAnnotationData()Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeclarationPosition()I
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->DECLARATION_POSITION:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v0

    return v0
.end method

.method public getDefaultValue()Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->DEFAULT_VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;

    return-object v0
.end method

.method public getExceptions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdMethodException;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->EXCEPTIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->METHOD_FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v0

    return v0
.end method

.method public getGenericSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;Ljava/util/List;)V

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getMethodParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getReturnType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x56

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getExceptions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodException;

    const/16 v1, 0x5e

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append(C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodException;->getExceptionType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;->isCompilerDefined()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;->getType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    goto :goto_0
.end method

.method public getMethodDescriptor()[C
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getMethodName()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x28

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->indexOf(C[CII)I

    move-result v1

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->subarray([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public getMethodName()Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->METHOD_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    return-object v0
.end method

.method public getMethodParameters()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->PARAMETERS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()[[C
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getMethodParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [[C

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v1, :cond_0

    invoke-static {v2, v3, v5}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->subarray([[CII)[[C

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;->isCompilerDefined()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;->getName()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v6

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getReturnType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->RETURN_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    return-object v0
.end method

.method public getSelector()[C
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->METHOD_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->indexOf(C[C)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    array-length v1, v0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->subarray([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public getTagBits()J
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getAnnotationData()Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;->getTagBits()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTypeAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getAnnotationData()Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;->getTypeAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAllFlags(I)Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getFlags()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isClInit()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getSelector()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/JavaBinaryNames;->isClinit([C)Z

    move-result v0

    return v0
.end method

.method public isConstructor()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getSelector()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/JavaBinaryNames;->isConstructor([C)Z

    move-result v0

    return v0
.end method

.method public setDeclarationPosition(I)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->DECLARATION_POSITION:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method

.method public setDefaultValue(Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->DEFAULT_VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V

    return-void
.end method

.method public setFlags(I)V
    .locals 5

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->METHOD_FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getFlags()I

    move-result v4

    or-int/2addr p1, v4

    int-to-short p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JS)V

    return-void
.end method

.method public setMethodName([C)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->METHOD_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;J[C)V

    return-void
.end method

.method public setReturnType(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->RETURN_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V

    return-void
.end method

.method public setTagBits(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->createAnnotationData()Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;->setTagBits(J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getAnnotationData()Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodAnnotationData;->setTagBits(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getSelector()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getGenericSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;Z)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
