.class Lorg/eclipse/jdt/internal/core/nd/util/PathMap$DeviceNode;
.super Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/util/PathMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node<",
        "TT;>;"
    }
.end annotation


# instance fields
.field noDevice:Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;-><init>(I)V

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$DeviceNode;->noDevice:Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    return-void
.end method


# virtual methods
.method public buildChildPath(Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;
    .locals 1

    sget-object v0, Lorg/eclipse/core/runtime/Path;->EMPTY:Lorg/eclipse/core/runtime/Path;

    invoke-virtual {v0, p1}, Lorg/eclipse/core/runtime/Path;->append(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/eclipse/core/runtime/IPath;->setDevice(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    return-object p1
.end method

.method public createChild(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$DeviceNode;->noDevice:Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->createChild(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    move-result-object p1

    return-object p1
.end method

.method public getChild(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$DeviceNode;->noDevice:Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->getChild(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    move-result-object p1

    return-object p1
.end method

.method public getSegment(Lorg/eclipse/core/runtime/IPath;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/StringBuilder;Lorg/eclipse/core/runtime/IPath;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$DeviceNode;->noDevice:Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->toString(Ljava/lang/StringBuilder;Lorg/eclipse/core/runtime/IPath;)V

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/util/PathMap$Node;->toString(Ljava/lang/StringBuilder;Lorg/eclipse/core/runtime/IPath;)V

    return-void
.end method
