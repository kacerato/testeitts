.class public final Lorg/eclipse/jdt/internal/core/nd/java/NdConstantDouble;
.super Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;
.source "SourceFile"


# static fields
.field public static final VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldDouble;

.field public static type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdConstantDouble;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantDouble;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->create(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantDouble;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addDouble()Lorg/eclipse/jdt/internal/core/nd/field/FieldDouble;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantDouble;->VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldDouble;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantDouble;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

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

.method public static create(Lorg/eclipse/jdt/internal/core/nd/Nd;D)Lorg/eclipse/jdt/internal/core/nd/java/NdConstantDouble;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantDouble;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantDouble;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantDouble;->setValue(D)V

    return-object v0
.end method


# virtual methods
.method public getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantDouble;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    return-object v0
.end method

.method public getValue()D
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantDouble;->VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldDouble;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldDouble;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)D

    move-result-wide v0

    return-wide v0
.end method

.method public setValue(D)V
    .locals 6

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantDouble;->VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldDouble;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldDouble;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JD)V

    return-void
.end method
