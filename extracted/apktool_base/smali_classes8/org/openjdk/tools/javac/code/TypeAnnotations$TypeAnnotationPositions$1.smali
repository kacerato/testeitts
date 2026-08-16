.class Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Type$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;->typeWithAnnotations(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/openjdk/tools/javac/code/Type$Visitor<",
        "Lorg/openjdk/tools/javac/code/Type;",
        "Lorg/openjdk/tools/javac/util/List<",
        "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;

.field final synthetic val$stopAt:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;->this$1:Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;->val$stopAt:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;->visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$ArrayType;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, p0, p2}, Lorg/openjdk/tools/javac/code/Type;->accept(Lorg/openjdk/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getMetadata()Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-result-object p1

    invoke-direct {v0, p2, v1, p1}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-object v0
.end method

.method public bridge synthetic visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;->visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$CapturedType;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type;->annotatedType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$ClassType;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;->val$stopAt:Lorg/openjdk/tools/javac/code/Type;

    if-eq p1, v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/openjdk/tools/javac/code/Type;->accept(Lorg/openjdk/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type$ClassType;->typarams_field:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    .line 5
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getMetadata()Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-result-object v3

    invoke-direct {v0, p2, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Type$ClassType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    .line 6
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type$ClassType;->all_interfaces_field:Lorg/openjdk/tools/javac/util/List;

    iput-object p2, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->all_interfaces_field:Lorg/openjdk/tools/javac/util/List;

    .line 7
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type$ClassType;->allparams_field:Lorg/openjdk/tools/javac/util/List;

    iput-object p2, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->allparams_field:Lorg/openjdk/tools/javac/util/List;

    .line 8
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    iput-object p2, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    .line 9
    iget p2, p1, Lorg/openjdk/tools/javac/code/Type$ClassType;->rank_field:I

    iput p2, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->rank_field:I

    .line 10
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    return-object v0

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type;->annotatedType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;->visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$ErrorType;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type;->annotatedType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;->visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$ForAll;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 1
    return-object p1
.end method

.method public bridge synthetic visitMethodType(Lorg/openjdk/tools/javac/code/Type$MethodType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;->visitMethodType(Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodType(Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$MethodType;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 1
    return-object p1
.end method

.method public bridge synthetic visitModuleType(Lorg/openjdk/tools/javac/code/Type$ModuleType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;->visitModuleType(Lorg/openjdk/tools/javac/code/Type$ModuleType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitModuleType(Lorg/openjdk/tools/javac/code/Type$ModuleType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$ModuleType;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$ModuleType;->annotatedType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type$ModuleType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitPackageType(Lorg/openjdk/tools/javac/code/Type$PackageType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;->visitPackageType(Lorg/openjdk/tools/javac/code/Type$PackageType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitPackageType(Lorg/openjdk/tools/javac/code/Type$PackageType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$PackageType;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 1
    return-object p1
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;->visitType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type;->annotatedType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$TypeVar;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type;->annotatedType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitUndetVar(Lorg/openjdk/tools/javac/code/Type$UndetVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;->visitUndetVar(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitUndetVar(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 1
    return-object p1
.end method

.method public bridge synthetic visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$TypeAnnotationPositions$1;->visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$WildcardType;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type;->annotatedType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method
