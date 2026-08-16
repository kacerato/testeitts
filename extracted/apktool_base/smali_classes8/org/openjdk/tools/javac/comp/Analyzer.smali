.class public Lorg/openjdk/tools/javac/comp/Analyzer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Analyzer$TreeMapper;,
        Lorg/openjdk/tools/javac/comp/Analyzer$StatementScanner;,
        Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;,
        Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzeDeferredDiagHandler;,
        Lorg/openjdk/tools/javac/comp/Analyzer$RedundantTypeArgAnalyzer;,
        Lorg/openjdk/tools/javac/comp/Analyzer$LambdaAnalyzer;,
        Lorg/openjdk/tools/javac/comp/Analyzer$DiamondInitializer;,
        Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;,
        Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;
    }
.end annotation


# static fields
.field protected static final analyzerKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/Analyzer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final allowDiamondWithAnonymousClassCreation:Z

.field final analyzerModes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;",
            ">;"
        }
    .end annotation
.end field

.field analyzers:[Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation
.end field

.field final argumentAttr:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

.field final attr:Lorg/openjdk/tools/javac/comp/Attr;

.field final deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

.field final log:Lorg/openjdk/tools/javac/util/Log;

.field final make:Lorg/openjdk/tools/javac/tree/TreeMaker;

.field final names:Lorg/openjdk/tools/javac/util/Names;

.field final types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Analyzer;->analyzerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/openjdk/tools/javac/comp/Analyzer$DiamondInitializer;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Analyzer$DiamondInitializer;-><init>(Lorg/openjdk/tools/javac/comp/Analyzer;)V

    new-instance v1, Lorg/openjdk/tools/javac/comp/Analyzer$LambdaAnalyzer;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/comp/Analyzer$LambdaAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Analyzer;)V

    new-instance v2, Lorg/openjdk/tools/javac/comp/Analyzer$RedundantTypeArgAnalyzer;

    invoke-direct {v2, p0}, Lorg/openjdk/tools/javac/comp/Analyzer$RedundantTypeArgAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Analyzer;)V

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Analyzer;->analyzers:[Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;

    sget-object v0, Lorg/openjdk/tools/javac/comp/Analyzer;->analyzerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Analyzer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Analyzer;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Analyzer;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/DeferredAttr;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Analyzer;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Analyzer;->argumentAttr:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Analyzer;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Analyzer;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    const-string v1, "find"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowDiamondWithAnonymousClassCreation()Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Analyzer;->allowDiamondWithAnonymousClassCreation:Z

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;->getAnalyzerModes(Ljava/lang/String;Lorg/openjdk/tools/javac/code/Source;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Analyzer;->analyzerModes:Ljava/util/EnumSet;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Analyzer;->lambda$analyze$1(Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;Ljava/util/Map$Entry;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/comp/Analyzer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/comp/Analyzer;->allowDiamondWithAnonymousClassCreation:Z

    return p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/comp/Analyzer;Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Analyzer;->lambda$analyze$0(Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Analyzer;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Analyzer;->analyzerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Analyzer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/Analyzer;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Analyzer;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$analyze$0(Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;
    .locals 0

    new-instance p2, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzeDeferredDiagHandler;

    invoke-direct {p2, p0, p1}, Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzeDeferredDiagHandler;-><init>(Lorg/openjdk/tools/javac/comp/Analyzer;Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;)V

    return-object p2
.end method

.method private static synthetic lambda$analyze$1(Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;Ljava/util/Map$Entry;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;->treesToAnalyzer:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;->errors:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result p0

    invoke-virtual {v0, v1, p1, p0}, Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;->process(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Z)V

    return-void
.end method


# virtual methods
.method public analyze(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;-><init>(Lorg/openjdk/tools/javac/comp/Analyzer;)V

    new-instance v1, Lorg/openjdk/tools/javac/comp/Analyzer$StatementScanner;

    invoke-direct {v1, p0, v0}, Lorg/openjdk/tools/javac/comp/Analyzer$StatementScanner;-><init>(Lorg/openjdk/tools/javac/comp/Analyzer;Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;)V

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/comp/Analyzer$StatementScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;->treesToAnalyzer:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Analyzer;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const-wide/16 v2, 0x1000

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v5

    new-instance v8, Lorg/openjdk/tools/javac/comp/Analyzer$TreeMapper;

    invoke-direct {v8, p0, v0}, Lorg/openjdk/tools/javac/comp/Analyzer$TreeMapper;-><init>(Lorg/openjdk/tools/javac/comp/Analyzer;Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Analyzer;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Analyzer;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v7, p1, Lorg/openjdk/tools/javac/comp/Attr;->statInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    new-instance v9, Lorg/openjdk/tools/javac/comp/a;

    invoke-direct {v9, p0, v0}, Lorg/openjdk/tools/javac/comp/a;-><init>(Lorg/openjdk/tools/javac/comp/Analyzer;Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Analyzer;->argumentAttr:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->withLocalCacheContext()Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;

    move-result-object v10

    move-object v6, p2

    invoke-virtual/range {v4 .. v10}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attribSpeculative(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/tree/TreeCopier;Ljava/util/function/Function;Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;)Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, v0, Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;->treeMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/comp/b;

    invoke-direct {p2, v0}, Lorg/openjdk/tools/javac/comp/b;-><init>(Lorg/openjdk/tools/javac/comp/Analyzer$AnalysisContext;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public analyzeIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Analyzer;->analyzerModes:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->isSpeculative:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isStatement(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Analyzer;->analyze(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/comp/Env;)V

    :cond_0
    return-void
.end method
