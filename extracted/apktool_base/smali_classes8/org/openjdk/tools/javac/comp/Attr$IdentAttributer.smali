.class Lorg/openjdk/tools/javac/comp/Attr$IdentAttributer;
.super Lorg/openjdk/source/util/SimpleTreeVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdentAttributer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/source/util/SimpleTreeVisitor<",
        "Lorg/openjdk/tools/javac/code/Symbol;",
        "Lorg/openjdk/tools/javac/comp/Env<",
        "Lorg/openjdk/tools/javac/comp/AttrContext;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Attr;


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$IdentAttributer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-direct {p0}, Lorg/openjdk/source/util/SimpleTreeVisitor;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Attr$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr$IdentAttributer;-><init>(Lorg/openjdk/tools/javac/comp/Attr;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr$IdentAttributer;->visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/IdentifierTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$IdentAttributer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-interface {p1}, Lorg/openjdk/source/tree/IdentifierTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/util/Name;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP_PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v0, p2, p1, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->findIdent(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitMemberSelect(Lorg/openjdk/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr$IdentAttributer;->visitMemberSelect(Lorg/openjdk/source/tree/MemberSelectTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lorg/openjdk/source/tree/MemberSelectTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/MemberSelectTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/tree/MemberSelectTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->visit(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    .line 3
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v2, :cond_2

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ABSENT_TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v2, :cond_2

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->HIDDEN:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lorg/openjdk/source/tree/MemberSelectTree;->getIdentifier()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/util/Name;

    .line 5
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iput-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    .line 7
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$IdentAttributer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP_PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v1, p2, v0, p1, v2}, Lorg/openjdk/tools/javac/comp/Resolve;->findIdentInPackage(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    .line 9
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$IdentAttributer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->asType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, p2, v2, p1, v0}, Lorg/openjdk/tools/javac/comp/Resolve;->findMemberType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method
