.class public Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
.super Lorg/openjdk/javax/lang/model/util/SimpleElementVisitor9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/PrintingProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrintingElementVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/javax/lang/model/util/SimpleElementVisitor9<",
        "Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final spaces:[Ljava/lang/String;


# instance fields
.field final elementUtils:Lorg/openjdk/javax/lang/model/util/Elements;

.field indentation:I

.field final writer:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v9, "                  "

    const-string v10, "                    "

    const-string v0, ""

    const-string v1, "  "

    const-string v2, "    "

    const-string v3, "      "

    const-string v4, "        "

    const-string v5, "          "

    const-string v6, "            "

    const-string v7, "              "

    const-string v8, "                "

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->spaces:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/openjdk/javax/lang/model/util/Elements;)V
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/javax/lang/model/util/SimpleElementVisitor9;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->elementUtils:Lorg/openjdk/javax/lang/model/util/Elements;

    const/4 p1, 0x0

    iput p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    return-void
.end method

.method private indent()V
    .locals 4

    iget v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->spaces:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-le v0, v1, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    sget-object v3, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->spaces:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    sget-object v2, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->spaces:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printAnnotations(Lorg/openjdk/javax/lang/model/element/Element;)V
    .locals 2

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/AnnotationMirror;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private printAnnotationsInline(Lorg/openjdk/javax/lang/model/element/Element;)V
    .locals 2

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/AnnotationMirror;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private printDirective(Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;)V
    .locals 2

    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    new-instance v0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$PrintDirective;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, p1}, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveVisitor;->visit(Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private printDocComment(Lorg/openjdk/javax/lang/model/element/Element;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->elementUtils:Lorg/openjdk/javax/lang/model/util/Elements;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/lang/model/util/Elements;->getDocComment(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "\n\r"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, "/**"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, " *"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v0, " */"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private printFormalTypeParameters(Lorg/openjdk/javax/lang/model/element/Parameterizable;Z)V
    .locals 3

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Parameterizable;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/lang/model/element/TypeParameterElement;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printAnnotationsInline(Lorg/openjdk/javax/lang/model/element/Element;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private printInterfaces(Lorg/openjdk/javax/lang/model/element/TypeElement;)V
    .locals 3

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_2

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Lorg/openjdk/javax/lang/model/element/ElementKind;->isClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " implements"

    goto :goto_0

    :cond_0
    const-string v0, " extends"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/lang/model/type/TypeMirror;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private printModifiers(Lorg/openjdk/javax/lang/model/element/Element;)V
    .locals 3

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printAnnotationsInline(Lorg/openjdk/javax/lang/model/element/Element;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printAnnotations(Lorg/openjdk/javax/lang/model/element/Element;)V

    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    :goto_0
    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->ENUM_CONSTANT:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lorg/openjdk/tools/javac/processing/PrintingProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/openjdk/javax/lang/model/element/Modifier;->FINAL:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object p1, Lorg/openjdk/javax/lang/model/element/Modifier;->ABSTRACT:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object p1, Lorg/openjdk/javax/lang/model/element/Modifier;->ABSTRACT:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getEnclosingElement()Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/javax/lang/model/element/ElementKind;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lorg/openjdk/javax/lang/model/element/Modifier;->PUBLIC:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object p1, Lorg/openjdk/javax/lang/model/element/Modifier;->ABSTRACT:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object p1, Lorg/openjdk/javax/lang/model/element/Modifier;->STATIC:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object p1, Lorg/openjdk/javax/lang/model/element/Modifier;->FINAL:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/Modifier;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/openjdk/javax/lang/model/element/Modifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private printParameters(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)V
    .locals 13

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_9

    const-string v2, " "

    const-string v3, "..."

    const-class v4, Lorg/openjdk/javax/lang/model/type/ArrayType;

    const-string v5, "Var-args parameter is not an array type: "

    const/4 v6, 0x1

    if-eq v1, v6, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v6

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/openjdk/javax/lang/model/element/VariableElement;

    if-ne v8, v10, :cond_0

    iget v10, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    add-int/2addr v10, v6

    iput v10, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    :cond_0
    if-le v8, v6, :cond_1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    :cond_1
    invoke-direct {p0, v9}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printModifiers(Lorg/openjdk/javax/lang/model/element/Element;)V

    if-ne v8, v1, :cond_3

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->isVarArgs()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v10

    invoke-interface {v10}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v11

    sget-object v12, Lorg/openjdk/javax/lang/model/type/TypeKind;->ARRAY:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v4, v10}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/openjdk/javax/lang/model/type/ArrayType;

    invoke-interface {v10}, Lorg/openjdk/javax/lang/model/type/ArrayType;->getComponentType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-object v10, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    iget-object v10, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {v9}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :goto_1
    iget-object v10, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lorg/openjdk/javax/lang/model/element/VariableElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ge v8, v1, :cond_4

    iget-object v9, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v10, :cond_9

    iget p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    sub-int/2addr p1, v6

    iput p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    goto :goto_4

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/lang/model/element/VariableElement;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printModifiers(Lorg/openjdk/javax/lang/model/element/Element;)V

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->isVarArgs()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-interface {v6}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v7

    sget-object v8, Lorg/openjdk/javax/lang/model/type/TypeKind;->ARRAY:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v7, v8, :cond_7

    iget-object v7, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/javax/lang/model/type/ArrayType;

    invoke-interface {v6}, Lorg/openjdk/javax/lang/model/type/ArrayType;->getComponentType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-object v6, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_8
    iget-object v6, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :goto_3
    iget-object v6, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/VariableElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    :goto_4
    return-void
.end method

.method private printThrows(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)V
    .locals 7

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v2, " throws"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/javax/lang/model/type/TypeMirror;

    if-ne v2, v1, :cond_0

    iget-object v5, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    if-ne v2, v4, :cond_1

    iget v5, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    :cond_1
    if-lt v2, v4, :cond_2

    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    :cond_2
    iget-object v4, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eq v2, v0, :cond_3

    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-lt v0, v4, :cond_5

    iget p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    :cond_5
    return-void
.end method


# virtual methods
.method public bridge synthetic defaultAction(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->defaultAction(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    move-result-object p1

    return-object p1
.end method

.method public defaultAction(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printDocComment(Lorg/openjdk/javax/lang/model/element/Element;)V

    .line 5
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printModifiers(Lorg/openjdk/javax/lang/model/element/Element;)V

    return-object p0
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public bridge synthetic visitExecutable(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visitExecutable(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitExecutable(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
    .locals 3

    .line 2
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object p2

    .line 3
    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->STATIC_INIT:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq p2, v0, :cond_4

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->INSTANCE_INIT:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq p2, v0, :cond_4

    .line 4
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getEnclosingElement()Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v0

    .line 5
    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->CONSTRUCTOR:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne p2, v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/NestingKind;->ANONYMOUS:Lorg/openjdk/javax/lang/model/element/NestingKind;

    new-instance v2, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$1;

    invoke-direct {v2, p0}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$1;-><init>(Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;)V

    .line 6
    invoke-virtual {v2, v0}, Lorg/openjdk/javax/lang/model/util/AbstractElementVisitor6;->visit(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_0

    return-object p0

    .line 7
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->defaultAction(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printFormalTypeParameters(Lorg/openjdk/javax/lang/model/element/Parameterizable;Z)V

    .line 9
    sget-object v1, Lorg/openjdk/tools/javac/processing/PrintingProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getReturnType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getEnclosingElement()Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 14
    :goto_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printParameters(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)V

    .line 16
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getDefaultValue()Lorg/openjdk/javax/lang/model/element/AnnotationValue;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 18
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " default "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    :cond_3
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printThrows(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)V

    .line 20
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    return-object p0
.end method

.method public bridge synthetic visitModule(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visitModule(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitModule(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
    .locals 2

    .line 2
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->defaultAction(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    .line 3
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ModuleElement;->isUnnamed()Z

    move-result p2

    if-nez p2, :cond_2

    .line 4
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ModuleElement;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v0, "open "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ModuleElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    iget p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    .line 8
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ModuleElement;->getDirectives()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;

    .line 9
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printDirective(Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;)V

    goto :goto_0

    .line 10
    :cond_1
    iget p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    .line 11
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string p2, "// Unnamed module"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public bridge synthetic visitPackage(Lorg/openjdk/javax/lang/model/element/PackageElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visitPackage(Lorg/openjdk/javax/lang/model/element/PackageElement;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitPackage(Lorg/openjdk/javax/lang/model/element/PackageElement;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
    .locals 2

    .line 2
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->defaultAction(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    .line 3
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/PackageElement;->isUnnamed()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/PackageElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string p2, "// Unnamed package"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/javax/lang/model/element/TypeElement;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
    .locals 6

    .line 2
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object p2

    .line 3
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getNestingKind()Lorg/openjdk/javax/lang/model/element/NestingKind;

    move-result-object v0

    .line 4
    sget-object v1, Lorg/openjdk/javax/lang/model/element/NestingKind;->ANONYMOUS:Lorg/openjdk/javax/lang/model/element/NestingKind;

    const-string v2, ";\n"

    const/4 v3, 0x0

    if-ne v1, v0, :cond_2

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, "new "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getSuperclass()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 10
    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->constructorsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printParameters(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)V

    .line 15
    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 16
    :cond_2
    sget-object v1, Lorg/openjdk/javax/lang/model/element/NestingKind;->TOP_LEVEL:Lorg/openjdk/javax/lang/model/element/NestingKind;

    if-ne v0, v1, :cond_3

    .line 17
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->elementUtils:Lorg/openjdk/javax/lang/model/util/Elements;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/lang/model/util/Elements;->getPackageOf(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/lang/model/element/PackageElement;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/PackageElement;->isUnnamed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 19
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/PackageElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->defaultAction(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    .line 21
    sget-object v0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 22
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, "@interface"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 26
    invoke-direct {p0, p1, v3}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printFormalTypeParameters(Lorg/openjdk/javax/lang/model/element/Parameterizable;Z)V

    .line 27
    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->CLASS:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne p2, v0, :cond_5

    .line 28
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getSuperclass()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v4, Lorg/openjdk/javax/lang/model/type/TypeKind;->NONE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-eq v1, v4, :cond_5

    .line 30
    move-object v1, v0

    check-cast v1, Lorg/openjdk/javax/lang/model/type/DeclaredType;

    .line 31
    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/type/DeclaredType;->asElement()Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/lang/model/element/TypeElement;

    .line 32
    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getSuperclass()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v1

    if-eq v1, v4, :cond_5

    .line 33
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " extends "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    :cond_5
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printInterfaces(Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    .line 35
    :goto_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    iget v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    .line 37
    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->ENUM:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne p2, v0, :cond_a

    .line 38
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/lang/model/element/Element;

    .line 41
    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v4

    sget-object v5, Lorg/openjdk/javax/lang/model/element/ElementKind;->ENUM_CONSTANT:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v4, v5, :cond_6

    .line 42
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 43
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 44
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_8

    .line 45
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/Element;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/AbstractElementVisitor6;->visit(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 47
    :cond_8
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/Element;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/javax/lang/model/util/AbstractElementVisitor6;->visit(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    invoke-interface {p2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 50
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/javax/lang/model/element/Element;

    .line 51
    invoke-virtual {p0, p2}, Lorg/openjdk/javax/lang/model/util/AbstractElementVisitor6;->visit(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/lang/Object;

    goto :goto_5

    .line 52
    :cond_a
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/javax/lang/model/element/Element;

    .line 53
    invoke-virtual {p0, p2}, Lorg/openjdk/javax/lang/model/util/AbstractElementVisitor6;->visit(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/lang/Object;

    goto :goto_6

    .line 54
    :cond_b
    iget p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    .line 55
    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    .line 56
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic visitTypeParameter(Lorg/openjdk/javax/lang/model/element/TypeParameterElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visitTypeParameter(Lorg/openjdk/javax/lang/model/element/TypeParameterElement;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeParameter(Lorg/openjdk/javax/lang/model/element/TypeParameterElement;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
    .locals 0

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic visitVariable(Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visitVariable(Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lorg/openjdk/javax/lang/model/element/VariableElement;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
    .locals 2

    .line 2
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->defaultAction(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/Boolean;)Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    .line 4
    sget-object p2, Lorg/openjdk/javax/lang/model/element/ElementKind;->ENUM_CONSTANT:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v0, p2, :cond_0

    .line 5
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/VariableElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/VariableElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/VariableElement;->getConstantValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v0, " = "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->elementUtils:Lorg/openjdk/javax/lang/model/util/Elements;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/lang/model/util/Elements;->getConstantExpression(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
