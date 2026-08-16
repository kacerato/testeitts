.class Lorg/openjdk/tools/javac/comp/Attr$4;
.super Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Attr;->diamondContext(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/comp/Check$CheckContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Attr;

.field final synthetic val$clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

.field final synthetic val$tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$4;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr$4;->val$clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Attr$4;->val$tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;-><init>(Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-void
.end method


# virtual methods
.method public report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 4

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;->enclosingContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$4;->val$clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$4;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr$4;->val$tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "diamond"

    invoke-virtual {v1, v3, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v2

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "cant.apply.diamond.1"

    invoke-virtual {v1, v2, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method
