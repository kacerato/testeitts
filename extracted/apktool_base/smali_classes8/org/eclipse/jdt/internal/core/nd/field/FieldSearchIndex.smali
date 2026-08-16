.class public Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;
.super Lorg/eclipse/jdt/internal/core/nd/field/BaseField;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;,
        Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;,
        Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;,
        Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$Visitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/eclipse/jdt/internal/core/nd/NdNode;",
        ">",
        "Lorg/eclipse/jdt/internal/core/nd/field/BaseField;",
        "Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;"
    }
.end annotation


# static fields
.field private static anything:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;


# instance fields
.field private final btreeFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "Lorg/eclipse/jdt/internal/core/nd/db/BTree;",
            ">;"
        }
    .end annotation
.end field

.field private final destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

.field searchKey:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$1;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->anything:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey<",
            "*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$2;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$2;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;)V

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getFactory(Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->btreeFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->searchIndex:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attempted to construct a FieldSearchIndex referring to a search key that is already in use by a different index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p0, p1, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;->searchIndex:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    :cond_2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->searchKey:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "field "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", a "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in struct "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->setFieldName(Ljava/lang/String;)V

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

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    return-void
.end method

.method public static create(Lorg/eclipse/jdt/internal/core/nd/field/StructDef;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;)Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/eclipse/jdt/internal/core/nd/NdNode;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "TB;>;",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey<",
            "TB;>;)",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getStructName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->getNumFields()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchKey;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->add(Lorg/eclipse/jdt/internal/core/nd/field/IField;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addDestructableField(Lorg/eclipse/jdt/internal/core/nd/field/IDestructableField;)V

    return-object v0
.end method


# virtual methods
.method public asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;
    .locals 1
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

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    move-result-object p2

    new-instance p3, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$7;

    invoke-direct {p3, p0, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$7;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Ljava/util/List;Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->accept(Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;)Z

    return-object v0
.end method

.method public destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->start(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->btreeFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    invoke-interface {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->destructTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    throw p1
.end method

.method public findAll(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    move-result-object p2

    new-instance p3, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$5;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$5;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/Nd;Ljava/util/List;Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->accept(Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;)Z

    return-object v7
.end method

.method public findAll(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;",
            "I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    move-result-object p2

    new-instance p3, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$6;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move v5, p5

    move-object v6, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$6;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/Nd;ILjava/util/List;Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->accept(Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;)Z

    return-object v8
.end method

.method public findBest(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;)Lorg/eclipse/jdt/internal/core/nd/NdNode;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v8, v0, [J

    new-array v0, v0, [J

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    move-result-object p2

    new-instance p3, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$3;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    move-object v7, p1

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$3;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;Lorg/eclipse/jdt/internal/core/nd/Nd;[J[J)V

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->accept(Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;)Z

    const/4 p2, 0x0

    aget-wide p2, v0, p2

    const-wide/16 p4, 0x0

    cmp-long p4, p2, p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->load(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/NdNode;

    move-result-object p1

    return-object p1
.end method

.method public findFirst(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;)Lorg/eclipse/jdt/internal/core/nd/NdNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;",
            ")TT;"
        }
    .end annotation

    sget-object v5, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->anything:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->findBest(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;)Lorg/eclipse/jdt/internal/core/nd/NdNode;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/BTree;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->btreeFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/BaseField;->offset:I

    int-to-long v1, v1

    add-long/2addr p2, v1

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    return-object p1
.end method

.method public getRecordSize()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->btreeFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->getRecordSize()I

    move-result v0

    return v0
.end method

.method public visitAll(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$Visitor;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;",
            "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$Visitor<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    move-result-object p2

    new-instance p3, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$4;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$4;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$Visitor;Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->accept(Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;)Z

    move-result p1

    return p1
.end method
