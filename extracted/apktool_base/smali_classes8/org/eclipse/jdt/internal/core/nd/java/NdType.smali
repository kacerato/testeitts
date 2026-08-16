.class public Lorg/eclipse/jdt/internal/core/nd/java/NdType;
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

.field public static final DECLARING_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENCLOSING_METHOD:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

.field public static final FIELD_DESCRIPTOR_FROM_CLASS:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

.field public static final FILE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

.field public static final FLG_GENERIC_SIGNATURE_PRESENT:B = 0x8t

.field public static final FLG_TYPE_ANONYMOUS:B = 0x1t

.field public static final FLG_TYPE_LOCAL:B = 0x2t

.field public static final FLG_TYPE_MEMBER:B = 0x4t

.field public static final INNER_CLASS_SOURCE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

.field public static final INTERFACES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;",
            ">;"
        }
    .end annotation
.end field

.field public static final METHODS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldList<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final MISSING_TYPE_NAMES:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

.field public static final SOURCE_FILE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

.field public static final SUPERCLASS:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_BITS:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

.field public static final TYPENAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;",
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

.field public static final VARIABLES:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldList<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->create(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->createOwner(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->FILE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->TYPENAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->DECLARED_TYPES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->DECLARING_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->APPLIES_TO:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->INTERFACES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->SUBCLASSES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->SUPERCLASS:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->METHODS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->TYPE_ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->VARIABLES:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addString()Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->MISSING_TYPE_NAMES:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addString()Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->SOURCE_FILE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addString()Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->INNER_CLASS_SOURCE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addByte()Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addLong()Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->TAG_BITS:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addString()Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->FIELD_DESCRIPTOR_FROM_CLASS:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addString()Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->ENCLOSING_METHOD:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    .line 3
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->FILE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V

    return-void
.end method


# virtual methods
.method public allocateAnnotations(I)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocate(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method

.method public allocateMethods(I)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->METHODS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocate(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method

.method public allocateTypeAnnotations(I)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->TYPE_ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocate(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method

.method public allocateVariables(I)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->VARIABLES:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocate(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method

.method public createAnnotation()Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->append(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;

    return-object v0
.end method

.method public createMethod()Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->METHODS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->append(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;

    return-object v0
.end method

.method public createTypeAnnotation()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->TYPE_ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->append(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;

    return-object v0
.end method

.method public createVariable()Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->VARIABLES:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->append(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;

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

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringMethod()Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->ENCLOSING_METHOD:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->DECLARING_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    return-object v0
.end method

.method public getFieldDescriptor()Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->FIELD_DESCRIPTOR_FROM_CLASS:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getTypeId()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getFieldDescriptor()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFile()Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->FILE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    return-object v0
.end method

.method public getFlag(B)Z
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

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

.method public getInterfaces()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->INTERFACES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->METHODS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMethodsInDeclarationOrder()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getDeclarationPosition()I

    move-result v4

    const-string v5, "Method "

    if-ltz v4, :cond_2

    if-ge v4, v1, :cond_2

    aget-object v6, v2, v4

    if-nez v6, :cond_1

    aput-object v3, v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->DECLARATION_POSITION:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v7

    invoke-virtual {v0, v1, v7, v8}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Lorg/eclipse/jdt/internal/core/nd/field/IField;J)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v7

    invoke-virtual {v0, v1, v7, v8}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Lorg/eclipse/jdt/internal/core/nd/field/IField;J)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getMethodName()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getMethodName()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " both claim to be at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->DECLARATION_POSITION:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v6

    invoke-virtual {v0, v1, v6, v7}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Lorg/eclipse/jdt/internal/core/nd/field/IField;J)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getMethodName()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reports invalid position of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object v0

    throw v0
.end method

.method public getMissingTypeNames()Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->MISSING_TYPE_NAMES:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    return-object v0
.end method

.method public getResourceAddress()J
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->FILE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->getAddress(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getResourceFile()Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->FILE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    return-object v0
.end method

.method public getSourceFileName()Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->SOURCE_FILE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    return-object v0
.end method

.method public getSourceName()[C
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getSourceNameOverride()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getTypeId()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getSimpleNameCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->simpleNameToSourceName([C)[C

    move-result-object v0

    return-object v0
.end method

.method public getSourceNameOverride()Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->INNER_CLASS_SOURCE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    return-object v0
.end method

.method public getSuperclass()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->SUPERCLASS:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    return-object v0
.end method

.method public getTagBits()J
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->TAG_BITS:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v0

    return-wide v0
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

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->TYPE_ANNOTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypeId()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->TYPENAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->TYPE_PARAMETERS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVariables()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->VARIABLES:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymous()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getFlag(B)Z

    move-result v0

    return v0
.end method

.method public isLocal()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getFlag(B)Z

    move-result v0

    return v0
.end method

.method public isMember()Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getFlag(B)Z

    move-result v0

    return v0
.end method

.method public setAnonymous(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->setFlag(BZ)V

    return-void
.end method

.method public setDeclaringMethod([C)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->ENCLOSING_METHOD:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;J[C)V

    return-void
.end method

.method public setDeclaringType(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->DECLARING_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V

    return-void
.end method

.method public setFieldDescriptorFromClass([C)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->FIELD_DESCRIPTOR_FROM_CLASS:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;J[C)V

    return-void
.end method

.method public setFile(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->FILE:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V

    return-void
.end method

.method public setFlag(BZ)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->FLAGS:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)B

    move-result v1

    not-int v2, p1

    and-int/2addr v1, v2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object p2

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    int-to-byte p1, p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JB)V

    return-void
.end method

.method public setIsLocal(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->setFlag(BZ)V

    return-void
.end method

.method public setIsMember(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->setFlag(BZ)V

    return-void
.end method

.method public setMissingTypeNames([C)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->MISSING_TYPE_NAMES:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;J[C)V

    return-void
.end method

.method public setSourceFileName([C)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->SOURCE_FILE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;J[C)V

    return-void
.end method

.method public setSourceNameOverride([C)V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getSourceName()[C

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->INNER_CLASS_SOURCE_NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;J[C)V

    :cond_0
    return-void
.end method

.method public setSuperclass(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->SUPERCLASS:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V

    return-void
.end method

.method public setTagBits(J)V
    .locals 6

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->TAG_BITS:Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldLong;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    return-void
.end method

.method public setTypeId(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->TYPENAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getSourceName()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
