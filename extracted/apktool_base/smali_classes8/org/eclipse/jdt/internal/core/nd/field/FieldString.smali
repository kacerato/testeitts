.class public Lorg/eclipse/jdt/internal/core/nd/field/FieldString;
.super Lorg/eclipse/jdt/internal/core/nd/field/BaseField;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;


# static fields
.field private static final EMPTY_CHAR_ARRAY:[C

.field public static final RECORD_SIZE:I = 0x4


# instance fields
.field private final destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

.field private final putTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->EMPTY_CHAR_ARRAY:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing field "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in struct "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->createTag(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->putTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Destructing field "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->createTag(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    return-void
.end method


# virtual methods
.method public destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->start(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->delete()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object p1

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long/2addr p2, v1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p2, p3, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    throw p1
.end method

.method public get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object p1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v0, v0

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;->create()Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getString(J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p1

    return-object p1
.end method

.method public getRecordSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public put(Lorg/eclipse/jdt/internal/core/nd/Nd;JLjava/lang/String;)V
    .locals 0

    .line 12
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;J[C)V

    return-void
.end method

.method public put(Lorg/eclipse/jdt/internal/core/nd/Nd;J[C)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->putTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->start(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    if-nez p4, :cond_0

    .line 3
    :try_start_0
    sget-object p4, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p1

    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, p4, v1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->compare([CZ)I

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->delete()V

    if-eqz p4, :cond_1

    .line 7
    array-length p1, p4

    if-lez p1, :cond_1

    .line 8
    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, p1

    add-long/2addr p2, v1

    invoke-virtual {v0, p4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->newString([C)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getRecord()J

    move-result-wide v1

    invoke-virtual {v0, p2, p3, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    goto :goto_1

    .line 9
    :cond_1
    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, p1

    add-long/2addr p2, v1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p2, p3, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->putTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    return-void

    :goto_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldString;->putTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    .line 11
    throw p1
.end method
