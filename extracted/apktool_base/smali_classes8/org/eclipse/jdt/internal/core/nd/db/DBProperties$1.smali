.class Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-direct {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;J)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->delete()V

    const/4 p1, 0x0

    return p1
.end method
