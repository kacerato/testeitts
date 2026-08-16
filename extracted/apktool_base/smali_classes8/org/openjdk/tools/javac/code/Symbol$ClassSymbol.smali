.class public Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
.super Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/TypeElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassSymbol"
.end annotation


# instance fields
.field private annotationTypeMetadata:Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

.field public classfile:Lorg/openjdk/javax/tools/JavaFileObject;

.field public flatname:Lorg/openjdk/tools/javac/util/Name;

.field public fullname:Lorg/openjdk/tools/javac/util/Name;

.field public members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

.field public pool:Lorg/openjdk/tools/javac/jvm/Pool;

.field public sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

.field public trans_local:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 6

    .line 9
    new-instance v4, Lorg/openjdk/tools/javac/code/Type$ClassType;

    sget-object v0, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    const/4 v1, 0x0

    invoke-direct {v4, v0, v1, v1}, Lorg/openjdk/tools/javac/code/Type$ClassType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 10
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    return-void
.end method

.method public constructor <init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 7

    .line 1
    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;-><init>(Lorg/openjdk/tools/javac/code/Kinds$Kind;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    .line 3
    invoke-static {p3, p5}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->formFullName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    .line 4
    invoke-static {p3, p5}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->formFlatName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    .line 5
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    .line 6
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    .line 7
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    .line 8
    invoke-static {}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->notAnAnnotationType()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->annotationTypeMetadata:Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    return-void
.end method

.method private getSuperClassToSearchForAnnotations()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getSuperclass()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public accept(Lorg/openjdk/javax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/lang/model/element/ElementVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/element/ElementVisitor;->visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/code/Symbol$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/code/Symbol$Visitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Symbol$Visitor;->visitClassSymbol(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public className()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "anonymous.class"

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/util/Log;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clearAnnotationMetadata()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->metadata:Lorg/openjdk/tools/javac/code/SymbolMetadata;

    invoke-static {}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->notAnAnnotationType()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->annotationTypeMetadata:Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    return-void
.end method

.method public complete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-wide v1, p0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v3, 0x9

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    new-instance v1, Lorg/openjdk/tools/javac/code/Type$ErrorType;

    sget-object v2, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    invoke-direct {v1, p0, v2}, Lorg/openjdk/tools/javac/code/Type$ErrorType;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Type;)V

    iput-object v1, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    throw v0
.end method

.method public erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->erasure_field:Lorg/openjdk/tools/javac/code/Type;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getMetadata()Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-result-object v2

    invoke-direct {v0, p1, v1, p0, v2}, Lorg/openjdk/tools/javac/code/Type$ClassType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->erasure_field:Lorg/openjdk/tools/javac/code/Type;

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol;->erasure_field:Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

.method public flags()J
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->complete()V

    iget-wide v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    return-wide v0
.end method

.method public flatName()Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    return-object v0
.end method

.method public getAnnotationTypeMetadata()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->annotationTypeMetadata:Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/Class;)Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 2
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

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/AnnoConstruct;->getAttribute(Ljava/lang/Class;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v0

    const-class v1, Ljava/lang/annotation/Inherited;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getSuperClassToSearchForAnnotations()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getAttribute(Ljava/lang/Class;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    return-object v0
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

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getSuperClassToSearchForAnnotations()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/code/AnnoConstruct;->getInheritedAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/AnnoConstruct;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getInterfaces()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getInterfaces()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->complete()V

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    instance-of v1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Lorg/openjdk/tools/javac/code/Type$ClassType;

    .line 5
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    .line 7
    :cond_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->all_interfaces_field:Lorg/openjdk/tools/javac/util/List;

    if-eqz v1, :cond_1

    .line 8
    invoke-static {v1}, Lorg/openjdk/tools/javac/code/Type;->getModelTypes(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    return-object v0

    .line 10
    :cond_2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;
    .locals 6

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    return-object v0

    :cond_0
    const-wide/16 v2, 0x200

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->INTERFACE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    return-object v0

    :cond_1
    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->ENUM:Lorg/openjdk/javax/lang/model/element/ElementKind;

    return-object v0

    :cond_2
    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->CLASS:Lorg/openjdk/javax/lang/model/element/ElementKind;

    return-object v0
.end method

.method public getModifiers()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide v2, -0x80000000001L

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/code/Flags;->asModifierSet(J)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNestingKind()Lorg/openjdk/javax/lang/model/element/NestingKind;
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->complete()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/openjdk/javax/lang/model/element/NestingKind;->TOP_LEVEL:Lorg/openjdk/javax/lang/model/element/NestingKind;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/NestingKind;->ANONYMOUS:Lorg/openjdk/javax/lang/model/element/NestingKind;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/openjdk/javax/lang/model/element/NestingKind;->LOCAL:Lorg/openjdk/javax/lang/model/element/NestingKind;

    return-object v0

    :cond_2
    sget-object v0, Lorg/openjdk/javax/lang/model/element/NestingKind;->MEMBER:Lorg/openjdk/javax/lang/model/element/NestingKind;

    return-object v0
.end method

.method public bridge synthetic getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedName()Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    return-object v0
.end method

.method public getRawAttributes()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->complete()V

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getRawAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->complete()V

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSuperclass()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getSuperclass()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public getSuperclass()Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->complete()V

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    instance-of v1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Lorg/openjdk/tools/javac/code/Type$ClassType;

    .line 5
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    if-nez v1, :cond_0

    .line 6
    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    .line 7
    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    .line 8
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getModelType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :goto_0
    return-object v0

    .line 9
    :cond_2
    sget-object v0, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    return-object v0
.end method

.method public bridge synthetic getTypeParameters()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getTypeParameters()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isAnnotationType()Z
    .locals 4

    iget-wide v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v2, 0x2000

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

.method public isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v3, 0x200

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    :goto_2
    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v2, p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public markAbstractIfNeeded(Lorg/openjdk/tools/javac/code/Types;)V
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Types;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/comp/Enter;->getEnv(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Types;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->enumSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v4, 0x410

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/code/Types;->firstUnimplementedAbstract(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_0
    return-void
.end method

.method public members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->complete()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    return-object v0
.end method

.method public reset()V
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->erasure_field:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    instance-of v2, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$ClassType;

    sget-object v2, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type$ClassType;->setEnclosingType(Lorg/openjdk/tools/javac/code/Type;)V

    const/4 v2, -0x1

    iput v2, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->rank_field:I

    iput-object v0, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->typarams_field:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->allparams_field:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->all_interfaces_field:Lorg/openjdk/tools/javac/util/List;

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->clearAnnotationMetadata()V

    return-void
.end method

.method public setAnnotationTypeMetadata(Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;)V
    .locals 1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->annotationTypeMetadata:Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->isMetadataForAnnotationType()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->annotationTypeMetadata:Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->className()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
