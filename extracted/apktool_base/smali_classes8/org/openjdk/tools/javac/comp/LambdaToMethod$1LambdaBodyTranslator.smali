.class Lorg/openjdk/tools/javac/comp/LambdaToMethod$1LambdaBodyTranslator;
.super Lorg/openjdk/tools/javac/tree/TreeTranslator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/LambdaToMethod;->makeLambdaStatementBody(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LambdaBodyTranslator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

.field final synthetic val$isTarget_void:Z

.field final synthetic val$lambdaMethodDecl:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

.field final synthetic val$restype:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod;ZLorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1LambdaBodyTranslator;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1LambdaBodyTranslator;->val$isTarget_void:Z

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1LambdaBodyTranslator;->val$lambdaMethodDecl:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1LambdaBodyTranslator;->val$restype:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 8

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1LambdaBodyTranslator;->val$isTarget_void:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1LambdaBodyTranslator;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    const-string v1, "$loc"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v6, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1LambdaBodyTranslator;->val$lambdaMethodDecl:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v7, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v3, 0x0

    invoke-static/range {v2 .. v7}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1000(Lorg/openjdk/tools/javac/comp/LambdaToMethod;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1LambdaBodyTranslator;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1LambdaBodyTranslator;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1LambdaBodyTranslator;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1LambdaBodyTranslator;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1300(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/comp/TransTypes;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1LambdaBodyTranslator;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$1200(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1LambdaBodyTranslator;->val$restype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/TransTypes;->coerce(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_2
    return-void
.end method
