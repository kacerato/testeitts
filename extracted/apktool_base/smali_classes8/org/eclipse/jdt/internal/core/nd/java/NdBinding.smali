.class public abstract Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;
.super Lorg/eclipse/jdt/internal/core/nd/NdNode;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/IAdaptable;


# static fields
.field public static final MODIFIERS:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

.field public static final TYPE_PARAMETERS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldList<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/NdNode;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->create(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addInt()Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->MODIFIERS:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->TYPE_PARAMETERS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

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

.method private getSignatureFor(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;)[C
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>()V

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->getContents()[C

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public allocateTypeParameters(I)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->TYPE_PARAMETERS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->allocate(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method

.method public createTypeParameter()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->TYPE_PARAMETERS:Lorg/eclipse/jdt/internal/core/nd/field/FieldList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getAddress()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldList;->append(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;

    return-object v0
.end method

.method public getAdapter(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getBindingConstant()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->getNodeType()S

    move-result v0

    return v0
.end method

.method public getModifiers()I
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->MODIFIERS:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v0

    return v0
.end method

.method public getTypeParameterSignatures()[[C
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[C

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->getSignatureFor(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;)[C

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
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

.method public hasModifier(I)Z
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->MODIFIERS:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setModifiers(I)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->MODIFIERS:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method
