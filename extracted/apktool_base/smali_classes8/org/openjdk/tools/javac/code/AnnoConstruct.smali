.class public abstract Lorg/openjdk/tools/javac/code/AnnoConstruct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/AnnotatedConstruct;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContainer(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/annotation/Repeatable;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Repeatable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/annotation/Repeatable;->value()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static unpackAttributes(Lorg/openjdk/tools/javac/code/Attribute$Compound;)[Lorg/openjdk/tools/javac/code/Attribute;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->value:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->member(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/Attribute$Array;

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Attribute$Array;->values:[Lorg/openjdk/tools/javac/code/Attribute;

    return-object p0
.end method

.method private unpackContained(Lorg/openjdk/tools/javac/code/Attribute$Compound;)[Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 5

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/AnnoConstruct;->unpackAttributes(Lorg/openjdk/tools/javac/code/Attribute$Compound;)[Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    instance-of v4, v3, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->size()I

    move-result p1

    new-array p1, p1, [Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/openjdk/tools/javac/code/Attribute$Compound;

    return-object p1
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/AnnoConstruct;->getAttribute(Ljava/lang/Class;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->generateAnnotation(Lorg/openjdk/tools/javac/code/Attribute$Compound;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an annotation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/AnnoConstruct;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation
.end method

.method public getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)[TA;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/AnnoConstruct;->getContainer(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/AnnoConstruct;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/annotation/Annotation;

    check-cast p1, [Ljava/lang/annotation/Annotation;

    if-eqz v0, :cond_1

    aput-object v0, p1, v2

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/AnnoConstruct;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    move v7, v6

    move v8, v7

    move v9, v8

    move-object v6, v5

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    add-int/2addr v7, v1

    iget-object v11, v10, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v11, v11, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v11}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v11

    invoke-virtual {v11, v3}, Lorg/openjdk/tools/javac/util/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v8, v7

    move-object v5, v10

    goto :goto_0

    :cond_4
    iget-object v11, v10, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v11, v11, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v11}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v11

    invoke-virtual {v11, v0}, Lorg/openjdk/tools/javac/util/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v9, v7

    move-object v6, v10

    goto :goto_0

    :cond_5
    const-class v0, Ljava/lang/annotation/Inherited;

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/AnnoConstruct;->getInheritedAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-direct {p0, v6}, Lorg/openjdk/tools/javac/code/AnnoConstruct;->unpackContained(Lorg/openjdk/tools/javac/code/Attribute$Compound;)[Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v3

    if-nez v5, :cond_7

    array-length v4, v3

    if-nez v4, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/AnnoConstruct;->getInheritedAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1

    :cond_7
    if-nez v5, :cond_8

    move v0, v2

    goto :goto_1

    :cond_8
    move v0, v1

    :goto_1
    array-length v4, v3

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    check-cast v0, [Ljava/lang/annotation/Annotation;

    array-length v4, v0

    if-ltz v8, :cond_b

    if-ltz v9, :cond_b

    if-ge v8, v9, :cond_9

    invoke-static {v5, p1}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->generateAnnotation(Lorg/openjdk/tools/javac/code/Attribute$Compound;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    aput-object v5, v0, v2

    goto :goto_2

    :cond_9
    array-length v6, v0

    sub-int/2addr v6, v1

    invoke-static {v5, p1}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->generateAnnotation(Lorg/openjdk/tools/javac/code/Attribute$Compound;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    aput-object v1, v0, v6

    add-int/lit8 v4, v4, -0x1

    :cond_a
    move v1, v2

    goto :goto_2

    :cond_b
    if-ltz v8, :cond_a

    invoke-static {v5, p1}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->generateAnnotation(Lorg/openjdk/tools/javac/code/Attribute$Compound;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    aput-object p1, v0, v2

    return-object v0

    :goto_2
    add-int v5, v2, v1

    if-ge v5, v4, :cond_c

    aget-object v6, v3, v2

    invoke-static {v6, p1}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->generateAnnotation(Lorg/openjdk/tools/javac/code/Attribute$Compound;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    aput-object v6, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an annotation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttribute(Ljava/lang/Class;)Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/AnnoConstruct;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInheritedAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)[TA;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/annotation/Annotation;

    check-cast p1, [Ljava/lang/annotation/Annotation;

    return-object p1
.end method
