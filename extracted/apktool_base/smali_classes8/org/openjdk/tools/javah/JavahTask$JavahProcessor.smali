.class Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;
.super Lorg/openjdk/javax/annotation/processing/AbstractProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javah/JavahTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JavahProcessor"
.end annotation

.annotation runtime Lorg/openjdk/javax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "*"
    }
.end annotation


# instance fields
.field private checkMethodParametersVisitor:Lorg/openjdk/javax/lang/model/type/TypeVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/javax/lang/model/type/TypeVisitor<",
            "Ljava/lang/Void;",
            "Lorg/openjdk/javax/lang/model/util/Types;",
            ">;"
        }
    .end annotation
.end field

.field private exit:Lorg/openjdk/tools/javah/Util$Exit;

.field private g:Lorg/openjdk/tools/javah/Gen;

.field private messager:Lorg/openjdk/javax/annotation/processing/Messager;

.field final synthetic this$0:Lorg/openjdk/tools/javah/JavahTask;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javah/JavahTask;Lorg/openjdk/tools/javah/Gen;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->this$0:Lorg/openjdk/tools/javah/JavahTask;

    invoke-direct {p0}, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;-><init>()V

    new-instance p1, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor$1;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor$1;-><init>(Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;)V

    iput-object p1, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->checkMethodParametersVisitor:Lorg/openjdk/javax/lang/model/type/TypeVisitor;

    iput-object p2, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->g:Lorg/openjdk/tools/javah/Gen;

    return-void
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;)Lorg/openjdk/tools/javah/Util$Exit;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->exit:Lorg/openjdk/tools/javah/Util$Exit;

    return-object p0
.end method

.method private checkMethodParameters(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->processingEnv:Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Lorg/openjdk/javax/lang/model/util/Types;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/lang/model/element/TypeElement;

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    invoke-interface {v2}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/javax/lang/model/element/VariableElement;

    invoke-interface {v3}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->checkMethodParametersVisitor:Lorg/openjdk/javax/lang/model/type/TypeVisitor;

    invoke-interface {v4, v3, v0}, Lorg/openjdk/javax/lang/model/type/TypeVisitor;->visit(Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getAllClasses(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->getAllClasses0(Ljava/lang/Iterable;Ljava/util/Set;)V

    return-object v0
.end method

.method private getAllClasses0(Ljava/lang/Iterable;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/TypeElement;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->typesIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->getAllClasses0(Ljava/lang/Iterable;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getSupportedSourceVersion()Lorg/openjdk/javax/lang/model/SourceVersion;
    .locals 1

    invoke-static {}, Lorg/openjdk/javax/lang/model/SourceVersion;->latest()Lorg/openjdk/javax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->init(Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;)V

    iget-object p1, p0, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->processingEnv:Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;

    invoke-interface {p1}, Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;->getMessager()Lorg/openjdk/javax/annotation/processing/Messager;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->messager:Lorg/openjdk/javax/annotation/processing/Messager;

    return-void
.end method

.method public process(Ljava/util/Set;Lorg/openjdk/javax/annotation/processing/RoundEnvironment;)Z
    .locals 3
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

    const-string p1, "class.not.found"

    :try_start_0
    invoke-interface {p2}, Lorg/openjdk/javax/annotation/processing/RoundEnvironment;->getRootElements()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->typesIn(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->getAllClasses(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->checkMethodParameters(Ljava/util/Set;)V

    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->g:Lorg/openjdk/tools/javah/Gen;

    iget-object v1, p0, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->processingEnv:Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javah/Gen;->setProcessingEnvironment(Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;)V

    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->g:Lorg/openjdk/tools/javah/Gen;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javah/Gen;->setClasses(Ljava/util/Set;)V

    iget-object p2, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->g:Lorg/openjdk/tools/javah/Gen;

    invoke-virtual {p2}, Lorg/openjdk/tools/javah/Gen;->run()V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/openjdk/tools/javah/Util$Exit; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p2

    goto :goto_2

    :catch_3
    move-exception p2

    goto :goto_3

    :goto_0
    iput-object p1, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->exit:Lorg/openjdk/tools/javah/Util$Exit;

    goto :goto_4

    :goto_1
    iget-object p2, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->messager:Lorg/openjdk/javax/annotation/processing/Messager;

    sget-object v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;->ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    iget-object v1, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->this$0:Lorg/openjdk/tools/javah/JavahTask;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "io.exception"

    invoke-static {v1, v2, p1}, Lorg/openjdk/tools/javah/JavahTask;->access$000(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/openjdk/javax/annotation/processing/Messager;->printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    goto :goto_4

    :goto_2
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->messager:Lorg/openjdk/javax/annotation/processing/Messager;

    sget-object v1, Lorg/openjdk/javax/tools/Diagnostic$Kind;->ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    iget-object v2, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->this$0:Lorg/openjdk/tools/javah/JavahTask;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lorg/openjdk/tools/javah/JavahTask;->access$000(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/openjdk/javax/annotation/processing/Messager;->printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    goto :goto_4

    :goto_3
    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->messager:Lorg/openjdk/javax/annotation/processing/Messager;

    sget-object v1, Lorg/openjdk/javax/tools/Diagnostic$Kind;->ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    iget-object v2, p0, Lorg/openjdk/tools/javah/JavahTask$JavahProcessor;->this$0:Lorg/openjdk/tools/javah/JavahTask;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lorg/openjdk/tools/javah/JavahTask;->access$000(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/openjdk/javax/annotation/processing/Messager;->printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    :cond_0
    :goto_4
    const/4 p1, 0x1

    return p1
.end method
