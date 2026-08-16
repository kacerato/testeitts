.class Lorg/eclipse/jdt/internal/core/nd/PrimitiveTypes$2;
.super Lorg/eclipse/jdt/internal/core/nd/AbstractTypeFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/PrimitiveTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jdt/internal/core/nd/AbstractTypeFactory<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/AbstractTypeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/PrimitiveTypes$2;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Short;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getShort(J)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public getElementClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Ljava/lang/Short;

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
