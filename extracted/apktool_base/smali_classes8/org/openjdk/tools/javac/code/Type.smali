.class public abstract Lorg/openjdk/tools/javac/code/Type;
.super Lorg/openjdk/tools/javac/code/AnnoConstruct;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/type/TypeMirror;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/Type$Visitor;,
        Lorg/openjdk/tools/javac/code/Type$UnknownType;,
        Lorg/openjdk/tools/javac/code/Type$ErrorType;,
        Lorg/openjdk/tools/javac/code/Type$BottomType;,
        Lorg/openjdk/tools/javac/code/Type$JCVoidType;,
        Lorg/openjdk/tools/javac/code/Type$JCNoType;,
        Lorg/openjdk/tools/javac/code/Type$UndetVar;,
        Lorg/openjdk/tools/javac/code/Type$ForAll;,
        Lorg/openjdk/tools/javac/code/Type$DelegatedType;,
        Lorg/openjdk/tools/javac/code/Type$CapturedType;,
        Lorg/openjdk/tools/javac/code/Type$TypeVar;,
        Lorg/openjdk/tools/javac/code/Type$ModuleType;,
        Lorg/openjdk/tools/javac/code/Type$PackageType;,
        Lorg/openjdk/tools/javac/code/Type$MethodType;,
        Lorg/openjdk/tools/javac/code/Type$ArrayType;,
        Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;,
        Lorg/openjdk/tools/javac/code/Type$UnionClassType;,
        Lorg/openjdk/tools/javac/code/Type$ErasedClassType;,
        Lorg/openjdk/tools/javac/code/Type$ClassType;,
        Lorg/openjdk/tools/javac/code/Type$WildcardType;,
        Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;,
        Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;
    }
.end annotation


# static fields
.field public static moreInfo:Z

.field public static final noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

.field public static final recoveryType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

.field private static final stripMetadata:Lorg/openjdk/tools/javac/code/Types$TypeMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/code/Types$TypeMapping<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static final stuckType:Lorg/openjdk/tools/javac/code/Type$JCNoType;


# instance fields
.field protected final metadata:Lorg/openjdk/tools/javac/code/TypeMetadata;

.field public tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$1;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/code/Type$1;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$2;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/code/Type$2;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/code/Type;->recoveryType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$3;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/code/Type$3;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/code/Type;->stuckType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/openjdk/tools/javac/code/Type;->moreInfo:Z

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$4;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/code/Type$4;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/code/Type;->stripMetadata:Lorg/openjdk/tools/javac/code/Types$TypeMapping;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/AnnoConstruct;-><init>()V

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Type;->metadata:Lorg/openjdk/tools/javac/code/TypeMetadata;

    return-void
.end method

.method public static baseTypes(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/Type;->baseTypes(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static contains(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")Z"
        }
    .end annotation

    .line 2
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Type;->contains(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static containsAny(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    .line 4
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static filter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-interface {p1, v1}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getModelTypes(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getModelType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static isErroneous(Lorg/openjdk/tools/javac/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static toString(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    const-string p0, ""

    return-object p0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :goto_0
    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
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
    invoke-interface {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Type$Visitor;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public annotatedType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;-><init>(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Type;->metadata:Lorg/openjdk/tools/javac/code/TypeMetadata;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/TypeMetadata;->combine(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Type;->cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public appendAnnotationsString(Ljava/lang/StringBuilder;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/code/Type;->appendAnnotationsString(Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public appendAnnotationsString(Ljava/lang/StringBuilder;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->isAnnotated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    const-string v0, " "

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public argtypes(Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public asElement()Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    return-object v0
.end method

.method public asMethodType()Lorg/openjdk/tools/javac/code/Type$MethodType;
    .locals 1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public baseType()Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    return-object p0
.end method

.method public abstract cloneWithMetadata(Lorg/openjdk/tools/javac/code/TypeMetadata;)Lorg/openjdk/tools/javac/code/Type;
.end method

.method public complete()V
    .locals 0

    return-void
.end method

.method public constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public constValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public contains(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/code/Type;->equalsIgnoreMetadata(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method

.method public containsAny(Lorg/openjdk/tools/javac/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    .line 2
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Type;->contains(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equalsIgnoreMetadata(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->typeNoMetadata()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->typeNoMetadata()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;->ANNOTATIONS:Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

    .line 3
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Type;->getMetadataOfKind(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;)Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;->getAnnotations()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
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

.method public getEnclosingType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/type/TypeKind;->OTHER:Lorg/openjdk/javax/lang/model/type/TypeKind;

    return-object v0
.end method

.method public getLowerBound()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetadata()Lorg/openjdk/tools/javac/code/TypeMetadata;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type;->metadata:Lorg/openjdk/tools/javac/code/TypeMetadata;

    return-object v0
.end method

.method public getMetadataOfKind(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;)Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type;->metadata:Lorg/openjdk/tools/javac/code/TypeMetadata;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/TypeMetadata;->get(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;)Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getModelType()Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    return-object p0
.end method

.method public getOriginalType()Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    return-object p0
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

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReturnType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTag()Lorg/openjdk/tools/javac/code/TypeTag;
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

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypeArguments()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUpperBound()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnnotated()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;->ANNOTATIONS:Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Type;->getMetadataOfKind(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;)Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;->getAnnotations()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCompound()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isErroneous()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public isExtendsBound()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFalse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFinal()Z
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIntegral()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInterface()Z
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIntersection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNullOrReference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNumeric()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isParameterized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPartial()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPrimitiveOrVoid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRaw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSuperBound()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTrue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUnbound()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUnion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public map(Lorg/openjdk/tools/javac/code/Types$TypeMapping;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/code/Types$TypeMapping<",
            "TZ;>;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p0, v0}, Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

.method public map(Lorg/openjdk/tools/javac/code/Types$TypeMapping;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/code/Types$TypeMapping<",
            "TZ;>;TZ;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

.method public needsStripping()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public stringValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stripMetadata()Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/code/Type;->stripMetadata:Lorg/openjdk/tools/javac/code/Types$TypeMapping;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/code/Type;->accept(Lorg/openjdk/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    return-object v0
.end method

.method public stripMetadataIfNeeded()Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->needsStripping()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/code/Type;->stripMetadata:Lorg/openjdk/tools/javac/code/Types$TypeMapping;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/code/Type;->accept(Lorg/openjdk/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Type;->appendAnnotationsString(Ljava/lang/StringBuilder;)V

    .line 3
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    const-string v1, "<none>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_1
    sget-boolean v1, Lorg/openjdk/tools/javac/code/Type;->moreInfo:Z

    if-eqz v1, :cond_2

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeNoMetadata()Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type;->metadata:Lorg/openjdk/tools/javac/code/TypeMetadata;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeMetadata;->EMPTY:Lorg/openjdk/tools/javac/code/TypeMetadata;

    if-ne v0, v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public withTypeVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    return-object p0
.end method
