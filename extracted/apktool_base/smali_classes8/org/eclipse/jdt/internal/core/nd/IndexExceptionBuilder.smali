.class public final Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

.field private final relatedAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->relatedAddresses:Ljava/util/List;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    return-void
.end method


# virtual methods
.method public addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->getReportFor(JI)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;

    move-result-object v6

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->relatedAddresses:Ljava/util/List;

    new-instance v7, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;-><init>(Ljava/lang/String;JILorg/eclipse/jdt/internal/core/nd/db/ModificationLog$MemoryAccessLog;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addProblemAddress(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/nd/field/IField;J)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;
    .locals 2

    .line 3
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/core/nd/field/IField;->getOffset()I

    move-result v0

    int-to-long v0, v0

    .line 4
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/core/nd/field/IField;->getRecordSize()I

    move-result p2

    add-long/2addr p3, v0

    .line 5
    invoke-virtual {p0, p1, p3, p4, p2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addProblemAddress(Lorg/eclipse/jdt/internal/core/nd/field/IField;J)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;
    .locals 1

    .line 6
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/nd/field/IField;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/nd/field/IField;J)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public attachTo(Lorg/eclipse/jdt/internal/core/nd/db/IndexException;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->relatedAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;->addRelatedAddress(Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;)V

    goto :goto_0
.end method

.method public build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->enabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->getWriteCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;->setTime(J)V

    :cond_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->attachTo(Lorg/eclipse/jdt/internal/core/nd/db/IndexException;)V

    return-object v0
.end method
