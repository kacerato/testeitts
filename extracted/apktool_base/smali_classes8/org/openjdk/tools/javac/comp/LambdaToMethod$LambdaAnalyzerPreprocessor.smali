.class Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;
.super Lorg/openjdk/tools/javac/tree/TreeTranslator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/LambdaToMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LambdaAnalyzerPreprocessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;,
        Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;,
        Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;,
        Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;,
        Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$SyntheticMethodNameCounter;
    }
.end annotation


# instance fields
.field private clinits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private frameStack:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private lambdaCount:I

.field private localClassDefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ">;"
        }
    .end annotation
.end field

.field private syntheticMethodNameCounts:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$SyntheticMethodNameCounter;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

.field private typesUnderConstruction:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->lambdaCount:I

    new-instance p1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$SyntheticMethodNameCounter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$SyntheticMethodNameCounter;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/comp/LambdaToMethod$1;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->syntheticMethodNameCounts:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$SyntheticMethodNameCounter;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->clinits:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$2600(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;)Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->context()Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2700(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;ILorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->capturedDecl(ILorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2900(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Z)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->owner(Z)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->analyzeAndPreprocessClass(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3000(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    return-object p0
.end method

.method public static synthetic access$3200(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->directlyEnclosingLambda()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3408(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;)I
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->lambdaCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->lambdaCount:I

    return v0
.end method

.method public static synthetic access$3500(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;)Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$SyntheticMethodNameCounter;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->syntheticMethodNameCounts:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$SyntheticMethodNameCounter;

    return-object p0
.end method

.method public static synthetic access$3600(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->typesUnderConstruction:Lorg/openjdk/tools/javac/util/List;

    return-object p0
.end method

.method public static synthetic access$3700(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->currentClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->lambdaIdentSymbolFilter(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->lambdaFieldAccessFilter(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)Z

    move-result p0

    return p0
.end method

.method private analyzeAndPreprocessClass(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
    .locals 1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->typesUnderConstruction:Lorg/openjdk/tools/javac/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->localClassDefs:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    return-object p1
.end method

.method private analyzeLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;
    .locals 6

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    .line 5
    :try_start_0
    new-instance v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    invoke-direct {v1, p0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V

    .line 6
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    new-instance v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    invoke-direct {v3, p0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    .line 7
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    .line 8
    iget-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    sget-object v5, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->PARAM:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {v1, v4, v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->addSymbol(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)V

    .line 9
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->addLocal(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 10
    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$2300(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V

    .line 12
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->complete()V

    .line 13
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$2400(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$2200(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v2

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->needsAltMetafactory()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->note(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_1
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    return-object v1

    :goto_1
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    .line 16
    throw p1
.end method

.method private analyzeLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 2
    const-string v0, "mref.stat.1"

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->analyzeLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 3
    iput-object p2, p1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->methodReferenceReceiver:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    return-void
.end method

.method private capturedDecl(ILorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    sget-object v4, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    iget-object v5, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad decl kind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_0
    iget-object v4, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->locals:Lorg/openjdk/tools/javac/util/List;

    if-eqz v4, :cond_2

    invoke-virtual {v4, p2}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-le v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_1
    return-object v3

    :pswitch_1
    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    move-object v4, v2

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    if-ne v4, p2, :cond_2

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_2

    if-le v0, p1, :cond_1

    goto :goto_2

    :cond_1
    move-object v3, v2

    :goto_2
    return-object v3

    :pswitch_2
    iget-object v4, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lorg/openjdk/tools/javac/code/Symbol;->isMemberOf(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_4

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_3
    :goto_4
    if-le v0, p1, :cond_4

    goto :goto_5

    :cond_4
    iget-object v3, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    :cond_5
    :goto_5
    return-object v3

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private context()Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$2300(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Ljava/util/Map;

    move-result-object v2

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private currentClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private directlyEnclosingLambda()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    return-object v1
.end method

.method private inClassWithinLambda()Z
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    iget-object v4, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private initSym(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;J)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 6

    const-wide/16 v0, 0x8

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1700(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/comp/Attr;->removeClinit(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->clinits:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->clinits:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object p2

    iget-object v3, p2, Lorg/openjdk/tools/javac/util/Names;->clinit:Lorg/openjdk/tools/javac/util/Name;

    new-instance v4, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {p3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$000(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object p3

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$000(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v4, p2, p3, v1, v2}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    const-wide/16 v1, 0x8

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$200(Lorg/openjdk/tools/javac/comp/LambdaToMethod;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p2

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->clinits:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p2

    :cond_2
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object p2

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    return-object p1

    :cond_3
    const-string p1, "init not found"

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private lambdaFieldAccessFilter(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$2800(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    move-result-object v0

    instance-of v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$2800(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v2, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v1, :cond_1

    iget-object p1, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSymbols:Ljava/util/Map;

    sget-object v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_OUTER_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private lambdaIdentSymbolFilter(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private lambdaNewClassFilter(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext<",
            "*>;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-nez v1, :cond_1

    iget-object v1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-nez v1, :cond_1

    iget-object v1, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Symbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private owner()Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->owner(Z)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method private owner(Z)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    .line 3
    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    sget-object v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x8

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$2300(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-object p1

    .line 7
    :cond_0
    :goto_1
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    .line 8
    :pswitch_1
    iget-object p1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-object p1

    .line 9
    :pswitch_2
    iget-object p1, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 10
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-wide v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->flags:J

    and-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->initSym(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;J)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_3
    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 14
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    .line 15
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v2

    .line 16
    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->initSym(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;J)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_4
    iget-object p1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object p1

    .line 18
    :cond_2
    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public captureLocalClassDefs(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->localClassDefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v0, :cond_0

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->freeVarProcessedLocalClasses:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$1;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$2500(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/comp/Lower;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p0, v1, p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$1;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;)V

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_0
    return-void
.end method

.method public currentlyInClass(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->typesUnderConstruction:Lorg/openjdk/tools/javac/util/List;

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->typesUnderConstruction:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->currentClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->typesUnderConstruction:Lorg/openjdk/tools/javac/util/List;

    :cond_1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->typesUnderConstruction:Lorg/openjdk/tools/javac/util/List;

    return-void

    :goto_1
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->typesUnderConstruction:Lorg/openjdk/tools/javac/util/List;

    throw p1
.end method

.method public visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    :try_start_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    new-instance v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    invoke-direct {v2, p0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    return-void

    :goto_1
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    throw p1
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 9

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    iget v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->lambdaCount:I

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->syntheticMethodNameCounts:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$SyntheticMethodNameCounter;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->clinits:Ljava/util/Map;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$2200(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v4

    :try_start_0
    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$2200(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v5

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    const/4 v5, 0x0

    iput v5, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->lambdaCount:I

    new-instance v5, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$SyntheticMethodNameCounter;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$SyntheticMethodNameCounter;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/comp/LambdaToMethod$1;)V

    iput-object v5, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->syntheticMethodNameCounts:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$SyntheticMethodNameCounter;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v6, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->localClassDefs:Ljava/util/Map;

    invoke-interface {v6, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v5

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->directlyEnclosingLambda()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->owner()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v6

    iput-object v6, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->context()Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    move-result-object v3

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    :goto_1
    if-eqz v3, :cond_3

    iget-object v7, v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    sget-object v8, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LAMBDA:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->depth:I

    invoke-direct {p0, v7, v6}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->capturedDecl(ILorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    move-object v7, v3

    check-cast v7, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    sget-object v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {v7, v6, v8}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->addSymbol(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)V

    :cond_2
    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->prev:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    new-instance v6, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    invoke-direct {v6, p0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {v3, v6}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$2200(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p1

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    iput v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->lambdaCount:I

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->syntheticMethodNameCounts:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$SyntheticMethodNameCounter;

    iput-object v5, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->clinits:Ljava/util/Map;

    return-void

    :catchall_1
    move-exception p1

    :goto_3
    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$2200(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v5

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    iput v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->lambdaCount:I

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->syntheticMethodNameCounts:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$SyntheticMethodNameCounter;

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->clinits:Ljava/util/Map;

    throw p1
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 4

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->context()Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->lambdaIdentSymbolFilter(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->context()Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LAMBDA:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    if-ne v1, v2, :cond_1

    iget v1, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->depth:I

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->capturedDecl(ILorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    sget-object v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->addSymbol(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)V

    :cond_1
    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->prev:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->context()Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LAMBDA:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->depth:I

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->capturedDecl(ILorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    sget-object v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const-string v1, "bad block kind"

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    sget-object v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->addSymbol(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)V

    :cond_5
    :goto_2
    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->prev:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    goto :goto_1

    :cond_6
    :goto_3
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 1

    const-string v0, "lambda.stat"

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->analyzeLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    return-void
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    :try_start_0
    new-instance v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    invoke-direct {v1, p0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    throw p1
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 7

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->currentlyInClass(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->context()Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->lambdaNewClassFilter(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->context()Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    move-result-object v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    :goto_0
    if-eqz v3, :cond_4

    iget-object v5, v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    sget-object v6, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LAMBDA:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_2

    iget v5, v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->depth:I

    invoke-direct {p0, v5, v4}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->capturedDecl(ILorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v3

    check-cast v5, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    sget-object v6, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {v5, v4, v6}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->addSymbol(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)V

    :cond_3
    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->prev:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    goto :goto_0

    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->context()Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    move-result-object v3

    if-eqz v3, :cond_5

    if-nez v1, :cond_5

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->context()Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->captureLocalClassDefs(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;)V

    :cond_5
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V

    return-void
.end method

.method public visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$2300(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->needsConversionToLambda()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->owner()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    invoke-direct {v1, v2, p1, v0, v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->lambda()Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    move-result-object p1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->getReceiverExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->analyzeLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$2400(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$2200(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->needsAltMetafactory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "mref.stat"

    invoke-virtual {v1, p1, v2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->note(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 4

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->context()Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_3

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->context()Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LAMBDA:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->depth:I

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->capturedDecl(ILorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    sget-object v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->addSymbol(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)V

    :cond_2
    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->prev:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V

    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 4

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->context()Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LAMBDA:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    sget-object v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->LOCAL_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->addSymbol(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)V

    :cond_1
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->asType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->inClassWithinLambda()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    sget-object v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->TYPE_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->addSymbol(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)V

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_3

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->addLocal(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    new-instance v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    invoke-direct {v2, p0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    return-void

    :goto_2
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->frameStack:Lorg/openjdk/tools/javac/util/List;

    throw p1
.end method
