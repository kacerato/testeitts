.class public Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
.super Lorg/eclipse/jdt/internal/core/nd/field/BaseField;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;
.implements Lorg/eclipse/jdt/internal/core/nd/field/IRefCountedField;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$Visitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
        ">",
        "Lorg/eclipse/jdt/internal/core/nd/field/BaseField;",
        "Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;",
        "Lorg/eclipse/jdt/internal/core/nd/field/IRefCountedField;"
    }
.end annotation


# instance fields
.field private final backPointerArray:Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;

.field forwardPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "*>;"
        }
    .end annotation
.end field

.field public final localType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "+",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            ">;"
        }
    .end annotation
.end field

.field public targetType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "+",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            ">;",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "+",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->localType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    if-eqz p2, :cond_2

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->backPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attempted to construct a FieldBackPointer referring to a forward pointer that is already in use by another field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p2, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->targetType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->localType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->targetType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iput-object p0, p2, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->backPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    :cond_2
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->forwardPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "field "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getNumFields()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", a "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in struct "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->setFieldName(Ljava/lang/String;)V

    new-instance p1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;

    invoke-direct {p1, p3}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->backPointerArray:Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;

    return-void
.end method

.method public static create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            "B::",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            ">(",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TB;>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "TB;>;)",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;I)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;I)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            "B::",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            ">(",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TB;>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "TB;>;I)",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;I)V

    .line 2
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    .line 3
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addDestructableField(Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;)V

    .line 4
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addRefCountedField(Lorg/eclipse/jdt/internal/core/nd/field/IRefCountedField;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$Visitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$Visitor<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->size(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$Visitor;->visit(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public add(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)I
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->backPointerArray:Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long v2, p2, v1

    move-object v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->add(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)I

    move-result p1

    return p1
.end method

.method public asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->size(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$1;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$1;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;Ljava/util/List;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->accept(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$Visitor;)V

    return-object v0
.end method

.method public destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->size(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->forwardPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    iget-boolean p3, p3, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->pointsToOwner:Z

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->backPointerArray:Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;

    invoke-virtual {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->backPointerArray:Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;

    invoke-virtual {v3, p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)J

    move-result-wide v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->forwardPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {v5, p1, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->clearedByBackPointer(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    if-eqz p3, :cond_1

    invoke-virtual {p1, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/Nd;->scheduleDeletion(J)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public ensureCapacity(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v0, v0

    add-long/2addr p2, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->backPointerArray:Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->ensureCapacity(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method

.method public get(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)Lorg/eclipse/jdt/internal/core/nd/INdStruct;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "JI)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->backPointerArray:Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)J

    move-result-wide p2

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->targetType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->load(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object p1

    return-object p1
.end method

.method public getAddressOf(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)J
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->backPointerArray:Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getCapacity(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->backPointerArray:Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->getCapacity(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result p1

    return p1
.end method

.method public getRecordSize()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->backPointerArray:Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->getRecordSize()I

    move-result v0

    return v0
.end method

.method public hasReferences(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->forwardPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->pointsToOwner:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->isEmpty(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isEmpty(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->backPointerArray:Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->isEmpty(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z

    move-result p1

    return p1
.end method

.method public remove(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->backPointerArray:Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->remove(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->forwardPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->adjustIndex(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    :cond_0
    return-void
.end method

.method public size(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->backPointerArray:Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->size(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result p1

    return p1
.end method
