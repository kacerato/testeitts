.class Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/main/JavaCompiler;->desugar(Lorg/openjdk/tools/javac/comp/Env;Ljava/util/Queue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanNested"
.end annotation


# instance fields
.field dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation
.end field

.field protected hasLambdas:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/main/JavaCompiler;

.field final synthetic val$env:Lorg/openjdk/tools/javac/comp/Env;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/main/JavaCompiler;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;->this$0:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iput-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;->val$env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;->dependencies:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;->this$0:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;->this$0:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v3, v3, Lorg/openjdk/tools/javac/main/JavaCompiler;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/comp/Enter;->getEnv(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;->val$env:Lorg/openjdk/tools/javac/comp/Env;

    if-eq v3, v2, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;->dependencies:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;->hasLambdas:Z

    :try_start_0
    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;->hasLambdas:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;->hasLambdas:Z

    throw p1

    :cond_0
    :goto_1
    const/4 v1, 0x1

    :cond_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;->this$0:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v2, v2, Lorg/openjdk/tools/javac/main/JavaCompiler;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;->hasLambdas:Z

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V

    return-void
.end method

.method public visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;->hasLambdas:Z

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V

    return-void
.end method
