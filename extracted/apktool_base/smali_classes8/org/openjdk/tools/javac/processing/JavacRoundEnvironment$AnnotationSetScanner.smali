.class Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;
.super Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$ElementScanningIncludingTypeParameters;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnnotationSetScanner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$ElementScanningIncludingTypeParameters<",
        "Ljava/util/Set<",
        "Lorg/openjdk/javax/lang/model/element/Element;",
        ">;",
        "Lorg/openjdk/javax/lang/model/element/TypeElement;",
        ">;"
    }
.end annotation


# instance fields
.field private annotatedElements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;->this$0:Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$ElementScanningIncludingTypeParameters;-><init>(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;->annotatedElements:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public bridge synthetic scan(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/javax/lang/model/element/TypeElement;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;->scan(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/TypeElement;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public scan(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/TypeElement;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ")",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;->this$0:Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->access$000(Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;)Lorg/openjdk/javax/lang/model/util/Elements;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openjdk/javax/lang/model/util/Elements;->getAllAnnotationMirrors(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/lang/model/element/AnnotationMirror;

    .line 3
    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;->this$0:Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;

    invoke-static {v2, v1}, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;->access$100(Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;->annotatedElements:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    invoke-interface {p1, p0, p2}, Lorg/openjdk/javax/lang/model/element/Element;->accept(Lorg/openjdk/javax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment$AnnotationSetScanner;->annotatedElements:Ljava/util/Set;

    return-object p1
.end method
