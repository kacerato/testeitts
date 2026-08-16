.class Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/db/DBProperties$DBProperty;->getComparator()Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getString(J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p2

    invoke-virtual {p1, p4, p5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getString(J)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p2, p1, p3}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->compare(Lorg/eclipse/jdt/internal/core/nd/db/IString;Z)I

    move-result p1

    return p1
.end method
