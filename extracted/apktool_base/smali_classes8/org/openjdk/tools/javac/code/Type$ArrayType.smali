.class public Lorg/openjdk/tools/javac/code/Type$ArrayType;
.super Lorg/openjdk/tools/javac/code/Type;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/type/ArrayType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayType"
.end annotation


# instance fields
.field public elemtype:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type$ArrayType;)V
    .locals 2

    .line 4
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getMetadata()Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeMetadata;->EMPTY:Lorg/openjdk/tools/javac/code/TypeMetadata;

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/code/Type;-><init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    .line 3
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

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
    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/type/TypeVisitor;->visitArray(Lorg/openjdk/javax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Type$Visitor;->visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public allparams()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$ArrayType;
    .locals 3

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/code/Type$ArrayType$1;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/openjdk/tools/javac/code/Type$ArrayType$1;-><init>(Lorg/openjdk/tools/javac/code/Type$ArrayType;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-object v0
.end method

.method public bridge synthetic cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Type$ArrayType;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type$ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public complete()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->complete()V

    return-void
.end method

.method public contains(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/code/Type;->equalsIgnoreMetadata(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Type;->contains(Lorg/openjdk/tools/javac/code/Type;)Z

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

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Type;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getComponentType()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$ArrayType;->getComponentType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->ARRAY:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/code/TypeTag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    shl-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isErroneous()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    return v0
.end method

.method public isNullOrReference()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isParameterized()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isParameterized()Z

    move-result v0

    return v0
.end method

.method public isRaw()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isRaw()Z

    move-result v0

    return v0
.end method

.method public isReference()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVarargs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public makeVarargs()Lorg/openjdk/tools/javac/code/Type$ArrayType;
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$ArrayType$2;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Type;->metadata:Lorg/openjdk/tools/javac/code/TypeMetadata;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Type$ArrayType$2;-><init>(Lorg/openjdk/tools/javac/code/Type$ArrayType;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Lorg/openjdk/javax/lang/model/type/TypeKind;->ARRAY:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_0

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type$ArrayType;->getComponentType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v1, p0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/code/Type;->appendAnnotationsString(Ljava/lang/StringBuilder;Z)V

    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type$ArrayType;->getComponentType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Lorg/openjdk/javax/lang/model/type/TypeKind;->ARRAY:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
