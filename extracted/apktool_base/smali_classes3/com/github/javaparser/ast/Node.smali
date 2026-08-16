.class public abstract Lcom/github/javaparser/ast/Node;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/github/javaparser/HasParentNode;
.implements Lcom/github/javaparser/ast/visitor/Visitable;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/ast/Node$PostOrderIterator;,
        Lcom/github/javaparser/ast/Node$PreOrderIterator;,
        Lcom/github/javaparser/ast/Node$ParentsVisitor;,
        Lcom/github/javaparser/ast/Node$DirectChildrenIterator;,
        Lcom/github/javaparser/ast/Node$BreadthFirstIterator;,
        Lcom/github/javaparser/ast/Node$TreeTraversal;,
        Lcom/github/javaparser/ast/Node$Parsedness;,
        Lcom/github/javaparser/ast/Node$ObserverRegistrationMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Lcom/github/javaparser/HasParentNode<",
        "Lcom/github/javaparser/ast/Node;",
        ">;",
        "Lcom/github/javaparser/ast/visitor/Visitable;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithRange<",
        "Lcom/github/javaparser/ast/Node;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange<",
        "Lcom/github/javaparser/ast/Node;",
        ">;"
    }
.end annotation


# static fields
.field public static final ABSOLUTE_BEGIN_LINE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABSOLUTE_END_LINE:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final LEVELS_TO_EXPLORE:I = 0x3

.field public static final LINE_SEPARATOR_KEY:Lcom/github/javaparser/ast/DataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/DataKey<",
            "Lcom/github/javaparser/utils/LineSeparator;",
            ">;"
        }
    .end annotation
.end field

.field public static NODE_BY_BEGIN_POSITION:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/github/javaparser/ast/nodeTypes/NodeWithRange<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected static final PHANTOM_KEY:Lcom/github/javaparser/ast/DataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/DataKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRINTER_KEY:Lcom/github/javaparser/ast/DataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/DataKey<",
            "Lcom/github/javaparser/printer/Printer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYMBOL_RESOLVER_KEY:Lcom/github/javaparser/ast/DataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/DataKey<",
            "Lcom/github/javaparser/resolution/SymbolResolver;",
            ">;"
        }
    .end annotation
.end field

.field protected static final prettyPrinterNoCommentsConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;


# instance fields
.field private childNodes:Ljava/util/ArrayList;
    .annotation runtime Lcom/github/javaparser/metamodel/InternalProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation
.end field

.field private comment:Lcom/github/javaparser/ast/comments/Comment;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private data:Ljava/util/IdentityHashMap;
    .annotation runtime Lcom/github/javaparser/metamodel/InternalProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/github/javaparser/ast/DataKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private observers:Ljava/util/ArrayList;
    .annotation runtime Lcom/github/javaparser/metamodel/InternalProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/javaparser/ast/observer/AstObserver;",
            ">;"
        }
    .end annotation
.end field

.field private orphanComments:Ljava/util/ArrayList;
    .annotation runtime Lcom/github/javaparser/metamodel/InternalProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private parentNode:Lcom/github/javaparser/ast/Node;
    .annotation runtime Lcom/github/javaparser/metamodel/InternalProperty;
    .end annotation
.end field

.field private parsed:Lcom/github/javaparser/ast/Node$Parsedness;
    .annotation runtime Lcom/github/javaparser/metamodel/InternalProperty;
    .end annotation
.end field

.field private range:Lcom/github/javaparser/Range;
    .annotation runtime Lcom/github/javaparser/metamodel/InternalProperty;
    .end annotation
.end field

.field private tokenRange:Lcom/github/javaparser/TokenRange;
    .annotation runtime Lcom/github/javaparser/metamodel/InternalProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/github/javaparser/ast/N;

    invoke-direct {v0}, Lcom/github/javaparser/ast/N;-><init>()V

    sput-object v0, Lcom/github/javaparser/ast/Node;->NODE_BY_BEGIN_POSITION:Ljava/util/Comparator;

    new-instance v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;

    invoke-direct {v0}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;-><init>()V

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_COMMENTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-virtual {v0, v1}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;->removeOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/ast/Node;->prettyPrinterNoCommentsConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    new-instance v0, Lcom/github/javaparser/ast/Node$1;

    invoke-direct {v0}, Lcom/github/javaparser/ast/Node$1;-><init>()V

    sput-object v0, Lcom/github/javaparser/ast/Node;->SYMBOL_RESOLVER_KEY:Lcom/github/javaparser/ast/DataKey;

    new-instance v0, Lcom/github/javaparser/ast/Node$2;

    invoke-direct {v0}, Lcom/github/javaparser/ast/Node$2;-><init>()V

    sput-object v0, Lcom/github/javaparser/ast/Node;->LINE_SEPARATOR_KEY:Lcom/github/javaparser/ast/DataKey;

    new-instance v0, Lcom/github/javaparser/ast/Node$3;

    invoke-direct {v0}, Lcom/github/javaparser/ast/Node$3;-><init>()V

    sput-object v0, Lcom/github/javaparser/ast/Node;->PRINTER_KEY:Lcom/github/javaparser/ast/DataKey;

    new-instance v0, Lcom/github/javaparser/ast/Node$4;

    invoke-direct {v0}, Lcom/github/javaparser/ast/Node$4;-><init>()V

    sput-object v0, Lcom/github/javaparser/ast/Node;->PHANTOM_KEY:Lcom/github/javaparser/ast/DataKey;

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenRange"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/javaparser/ast/Node;->childNodes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/javaparser/ast/Node;->orphanComments:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/javaparser/ast/Node;->data:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/javaparser/ast/Node;->observers:Ljava/util/ArrayList;

    sget-object v0, Lcom/github/javaparser/ast/Node$Parsedness;->PARSED:Lcom/github/javaparser/ast/Node$Parsedness;

    iput-object v0, p0, Lcom/github/javaparser/ast/Node;->parsed:Lcom/github/javaparser/ast/Node$Parsedness;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setTokenRange(Lcom/github/javaparser/TokenRange;)Lcom/github/javaparser/ast/Node;

    return-void
.end method

.method public static synthetic P(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;Lcom/github/javaparser/ast/CompilationUnit;)Lcom/github/javaparser/printer/Printer;
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/Node;->lambda$getPrinter$3(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;Lcom/github/javaparser/ast/CompilationUnit;)Lcom/github/javaparser/printer/Printer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Ljava/lang/Class;Ljava/util/function/Predicate;Lcom/github/javaparser/ast/Node;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->lambda$findFirst$16(Ljava/lang/Class;Ljava/util/function/Predicate;Lcom/github/javaparser/ast/Node;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/Node;->lambda$static$0(Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;)I

    move-result p0

    return p0
.end method

.method public static synthetic S(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->lambda$setParentNode$5(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/AstObserver;)V

    return-void
.end method

.method public static synthetic T(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->lambda$walk$12(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public static synthetic U(Lcom/github/javaparser/ast/CompilationUnit;)Lcom/github/javaparser/printer/Printer;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/Node;->lambda$getPrinter$1(Lcom/github/javaparser/ast/CompilationUnit;)Lcom/github/javaparser/printer/Printer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V(Ljava/lang/Class;Lcom/github/javaparser/ast/Node;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/Node;->lambda$findFirst$15(Ljava/lang/Class;Lcom/github/javaparser/ast/Node;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/Node;->lambda$isAncestorOf$17(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p0

    return p0
.end method

.method public static synthetic X(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/javaparser/ast/Node;->lambda$notifyPropertyChange$7(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;Lcom/github/javaparser/ast/observer/AstObserver;)V

    return-void
.end method

.method public static synthetic Y(Ljava/lang/Class;Ljava/util/List;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->lambda$findAll$13(Ljava/lang/Class;Ljava/util/List;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public static synthetic Z()Ljava/lang/IllegalStateException;
    .locals 1

    invoke-static {}, Lcom/github/javaparser/ast/Node;->lambda$getSymbolResolver$10()Ljava/lang/IllegalStateException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/Node;->lambda$treeIterable$11(Lcom/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/Printer;
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/ast/Node;->lambda$getPrinter$2()Lcom/github/javaparser/printer/Printer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Lcom/github/javaparser/ast/observer/AstObserver;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/Node;->lambda$registerForSubtree$8(Lcom/github/javaparser/ast/observer/AstObserver;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public static synthetic f0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/printer/Printer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/Node;->lambda$getPrinter$4(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/printer/Printer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Ljava/util/function/Predicate;Ljava/util/List;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->lambda$findAll$14(Ljava/util/function/Predicate;Ljava/util/List;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public static synthetic h0(Lcom/github/javaparser/ast/CompilationUnit;)Lcom/github/javaparser/resolution/SymbolResolver;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/Node;->lambda$getSymbolResolver$9(Lcom/github/javaparser/ast/CompilationUnit;)Lcom/github/javaparser/resolution/SymbolResolver;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i0(Ljava/lang/Class;Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/Node;->lambda$tryAddImportToParentCompilationUnit$6(Ljava/lang/Class;Lcom/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method

.method private inPhantomNode(Lcom/github/javaparser/ast/Node;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "levels"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    invoke-direct {p0, v0}, Lcom/github/javaparser/ast/Node;->isPhantom(Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/Node;

    sub-int/2addr p2, v1

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->inPhantomNode(Lcom/github/javaparser/ast/Node;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isPhantom(Lcom/github/javaparser/ast/Node;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/github/javaparser/ast/Node;->PHANTOM_KEY:Lcom/github/javaparser/ast/DataKey;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/Node;->containsData(Lcom/github/javaparser/ast/DataKey;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Node;

    invoke-interface {v1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Node;

    .line 8
    invoke-virtual {v1}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/Range;

    .line 10
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/Range;

    invoke-virtual {v1, v2}, Lcom/github/javaparser/Range;->contains(Lcom/github/javaparser/Range;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x3

    .line 11
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/Node;->inPhantomNode(Lcom/github/javaparser/ast/Node;I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/github/javaparser/ast/Node;->setData(Lcom/github/javaparser/ast/DataKey;Ljava/lang/Object;)V

    .line 13
    :cond_3
    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/Node;->getData(Lcom/github/javaparser/ast/DataKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private static synthetic lambda$findAll$13(Ljava/lang/Class;Ljava/util/List;Lcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "nodeType",
            "found",
            "node"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$findAll$14(Ljava/util/function/Predicate;Ljava/util/List;Lcom/github/javaparser/ast/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "predicate",
            "found",
            "n"
        }
    .end annotation

    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$findFirst$15(Ljava/lang/Class;Lcom/github/javaparser/ast/Node;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "nodeType",
            "node"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$findFirst$16(Ljava/lang/Class;Ljava/util/function/Predicate;Lcom/github/javaparser/ast/Node;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "nodeType",
            "predicate",
            "node"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/Node;

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getPrinter$1(Lcom/github/javaparser/ast/CompilationUnit;)Lcom/github/javaparser/printer/Printer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "c"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit;->getPrinter()Lcom/github/javaparser/printer/Printer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPrinter$2()Lcom/github/javaparser/printer/Printer;
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->createDefaultPrinter()Lcom/github/javaparser/printer/Printer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getPrinter$3(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;Lcom/github/javaparser/ast/CompilationUnit;)Lcom/github/javaparser/printer/Printer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "configuration",
            "c"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/github/javaparser/ast/CompilationUnit;->getPrinter(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/printer/Printer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPrinter$4(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/printer/Printer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "configuration"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->createDefaultPrinter(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/printer/Printer;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$getSymbolResolver$10()Ljava/lang/IllegalStateException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The node is not inserted in a CompilationUnit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$getSymbolResolver$9(Lcom/github/javaparser/ast/CompilationUnit;)Lcom/github/javaparser/resolution/SymbolResolver;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cu"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/Node;->SYMBOL_RESOLVER_KEY:Lcom/github/javaparser/ast/DataKey;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->containsData(Lcom/github/javaparser/ast/DataKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->getData(Lcom/github/javaparser/ast/DataKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/resolution/SymbolResolver;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Symbol resolution not configured: to configure consider setting a SymbolResolver in the ParserConfiguration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$isAncestorOf$17(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "descendant",
            "n"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$notifyPropertyChange$7(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "property",
            "oldValue",
            "newValue",
            "o"
        }
    .end annotation

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/github/javaparser/ast/observer/AstObserver;->propertyChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$registerForSubtree$8(Lcom/github/javaparser/ast/observer/AstObserver;Lcom/github/javaparser/ast/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "observer",
            "c"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/github/javaparser/ast/Node;->registerForSubtree(Lcom/github/javaparser/ast/observer/AstObserver;)V

    return-void
.end method

.method private synthetic lambda$setParentNode$5(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "newParentNode",
            "o"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->parentNode:Lcom/github/javaparser/ast/Node;

    invoke-interface {p2, p0, v0, p1}, Lcom/github/javaparser/ast/observer/AstObserver;->parentChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method private static synthetic lambda$static$0(Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->getRange()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/Range;

    iget-object p0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->getRange()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/Range;

    iget-object p1, p1, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/Position;->compareTo(Lcom/github/javaparser/Position;)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private synthetic lambda$treeIterable$11(Lcom/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "traversal"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/Node;->treeIterator(Lcom/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$tryAddImportToParentCompilationUnit$6(Ljava/lang/Class;Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "clazz",
            "p"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/github/javaparser/ast/CompilationUnit;->addImport(Ljava/lang/Class;)Lcom/github/javaparser/ast/CompilationUnit;

    return-void
.end method

.method private static synthetic lambda$walk$12(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "nodeType",
            "consumer",
            "node"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private treeIterable(Lcom/github/javaparser/ast/Node$TreeTraversal;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traversal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node$TreeTraversal;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/G;

    invoke-direct {v0, p0, p1}, Lcom/github/javaparser/ast/G;-><init>(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node$TreeTraversal;)V

    return-object v0
.end method

.method private treeIterator(Lcom/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traversal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node$TreeTraversal;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/Node$5;->$SwitchMap$com$github$javaparser$ast$Node$TreeTraversal:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/github/javaparser/ast/Node$ParentsVisitor;

    invoke-direct {p1, p0}, Lcom/github/javaparser/ast/Node$ParentsVisitor;-><init>(Lcom/github/javaparser/ast/Node;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown traversal choice."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/github/javaparser/ast/Node$DirectChildrenIterator;

    invoke-direct {p1, p0}, Lcom/github/javaparser/ast/Node$DirectChildrenIterator;-><init>(Lcom/github/javaparser/ast/Node;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/github/javaparser/ast/Node$PreOrderIterator;

    invoke-direct {p1, p0}, Lcom/github/javaparser/ast/Node$PreOrderIterator;-><init>(Lcom/github/javaparser/ast/Node;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/github/javaparser/ast/Node$PostOrderIterator;

    invoke-direct {p1, p0}, Lcom/github/javaparser/ast/Node$PostOrderIterator;-><init>(Lcom/github/javaparser/ast/Node;)V

    return-object p1

    :cond_4
    new-instance p1, Lcom/github/javaparser/ast/Node$BreadthFirstIterator;

    invoke-direct {p1, p0}, Lcom/github/javaparser/ast/Node$BreadthFirstIterator;-><init>(Lcom/github/javaparser/ast/Node;)V

    return-object p1
.end method


# virtual methods
.method public addOrphanComment(Lcom/github/javaparser/ast/comments/Comment;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/observer/ObservableProperty;->COMMENT:Lcom/github/javaparser/ast/observer/ObservableProperty;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->orphanComments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return-void
.end method

.method public clone()Lcom/github/javaparser/ast/Node;
    .locals 2

    .line 2
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->clone()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public containsData(Lcom/github/javaparser/ast/DataKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/DataKey<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->data:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public createDefaultPrinter()Lcom/github/javaparser/printer/Printer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getDefaultPrinterConfiguration()Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->createDefaultPrinter(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/printer/Printer;

    move-result-object v0

    return-object v0
.end method

.method public createDefaultPrinter(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/printer/Printer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/printer/DefaultPrettyPrinter;

    invoke-direct {v0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinter;-><init>(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)V

    return-object v0
.end method

.method public customInitialization()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/javaparser/ast/Node;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/visitor/EqualsVisitor;->equals(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/github/javaparser/ast/z;

    invoke-direct {v1, v0}, Lcom/github/javaparser/ast/z;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/github/javaparser/ast/Node;->walk(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public findAll(Ljava/lang/Class;Lcom/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeType",
            "traversal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/github/javaparser/ast/Node$TreeTraversal;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Lcom/github/javaparser/ast/D;

    invoke-direct {v1, p1, v0}, Lcom/github/javaparser/ast/D;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    invoke-virtual {p0, p2, v1}, Lcom/github/javaparser/ast/Node;->walk(Lcom/github/javaparser/ast/Node$TreeTraversal;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public findAll(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeType",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Lcom/github/javaparser/ast/H;

    invoke-direct {v1, p2, v0}, Lcom/github/javaparser/ast/H;-><init>(Ljava/util/function/Predicate;Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/github/javaparser/ast/Node;->walk(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public findByRange(Lcom/github/javaparser/Range;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/Range;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->isPhantom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/Range;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/Range;->contains(Lcom/github/javaparser/Range;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {v1, p1}, Lcom/github/javaparser/ast/Node;->findByRange(Lcom/github/javaparser/Range;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_4
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public findCompilationUnit()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->findRootNode()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    instance-of v1, v0, Lcom/github/javaparser/ast/CompilationUnit;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/github/javaparser/ast/CompilationUnit;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public findData(Lcom/github/javaparser/ast/DataKey;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/DataKey<",
            "TM;>;)",
            "Ljava/util/Optional<",
            "TM;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->containsData(Lcom/github/javaparser/ast/DataKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->getData(Lcom/github/javaparser/ast/DataKey;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public findFirst(Lcom/github/javaparser/ast/Node$TreeTraversal;Ljava/util/function/Function;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "traversal",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/Node$TreeTraversal;",
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/ast/Node;",
            "Ljava/util/Optional<",
            "TT;>;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/Node;->treeIterable(Lcom/github/javaparser/ast/Node$TreeTraversal;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public findFirst(Ljava/lang/Class;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;)",
            "Ljava/util/Optional<",
            "TN;>;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/github/javaparser/ast/Node$TreeTraversal;->PREORDER:Lcom/github/javaparser/ast/Node$TreeTraversal;

    new-instance v1, Lcom/github/javaparser/ast/L;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/L;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/Node;->findFirst(Lcom/github/javaparser/ast/Node$TreeTraversal;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public findFirst(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeType",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;",
            "Ljava/util/function/Predicate<",
            "TN;>;)",
            "Ljava/util/Optional<",
            "TN;>;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/github/javaparser/ast/Node$TreeTraversal;->PREORDER:Lcom/github/javaparser/ast/Node$TreeTraversal;

    new-instance v1, Lcom/github/javaparser/ast/M;

    invoke-direct {v1, p1, p2}, Lcom/github/javaparser/ast/M;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;)V

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/Node;->findFirst(Lcom/github/javaparser/ast/Node$TreeTraversal;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public findRootNode()Lcom/github/javaparser/ast/Node;
    .locals 2

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllContainedComments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/github/javaparser/ast/Node;->orphanComments:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/Node;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/github/javaparser/ast/n;

    invoke-direct {v4, v0}, Lcom/github/javaparser/ast/n;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v2}, Lcom/github/javaparser/ast/Node;->getAllContainedComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getChildNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->childNodes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildNodesByType(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;)",
            "Ljava/util/List<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2, p1}, Lcom/github/javaparser/ast/Node;->getChildNodesByType(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getComment()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->comment:Lcom/github/javaparser/ast/comments/Comment;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getData(Lcom/github/javaparser/ast/DataKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/DataKey<",
            "TM;>;)TM;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->data:Ljava/util/IdentityHashMap;

    const-string v1, "No data of this type found. Use containsData to check for this first."

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDataKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/github/javaparser/ast/DataKey<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->data:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPrinterConfiguration()Lcom/github/javaparser/printer/configuration/PrinterConfiguration;
    .locals 1

    new-instance v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;

    invoke-direct {v0}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;-><init>()V

    return-object v0
.end method

.method public getLineEndingStyle()Lcom/github/javaparser/utils/LineSeparator;
    .locals 3

    sget-object v0, Lcom/github/javaparser/ast/Node;->LINE_SEPARATOR_KEY:Lcom/github/javaparser/ast/DataKey;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->containsData(Lcom/github/javaparser/ast/DataKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->getData(Lcom/github/javaparser/ast/DataKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/utils/LineSeparator;

    return-object v0

    :cond_0
    move-object v0, p0

    :cond_1
    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    sget-object v1, Lcom/github/javaparser/ast/Node;->LINE_SEPARATOR_KEY:Lcom/github/javaparser/ast/DataKey;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->containsData(Lcom/github/javaparser/ast/DataKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->getData(Lcom/github/javaparser/ast/DataKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/utils/LineSeparator;

    return-object v0

    :cond_2
    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    return-object v0
.end method

.method public getLineEndingStyleOrDefault(Lcom/github/javaparser/utils/LineSeparator;)Lcom/github/javaparser/utils/LineSeparator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultLineSeparator"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getLineEndingStyle()Lcom/github/javaparser/utils/LineSeparator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/utils/LineSeparator;->isStandardEol()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getLineEndingStyle()Lcom/github/javaparser/utils/LineSeparator;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->nodeMetaModel:Lcom/github/javaparser/metamodel/NodeMetaModel;

    return-object v0
.end method

.method public getNodesByType(Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;)",
            "Ljava/util/List<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->getChildNodesByType(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getOrphanComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->orphanComments:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParentNode()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->parentNode:Lcom/github/javaparser/ast/Node;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getParentNodeForChildren()Lcom/github/javaparser/ast/Node;
    .locals 0

    return-object p0
.end method

.method public getParsed()Lcom/github/javaparser/ast/Node$Parsedness;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->parsed:Lcom/github/javaparser/ast/Node$Parsedness;

    return-object v0
.end method

.method public getPrinter()Lcom/github/javaparser/printer/Printer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->findCompilationUnit()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/A;

    invoke-direct {v1}, Lcom/github/javaparser/ast/A;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/B;

    invoke-direct {v1, p0}, Lcom/github/javaparser/ast/B;-><init>(Lcom/github/javaparser/ast/Node;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/Printer;

    return-object v0
.end method

.method public getPrinter(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/printer/Printer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->findCompilationUnit()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/E;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/E;-><init>(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/F;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/ast/F;-><init>(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/Printer;

    return-object p1
.end method

.method public getRange()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/Range;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->range:Lcom/github/javaparser/Range;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolResolver()Lcom/github/javaparser/resolution/SymbolResolver;
    .locals 2

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->findCompilationUnit()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/P;

    invoke-direct {v1}, Lcom/github/javaparser/ast/P;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/Q;

    invoke-direct {v1}, Lcom/github/javaparser/ast/Q;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/SymbolResolver;

    return-object v0
.end method

.method public getTokenRange()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/TokenRange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->tokenRange:Lcom/github/javaparser/TokenRange;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public hasScope()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/nodeTypes/NodeWithOptionalScope;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/github/javaparser/ast/nodeTypes/NodeWithOptionalScope;

    invoke-interface {v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithOptionalScope;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/nodeTypes/NodeWithScope;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/github/javaparser/ast/nodeTypes/NodeWithScope;

    invoke-interface {v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithScope;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/github/javaparser/ast/visitor/HashCodeVisitor;->hashCode(Lcom/github/javaparser/ast/Node;)I

    move-result v0

    return v0
.end method

.method public isAncestorOf(Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descendant"
        }
    .end annotation

    if-eq p0, p1, :cond_0

    new-instance v0, Lcom/github/javaparser/ast/I;

    invoke-direct {v0, p1}, Lcom/github/javaparser/ast/I;-><init>(Lcom/github/javaparser/ast/Node;)V

    const-class p1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/ast/Node;->findFirst(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPhantom()Z
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lcom/github/javaparser/ast/Node;->isPhantom(Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public isRegistered(Lcom/github/javaparser/ast/observer/AstObserver;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/observer/ObservableProperty;",
            "TP;TP;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->observers:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/javaparser/ast/J;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/github/javaparser/ast/J;-><init>(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public register(Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public register(Lcom/github/javaparser/ast/observer/AstObserver;Lcom/github/javaparser/ast/Node$ObserverRegistrationMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "observer",
            "mode"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 3
    sget-object v0, Lcom/github/javaparser/ast/Node$5;->$SwitchMap$com$github$javaparser$ast$Node$ObserverRegistrationMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {p1}, Lcom/github/javaparser/ast/observer/PropagatingAstObserver;->transformInPropagatingObserver(Lcom/github/javaparser/ast/observer/AstObserver;)Lcom/github/javaparser/ast/observer/PropagatingAstObserver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->registerForSubtree(Lcom/github/javaparser/ast/observer/AstObserver;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This mode is not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->registerForSubtree(Lcom/github/javaparser/ast/observer/AstObserver;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->register(Lcom/github/javaparser/ast/observer/AstObserver;)V

    :goto_0
    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mode should be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerForSubtree(Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->register(Lcom/github/javaparser/ast/observer/AstObserver;)V

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/O;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/O;-><init>(Lcom/github/javaparser/ast/observer/AstObserver;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getAllPropertyMetaModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/metamodel/PropertyMetaModel;

    invoke-virtual {v1}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->isNodeList()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/NodeList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/github/javaparser/ast/NodeList;->register(Lcom/github/javaparser/ast/observer/AstObserver;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->parentNode:Lcom/github/javaparser/ast/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Lcom/github/javaparser/ast/Node;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/github/javaparser/ast/Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/github/javaparser/ast/Node;->comment:Lcom/github/javaparser/ast/comments/Comment;

    if-eqz v1, :cond_1

    if-ne p1, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->removeComment()Lcom/github/javaparser/ast/Node;

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public removeComment()Lcom/github/javaparser/ast/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public removeData(Lcom/github/javaparser/ast/DataKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/DataKey<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->data:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeForced()V
    .locals 2

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->remove()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/K;

    invoke-direct {v1}, Lcom/github/javaparser/ast/K;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public removeOrphanComment(Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->orphanComments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->COMMENT:Lcom/github/javaparser/ast/observer/ObservableProperty;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    iget-object p1, p0, Lcom/github/javaparser/ast/Node;->orphanComments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    :cond_0
    return v0
.end method

.method public replace(Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->parentNode:Lcom/github/javaparser/ast/Node;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/github/javaparser/ast/Node;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "replacementNode"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/github/javaparser/ast/Node;->comment:Lcom/github/javaparser/ast/comments/Comment;

    if-eqz v1, :cond_1

    if-ne p1, v1, :cond_1

    .line 4
    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childNode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNodeForChildren()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_0
    return-void
.end method

.method public setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "+",
            "Lcom/github/javaparser/ast/Node;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNodeForChildren()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    :cond_0
    return-void
.end method

.method public final setBlockComment(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/comments/BlockComment;

    invoke-direct {v0, p1}, Lcom/github/javaparser/ast/comments/BlockComment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "comment"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->comment:Lcom/github/javaparser/ast/comments/Comment;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->COMMENT:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->comment:Lcom/github/javaparser/ast/comments/Comment;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/comments/Comment;->setCommentedNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/comments/Comment;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/Node;->comment:Lcom/github/javaparser/ast/comments/Comment;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/github/javaparser/ast/comments/Comment;->setCommentedNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/comments/Comment;

    :cond_2
    return-object p0
.end method

.method public setData(Lcom/github/javaparser/ast/DataKey;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/DataKey<",
            "TM;>;TM;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->data:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/ast/Node;->data:Ljava/util/IdentityHashMap;

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->data:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setLineComment(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/comments/LineComment;

    invoke-direct {v0, p1}, Lcom/github/javaparser/ast/comments/LineComment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newParentNode"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->parentNode:Lcom/github/javaparser/ast/Node;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->observers:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/javaparser/ast/y;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/ast/y;-><init>(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 4
    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->parentNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, v0, Lcom/github/javaparser/ast/Node;->childNodes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 10
    :cond_3
    iput-object p1, p0, Lcom/github/javaparser/ast/Node;->parentNode:Lcom/github/javaparser/ast/Node;

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p1, Lcom/github/javaparser/ast/Node;->childNodes:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0
.end method

.method public bridge synthetic setParentNode(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "newParentNode"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public setParsed(Lcom/github/javaparser/ast/Node$Parsedness;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parsed"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/ast/Node;->parsed:Lcom/github/javaparser/ast/Node$Parsedness;

    return-object p0
.end method

.method public setRange(Lcom/github/javaparser/Range;)Lcom/github/javaparser/ast/Node;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->range:Lcom/github/javaparser/Range;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 3
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->RANGE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/github/javaparser/ast/Node;->range:Lcom/github/javaparser/Range;

    return-object p0
.end method

.method public bridge synthetic setRange(Lcom/github/javaparser/Range;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "range"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setRange(Lcom/github/javaparser/Range;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public setTokenRange(Lcom/github/javaparser/TokenRange;)Lcom/github/javaparser/ast/Node;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenRange"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/github/javaparser/ast/Node;->tokenRange:Lcom/github/javaparser/TokenRange;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/github/javaparser/TokenRange;->getBegin()Lcom/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/github/javaparser/TokenRange;->getEnd()Lcom/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->hasRange()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/github/javaparser/Range;

    .line 5
    invoke-virtual {p1}, Lcom/github/javaparser/TokenRange;->getBegin()Lcom/github/javaparser/JavaToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/Range;

    iget-object v1, v1, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    .line 6
    invoke-virtual {p1}, Lcom/github/javaparser/TokenRange;->getEnd()Lcom/github/javaparser/JavaToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/Range;

    iget-object p1, p1, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-direct {v0, v1, p1}, Lcom/github/javaparser/Range;-><init>(Lcom/github/javaparser/Position;Lcom/github/javaparser/Position;)V

    iput-object v0, p0, Lcom/github/javaparser/ast/Node;->range:Lcom/github/javaparser/Range;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/github/javaparser/ast/Node;->range:Lcom/github/javaparser/Range;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic setTokenRange(Lcom/github/javaparser/TokenRange;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tokenRange"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setTokenRange(Lcom/github/javaparser/TokenRange;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/github/javaparser/ast/Node$TreeTraversal;->PREORDER:Lcom/github/javaparser/ast/Node$TreeTraversal;

    .line 4
    invoke-direct {p0, v0}, Lcom/github/javaparser/ast/Node;->treeIterator(Lcom/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x101

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public stream(Lcom/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traversal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node$TreeTraversal;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lcom/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/Node;->treeIterator(Lcom/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/Iterator;

    move-result-object p1

    const/16 v0, 0x101

    invoke-static {p1, v0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getPrinter()Lcom/github/javaparser/printer/Printer;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/github/javaparser/ast/Node;->LINE_SEPARATOR_KEY:Lcom/github/javaparser/ast/DataKey;

    invoke-virtual {p0, v1}, Lcom/github/javaparser/ast/Node;->containsData(Lcom/github/javaparser/ast/DataKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {p0, v1}, Lcom/github/javaparser/ast/Node;->getLineEndingStyleOrDefault(Lcom/github/javaparser/utils/LineSeparator;)Lcom/github/javaparser/utils/LineSeparator;

    move-result-object v1

    .line 4
    instance-of v2, v0, Lcom/github/javaparser/printer/ConfigurablePrinter;

    if-eqz v2, :cond_0

    .line 5
    move-object v2, v0

    check-cast v2, Lcom/github/javaparser/printer/ConfigurablePrinter;

    .line 6
    invoke-interface {v2}, Lcom/github/javaparser/printer/ConfigurablePrinter;->getConfiguration()Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    new-instance v4, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v5, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->END_OF_LINE_CHARACTER:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    .line 8
    invoke-virtual {v1}, Lcom/github/javaparser/utils/LineSeparator;->asRawString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;Ljava/lang/Object;)V

    .line 9
    invoke-interface {v3, v4}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->addOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    .line 10
    invoke-interface {v2, v3}, Lcom/github/javaparser/printer/ConfigurablePrinter;->setConfiguration(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/printer/Printer;

    .line 11
    :cond_0
    invoke-interface {v0, p0}, Lcom/github/javaparser/printer/Printer;->print(Lcom/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getPrinter()Lcom/github/javaparser/printer/Printer;

    move-result-object v0

    .line 13
    instance-of v1, v0, Lcom/github/javaparser/printer/ConfigurablePrinter;

    if-nez v1, :cond_0

    .line 14
    invoke-interface {v0, p0}, Lcom/github/javaparser/printer/Printer;->print(Lcom/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    check-cast v0, Lcom/github/javaparser/printer/ConfigurablePrinter;

    .line 16
    invoke-interface {v0}, Lcom/github/javaparser/printer/ConfigurablePrinter;->getConfiguration()Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object v1

    .line 17
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->getPrinter(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/printer/Printer;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/github/javaparser/printer/Printer;->print(Lcom/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-interface {v0, v1}, Lcom/github/javaparser/printer/ConfigurablePrinter;->setConfiguration(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/printer/Printer;

    return-object p1
.end method

.method public tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/ast/CompilationUnit;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/github/javaparser/HasParentNode;->findAncestor([Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/C;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/C;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unregister(Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/Node;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/github/javaparser/ast/Node;->observers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    return-void
.end method

.method public walk(Lcom/github/javaparser/ast/Node$TreeTraversal;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "traversal",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node$TreeTraversal;",
            "Ljava/util/function/Consumer<",
            "Lcom/github/javaparser/ast/Node;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/Node;->treeIterable(Lcom/github/javaparser/ast/Node$TreeTraversal;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public walk(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeType",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/github/javaparser/ast/Node$TreeTraversal;->PREORDER:Lcom/github/javaparser/ast/Node$TreeTraversal;

    new-instance v1, Lcom/github/javaparser/ast/S;

    invoke-direct {v1, p1, p2}, Lcom/github/javaparser/ast/S;-><init>(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/Node;->walk(Lcom/github/javaparser/ast/Node$TreeTraversal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public walk(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/github/javaparser/ast/Node;",
            ">;)V"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/github/javaparser/ast/Node$TreeTraversal;->PREORDER:Lcom/github/javaparser/ast/Node$TreeTraversal;

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/ast/Node;->walk(Lcom/github/javaparser/ast/Node$TreeTraversal;Ljava/util/function/Consumer;)V

    return-void
.end method
