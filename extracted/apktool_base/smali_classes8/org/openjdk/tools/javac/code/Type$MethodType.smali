.class public Lorg/openjdk/tools/javac/code/Type$MethodType;
.super Lorg/openjdk/tools/javac/code/Type;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/type/ExecutableType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodType"
.end annotation


# instance fields
.field public argtypes:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field public recvtype:Lorg/openjdk/tools/javac/code/Type;

.field public restype:Lorg/openjdk/tools/javac/code/Type;

.field public thrown:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            ")V"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeMetadata;->EMPTY:Lorg/openjdk/tools/javac/code/TypeMetadata;

    invoke-direct {p0, p4, v0}, Lorg/openjdk/tools/javac/code/Type;-><init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->argtypes:Lorg/openjdk/tools/javac/util/List;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->restype:Lorg/openjdk/tools/javac/code/Type;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->thrown:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/javax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/lang/model/type/TypeVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/type/TypeVisitor;->visitExecutable(Lorg/openjdk/javax/lang/model/type/ExecutableType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/code/Type$Visitor<",
            "TR;TS;>;TS;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Type$Visitor;->visitMethodType(Lorg/openjdk/tools/javac/code/Type$MethodType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public asElement()Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public asMethodType()Lorg/openjdk/tools/javac/code/Type$MethodType;
    .locals 0

    return-object p0
.end method

.method public cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$MethodType;
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Cannot add metadata to a method type"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Type$MethodType;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$MethodType;

    move-result-object p1

    return-object p1
.end method

.method public complete()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->argtypes:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->complete()V

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->restype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->complete()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->recvtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->complete()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->thrown:Lorg/openjdk/tools/javac/util/List;

    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->complete()V

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public contains(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/code/Type;->equalsIgnoreMetadata(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->argtypes:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/code/Type;->contains(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->restype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Type;->contains(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/code/Type;->contains(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Type;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->EXECUTABLE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0
.end method

.method public bridge synthetic getParameterTypes()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->argtypes:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getReceiverType()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getReceiverType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->recvtype:Lorg/openjdk/tools/javac/code/Type;

    return-object v0
.end method

.method public bridge synthetic getReturnType()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->restype:Lorg/openjdk/tools/javac/code/Type;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/code/TypeTag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->METHOD:Lorg/openjdk/tools/javac/code/TypeTag;

    return-object v0
.end method

.method public bridge synthetic getThrownTypes()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThrownTypes()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->thrown:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getTypeVariables()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getTypeVariables()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypeVariables()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type$TypeVar;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isErroneous()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->argtypes:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->restype:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Type;->appendAnnotationsString(Ljava/lang/StringBuilder;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->argtypes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$MethodType;->restype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
