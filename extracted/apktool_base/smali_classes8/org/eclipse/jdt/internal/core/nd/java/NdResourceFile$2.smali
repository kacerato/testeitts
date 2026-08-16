.class Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getAllWorkspaceLocations()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$Visitor<",
        "Lorg/eclipse/jdt/internal/core/nd/java/NdWorkspaceLocation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

.field private final synthetic val$result:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile$2;->this$0:Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile$2;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/eclipse/jdt/internal/core/nd/java/NdWorkspaceLocation;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile$2;->visit(ILorg/eclipse/jdt/internal/core/nd/java/NdWorkspaceLocation;)V

    return-void
.end method

.method public visit(ILorg/eclipse/jdt/internal/core/nd/java/NdWorkspaceLocation;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile$2;->val$result:Ljava/util/List;

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/java/NdWorkspaceLocation;->getPath()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
