.class public Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;
.super Lorg/eclipse/jdt/internal/core/nd/NdStruct;
.source "SourceFile"


# static fields
.field public static final NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

.field public static final VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->create(Ljava/lang/Class;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addString()Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;->NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->PARENT_ANNOTATION_VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;->VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method


# virtual methods
.method public getName()Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;->NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;->VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;

    return-object v0
.end method

.method public setName([C)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;->NAME:Lorg/eclipse/jdt/internal/core/nd/field/FieldString;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;J[C)V

    return-void
.end method

.method public setValue(Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;)V
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;->VALUE:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V

    return-void
.end method
