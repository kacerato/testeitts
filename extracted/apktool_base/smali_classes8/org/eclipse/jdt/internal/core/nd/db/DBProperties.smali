.class public Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;
    }
.end annotation


# static fields
.field static final PROP_INDEX:I = 0x0

.field static final RECORD_SIZE:I = 0x4


# instance fields
.field protected db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

.field protected index:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

.field protected record:J


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    const-wide/16 v1, 0x4

    const/4 v3, 0x2

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloc(JS)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->record:J

    .line 4
    new-instance v3, Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->getComparator()Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;

    move-result-object v4

    invoke-direct {v3, p1, v1, v2, v4}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->index:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    .line 5
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    .line 8
    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->record:J

    .line 9
    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->getComparator()Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;

    move-result-object v2

    invoke-direct {v1, p1, p2, p3, v2}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->index:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    .line 10
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->index:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$1;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$1;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->accept(Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;)Z

    return-void
.end method

.method public delete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->clear()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->record:J

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    return-void
.end method

.method public getKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->index:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->getKeySet(Lorg/eclipse/jdt/internal/core/nd/db/Database;Lorg/eclipse/jdt/internal/core/nd/db/BTree;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->index:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    invoke-static {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->search(Lorg/eclipse/jdt/internal/core/nd/db/Database;Lorg/eclipse/jdt/internal/core/nd/db/BTree;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->getValue()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public getRecord()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->record:J

    return-wide v0
.end method

.method public removeProperty(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->index:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    invoke-static {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->search(Lorg/eclipse/jdt/internal/core/nd/db/Database;Lorg/eclipse/jdt/internal/core/nd/db/BTree;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->index:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->getRecord()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->delete(J)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->delete()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->removeProperty(Ljava/lang/String;)Z

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-direct {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->index:Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->getRecord()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->insert(J)J

    return-void
.end method
