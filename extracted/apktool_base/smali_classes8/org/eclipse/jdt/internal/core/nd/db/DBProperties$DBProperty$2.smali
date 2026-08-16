.class Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->search(Lorg/eclipse/jdt/internal/core/nd/db/Database;Lorg/eclipse/jdt/internal/core/nd/db/BTree;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final synthetic val$db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$result:[Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;Ljava/lang/String;[Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$2;->val$db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$2;->val$result:[Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$2;->val$db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getString(J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$2;->val$key:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->compare(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public visit(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$2;->val$result:[Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$2;->val$db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-direct {v1, v2, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;J)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    return p1
.end method
