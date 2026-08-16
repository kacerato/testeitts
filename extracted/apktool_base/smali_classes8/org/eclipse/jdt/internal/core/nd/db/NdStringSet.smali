.class public Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;
    }
.end annotation


# instance fields
.field private final db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

.field private head:J

.field private lazyCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private loaded:J

.field private ptr:J


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->ptr:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->head:J

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->loaded:J

    return-void
.end method

.method private getHead()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->head:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->ptr:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->head:J

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->head:J

    return-wide v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->find(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    return-wide v2

    :cond_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->newString(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getRecord()J

    move-result-wide v2

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    sget v7, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->sizeof:I

    int-to-long v7, v7

    const/4 v9, 0x6

    invoke-virtual {v6, v7, v8, v9}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloc(JS)J

    move-result-wide v8

    sget-object v10, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->Next:Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->getHead()J

    move-result-wide v14

    move-wide v12, v8

    invoke-virtual/range {v10 .. v15}, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->put(Lorg/eclipse/jdt/internal/core/nd/db/Database;JJ)V

    sget-object v6, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->Item:Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-wide v10, v2

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->put(Lorg/eclipse/jdt/internal/core/nd/db/Database;JJ)V

    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->lazyCache:Ljava/util/Map;

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->lazyCache:Ljava/util/Map;

    :cond_1
    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->lazyCache:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide v12, v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->head:J

    iget-wide v6, v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->loaded:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_2

    iput-wide v12, v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->loaded:J

    :cond_2
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v4, v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->ptr:J

    invoke-virtual {v1, v4, v5, v12, v13}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    return-wide v2
.end method

.method public clearCaches()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->head:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->loaded:J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->lazyCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->lazyCache:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public find(Ljava/lang/String;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->lazyCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->getHead()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-wide v2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->lazyCache:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->lazyCache:Ljava/util/Map;

    :cond_2
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->loaded:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->getHead()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    sget-object v4, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->Next:Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v4, v5, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->get(Lorg/eclipse/jdt/internal/core/nd/db/Database;J)J

    move-result-wide v0

    :goto_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    return-wide v2

    :cond_4
    sget-object v4, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->Next:Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v4, v5, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->get(Lorg/eclipse/jdt/internal/core/nd/db/Database;J)J

    move-result-wide v4

    sget-object v6, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->Item:Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v6, v7, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->get(Lorg/eclipse/jdt/internal/core/nd/db/Database;J)J

    move-result-wide v6

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v8, v6, v7}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getString(J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v8

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->lazyCache:Ljava/util/Map;

    invoke-interface {v8}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    invoke-interface {v8, p1, v9}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->compare(Ljava/lang/String;Z)I

    move-result v8

    if-nez v8, :cond_5

    return-wide v6

    :cond_5
    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->loaded:J

    move-wide v0, v4

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->lazyCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->getHead()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v6, v2

    :goto_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide v2

    :cond_1
    sget-object v4, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->Next:Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v4, v5, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->get(Lorg/eclipse/jdt/internal/core/nd/db/Database;J)J

    move-result-wide v8

    sget-object v5, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->Item:Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v5, v10, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->get(Lorg/eclipse/jdt/internal/core/nd/db/Database;J)J

    move-result-wide v10

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v5, v10, v11}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getString(J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v5

    const/4 v12, 0x1

    invoke-interface {v5, p1, v12}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->compare(Ljava/lang/String;Z)I

    move-result v5

    if-nez v5, :cond_3

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->head:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->put(Lorg/eclipse/jdt/internal/core/nd/db/Database;JJ)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->ptr:J

    invoke-virtual {p1, v2, v3, v8, v9}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    iput-wide v8, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->head:J

    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    return-wide v10

    :cond_3
    move-wide v6, v0

    move-wide v0, v8

    goto :goto_0
.end method
