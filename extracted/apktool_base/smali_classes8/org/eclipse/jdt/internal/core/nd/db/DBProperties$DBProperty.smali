.class Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DBProperty"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final KEY:I = 0x0

.field static final RECORD_SIZE:I = 0x8

.field static final VALUE:I = 0x4


# instance fields
.field db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

.field record:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;J)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->record:J

    .line 10
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->newString(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->newString(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p3

    const-wide/16 v0, 0x8

    const/4 v2, 0x2

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloc(JS)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->record:J

    .line 5
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getRecord()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    .line 6
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->record:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-interface {p3}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getRecord()J

    move-result-wide p2

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    .line 7
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    return-void
.end method

.method public static getComparator()Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$1;-><init>()V

    return-object v0
.end method

.method public static getKeySet(Lorg/eclipse/jdt/internal/core/nd/db/Database;Lorg/eclipse/jdt/internal/core/nd/db/BTree;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/db/Database;",
            "Lorg/eclipse/jdt/internal/core/nd/db/BTree;",
            ")",
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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$3;

    invoke-direct {v1, v0, p0}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$3;-><init>(Ljava/util/Set;Lorg/eclipse/jdt/internal/core/nd/db/Database;)V

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->accept(Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;)Z

    return-object v0
.end method

.method public static search(Lorg/eclipse/jdt/internal/core/nd/db/Database;Lorg/eclipse/jdt/internal/core/nd/db/BTree;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$2;

    invoke-direct {v1, p0, p2, v0}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$2;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;Ljava/lang/String;[Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;)V

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->accept(Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;)Z

    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public delete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->record:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getString(J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->delete()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->record:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getString(J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->delete()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->record:J

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    return-void
.end method

.method public getKey()Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->record:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getString(J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    return-object v0
.end method

.method public getRecord()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->record:J

    return-wide v0
.end method

.method public getValue()Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->record:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getString(J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    return-object v0
.end method
