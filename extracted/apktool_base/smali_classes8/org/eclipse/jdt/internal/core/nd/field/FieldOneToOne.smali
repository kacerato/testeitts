.class public Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;
.super Lorg/eclipse/jdt/internal/core/nd/field/BaseField;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;
.implements Lorg/eclipse/jdt/internal/core/nd/field/IRefCountedField;


# annotations
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
.field backPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne<",
            "*>;"
        }
    .end annotation
.end field

.field private final destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

.field public final nodeType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;"
        }
    .end annotation
.end field

.field private pointsToOwner:Z

.field private final putTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;


# direct methods
.method private constructor <init>(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne<",
            "*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->nodeType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    if-eqz p2, :cond_2

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->backPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attempted to construct a FieldOneToOne referring to a backpointer list that is already in use by another field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p0, p2, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->backPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    :cond_2
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->backPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->pointsToOwner:Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "field "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getNumFields()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", a "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in struct "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->setFieldName(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Writing "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->getFieldName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->createTag(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->putTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Destructing "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->getFieldName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->createTag(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    return-void
.end method

.method private cleanup(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide p2

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->backPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    iget v3, v3, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->backPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->pointsToOwner:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/Nd;->scheduleDeletion(J)V

    :cond_0
    return-void
.end method

.method public static create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            "B::",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            ">(",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TB;>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne<",
            "TB;>;)",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;Z)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addDestructableField(Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;)V

    return-object v0
.end method

.method public static createOwner(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;)Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            "B::",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            ">(",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TB;>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne<",
            "TB;>;)",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;Z)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addDestructableField(Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addOwnerField(Lorg/eclipse/jdt/internal/core/nd/field/IRefCountedField;)V

    return-object v0
.end method


# virtual methods
.method public destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->start(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->cleanup(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    throw p1
.end method

.method public get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->nodeType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->load(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object p1

    return-object p1
.end method

.method public getRecordSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public hasReferences(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z
    .locals 4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->pointsToOwner:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object p1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v2, v0

    add-long/2addr p2, v2

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "JTT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->putTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->start(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->cleanup(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    if-nez p4, :cond_0

    iget p4, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, p4

    add-long/2addr v1, p2

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    iget-boolean p4, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->pointsToOwner:Z

    if-eqz p4, :cond_1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/Nd;->scheduleDeletion(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, p1

    add-long/2addr v1, p2

    invoke-interface {p4}, Lorg/eclipse/jdt/internal/core/nd/INdStruct;->getAddress()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    invoke-interface {p4}, Lorg/eclipse/jdt/internal/core/nd/INdStruct;->getAddress()J

    move-result-wide v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->backPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;

    iget p1, p1, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->putTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    return-void

    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToOne;->putTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    throw p1
.end method
