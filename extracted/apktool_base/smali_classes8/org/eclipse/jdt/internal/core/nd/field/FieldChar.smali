.class public Lorg/eclipse/jdt/internal/core/nd/field/FieldChar;
.super Lorg/eclipse/jdt/internal/core/nd/field/BaseField;
.source "SourceFile"


# instance fields
.field private final tag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "field "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", a "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in struct "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldChar;->tag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    return-void
.end method


# virtual methods
.method public get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)C
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object p1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v0, v0

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChar(J)C

    move-result p1

    return p1
.end method

.method public getRecordSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public put(Lorg/eclipse/jdt/internal/core/nd/Nd;JC)V
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldChar;->tag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->start(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object p1

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long/2addr p2, v1

    invoke-virtual {p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putChar(JC)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldChar;->tag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldChar;->tag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    throw p1
.end method
