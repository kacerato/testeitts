.class public abstract Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;
.super Lorg/eclipse/jdt/internal/core/nd/NdNode;
.source "SourceFile"


# static fields
.field public static final ANNOTATIONS_OF_THIS_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMPLEMENTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBCLASSES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdType;",
            ">;"
        }
    .end annotation
.end field

.field public static final USED_AS_CONSTANT:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdConstantClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final USED_AS_ENUM_CONSTANT:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdConstantEnum;",
            ">;"
        }
    .end annotation
.end field

.field public static final USED_AS_EXCEPTION:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdMethodException;",
            ">;"
        }
    .end annotation
.end field

.field public static final USED_AS_METHOD_ARGUMENT:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;",
            ">;"
        }
    .end annotation
.end field

.field public static final USED_AS_RETURN_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final USED_AS_TYPE_ARGUMENT:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;",
            ">;"
        }
    .end annotation
.end field

.field public static final USED_AS_TYPE_BOUND:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeBound;",
            ">;"
        }
    .end annotation
.end field

.field public static final VARIABLES_OF_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;",
            ">;"
        }
    .end annotation
.end field

.field public static type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/NdNode;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->createAbstract(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->SUPERCLASS:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->SUBCLASSES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;->ANNOTATION_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->ANNOTATIONS_OF_THIS_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->IMPLEMENTS:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->IMPLEMENTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->VARIABLES_OF_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantClass;->VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->USED_AS_CONSTANT:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantEnum;->ENUM_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->USED_AS_ENUM_CONSTANT:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->TYPE_SIGNATURE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->USED_AS_TYPE_ARGUMENT:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeBound;->TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->USED_AS_TYPE_BOUND:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;->ARGUMENT_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->USED_AS_METHOD_ARGUMENT:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodException;->EXCEPTION_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->USED_AS_EXCEPTION:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->RETURN_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->USED_AS_RETURN_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->useStandardRefCounting()Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/NdNode;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/NdNode;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method


# virtual methods
.method public abstract getArrayDimensionType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;
.end method

.method public abstract getDeclaringTypeChain()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;",
            ">;"
        }
    .end annotation
.end method

.method public getImplementations()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->IMPLEMENTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getRawType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;
.end method

.method public final getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;Z)V

    return-void
.end method

.method public abstract getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;Z)V
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

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getSubclasses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getImplementations()Ljava/util/List;

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

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->getImplementation()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSubclasses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->SUBCLASSES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTypeArguments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isArrayType()Z
.end method

.method public abstract isTypeVariable()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

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
