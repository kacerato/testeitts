.class public Lorg/openjdk/tools/doclint/Checker;
.super Lorg/openjdk/source/util/DocTreePathScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/doclint/Checker$TagStackItem;,
        Lorg/openjdk/tools/doclint/Checker$Flag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/source/util/DocTreePathScanner<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final docRoot:Ljava/util/regex/Pattern;

.field private static final validName:Ljava/util/regex/Pattern;

.field private static final validNumber:Ljava/util/regex/Pattern;


# instance fields
.field private currHeaderTag:Lorg/openjdk/tools/doclint/HtmlTag;

.field final env:Lorg/openjdk/tools/doclint/Env;

.field foundAnchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field foundInheritDoc:Z

.field foundParams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end field

.field foundReturn:Z

.field foundThrows:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end field

.field private final implicitHeaderLevel:I

.field private final tagStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lorg/openjdk/tools/doclint/Checker$TagStackItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[A-Za-z][A-Za-z0-9-_:.]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/doclint/Checker;->validName:Ljava/util/regex/Pattern;

    const-string v0, "-?[0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/doclint/Checker;->validNumber:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(\\{@docRoot *\\}/?)?(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/doclint/Checker;->docRoot:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/doclint/Env;)V
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/source/util/DocTreePathScanner;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->foundParams:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->foundThrows:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->foundAnchors:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/doclint/Checker;->foundInheritDoc:Z

    iput-boolean v0, p0, Lorg/openjdk/tools/doclint/Checker;->foundReturn:Z

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/doclint/Env;

    iput-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    iget p1, p1, Lorg/openjdk/tools/doclint/Env;->implicitHeaderLevel:I

    iput p1, p0, Lorg/openjdk/tools/doclint/Checker;->implicitHeaderLevel:I

    return-void
.end method

.method private checkAnchor(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->currElement:Lorg/openjdk/javax/lang/model/element/Element;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/doclint/Checker;->getEnclosingPackageOrClass(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->foundAnchors:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->foundAnchors:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private checkHeader(Lorg/openjdk/source/doctree/StartElementTree;Lorg/openjdk/tools/doclint/HtmlTag;)V
    .locals 4

    invoke-direct {p0, p2}, Lorg/openjdk/tools/doclint/Checker;->getHeaderLevel(Lorg/openjdk/tools/doclint/HtmlTag;)I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->currHeaderTag:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/doclint/Checker;->getHeaderLevel(Lorg/openjdk/tools/doclint/HtmlTag;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->currHeaderTag:Lorg/openjdk/tools/doclint/HtmlTag;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->ACCESSIBILITY:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v2, "dc.tag.header.sequence.1"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->ACCESSIBILITY:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.tag.header.sequence.2"

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v3, v0}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/openjdk/tools/doclint/Checker;->currHeaderTag:Lorg/openjdk/tools/doclint/HtmlTag;

    return-void
.end method

.method private checkParamsDocumented(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/openjdk/tools/doclint/Checker;->foundInheritDoc:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/element/Element;

    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->foundParams:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/javax/lang/model/element/ElementKind;->TYPE_PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    :goto_1
    const-string v1, "dc.missing.param"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/openjdk/tools/doclint/Checker;->reportMissing(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private checkStructure(Lorg/openjdk/source/doctree/StartElementTree;Lorg/openjdk/tools/doclint/HtmlTag;)V
    .locals 6

    invoke-interface {p1}, Lorg/openjdk/source/doctree/StartElementTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;

    sget-object v2, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$BlockType:[I

    iget-object v3, p2, Lorg/openjdk/tools/doclint/HtmlTag;->blockType:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v1, 0x5

    if-eq v2, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v1, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/16 v1, 0x9

    if-eq p2, v1, :cond_1

    iget-object p2, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object p2, p2, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v2, "dc.tag.not.allowed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1, p1, v2, v0}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    if-eqz v1, :cond_9

    iget-object v2, v1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->flags:Ljava/util/Set;

    sget-object v3, Lorg/openjdk/tools/doclint/Checker$Flag;->REPORTED_BAD_INLINE:Lorg/openjdk/tools/doclint/Checker$Flag;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/doclint/HtmlTag;->accepts(Lorg/openjdk/tools/doclint/HtmlTag;)Z

    move-result p2

    if-eqz p2, :cond_9

    return-void

    :cond_3
    if-eqz v1, :cond_4

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/doclint/HtmlTag;->accepts(Lorg/openjdk/tools/doclint/HtmlTag;)Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_4
    return-void

    :cond_5
    if-eqz v1, :cond_a

    iget-object v2, v1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v2, p2}, Lorg/openjdk/tools/doclint/HtmlTag;->accepts(Lorg/openjdk/tools/doclint/HtmlTag;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    sget-object p2, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$source$doctree$DocTree$Kind:[I

    iget-object v2, v1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tree:Lorg/openjdk/source/doctree/DocTree;

    invoke-interface {v2}, Lorg/openjdk/source/doctree/DocTree;->getKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p2, p2, v2

    if-eq p2, v5, :cond_8

    if-eq p2, v4, :cond_7

    if-eq p2, v3, :cond_7

    goto :goto_0

    :cond_7
    iget-object p2, v1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tree:Lorg/openjdk/source/doctree/DocTree;

    invoke-interface {p2}, Lorg/openjdk/source/doctree/DocTree;->getKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object p2

    iget-object p2, p2, Lorg/openjdk/source/doctree/DocTree$Kind;->tagName:Ljava/lang/String;

    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.tag.not.allowed.inline.tag"

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v2, p1, v3, p2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_8
    iget-object p2, v1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    iget-object p2, p2, Lorg/openjdk/tools/doclint/HtmlTag;->blockType:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    sget-object v2, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;->INLINE:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    if-ne p2, v2, :cond_9

    iget-object p2, v1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tree:Lorg/openjdk/source/doctree/DocTree;

    check-cast p2, Lorg/openjdk/source/doctree/StartElementTree;

    invoke-interface {p2}, Lorg/openjdk/source/doctree/StartElementTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p2

    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.tag.not.allowed.inline.element"

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v2, p1, v3, p2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_9
    :goto_0
    iget-object p2, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object p2, p2, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v2, "dc.tag.not.allowed.here"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1, p1, v2, v0}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_1
    return-void
.end method

.method private checkThrowsDeclared(Lorg/openjdk/source/doctree/ReferenceTree;Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/ReferenceTree;",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/lang/model/type/TypeMirror;

    iget-object v2, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v2, v2, Lorg/openjdk/tools/doclint/Env;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {v2, p2, v1}, Lorg/openjdk/javax/lang/model/util/Types;->isAssignable(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->foundThrows:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object p3, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object p3, p3, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v0, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v1, "dc.exception.not.thrown"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v0, p1, v1, p2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private checkThrowsDocumented(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/openjdk/tools/doclint/Checker;->foundInheritDoc:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/lang/model/type/TypeMirror;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/doclint/Checker;->isCheckedException(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->foundThrows:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dc.missing.throws"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/openjdk/tools/doclint/Checker;->reportMissing(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private checkURI(Lorg/openjdk/source/doctree/AttributeTree;Ljava/lang/String;)V
    .locals 3

    const-string v0, "javascript:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v2, "dc.invalid.uri"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private checkUnknownTag(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->customTags:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->SYNTAX:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v2, "dc.tag.unknown"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private getAttrValue(Lorg/openjdk/source/doctree/AttributeTree;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lorg/openjdk/source/doctree/AttributeTree;->getValue()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    new-instance v1, Lorg/openjdk/tools/javac/tree/DocPretty;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;-><init>(Ljava/io/Writer;)V

    invoke-interface {p1}, Lorg/openjdk/source/doctree/AttributeTree;->getValue()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getEnclosingPackageOrClass(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/lang/model/element/Element;
    .locals 2

    :goto_0
    if-eqz p1, :cond_0

    sget-object v0, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getEnclosingElement()Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private getHeaderLevel(Lorg/openjdk/tools/doclint/HtmlTag;)I
    .locals 1

    if-nez p1, :cond_0

    iget p1, p0, Lorg/openjdk/tools/doclint/Checker;->implicitHeaderLevel:I

    return p1

    :cond_0
    sget-object v0, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x6

    return p1

    :pswitch_1
    const/4 p1, 0x5

    return p1

    :pswitch_2
    const/4 p1, 0x4

    return p1

    :pswitch_3
    const/4 p1, 0x3

    return p1

    :pswitch_4
    const/4 p1, 0x2

    return p1

    :pswitch_5
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCheckedException(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v0, Lorg/openjdk/tools/doclint/Env;->types:Lorg/openjdk/javax/lang/model/util/Types;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->java_lang_Error:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    invoke-interface {v1, p1, v0}, Lorg/openjdk/javax/lang/model/util/Types;->isAssignable(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v0, Lorg/openjdk/tools/doclint/Env;->types:Lorg/openjdk/javax/lang/model/util/Types;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->java_lang_RuntimeException:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    invoke-interface {v1, p1, v0}, Lorg/openjdk/javax/lang/model/util/Types;->isAssignable(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isConstant(Lorg/openjdk/javax/lang/model/element/Element;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lorg/openjdk/javax/lang/model/element/VariableElement;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/VariableElement;->getConstantValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isSynthetic()Z
    .locals 5

    sget-object v0, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->currElement:Lorg/openjdk/javax/lang/model/element/Element;

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v0, Lorg/openjdk/tools/doclint/Env;->currPath:Lorg/openjdk/source/util/TreePath;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/doclint/Env;->getPos(Lorg/openjdk/source/util/TreePath;)J

    move-result-wide v3

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-virtual {v1}, Lorg/openjdk/source/util/TreePath;->getParentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/doclint/Env;->getPos(Lorg/openjdk/source/util/TreePath;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isThrowable(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z
    .locals 2

    sget-object v0, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v0, Lorg/openjdk/tools/doclint/Env;->types:Lorg/openjdk/javax/lang/model/util/Types;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->java_lang_Throwable:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    invoke-interface {v1, p1, v0}, Lorg/openjdk/javax/lang/model/util/Types;->isAssignable(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z

    move-result p1

    return p1
.end method

.method private varargs reportMissing(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->MISSING:Lorg/openjdk/tools/doclint/Messages$Group;

    sget-object v3, Lorg/openjdk/javax/tools/Diagnostic$Kind;->WARNING:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->currPath:Lorg/openjdk/source/util/TreePath;

    invoke-virtual {v0}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/doclint/Messages;->report(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/javax/tools/Diagnostic$Kind;Lorg/openjdk/source/tree/Tree;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private varargs reportReference(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    sget-object v3, Lorg/openjdk/javax/tools/Diagnostic$Kind;->WARNING:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->currPath:Lorg/openjdk/source/util/TreePath;

    invoke-virtual {v0}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/doclint/Messages;->report(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/javax/tools/Diagnostic$Kind;Lorg/openjdk/source/tree/Tree;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private validateHtml4Attrs(Lorg/openjdk/source/doctree/AttributeTree;Lorg/openjdk/javax/lang/model/element/Name;Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;)V
    .locals 2

    sget-object v0, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_2

    const/4 v0, 0x5

    if-eq p3, v0, :cond_1

    const/4 v0, 0x6

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object p3, p3, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v0, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v1, "dc.attr.not.supported.html4"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v0, p1, v1, p2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object p3, p3, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v0, Lorg/openjdk/tools/doclint/Messages$Group;->ACCESSIBILITY:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v1, "dc.attr.obsolete.use.css"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v0, p1, v1, p2}, Lorg/openjdk/tools/doclint/Messages;->warning(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object p3, p3, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v0, Lorg/openjdk/tools/doclint/Messages$Group;->ACCESSIBILITY:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v1, "dc.attr.obsolete"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v0, p1, v1, p2}, Lorg/openjdk/tools/doclint/Messages;->warning(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object p3, p3, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v0, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v1, "dc.attr.unknown"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v0, p1, v1, p2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private validateHtml5Attrs(Lorg/openjdk/source/doctree/AttributeTree;Lorg/openjdk/javax/lang/model/element/Name;Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;)V
    .locals 2

    sget-object v0, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object p3, p3, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v0, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v1, "dc.attr.not.supported.html5"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v0, p1, v1, p2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkAllowsText(Lorg/openjdk/source/doctree/DocTree;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tree:Lorg/openjdk/source/doctree/DocTree;

    invoke-interface {v1}, Lorg/openjdk/source/doctree/DocTree;->getKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/source/doctree/DocTree$Kind;->START_ELEMENT:Lorg/openjdk/source/doctree/DocTree$Kind;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v1}, Lorg/openjdk/tools/doclint/HtmlTag;->acceptsText()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->flags:Ljava/util/Set;

    sget-object v2, Lorg/openjdk/tools/doclint/Checker$Flag;->REPORTED_BAD_INLINE:Lorg/openjdk/tools/doclint/Checker$Flag;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tree:Lorg/openjdk/source/doctree/DocTree;

    check-cast v0, Lorg/openjdk/source/doctree/StartElementTree;

    invoke-interface {v0}, Lorg/openjdk/source/doctree/StartElementTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "dc.text.not.allowed"

    invoke-virtual {v1, v2, p1, v3, v0}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public hasNonWhitespace(Lorg/openjdk/source/doctree/TextTree;)Z
    .locals 3

    invoke-interface {p1}, Lorg/openjdk/source/doctree/TextTree;->getBody()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public markEnclosingTag(Lorg/openjdk/tools/doclint/Checker$Flag;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->flags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public scan(Lorg/openjdk/source/doctree/DocCommentTree;Lorg/openjdk/source/util/TreePath;)Ljava/lang/Void;
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-virtual {v0}, Lorg/openjdk/tools/doclint/Env;->initTypes()V

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/doclint/Env;->setCurrent(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/source/doctree/DocCommentTree;)V

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->currOverriddenMethods:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    invoke-virtual {p2}, Lorg/openjdk/source/util/TreePath;->getCompilationUnit()Lorg/openjdk/source/tree/CompilationUnitTree;

    move-result-object v1

    invoke-interface {v1}, Lorg/openjdk/source/tree/CompilationUnitTree;->getSourceFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v1

    invoke-virtual {p2}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object v2

    invoke-interface {v2}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lorg/openjdk/source/tree/Tree$Kind;->PACKAGE:Lorg/openjdk/source/tree/Tree$Kind;

    const-string v4, "dc.missing.comment"

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v2, v3, :cond_2

    const-string v2, "package-info"

    sget-object v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {v1, v2, v3}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result v1

    if-nez p1, :cond_1

    if-eqz v1, :cond_0

    new-array p1, v6, [Ljava/lang/Object;

    invoke-direct {p0, v4, p1}, Lorg/openjdk/tools/doclint/Checker;->reportMissing(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v5

    :cond_1
    if-nez v1, :cond_5

    const-string v1, "dc.unexpected.comment"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lorg/openjdk/tools/doclint/Checker;->reportReference(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const-string v2, "package"

    sget-object v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->HTML:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {v1, v2, v3}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lorg/openjdk/source/doctree/DocCommentTree;->getFullBody()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    new-array p1, v6, [Ljava/lang/Object;

    invoke-direct {p0, v4, p1}, Lorg/openjdk/tools/doclint/Checker;->reportMissing(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_3
    if-nez p1, :cond_5

    invoke-direct {p0}, Lorg/openjdk/tools/doclint/Checker;->isSynthetic()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v0, :cond_4

    new-array p1, v6, [Ljava/lang/Object;

    invoke-direct {p0, v4, p1}, Lorg/openjdk/tools/doclint/Checker;->reportMissing(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-object v5

    :cond_5
    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iput-object v5, p0, Lorg/openjdk/tools/doclint/Checker;->currHeaderTag:Lorg/openjdk/tools/doclint/HtmlTag;

    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->foundParams:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->foundThrows:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iput-boolean v6, p0, Lorg/openjdk/tools/doclint/Checker;->foundInheritDoc:Z

    iput-boolean v6, p0, Lorg/openjdk/tools/doclint/Checker;->foundReturn:Z

    new-instance v1, Lorg/openjdk/source/util/DocTreePath;

    invoke-direct {v1, p2, p1}, Lorg/openjdk/source/util/DocTreePath;-><init>(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/source/doctree/DocCommentTree;)V

    invoke-virtual {p0, v1, v5}, Lorg/openjdk/source/util/DocTreePathScanner;->scan(Lorg/openjdk/source/util/DocTreePath;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_8

    sget-object p1, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    iget-object p2, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object p2, p2, Lorg/openjdk/tools/doclint/Env;->currElement:Lorg/openjdk/javax/lang/model/element/Element;

    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    if-eq p1, p2, :cond_6

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object p1, p1, Lorg/openjdk/tools/doclint/Env;->currElement:Lorg/openjdk/javax/lang/model/element/Element;

    check-cast p1, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/openjdk/tools/doclint/Checker;->checkParamsDocumented(Ljava/util/List;)V

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/openjdk/tools/doclint/Checker;->checkParamsDocumented(Ljava/util/List;)V

    sget-object v1, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getReturnType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v2}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_7

    if-eq v1, p2, :cond_7

    iget-boolean p2, p0, Lorg/openjdk/tools/doclint/Checker;->foundReturn:Z

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lorg/openjdk/tools/doclint/Checker;->foundInheritDoc:Z

    if-nez p2, :cond_7

    iget-object p2, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object p2, p2, Lorg/openjdk/tools/doclint/Env;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getReturnType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->java_lang_Void:Lorg/openjdk/javax/lang/model/type/TypeMirror;

    invoke-interface {p2, v0, v1}, Lorg/openjdk/javax/lang/model/util/Types;->isSameType(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "dc.missing.return"

    new-array v0, v6, [Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Lorg/openjdk/tools/doclint/Checker;->reportMissing(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/doclint/Checker;->checkThrowsDocumented(Ljava/util/List;)V

    :cond_8
    :goto_1
    return-object v5
.end method

.method public toString(Lorg/openjdk/source/util/TreePath;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TreePath["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/doclint/Checker;->toString(Lorg/openjdk/source/util/TreePath;Ljava/lang/StringBuilder;)V

    .line 3
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Lorg/openjdk/source/util/TreePath;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 5
    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getParentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/doclint/Checker;->toString(Lorg/openjdk/source/util/TreePath;Ljava/lang/StringBuilder;)V

    .line 7
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/doclint/Env;->getPos(Lorg/openjdk/source/util/TreePath;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":S"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/doclint/Env;->getStartPos(Lorg/openjdk/source/util/TreePath;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public bridge synthetic visitAttribute(Lorg/openjdk/source/doctree/AttributeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitAttribute(Lorg/openjdk/source/doctree/AttributeTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAttribute(Lorg/openjdk/source/doctree/AttributeTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .line 2
    const-string v0, "dc.attr.table.border.html5"

    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    if-eqz v1, :cond_12

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/doctree/AttributeTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Lorg/openjdk/tools/doclint/HtmlTag;->getAttr(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/tools/doclint/HtmlTag$Attr;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v4, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v4, v4, Lorg/openjdk/tools/doclint/Env;->htmlVersion:Lorg/openjdk/tools/doclint/HtmlVersion;

    sget-object v5, Lorg/openjdk/tools/doclint/HtmlVersion;->HTML4:Lorg/openjdk/tools/doclint/HtmlVersion;

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v4, v4, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v5, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v6, "dc.attr.not.supported.html4"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, p1, v6, v7}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_0
    iget-object v4, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/doclint/Checker$TagStackItem;

    iget-object v4, v4, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->attrs:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    iget-object v4, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v4, v4, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v5, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v6, "dc.attr.repeated"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, p1, v6, v7}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v4, :cond_4

    .line 10
    invoke-virtual {v1, v2}, Lorg/openjdk/tools/doclint/HtmlTag;->getAttrKind(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    move-result-object v4

    .line 11
    sget-object v7, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlVersion:[I

    iget-object v8, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v8, v8, Lorg/openjdk/tools/doclint/Env;->htmlVersion:Lorg/openjdk/tools/doclint/HtmlVersion;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v6, :cond_3

    if-eq v7, v5, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0, p1, v2, v4}, Lorg/openjdk/tools/doclint/Checker;->validateHtml5Attrs(Lorg/openjdk/source/doctree/AttributeTree;Lorg/openjdk/javax/lang/model/element/Name;Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-direct {p0, p1, v2, v4}, Lorg/openjdk/tools/doclint/Checker;->validateHtml4Attrs(Lorg/openjdk/source/doctree/AttributeTree;Lorg/openjdk/javax/lang/model/element/Name;Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;)V

    :cond_4
    :goto_0
    if-eqz v3, :cond_12

    .line 14
    sget-object v2, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$Attr:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x0

    if-eq v2, v6, :cond_e

    if-eq v2, v5, :cond_f

    const/4 v7, 0x3

    const-string v8, "dc.attr.lacks.value"

    if-eq v2, v7, :cond_a

    const/4 v5, 0x4

    if-eq v2, v5, :cond_7

    const/4 v4, 0x5

    if-eq v2, v4, :cond_5

    goto/16 :goto_3

    .line 15
    :cond_5
    sget-object v2, Lorg/openjdk/tools/doclint/HtmlTag;->TABLE:Lorg/openjdk/tools/doclint/HtmlTag;

    if-ne v1, v2, :cond_12

    .line 16
    invoke-direct {p0, p1}, Lorg/openjdk/tools/doclint/Checker;->getAttrValue(Lorg/openjdk/source/doctree/AttributeTree;)Ljava/lang/String;

    move-result-object v1

    .line 17
    :try_start_0
    iget-object v2, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v2, v2, Lorg/openjdk/tools/doclint/Env;->htmlVersion:Lorg/openjdk/tools/doclint/HtmlVersion;

    sget-object v4, Lorg/openjdk/tools/doclint/HtmlVersion;->HTML5:Lorg/openjdk/tools/doclint/HtmlVersion;

    if-ne v2, v4, :cond_12

    if-eqz v1, :cond_6

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_12

    .line 19
    :cond_6
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, p1, v0, v4}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 20
    :catch_0
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v0, v3}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 21
    :cond_7
    sget-object v0, Lorg/openjdk/tools/doclint/HtmlTag;->LI:Lorg/openjdk/tools/doclint/HtmlTag;

    if-ne v1, v0, :cond_12

    .line 22
    invoke-direct {p0, p1}, Lorg/openjdk/tools/doclint/Checker;->getAttrValue(Lorg/openjdk/source/doctree/AttributeTree;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    .line 24
    :cond_8
    sget-object v1, Lorg/openjdk/tools/doclint/Checker;->validNumber:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_12

    .line 25
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v2, "dc.attr.not.number"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 26
    :cond_9
    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v8, v2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 27
    :cond_a
    sget-object v0, Lorg/openjdk/tools/doclint/HtmlTag;->A:Lorg/openjdk/tools/doclint/HtmlTag;

    if-ne v1, v0, :cond_12

    .line 28
    invoke-direct {p0, p1}, Lorg/openjdk/tools/doclint/Checker;->getAttrValue(Lorg/openjdk/source/doctree/AttributeTree;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_2

    .line 30
    :cond_b
    sget-object v1, Lorg/openjdk/tools/doclint/Checker;->docRoot:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 32
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 34
    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/doclint/Checker;->checkURI(Lorg/openjdk/source/doctree/AttributeTree;Ljava/lang/String;)V

    goto :goto_3

    .line 35
    :cond_c
    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/doclint/Checker;->checkURI(Lorg/openjdk/source/doctree/AttributeTree;Ljava/lang/String;)V

    goto :goto_3

    .line 36
    :cond_d
    :goto_2
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v8, v2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 37
    :cond_e
    sget-object v0, Lorg/openjdk/tools/doclint/HtmlTag;->A:Lorg/openjdk/tools/doclint/HtmlTag;

    if-eq v1, v0, :cond_f

    goto :goto_3

    .line 38
    :cond_f
    invoke-direct {p0, p1}, Lorg/openjdk/tools/doclint/Checker;->getAttrValue(Lorg/openjdk/source/doctree/AttributeTree;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 39
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v2, "dc.anchor.value.missing"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 40
    :cond_10
    sget-object v1, Lorg/openjdk/tools/doclint/Checker;->validName:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_11

    .line 41
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.invalid.anchor"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, p1, v3, v4}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_11
    invoke-direct {p0, v0}, Lorg/openjdk/tools/doclint/Checker;->checkAnchor(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 43
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.anchor.already.defined"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v3, v0}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :cond_12
    :goto_3
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitAttribute(Lorg/openjdk/source/doctree/AttributeTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitAuthor(Lorg/openjdk/source/doctree/AuthorTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitAuthor(Lorg/openjdk/source/doctree/AuthorTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAuthor(Lorg/openjdk/source/doctree/AuthorTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/doctree/AuthorTree;->getName()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/doclint/Checker;->warnIfEmpty(Lorg/openjdk/source/doctree/DocTree;Ljava/util/List;)V

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitAuthor(Lorg/openjdk/source/doctree/AuthorTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitDocComment(Lorg/openjdk/source/doctree/DocCommentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitDocComment(Lorg/openjdk/source/doctree/DocCommentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDocComment(Lorg/openjdk/source/doctree/DocCommentTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 2
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitDocComment(Lorg/openjdk/source/doctree/DocCommentTree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/doclint/Checker$TagStackItem;

    .line 4
    invoke-virtual {p0, p2, v0}, Lorg/openjdk/tools/doclint/Checker;->warnIfEmpty(Lorg/openjdk/tools/doclint/Checker$TagStackItem;Lorg/openjdk/source/doctree/DocTree;)V

    .line 5
    iget-object v0, p2, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tree:Lorg/openjdk/source/doctree/DocTree;

    invoke-interface {v0}, Lorg/openjdk/source/doctree/DocTree;->getKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/doctree/DocTree$Kind;->START_ELEMENT:Lorg/openjdk/source/doctree/DocTree$Kind;

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/HtmlTag;->endKind:Lorg/openjdk/tools/doclint/HtmlTag$EndKind;

    sget-object v1, Lorg/openjdk/tools/doclint/HtmlTag$EndKind;->REQUIRED:Lorg/openjdk/tools/doclint/HtmlTag$EndKind;

    if-ne v0, v1, :cond_0

    .line 6
    iget-object p2, p2, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tree:Lorg/openjdk/source/doctree/DocTree;

    check-cast p2, Lorg/openjdk/source/doctree/StartElementTree;

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    invoke-interface {p2}, Lorg/openjdk/source/doctree/StartElementTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "dc.tag.not.closed"

    invoke-virtual {v0, v1, p2, v3, v2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic visitDocRoot(Lorg/openjdk/source/doctree/DocRootTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitDocRoot(Lorg/openjdk/source/doctree/DocRootTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDocRoot(Lorg/openjdk/source/doctree/DocRootTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    sget-object v0, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_INLINE_TAG:Lorg/openjdk/tools/doclint/Checker$Flag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/doclint/Checker;->markEnclosingTag(Lorg/openjdk/tools/doclint/Checker$Flag;)V

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitDocRoot(Lorg/openjdk/source/doctree/DocRootTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitEndElement(Lorg/openjdk/source/doctree/EndElementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitEndElement(Lorg/openjdk/source/doctree/EndElementTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitEndElement(Lorg/openjdk/source/doctree/EndElementTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/doctree/EndElementTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lorg/openjdk/tools/doclint/HtmlTag;->get(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/tools/doclint/HtmlTag;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.tag.unknown"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v3, v0}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 5
    :cond_0
    iget-object v2, v1, Lorg/openjdk/tools/doclint/HtmlTag;->endKind:Lorg/openjdk/tools/doclint/HtmlTag$EndKind;

    sget-object v3, Lorg/openjdk/tools/doclint/HtmlTag$EndKind;->NONE:Lorg/openjdk/tools/doclint/HtmlTag$EndKind;

    if-ne v2, v3, :cond_1

    .line 6
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.tag.end.not.permitted"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v3, v0}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 7
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const-string v3, "dc.tag.end.unexpected"

    if-nez v2, :cond_8

    .line 8
    iget-object v2, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/doclint/Checker$TagStackItem;

    .line 9
    iget-object v4, v2, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    if-ne v1, v4, :cond_3

    .line 10
    sget-object v3, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 11
    :pswitch_0
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->htmlVersion:Lorg/openjdk/tools/doclint/HtmlVersion;

    sget-object v3, Lorg/openjdk/tools/doclint/HtmlVersion;->HTML5:Lorg/openjdk/tools/doclint/HtmlVersion;

    if-ne v1, v3, :cond_2

    iget-object v1, v2, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->flags:Ljava/util/Set;

    sget-object v3, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_HEADING:Lorg/openjdk/tools/doclint/Checker$Flag;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v3, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v4, "dc.tag.requires.heading"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, p1, v4, v0}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :pswitch_1
    iget-object v0, v2, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->attrs:Ljava/util/Set;

    sget-object v1, Lorg/openjdk/tools/doclint/HtmlTag$Attr;->SUMMARY:Lorg/openjdk/tools/doclint/HtmlTag$Attr;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v2, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->flags:Ljava/util/Set;

    sget-object v1, Lorg/openjdk/tools/doclint/Checker$Flag;->TABLE_HAS_CAPTION:Lorg/openjdk/tools/doclint/Checker$Flag;

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->ACCESSIBILITY:Lorg/openjdk/tools/doclint/Messages$Group;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "dc.no.summary.or.caption.for.table"

    invoke-virtual {v0, v1, p1, v4, v3}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :cond_2
    :goto_1
    invoke-virtual {p0, v2, p1}, Lorg/openjdk/tools/doclint/Checker;->warnIfEmpty(Lorg/openjdk/tools/doclint/Checker$TagStackItem;Lorg/openjdk/source/doctree/DocTree;)V

    .line 17
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto/16 :goto_3

    :cond_3
    if-eqz v4, :cond_7

    .line 18
    iget-object v4, v4, Lorg/openjdk/tools/doclint/HtmlTag;->endKind:Lorg/openjdk/tools/doclint/HtmlTag$EndKind;

    sget-object v5, Lorg/openjdk/tools/doclint/HtmlTag$EndKind;->REQUIRED:Lorg/openjdk/tools/doclint/HtmlTag$EndKind;

    if-eq v4, v5, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    iget-object v4, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/doclint/Checker$TagStackItem;

    .line 20
    iget-object v5, v5, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    if-ne v5, v1, :cond_5

    .line 21
    iget-object v4, v2, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tree:Lorg/openjdk/source/doctree/DocTree;

    invoke-interface {v4}, Lorg/openjdk/source/doctree/DocTree;->getKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object v4

    sget-object v5, Lorg/openjdk/source/doctree/DocTree$Kind;->START_ELEMENT:Lorg/openjdk/source/doctree/DocTree$Kind;

    if-ne v4, v5, :cond_6

    .line 22
    iget-object v3, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v3, v3, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v4, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    iget-object v2, v2, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tree:Lorg/openjdk/source/doctree/DocTree;

    move-object v5, v2

    check-cast v5, Lorg/openjdk/source/doctree/StartElementTree;

    .line 23
    invoke-interface {v5}, Lorg/openjdk/source/doctree/StartElementTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 24
    const-string v6, "dc.tag.start.unmatched"

    invoke-virtual {v3, v4, v2, v6, v5}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v2, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto/16 :goto_0

    .line 26
    :cond_6
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v3, v0}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 27
    :cond_7
    :goto_2
    iget-object v2, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto/16 :goto_0

    .line 28
    :cond_8
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 29
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v3, v0}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_9
    :goto_3
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitEndElement(Lorg/openjdk/source/doctree/EndElementTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitEntity(Lorg/openjdk/source/doctree/EntityTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitEntity(Lorg/openjdk/source/doctree/EntityTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitEntity(Lorg/openjdk/source/doctree/EntityTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 2
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/doclint/Checker;->checkAllowsText(Lorg/openjdk/source/doctree/DocTree;)V

    .line 3
    sget-object p2, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_TEXT:Lorg/openjdk/tools/doclint/Checker$Flag;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/doclint/Checker;->markEnclosingTag(Lorg/openjdk/tools/doclint/Checker$Flag;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/doctree/EntityTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "dc.entity.invalid"

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p2}, Lorg/openjdk/tools/javac/util/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "#x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 9
    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/doclint/Entity;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v2, p1, v1, p2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {p2}, Lorg/openjdk/tools/doclint/Entity;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v2, p1, v1, p2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitErroneous(Lorg/openjdk/source/doctree/ErroneousTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitErroneous(Lorg/openjdk/source/doctree/ErroneousTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitErroneous(Lorg/openjdk/source/doctree/ErroneousTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object p2, p2, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v0, Lorg/openjdk/tools/doclint/Messages$Group;->SYNTAX:Lorg/openjdk/tools/doclint/Messages$Group;

    invoke-interface {p1}, Lorg/openjdk/source/doctree/ErroneousTree;->getDiagnostic()Lorg/openjdk/javax/tools/Diagnostic;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/openjdk/javax/tools/Diagnostic;->getMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v2, v1}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method public bridge synthetic visitInheritDoc(Lorg/openjdk/source/doctree/InheritDocTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitInheritDoc(Lorg/openjdk/source/doctree/InheritDocTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitInheritDoc(Lorg/openjdk/source/doctree/InheritDocTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    sget-object v0, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_INLINE_TAG:Lorg/openjdk/tools/doclint/Checker$Flag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/doclint/Checker;->markEnclosingTag(Lorg/openjdk/tools/doclint/Checker$Flag;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/openjdk/tools/doclint/Checker;->foundInheritDoc:Z

    .line 4
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitInheritDoc(Lorg/openjdk/source/doctree/InheritDocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitLink(Lorg/openjdk/source/doctree/LinkTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitLink(Lorg/openjdk/source/doctree/LinkTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLink(Lorg/openjdk/source/doctree/LinkTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 2
    sget-object v0, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_INLINE_TAG:Lorg/openjdk/tools/doclint/Checker$Flag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/doclint/Checker;->markEnclosingTag(Lorg/openjdk/tools/doclint/Checker$Flag;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/doctree/DocTree;->getKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/doctree/DocTree$Kind;->LINK:Lorg/openjdk/source/doctree/DocTree$Kind;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/openjdk/tools/doclint/HtmlTag;->CODE:Lorg/openjdk/tools/doclint/HtmlTag;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/doclint/HtmlTag;->SPAN:Lorg/openjdk/tools/doclint/HtmlTag;

    .line 4
    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    new-instance v2, Lorg/openjdk/tools/doclint/Checker$TagStackItem;

    invoke-direct {v2, p1, v0}, Lorg/openjdk/tools/doclint/Checker$TagStackItem;-><init>(Lorg/openjdk/source/doctree/DocTree;Lorg/openjdk/tools/doclint/HtmlTag;)V

    invoke-interface {v1, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 5
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitLink(Lorg/openjdk/source/doctree/LinkTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p2, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 7
    throw p1
.end method

.method public bridge synthetic visitLiteral(Lorg/openjdk/source/doctree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitLiteral(Lorg/openjdk/source/doctree/LiteralTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lorg/openjdk/source/doctree/LiteralTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 2
    sget-object v0, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_INLINE_TAG:Lorg/openjdk/tools/doclint/Checker$Flag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/doclint/Checker;->markEnclosingTag(Lorg/openjdk/tools/doclint/Checker$Flag;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/doctree/DocTree;->getKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/doctree/DocTree$Kind;->CODE:Lorg/openjdk/source/doctree/DocTree$Kind;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;

    .line 5
    iget-object v1, v1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    sget-object v2, Lorg/openjdk/tools/doclint/HtmlTag;->CODE:Lorg/openjdk/tools/doclint/HtmlTag;

    if-ne v1, v2, :cond_0

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "dc.tag.code.within.code"

    invoke-virtual {v0, v1, p1, v3, v2}, Lorg/openjdk/tools/doclint/Messages;->warning(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitLiteral(Lorg/openjdk/source/doctree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitParam(Lorg/openjdk/source/doctree/ParamTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitParam(Lorg/openjdk/source/doctree/ParamTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitParam(Lorg/openjdk/source/doctree/ParamTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ParamTree;->isTypeParameter()Z

    move-result v0

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ParamTree;->getName()Lorg/openjdk/source/doctree/IdentifierTree;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v2, v2, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    new-instance v3, Lorg/openjdk/source/util/DocTreePath;

    invoke-virtual {p0}, Lorg/openjdk/source/util/DocTreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/DocTreePath;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/openjdk/source/util/DocTreePath;-><init>(Lorg/openjdk/source/util/DocTreePath;Lorg/openjdk/source/doctree/DocTree;)V

    invoke-virtual {v2, v3}, Lorg/openjdk/source/util/DocTrees;->getElement(Lorg/openjdk/source/util/DocTreePath;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 5
    sget-object v2, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    iget-object v3, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v3, v3, Lorg/openjdk/tools/doclint/Env;->currElement:Lorg/openjdk/javax/lang/model/element/Element;

    invoke-interface {v3}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    const-string v5, "dc.invalid.param"

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v5, v2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v5, v2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.param.name.not.found"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1, v3, v4}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->foundParams:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.exists.param"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, p1, v3, v1}, Lorg/openjdk/tools/doclint/Messages;->warning(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :cond_4
    :goto_1
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ParamTree;->getDescription()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/doclint/Checker;->warnIfEmpty(Lorg/openjdk/source/doctree/DocTree;Ljava/util/List;)V

    .line 12
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitParam(Lorg/openjdk/source/doctree/ParamTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitProvides(Lorg/openjdk/source/doctree/ProvidesTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitProvides(Lorg/openjdk/source/doctree/ProvidesTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitProvides(Lorg/openjdk/source/doctree/ProvidesTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v0, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->currPath:Lorg/openjdk/source/util/TreePath;

    invoke-virtual {v1, v0}, Lorg/openjdk/source/util/Trees;->getElement(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->MODULE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.invalid.provides"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v3, v4}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ProvidesTree;->getServiceType()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    new-instance v3, Lorg/openjdk/source/util/DocTreePath;

    invoke-virtual {p0}, Lorg/openjdk/source/util/DocTreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/DocTreePath;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/openjdk/source/util/DocTreePath;-><init>(Lorg/openjdk/source/util/DocTreePath;Lorg/openjdk/source/doctree/DocTree;)V

    invoke-virtual {v1, v3}, Lorg/openjdk/source/util/DocTrees;->getElement(Lorg/openjdk/source/util/DocTreePath;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.service.not.found"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v3, v2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitProvides(Lorg/openjdk/source/doctree/ProvidesTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitReference(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitReference(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitReference(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ReferenceTree;->getSignature()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.type.arg.not.allowed"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v3, v4}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    invoke-virtual {p0}, Lorg/openjdk/source/util/DocTreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/DocTreePath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/source/util/DocTrees;->getElement(Lorg/openjdk/source/util/DocTreePath;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.ref.not.found"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v3, v2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitReference(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitReturn(Lorg/openjdk/source/doctree/ReturnTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitReturn(Lorg/openjdk/source/doctree/ReturnTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitReturn(Lorg/openjdk/source/doctree/ReturnTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .line 2
    iget-boolean v0, p0, Lorg/openjdk/tools/doclint/Checker;->foundReturn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.exists.return"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p1, v3, v4}, Lorg/openjdk/tools/doclint/Messages;->warning(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v2, v0, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->currPath:Lorg/openjdk/source/util/TreePath;

    invoke-virtual {v2, v0}, Lorg/openjdk/source/util/Trees;->getElement(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v3, Lorg/openjdk/javax/lang/model/element/ElementKind;->METHOD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v2, v3, :cond_1

    check-cast v0, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    .line 6
    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getReturnType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v2, Lorg/openjdk/javax/lang/model/type/TypeKind;->VOID:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v0, v2, :cond_2

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.invalid.return"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p1, v3, v1}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/openjdk/tools/doclint/Checker;->foundReturn:Z

    .line 9
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ReturnTree;->getDescription()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/doclint/Checker;->warnIfEmpty(Lorg/openjdk/source/doctree/DocTree;Ljava/util/List;)V

    .line 10
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitReturn(Lorg/openjdk/source/doctree/ReturnTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitSerialData(Lorg/openjdk/source/doctree/SerialDataTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitSerialData(Lorg/openjdk/source/doctree/SerialDataTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSerialData(Lorg/openjdk/source/doctree/SerialDataTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/doctree/SerialDataTree;->getDescription()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/doclint/Checker;->warnIfEmpty(Lorg/openjdk/source/doctree/DocTree;Ljava/util/List;)V

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitSerialData(Lorg/openjdk/source/doctree/SerialDataTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitSerialField(Lorg/openjdk/source/doctree/SerialFieldTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitSerialField(Lorg/openjdk/source/doctree/SerialFieldTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSerialField(Lorg/openjdk/source/doctree/SerialFieldTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/doctree/SerialFieldTree;->getDescription()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/doclint/Checker;->warnIfEmpty(Lorg/openjdk/source/doctree/DocTree;Ljava/util/List;)V

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitSerialField(Lorg/openjdk/source/doctree/SerialFieldTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitSince(Lorg/openjdk/source/doctree/SinceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitSince(Lorg/openjdk/source/doctree/SinceTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSince(Lorg/openjdk/source/doctree/SinceTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/doctree/SinceTree;->getBody()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/doclint/Checker;->warnIfEmpty(Lorg/openjdk/source/doctree/DocTree;Ljava/util/List;)V

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitSince(Lorg/openjdk/source/doctree/SinceTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitStartElement(Lorg/openjdk/source/doctree/StartElementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitStartElement(Lorg/openjdk/source/doctree/StartElementTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitStartElement(Lorg/openjdk/source/doctree/StartElementTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/doctree/StartElementTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lorg/openjdk/tools/doclint/HtmlTag;->get(Lorg/openjdk/javax/lang/model/element/Name;)Lorg/openjdk/tools/doclint/HtmlTag;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    iget-object v3, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v3, v3, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v4, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v5, "dc.tag.unknown"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, p1, v5, v6}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 5
    :cond_0
    iget-object v3, v1, Lorg/openjdk/tools/doclint/HtmlTag;->allowedVersion:Lorg/openjdk/tools/doclint/HtmlVersion;

    sget-object v4, Lorg/openjdk/tools/doclint/HtmlVersion;->ALL:Lorg/openjdk/tools/doclint/HtmlVersion;

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v5, v4, Lorg/openjdk/tools/doclint/Env;->htmlVersion:Lorg/openjdk/tools/doclint/HtmlVersion;

    if-eq v3, v5, :cond_1

    .line 6
    iget-object v3, v4, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v4, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v5, "dc.tag.not.supported"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, p1, v5, v6}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 7
    :cond_1
    iget-object v3, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/doclint/Checker$TagStackItem;

    .line 8
    iget-object v5, v4, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v5, v1}, Lorg/openjdk/tools/doclint/HtmlTag;->accepts(Lorg/openjdk/tools/doclint/HtmlTag;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    :goto_0
    iget-object v3, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v4, :cond_5

    .line 10
    iget-object v3, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/doclint/Checker$TagStackItem;

    invoke-virtual {p0, v3, v2}, Lorg/openjdk/tools/doclint/Checker;->warnIfEmpty(Lorg/openjdk/tools/doclint/Checker$TagStackItem;Lorg/openjdk/source/doctree/DocTree;)V

    .line 11
    iget-object v3, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_3
    iget-object v4, v4, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    iget-object v4, v4, Lorg/openjdk/tools/doclint/HtmlTag;->endKind:Lorg/openjdk/tools/doclint/HtmlTag$EndKind;

    sget-object v5, Lorg/openjdk/tools/doclint/HtmlTag$EndKind;->OPTIONAL:Lorg/openjdk/tools/doclint/HtmlTag$EndKind;

    if-eq v4, v5, :cond_2

    goto :goto_2

    .line 13
    :cond_4
    sget-object v3, Lorg/openjdk/tools/doclint/HtmlTag;->BODY:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/doclint/HtmlTag;->accepts(Lorg/openjdk/tools/doclint/HtmlTag;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    :goto_1
    iget-object v3, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 15
    iget-object v3, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/doclint/Checker$TagStackItem;

    invoke-virtual {p0, v3, v2}, Lorg/openjdk/tools/doclint/Checker;->warnIfEmpty(Lorg/openjdk/tools/doclint/Checker$TagStackItem;Lorg/openjdk/source/doctree/DocTree;)V

    .line 16
    iget-object v3, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 17
    :cond_5
    :goto_2
    sget-object v3, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_ELEMENT:Lorg/openjdk/tools/doclint/Checker$Flag;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/doclint/Checker;->markEnclosingTag(Lorg/openjdk/tools/doclint/Checker$Flag;)V

    .line 18
    invoke-direct {p0, p1, v1}, Lorg/openjdk/tools/doclint/Checker;->checkStructure(Lorg/openjdk/source/doctree/StartElementTree;Lorg/openjdk/tools/doclint/HtmlTag;)V

    .line 19
    sget-object v3, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 20
    :pswitch_0
    invoke-direct {p0, p1, v1}, Lorg/openjdk/tools/doclint/Checker;->checkHeader(Lorg/openjdk/source/doctree/StartElementTree;Lorg/openjdk/tools/doclint/HtmlTag;)V

    .line 21
    :goto_3
    iget-object v3, v1, Lorg/openjdk/tools/doclint/HtmlTag;->flags:Ljava/util/Set;

    sget-object v4, Lorg/openjdk/tools/doclint/HtmlTag$Flag;->NO_NEST:Lorg/openjdk/tools/doclint/HtmlTag$Flag;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 22
    iget-object v3, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/doclint/Checker$TagStackItem;

    .line 23
    iget-object v4, v4, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    if-ne v1, v4, :cond_6

    .line 24
    iget-object v3, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v3, v3, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v4, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v5, "dc.tag.nested.not.allowed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, p1, v5, v6}, Lorg/openjdk/tools/doclint/Messages;->warning(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :cond_7
    :goto_4
    invoke-interface {p1}, Lorg/openjdk/source/doctree/StartElementTree;->isSelfClosing()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 26
    iget-object v3, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v3, v3, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v4, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v5, "dc.tag.self.closing"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, p1, v5, v0}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :cond_8
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;

    .line 28
    new-instance v3, Lorg/openjdk/tools/doclint/Checker$TagStackItem;

    invoke-direct {v3, p1, v1}, Lorg/openjdk/tools/doclint/Checker$TagStackItem;-><init>(Lorg/openjdk/source/doctree/DocTree;Lorg/openjdk/tools/doclint/HtmlTag;)V

    .line 29
    iget-object v4, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 30
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitStartElement(Lorg/openjdk/source/doctree/StartElementTree;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_a

    .line 31
    sget-object p2, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p2, p2, v4

    packed-switch p2, :pswitch_data_1

    goto :goto_5

    .line 32
    :pswitch_1
    iget-object p2, v3, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->attrs:Ljava/util/Set;

    sget-object v0, Lorg/openjdk/tools/doclint/HtmlTag$Attr;->ALT:Lorg/openjdk/tools/doclint/HtmlTag$Attr;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 33
    iget-object p2, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object p2, p2, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v0, Lorg/openjdk/tools/doclint/Messages$Group;->ACCESSIBILITY:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.no.alt.attr.for.image"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2, v0, p1, v3, v4}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :pswitch_2
    if-eqz v0, :cond_a

    .line 34
    iget-object p1, v0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    sget-object p2, Lorg/openjdk/tools/doclint/HtmlTag;->TABLE:Lorg/openjdk/tools/doclint/HtmlTag;

    if-ne p1, p2, :cond_a

    .line 35
    iget-object p1, v0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->flags:Ljava/util/Set;

    sget-object p2, Lorg/openjdk/tools/doclint/Checker$Flag;->TABLE_HAS_CAPTION:Lorg/openjdk/tools/doclint/Checker$Flag;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_3
    if-eqz v0, :cond_a

    .line 36
    iget-object p1, v0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    sget-object p2, Lorg/openjdk/tools/doclint/HtmlTag;->SECTION:Lorg/openjdk/tools/doclint/HtmlTag;

    if-eq p1, p2, :cond_9

    sget-object p2, Lorg/openjdk/tools/doclint/HtmlTag;->ARTICLE:Lorg/openjdk/tools/doclint/HtmlTag;

    if-ne p1, p2, :cond_a

    .line 37
    :cond_9
    iget-object p1, v0, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->flags:Ljava/util/Set;

    sget-object p2, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_HEADING:Lorg/openjdk/tools/doclint/Checker$Flag;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 38
    iget-object p1, v1, Lorg/openjdk/tools/doclint/HtmlTag;->endKind:Lorg/openjdk/tools/doclint/HtmlTag$EndKind;

    sget-object p2, Lorg/openjdk/tools/doclint/HtmlTag$EndKind;->NONE:Lorg/openjdk/tools/doclint/HtmlTag$EndKind;

    if-ne p1, p2, :cond_c

    .line 39
    :cond_b
    iget-object p1, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    :cond_c
    return-object v2

    :goto_6
    if-eqz v1, :cond_d

    .line 40
    iget-object p2, v1, Lorg/openjdk/tools/doclint/HtmlTag;->endKind:Lorg/openjdk/tools/doclint/HtmlTag$EndKind;

    sget-object v0, Lorg/openjdk/tools/doclint/HtmlTag$EndKind;->NONE:Lorg/openjdk/tools/doclint/HtmlTag$EndKind;

    if-ne p2, v0, :cond_e

    .line 41
    :cond_d
    iget-object p2, p0, Lorg/openjdk/tools/doclint/Checker;->tagStack:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 42
    :cond_e
    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic visitText(Lorg/openjdk/source/doctree/TextTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitText(Lorg/openjdk/source/doctree/TextTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitText(Lorg/openjdk/source/doctree/TextTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/doclint/Checker;->hasNonWhitespace(Lorg/openjdk/source/doctree/TextTree;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/doclint/Checker;->checkAllowsText(Lorg/openjdk/source/doctree/DocTree;)V

    .line 4
    sget-object p1, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_TEXT:Lorg/openjdk/tools/doclint/Checker$Flag;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/doclint/Checker;->markEnclosingTag(Lorg/openjdk/tools/doclint/Checker$Flag;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitThrows(Lorg/openjdk/source/doctree/ThrowsTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitThrows(Lorg/openjdk/source/doctree/ThrowsTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitThrows(Lorg/openjdk/source/doctree/ThrowsTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ThrowsTree;->getExceptionName()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    new-instance v2, Lorg/openjdk/source/util/DocTreePath;

    invoke-virtual {p0}, Lorg/openjdk/source/util/DocTreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/DocTreePath;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/openjdk/source/util/DocTreePath;-><init>(Lorg/openjdk/source/util/DocTreePath;Lorg/openjdk/source/doctree/DocTree;)V

    invoke-virtual {v1, v2}, Lorg/openjdk/source/util/DocTrees;->getElement(Lorg/openjdk/source/util/DocTreePath;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.ref.not.found"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v3, v2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/openjdk/tools/doclint/Checker;->isThrowable(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z

    move-result v3

    const-string v4, "dc.invalid.throws"

    if-eqz v3, :cond_2

    .line 6
    sget-object v3, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    iget-object v5, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v5, v5, Lorg/openjdk/tools/doclint/Env;->currElement:Lorg/openjdk/javax/lang/model/element/Element;

    invoke-interface {v5}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v4, v2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/openjdk/tools/doclint/Checker;->isCheckedException(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    iget-object v2, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v2, v2, Lorg/openjdk/tools/doclint/Env;->currElement:Lorg/openjdk/javax/lang/model/element/Element;

    check-cast v2, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    .line 10
    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v2}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/openjdk/tools/doclint/Checker;->checkThrowsDeclared(Lorg/openjdk/source/doctree/ReferenceTree;Lorg/openjdk/javax/lang/model/type/TypeMirror;Ljava/util/List;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v4, v2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_3
    :goto_0
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ThrowsTree;->getDescription()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/doclint/Checker;->warnIfEmpty(Lorg/openjdk/source/doctree/DocTree;Ljava/util/List;)V

    .line 13
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ThrowsTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitUnknownBlockTag(Lorg/openjdk/source/doctree/UnknownBlockTagTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitUnknownBlockTag(Lorg/openjdk/source/doctree/UnknownBlockTagTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnknownBlockTag(Lorg/openjdk/source/doctree/UnknownBlockTagTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/doctree/BlockTagTree;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/doclint/Checker;->checkUnknownTag(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitUnknownBlockTag(Lorg/openjdk/source/doctree/UnknownBlockTagTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitUnknownInlineTag(Lorg/openjdk/source/doctree/UnknownInlineTagTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitUnknownInlineTag(Lorg/openjdk/source/doctree/UnknownInlineTagTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnknownInlineTag(Lorg/openjdk/source/doctree/UnknownInlineTagTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/doctree/InlineTagTree;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/doclint/Checker;->checkUnknownTag(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitUnknownInlineTag(Lorg/openjdk/source/doctree/UnknownInlineTagTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitUses(Lorg/openjdk/source/doctree/UsesTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitUses(Lorg/openjdk/source/doctree/UsesTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUses(Lorg/openjdk/source/doctree/UsesTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v0, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->currPath:Lorg/openjdk/source/util/TreePath;

    invoke-virtual {v1, v0}, Lorg/openjdk/source/util/Trees;->getElement(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->MODULE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.invalid.uses"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v3, v4}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-interface {p1}, Lorg/openjdk/source/doctree/UsesTree;->getServiceType()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    new-instance v3, Lorg/openjdk/source/util/DocTreePath;

    invoke-virtual {p0}, Lorg/openjdk/source/util/DocTreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/DocTreePath;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/openjdk/source/util/DocTreePath;-><init>(Lorg/openjdk/source/util/DocTreePath;Lorg/openjdk/source/doctree/DocTree;)V

    invoke-virtual {v1, v3}, Lorg/openjdk/source/util/DocTrees;->getElement(Lorg/openjdk/source/util/DocTreePath;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.service.not.found"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v3, v2}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitUses(Lorg/openjdk/source/doctree/UsesTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitValue(Lorg/openjdk/source/doctree/ValueTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitValue(Lorg/openjdk/source/doctree/ValueTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitValue(Lorg/openjdk/source/doctree/ValueTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ValueTree;->getReference()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lorg/openjdk/source/doctree/ReferenceTree;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v2, v2, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    new-instance v3, Lorg/openjdk/source/util/DocTreePath;

    invoke-virtual {p0}, Lorg/openjdk/source/util/DocTreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/DocTreePath;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/openjdk/source/util/DocTreePath;-><init>(Lorg/openjdk/source/util/DocTreePath;Lorg/openjdk/source/doctree/DocTree;)V

    invoke-virtual {v2, v3}, Lorg/openjdk/source/util/DocTrees;->getElement(Lorg/openjdk/source/util/DocTreePath;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lorg/openjdk/tools/doclint/Checker;->isConstant(Lorg/openjdk/javax/lang/model/element/Element;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.value.not.a.constant"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p1, v3, v1}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->currElement:Lorg/openjdk/javax/lang/model/element/Element;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/doclint/Checker;->isConstant(Lorg/openjdk/javax/lang/model/element/Element;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "dc.value.not.allowed.here"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p1, v3, v1}, Lorg/openjdk/tools/doclint/Messages;->error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_2
    :goto_1
    sget-object v0, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_INLINE_TAG:Lorg/openjdk/tools/doclint/Checker$Flag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/doclint/Checker;->markEnclosingTag(Lorg/openjdk/tools/doclint/Checker$Flag;)V

    .line 10
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitValue(Lorg/openjdk/source/doctree/ValueTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitVersion(Lorg/openjdk/source/doctree/VersionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/doclint/Checker;->visitVersion(Lorg/openjdk/source/doctree/VersionTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVersion(Lorg/openjdk/source/doctree/VersionTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/doctree/VersionTree;->getBody()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/doclint/Checker;->warnIfEmpty(Lorg/openjdk/source/doctree/DocTree;Ljava/util/List;)V

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreeScanner;->visitVersion(Lorg/openjdk/source/doctree/VersionTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public warnIfEmpty(Lorg/openjdk/source/doctree/DocTree;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/DocTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/doctree/DocTree;

    .line 10
    sget-object v1, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$source$doctree$DocTree$Kind:[I

    invoke-interface {v0}, Lorg/openjdk/source/doctree/DocTree;->getKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    return-void

    .line 11
    :cond_1
    check-cast v0, Lorg/openjdk/source/doctree/TextTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/doclint/Checker;->hasNonWhitespace(Lorg/openjdk/source/doctree/TextTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_2
    iget-object p2, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object p2, p2, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v0, Lorg/openjdk/tools/doclint/Messages$Group;->SYNTAX:Lorg/openjdk/tools/doclint/Messages$Group;

    invoke-interface {p1}, Lorg/openjdk/source/doctree/DocTree;->getKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/source/doctree/DocTree$Kind;->tagName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "dc.empty"

    invoke-virtual {p2, v0, p1, v2, v1}, Lorg/openjdk/tools/doclint/Messages;->warning(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warnIfEmpty(Lorg/openjdk/tools/doclint/Checker$TagStackItem;Lorg/openjdk/source/doctree/DocTree;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tag:Lorg/openjdk/tools/doclint/HtmlTag;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tree:Lorg/openjdk/source/doctree/DocTree;

    instance-of v1, v1, Lorg/openjdk/source/doctree/StartElementTree;

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, v0, Lorg/openjdk/tools/doclint/HtmlTag;->flags:Ljava/util/Set;

    sget-object v1, Lorg/openjdk/tools/doclint/HtmlTag$Flag;->EXPECT_CONTENT:Lorg/openjdk/tools/doclint/HtmlTag$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->flags:Ljava/util/Set;

    sget-object v1, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_TEXT:Lorg/openjdk/tools/doclint/Checker$Flag;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->flags:Ljava/util/Set;

    sget-object v1, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_ELEMENT:Lorg/openjdk/tools/doclint/Checker$Flag;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->flags:Ljava/util/Set;

    sget-object v1, Lorg/openjdk/tools/doclint/Checker$Flag;->HAS_INLINE_TAG:Lorg/openjdk/tools/doclint/Checker$Flag;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tree:Lorg/openjdk/source/doctree/DocTree;

    .line 7
    :goto_0
    iget-object p1, p1, Lorg/openjdk/tools/doclint/Checker$TagStackItem;->tree:Lorg/openjdk/source/doctree/DocTree;

    check-cast p1, Lorg/openjdk/source/doctree/StartElementTree;

    invoke-interface {p1}, Lorg/openjdk/source/doctree/StartElementTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Checker;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->messages:Lorg/openjdk/tools/doclint/Messages;

    sget-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v2, "dc.tag.empty"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p2, v2, p1}, Lorg/openjdk/tools/doclint/Messages;->warning(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
