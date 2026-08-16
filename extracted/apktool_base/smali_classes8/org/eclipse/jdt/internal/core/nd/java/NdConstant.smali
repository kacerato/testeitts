.class public abstract Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;
.super Lorg/eclipse/jdt/internal/core/nd/NdNode;
.source "SourceFile"


# static fields
.field public static final PARENT_ANNOTATION_VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARENT_ARRAY:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdConstantArray;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARENT_METHOD:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARENT_VARIABLE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;",
            ">;"
        }
    .end annotation
.end field

.field public static type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/NdNode;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->createAbstract(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantArray;->ELEMENTS:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->createOwner(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->PARENT_ARRAY:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;->VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->createOwner(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->PARENT_ANNOTATION_VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->CONSTANT:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->createOwner(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->PARENT_VARIABLE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->DEFAULT_VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->createOwner(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->PARENT_METHOD:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

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

.method public static create(Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/jdt/internal/compiler/impl/Constant;)Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown typeID() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantString;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/java/NdConstantString;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantInt;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;I)Lorg/eclipse/jdt/internal/core/nd/java/NdConstantInt;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantFloat;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;F)Lorg/eclipse/jdt/internal/core/nd/java/NdConstantFloat;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantDouble;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;D)Lorg/eclipse/jdt/internal/core/nd/java/NdConstantDouble;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantLong;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/java/NdConstantLong;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantBoolean;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;Z)Lorg/eclipse/jdt/internal/core/nd/java/NdConstantBoolean;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantShort;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;S)Lorg/eclipse/jdt/internal/core/nd/java/NdConstantShort;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantByte;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;B)Lorg/eclipse/jdt/internal/core/nd/java/NdConstantByte;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantChar;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;C)Lorg/eclipse/jdt/internal/core/nd/java/NdConstantChar;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;
.end method

.method public setParent(Lorg/eclipse/jdt/internal/core/nd/java/NdConstantArray;)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->PARENT_ARRAY:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
