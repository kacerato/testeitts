.class Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/LambdaToMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemberReferenceToLambda"
.end annotation


# instance fields
.field private final args:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation
.end field

.field private final localContext:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;

.field private final owner:Lorg/openjdk/tools/javac/code/Symbol;

.field private final params:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation
.end field

.field private receiverExpression:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

.field private final tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->args:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->params:Lorg/openjdk/tools/javac/util/ListBuffer;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->receiverExpression:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->localContext:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    return-void
.end method

.method private addParameter(Ljava/lang/String;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
    .locals 7

    new-instance v6, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    const-wide v1, 0x200001000L

    move-object v0, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    iput p1, v6, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->params:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v6, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->args:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p2

    invoke-virtual {p2, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_0
    return-object v6
.end method

.method private expressionInvoke(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 6

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->makeReceiver(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getQualifierExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->args:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v2, v3, v4, v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1800(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Apply(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1300(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/comp/TransTypes;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1200(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->localContext:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->referentType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/openjdk/tools/javac/comp/TransTypes;->coerce(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1900(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    return-object p1
.end method

.method private expressionNew()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->kind:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->ARRAY_CTOR:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getQualifierExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->params:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getQualifierExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getQualifierExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->args:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v6, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, v2, v5, v6}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1800(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getQualifierExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v1, v0, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1900(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    return-object v0
.end method

.method private makeReceiver(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-boolean v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->ownerAccessible:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$000(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getQualifierExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_2
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/openjdk/tools/javac/code/Symbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeCast(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public addParametersReturnReceiver()Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
    .locals 12

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->localContext:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->bridgedRefSig()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;->getDescriptorType(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind:[I

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->kind:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x3

    const-string v5, "rec$"

    const/4 v6, 0x0

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v5, v0, v6}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->addParameter(Ljava/lang/String;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object v0

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getQualifierExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v5, v0, v6}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->addParameter(Ljava/lang/String;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1700(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getQualifierExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/comp/Attr;->makeNullCheck(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->receiverExpression:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :goto_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v4

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v5

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->localContext:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->needsVarArgsConversion()Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v7, v4, -0x1

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v8, v8, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    const/4 v9, 0x1

    if-nez v8, :cond_4

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v8

    if-ne v4, v8, :cond_3

    goto :goto_2

    :cond_3
    move v4, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v9

    :goto_3
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    if-ge v6, v7, :cond_6

    iget-object v8, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v8, Lorg/openjdk/tools/javac/code/Type;

    if-eqz v4, :cond_5

    iget-object v10, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v10, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v10

    sget-object v11, Lorg/openjdk/javax/lang/model/type/TypeKind;->TYPEVAR:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v10, v11, :cond_5

    iget-object v10, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v10, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object v10, v10, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v10

    sget-object v11, Lorg/openjdk/javax/lang/model/type/TypeKind;->INTERSECTION:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v10, v11, :cond_5

    iget-object v8, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v8, Lorg/openjdk/tools/javac/code/Type;

    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "x$"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v8, v9}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->addParameter(Ljava/lang/String;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ge v7, v5, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xva$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1, v2, v9}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->addParameter(Ljava/lang/String;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    return-object v0
.end method

.method public getReceiverExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->receiverExpression:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public lambda()Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget v0, v0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->addParametersReturnReceiver()Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getMode()Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v2

    sget-object v3, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->INVOKE:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->expressionInvoke(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->expressionNew()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->params:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Lambda(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;->targets:Lorg/openjdk/tools/javac/util/List;

    iput-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;->targets:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    iput v2, v1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    return-object v1

    :goto_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    throw v1
.end method
