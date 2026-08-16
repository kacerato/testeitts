.class public Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;
.super Lorg/eclipse/jdt/internal/core/nd/NdNode;
.source "SourceFile"


# static fields
.field public static final APPLIES_TO:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdType;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMPLEMENTS:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;",
            ">;"
        }
    .end annotation
.end field

.field public static type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/NdNode;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->create(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->INTERFACES:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->createOwner(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->APPLIES_TO:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->IMPLEMENTATIONS:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->IMPLEMENTS:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/NdNode;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/jdt/internal/core/nd/java/NdType;Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/NdNode;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    .line 3
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->APPLIES_TO:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V

    .line 4
    sget-object p2, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->IMPLEMENTS:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {p2, p1, v0, v1, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V

    return-void
.end method


# virtual methods
.method public getImplementation()Lorg/eclipse/jdt/internal/core/nd/java/NdType;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->APPLIES_TO:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    return-object v0
.end method

.method public getInterface()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->IMPLEMENTS:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    return-object v0
.end method
