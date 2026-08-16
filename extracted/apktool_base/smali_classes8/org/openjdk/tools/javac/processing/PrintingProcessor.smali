.class public Lorg/openjdk/tools/javac/processing/PrintingProcessor;
.super Lorg/openjdk/javax/annotation/processing/AbstractProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
    }
.end annotation

.annotation runtime Lorg/openjdk/javax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "*"
    }
.end annotation

.annotation runtime Lorg/openjdk/javax/annotation/processing/SupportedSourceVersion;
    value = .enum Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_9:Lorg/openjdk/javax/lang/model/SourceVersion;
.end annotation


# instance fields
.field writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor;->writer:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public print(Lorg/openjdk/javax/lang/model/element/Element;)V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor;->writer:Ljava/io/PrintWriter;

    iget-object v2, p0, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->processingEnv:Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;->getElementUtils()Lorg/openjdk/javax/lang/model/util/Elements;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;-><init>(Ljava/io/Writer;Lorg/openjdk/javax/lang/model/util/Elements;)V

    invoke-virtual {v0, p1}, Lorg/openjdk/javax/lang/model/util/AbstractElementVisitor6;->visit(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->flush()V

    return-void
.end method

.method public process(Ljava/util/Set;Lorg/openjdk/javax/annotation/processing/RoundEnvironment;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;",
            "Lorg/openjdk/javax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Lorg/openjdk/javax/annotation/processing/RoundEnvironment;->getRootElements()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/javax/lang/model/element/Element;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor;->print(Lorg/openjdk/javax/lang/model/element/Element;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 1

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor;->writer:Ljava/io/PrintWriter;

    return-void
.end method
