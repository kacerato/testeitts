.class public final Lorg/eclipse/jdt/internal/core/nd/java/NdConstantByte;
.super Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;
.source "SourceFile"


# static fields
.field public static final VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

.field public static type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdConstantByte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantByte;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->create(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantByte;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addByte()Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantByte;->VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantByte;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method

.method public static create(Lorg/eclipse/jdt/internal/core/nd/Nd;B)Lorg/eclipse/jdt/internal/core/nd/java/NdConstantByte;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantByte;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantByte;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantByte;->setValue(B)V

    return-object v0
.end method


# virtual methods
.method public getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantByte;->getValue()B

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/ByteConstant;->fromValue(B)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    return-object v0
.end method

.method public getValue()B
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantByte;->VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)B

    move-result v0

    return v0
.end method

.method public setValue(B)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantByte;->VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldByte;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JB)V

    return-void
.end method
