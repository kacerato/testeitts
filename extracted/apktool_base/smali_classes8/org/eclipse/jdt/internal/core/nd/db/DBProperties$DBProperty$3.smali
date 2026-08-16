.class Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->getKeySet(Lorg/eclipse/jdt/internal/core/nd/db/Database;Lorg/eclipse/jdt/internal/core/nd/db/BTree;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final synthetic val$db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

.field private final synthetic val$result:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lorg/eclipse/jdt/internal/core/nd/db/Database;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$3;->val$result:Ljava/util/Set;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$3;->val$db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(J)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public visit(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$3;->val$result:Ljava/util/Set;

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$3;->val$db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-direct {v1, v2, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;J)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->getKey()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
