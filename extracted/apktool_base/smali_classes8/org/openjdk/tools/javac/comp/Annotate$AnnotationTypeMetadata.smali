.class public Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Annotate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnotationTypeMetadata"
.end annotation


# static fields
.field private static final NOT_AN_ANNOTATION_TYPE:Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;


# instance fields
.field private annotationTypeCompleter:Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;

.field final metaDataFor:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

.field private repeatable:Lorg/openjdk/tools/javac/code/Attribute$Compound;

.field private target:Lorg/openjdk/tools/javac/code/Attribute$Compound;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata$1;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->NOT_AN_ANNOTATION_TYPE:Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->metaDataFor:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->annotationTypeCompleter:Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;

    return-void
.end method

.method private init()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->metaDataFor:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->metaDataFor:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->complete()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->annotationTypeCompleter:Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->annotationTypeCompleter:Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->metaDataFor:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-interface {v0, v1}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;->complete(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    :cond_1
    return-void
.end method

.method public static notAnAnnotationType()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->NOT_AN_ANNOTATION_TYPE:Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    return-object v0
.end method


# virtual methods
.method public complete()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->init()V

    return-void
.end method

.method public getAnnotationElements()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->init()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->metaDataFor:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

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

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->clinit:Lorg/openjdk/tools/javac/util/Name;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide/16 v5, 0x1000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAnnotationElementsWithDefault()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->init()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->getAnnotationElements()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->defaultValue:Lorg/openjdk/tools/javac/code/Attribute;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getRepeatable()Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->init()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->repeatable:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    return-object v0
.end method

.method public getTarget()Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->init()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->target:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    return-object v0
.end method

.method public isMetadataForAnnotationType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setRepeatable(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->repeatable:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->repeatable:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    return-void
.end method

.method public setTarget(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->target:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->target:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Annotation type for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->metaDataFor:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
