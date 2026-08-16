.class Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;
.super Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LambdaTranslationContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext<",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
        ">;"
    }
.end annotation


# instance fields
.field final assignedTo:Lorg/openjdk/tools/javac/code/Symbol;

.field final freeVarProcessedLocalClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field methodReferenceReceiver:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field final self:Lorg/openjdk/tools/javac/code/Symbol;

.field syntheticParams:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

.field translatedSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

.field translatedSymbols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 6

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->access$3000(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;

    sget-object v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->self:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->assignedTo:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->self:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->getVariable()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    invoke-static {p2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->assignedTo:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$Frame;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->self:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->assignedTo:Lorg/openjdk/tools/javac/code/Symbol;

    :goto_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v5

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$200(Lorg/openjdk/tools/javac/comp/LambdaToMethod;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSymbols:Ljava/util/Map;

    sget-object p2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->PARAM:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSymbols:Ljava/util/Map;

    sget-object p2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->LOCAL_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSymbols:Ljava/util/Map;

    sget-object p2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSymbols:Ljava/util/Map;

    sget-object p2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSymbols:Ljava/util/Map;

    sget-object p2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_OUTER_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSymbols:Ljava/util/Map;

    sget-object p2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->TYPE_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->freeVarProcessedLocalClasses:Ljava/util/Set;

    return-void
.end method

.method private lambdaName()Lorg/openjdk/tools/javac/util/Name;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->lambda:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->enclosingMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->access$3408(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Name;->append(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method private serializedLambdaDisambiguation()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->access$3200(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2, v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$3300(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorSymbol(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->assignedTo:Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    sget-object v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->getSymbolMap(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->self:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v3, v4, :cond_4

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    iget-object v5, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v4, v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$3300(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private serializedLambdaName()Lorg/openjdk/tools/javac/util/Name;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->lambda:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->enclosingMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->serializedLambdaDisambiguation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->access$3500(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;)Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$SyntheticMethodNameCounter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$SyntheticMethodNameCounter;->getIndex(Ljava/lang/StringBuilder;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addSymbol(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)V
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->access$3600(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->access$3700(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->access$3600(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    sget-object p2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_OUTER_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    :cond_1
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->getSymbolMap(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translate(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public complete()V
    .locals 10

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->syntheticParams:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v0

    sget-object v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->getSymbolMap(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-wide v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v6, 0x800

    and-long/2addr v4, v6

    const-wide v8, 0x2000000001000L

    or-long/2addr v4, v8

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-wide v8, v3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v6, v8

    or-long v3, v4, v6

    const-wide/16 v5, 0x2

    or-long/2addr v3, v5

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    const-wide v0, 0x80000000000L

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x8

    :goto_0
    or-long/2addr v0, v3

    iput-wide v0, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    sget-object v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->getSymbolMap(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v5

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v5, v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    :cond_3
    sget-object v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_OUTER_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->getSymbolMap(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v5

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v5, v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_2

    :cond_4
    sget-object v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->PARAM:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->getSymbolMap(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v5

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v5, v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->syntheticParams:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->isSerializable()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->serializedLambdaName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->lambdaName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    :goto_4
    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->generatedLambdaSig()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->syntheticParams:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->types(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->createMethodTypeWithParameters(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public generatedLambdaSig()Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;->getDescriptorType(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolMap(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;",
            ")",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSymbols:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public translate(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1
    sget-object v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1;->$SwitchMap$com$sun$tools$javac$comp$LambdaToMethod$LambdaSymbolKind:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x10

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :pswitch_0
    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    and-long/2addr v1, v3

    const-wide v3, 0x200000000L

    or-long v2, v1, v3

    iget-object v4, v9, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    iget-object v5, v9, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v5}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iget-object v6, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 5
    move-object v1, v9

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget v1, v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    iput v1, v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    goto/16 :goto_0

    .line 6
    :pswitch_1
    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    and-long/2addr v3, v1

    iget-object v5, v9, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v6, v9, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v7, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 7
    move-object v1, v9

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget v1, v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    iput v1, v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    goto/16 :goto_0

    .line 8
    :pswitch_2
    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x24

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->dollarThis:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    .line 9
    new-instance v10, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext$2;

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, v9, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iget-object v6, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide v2, 0x200001010L

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext$2;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_0

    .line 10
    :pswitch_3
    new-instance v10, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext$1;

    iget-object v4, v9, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, v9, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iget-object v6, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide v2, 0x200001010L

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext$1;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_0

    .line 11
    :pswitch_4
    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v12

    iget-object v14, v9, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    .line 12
    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    iget-object v2, v9, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v15

    iget-object v1, v9, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    move-object v11, v0

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 13
    move-object v1, v9

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget v1, v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    iput v1, v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    goto :goto_0

    :pswitch_5
    move-object v0, v9

    :goto_0
    if-eq v0, v9, :cond_0

    .line 14
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->propagateAnnotations()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/code/Symbol;->getRawAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Symbol;->setDeclarationAttributes(Lorg/openjdk/tools/javac/util/List;)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Symbol;->setTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    :cond_0
    return-object v0

    nop

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

.method public translate(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2

    .line 29
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 30
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSymbols:Ljava/util/Map;

    sget-object v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_OUTER_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 31
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    .line 33
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public translate(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 7

    .line 17
    invoke-static {}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->values()[Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 18
    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->getSymbolMap(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Ljava/util/Map;

    move-result-object v4

    .line 19
    sget-object v5, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1;->$SwitchMap$com$sun$tools$javac$comp$LambdaToMethod$LambdaSymbolKind:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_0

    .line 20
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    .line 22
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    .line 23
    :cond_0
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v6, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v5, v6, :cond_1

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 24
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    .line 25
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->this$1:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    .line 27
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 28
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->setSymbol(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
