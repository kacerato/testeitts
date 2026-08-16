.class public final Lorg/eclipse/jdt/internal/core/nd/field/Field;
.super Lorg/eclipse/jdt/internal/core/nd/field/BaseField;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/eclipse/jdt/internal/core/nd/field/BaseField;",
        "Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;"
    }
.end annotation


# instance fields
.field public final factory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "TT;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "field "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", a "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p3, Lorg/eclipse/jdt/internal/core/nd/field/Field;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in struct "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->setFieldName(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/Field;->factory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    return-void
.end method

.method public static create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/field/Field;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "*>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;)",
            "Lorg/eclipse/jdt/internal/core/nd/field/Field<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/Field;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getFactory()Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getNumFields()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/Field;-><init>(Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addDestructableField(Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;)V

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addDependency(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;)V

    return-object v0
.end method


# virtual methods
.method public destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/Field;->factory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long/2addr p2, v1

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method

.method public get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/Field;->factory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long/2addr p2, v1

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAlignment()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getRecordSize()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/Field;->factory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->getRecordSize()I

    move-result v0

    return v0
.end method

.method public hasDestructor()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/Field;->factory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->hasDestructor()Z

    move-result v0

    return v0
.end method
