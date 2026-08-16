.class final Lorg/eclipse/jdt/internal/core/nd/java/TypeRef$TypeSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypeSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lorg/eclipse/jdt/internal/core/nd/java/NdType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef$TypeSupplier;->this$0:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef$TypeSupplier;->get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;
    .locals 7

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef$TypeSupplier;->this$0:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->ref:Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/DatabaseRef;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getIndex(Lorg/eclipse/jdt/internal/core/nd/Nd;)Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef$TypeSupplier;->this$0:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->fieldDescriptor:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->findType([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getTypes()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    .line 5
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getResourceFile()Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getLocation()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef$TypeSupplier;->this$0:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->fileName:[C

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->compare([CZ)I

    move-result v4

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->isDoneIndexing()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2
.end method
