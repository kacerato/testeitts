.class public Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypesExceptionProxy;,
        Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$MirroredTypeExceptionProxy;,
        Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;
    }
.end annotation


# instance fields
.field private final anno:Lorg/openjdk/tools/javac/code/Attribute$Compound;

.field private final annoType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/code/Attribute$Compound;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->anno:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    iput-object p2, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->annoType:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->annoType:Ljava/lang/Class;

    return-object p0
.end method

.method private generateAnnotation()Ljava/lang/annotation/Annotation;
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->annoType:Ljava/lang/Class;

    .line 4
    invoke-direct {p0}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->getAllReflectedValues()Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lsun/reflect/annotation/AnnotationParser;->annotationForMap(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public static generateAnnotation(Lorg/openjdk/tools/javac/code/Attribute$Compound;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;-><init>(Lorg/openjdk/tools/javac/code/Attribute$Compound;Ljava/lang/Class;)V

    .line 2
    invoke-direct {v0}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->generateAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method private generateValue(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Attribute;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;-><init>(Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker$ValueVisitor;->getValue(Lorg/openjdk/tools/javac/code/Attribute;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getAllReflectedValues()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->getAllValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Attribute;

    invoke-direct {p0, v3, v2}, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->generateValue(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Attribute;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getAllValues()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Attribute;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->anno:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v4, :cond_0

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->getDefaultValue()Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/model/AnnotationProxyMaker;->anno:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v0
.end method
