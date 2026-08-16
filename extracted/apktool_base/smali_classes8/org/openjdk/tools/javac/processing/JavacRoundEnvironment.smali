.class public Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/annotation/processing/RoundEnvironment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$ElementScanningIncludingTypeParameters;,
        Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$AnnotationSetMultiScanner;,
        Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;
    }
.end annotation


# static fields
.field private static final NOT_AN_ANNOTATION_TYPE:Ljava/lang/String; = "The argument does not represent an annotation type: "


# instance fields
.field private final eltUtils:Lorg/openjdk/javax/lang/model/util/Elements;

.field private final errorRaised:Z

.field private final processingEnv:Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;

.field private final processingOver:Z

.field private final rootElements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZLjava/util/Set;Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;",
            "Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->processingOver:Z

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->errorRaised:Z

    iput-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->rootElements:Ljava/util/Set;

    iput-object p4, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->processingEnv:Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;

    invoke-interface {p4}, Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;->getElementUtils()Lorg/openjdk/javax/lang/model/util/Elements;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->eltUtils:Lorg/openjdk/javax/lang/model/util/Elements;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;)Lorg/openjdk/javax/lang/model/util/Elements;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->eltUtils:Lorg/openjdk/javax/lang/model/util/Elements;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;)Lorg/openjdk/javax/lang/model/element/Element;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->mirrorAsElement(Lorg/openjdk/javax/lang/model/element/AnnotationMirror;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object p0

    return-object p0
.end method

.method private mirrorAsElement(Lorg/openjdk/javax/lang/model/element/AnnotationMirror;)Lorg/openjdk/javax/lang/model/element/Element;
    .locals 0

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/AnnotationMirror;->getAnnotationType()Lorg/openjdk/javax/lang/model/type/DeclaredType;

    move-result-object p1

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/DeclaredType;->asElement()Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object p1

    return-object p1
.end method

.method private throwIfNotAnnotation(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The argument does not represent an annotation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfNotAnnotation(Lorg/openjdk/javax/lang/model/element/TypeElement;)V
    .locals 3

    .line 3
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The argument does not represent an annotation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public errorRaised()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->errorRaised:Z

    return v0
.end method

.method public getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->throwIfNotAnnotation(Ljava/lang/Class;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->eltUtils:Lorg/openjdk/javax/lang/model/util/Elements;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object p1

    if-nez p1, :cond_1

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->getElementsAnnotatedWith(Lorg/openjdk/javax/lang/model/element/TypeElement;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getElementsAnnotatedWith(Lorg/openjdk/javax/lang/model/element/TypeElement;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->throwIfNotAnnotation(Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;

    invoke-direct {v1, p0, v0}, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;-><init>(Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;Ljava/util/Set;)V

    .line 4
    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->rootElements:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/Element;

    .line 5
    invoke-virtual {v1, v0, p1}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->scan(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getElementsAnnotatedWithAny(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;)",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 11
    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->throwIfNotAnnotation(Ljava/lang/Class;)V

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->eltUtils:Lorg/openjdk/javax/lang/model/util/Elements;

    invoke-interface {v2, v1}, Lorg/openjdk/javax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [Lorg/openjdk/javax/lang/model/element/TypeElement;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/openjdk/javax/lang/model/element/TypeElement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->getElementsAnnotatedWithAny([Lorg/openjdk/javax/lang/model/element/TypeElement;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public varargs getElementsAnnotatedWithAny([Lorg/openjdk/javax/lang/model/element/TypeElement;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 3
    invoke-direct {p0, v3}, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->throwIfNotAnnotation(Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    .line 4
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    .line 6
    new-instance v1, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$AnnotationSetMultiScanner;

    invoke-direct {v1, p0, p1}, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$AnnotationSetMultiScanner;-><init>(Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;Ljava/util/Set;)V

    .line 7
    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->rootElements:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/javax/lang/model/element/Element;

    .line 8
    invoke-virtual {v1, p1, v0}, Lorg/openjdk/javax/lang/model/util/ElementScanner6;->scan(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public getRootElements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->rootElements:Ljava/util/Set;

    return-object v0
.end method

.method public processingOver()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->processingOver:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->errorRaised:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->rootElements:Ljava/util/Set;

    iget-boolean v2, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->processingOver:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[errorRaised=%b, rootElements=%s, processingOver=%b]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
