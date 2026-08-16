.class Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->isPackage([[C[C)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$Visitor<",
        "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;

.field private final synthetic val$fieldDescriptorPrefix:[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment$1;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment$1;->val$fieldDescriptorPrefix:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment$1;->visit(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;)Z
    .locals 3

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getFieldDescriptor()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->length()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment$1;->val$fieldDescriptorPrefix:[C

    array-length v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getTypes()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    .line 5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->isMember()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->isLocal()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->isAnonymous()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getFile()Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment$1;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/IndexBasedJavaSearchEnvironment;->containsPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1
.end method
