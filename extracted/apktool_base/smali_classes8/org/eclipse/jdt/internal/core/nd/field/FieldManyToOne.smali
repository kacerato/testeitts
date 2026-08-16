.class public Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
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


# static fields
.field public static final BACKPOINTER_INDEX:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

.field public static final TARGET:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

.field private static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field backPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "*>;"
        }
    .end annotation
.end field

.field private final destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

.field final localType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "+",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            ">;"
        }
    .end annotation
.end field

.field private permitsNull:Z

.field public final pointsToOwner:Z

.field private final putTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

.field targetType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->createAbstract(Ljava/lang/Class;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addPointer()Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->TARGET:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addInt()Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->BACKPOINTER_INDEX:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "+",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            ">;",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->permitsNull:Z

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->localType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->pointsToOwner:Z

    if-eqz p2, :cond_2

    iget-object p3, p2, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->forwardPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    if-eqz p3, :cond_1

    if-ne p3, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attempted to construct a FieldNodePointer referring to a backpointer list that is already in use by another field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p2, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->targetType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iget-object p3, p2, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->localType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->targetType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    iput-object p0, p2, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->forwardPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    :cond_2
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->backPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

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

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->putTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

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

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    return-void
.end method

.method public static create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
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
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "TB;>;)",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;Z)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addDestructableField(Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;)V

    return-object v0
.end method

.method public static createNonNull(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            "B::",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            ">(",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TB;>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "TB;>;)",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    move-result-object p0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->permitsNull:Z

    return-object p0
.end method

.method public static createOwner(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            "B::",
            "Lorg/eclipse/jdt/internal/core/nd/INdStruct;",
            ">(",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TB;>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany<",
            "TB;>;)",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/eclipse/jdt/internal/core/nd/NdNode;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;Z)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addDestructableField(Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addOwnerField(Lorg/eclipse/jdt/internal/core/nd/field/IRefCountedField;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-class v2, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " can\'t be the owner of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " because the latter isn\'t a subclass of "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public adjustIndex(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->BACKPOINTER_INDEX:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method

.method public clearedByBackPointer(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 8

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->TARGET:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    const-wide/16 v6, 0x0

    move-object v3, p1

    move-wide v4, v0

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    sget-object p2, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->BACKPOINTER_INDEX:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, v0, v1, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method

.method public destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 15

    move-object v7, p0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v0

    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->start(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    :try_start_0
    iget v0, v7, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v0, v0

    add-long v11, p2, v0

    sget-object v9, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->TARGET:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v11, v12}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v5

    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->detachFromOldTarget(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    const-wide/16 v13, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v0

    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v1

    iget-object v2, v7, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    throw v0
.end method

.method public detachFromOldTarget(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v0, v0

    add-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->BACKPOINTER_INDEX:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->backPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p3, p1, p4, p5, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->remove(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->targetType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->isNdNode()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lorg/eclipse/jdt/internal/core/nd/NdNode;->NODE_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {p2, p1, p4, p5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getTypeFactory(S)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->getDeletionSemantics()Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    move-result-object p3

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;->REFCOUNTED:Lorg/eclipse/jdt/internal/core/nd/field/StructDef$DeletionSemantics;

    if-ne p3, v0, :cond_0

    invoke-interface {p2, p1, p4, p5}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->isReadyForDeletion(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p4, p5}, Lorg/eclipse/jdt/internal/core/nd/Nd;->scheduleDeletion(J)V

    :cond_0
    return-void
.end method

.method public get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/INdStruct;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->getAddress(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->targetType:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-static {p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->load(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/StructDef;)Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    move-result-object p1

    return-object p1
.end method

.method public getAddress(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J
    .locals 4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v0

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->permitsNull:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Lorg/eclipse/jdt/internal/core/nd/field/IField;J)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    const-string p2, "Database contained a null in a non-null field"

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public getRecordSize()I
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->size()I

    move-result v0

    return v0
.end method

.method public hasReferences(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    sget-object p2, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->TARGET:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public permitNull(Z)Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->permitsNull:Z

    return-object p0
.end method

.method public put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V
    .locals 10

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->putTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->start(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    .line 7
    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    .line 8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->backPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    if-eqz v3, :cond_3

    .line 9
    sget-object v3, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->TARGET:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v3, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v8, p4

    if-nez v4, :cond_1

    .line 10
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->putTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    return-void

    :cond_1
    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    .line 11
    :try_start_1
    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->detachFromOldTarget(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    move-object v4, p1

    move-wide v5, v1

    move-wide v7, p4

    .line 12
    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-eqz v3, :cond_2

    .line 13
    sget-object v3, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->BACKPOINTER_INDEX:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->backPointer:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    move-object v5, p1

    move-wide v6, p4

    move-wide v8, p2

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->add(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)I

    move-result p2

    invoke-virtual {v3, p1, v1, v2, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 14
    :cond_2
    iget-boolean p4, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->pointsToOwner:Z

    if-eqz p4, :cond_0

    .line 15
    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/Nd;->scheduleDeletion(J)V

    goto :goto_0

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, " must be associated with a "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p3, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->putTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    .line 20
    throw p1
.end method

.method public put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/INdStruct;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "JTT;)V"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1
    invoke-interface {p4}, Lorg/eclipse/jdt/internal/core/nd/INdStruct;->getAddress()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean p4, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->permitsNull:Z

    if-eqz p4, :cond_1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 3
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldManyToOne;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    :goto_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attempted to write a null into a non-null field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
