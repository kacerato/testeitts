.class public Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/VariableTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCVariableDecl"
.end annotation


# instance fields
.field public init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field public mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

.field public name:Lorg/openjdk/tools/javac/util/Name;

.field public nameexpr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field public sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

.field public vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    .line 8
    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->nameexpr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 9
    sget-object p1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    goto :goto_0

    .line 11
    :cond_0
    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    .line 3
    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    .line 4
    iput-object p3, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iput-object p4, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 6
    iput-object p5, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/source/tree/TreeVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitVariable(Lorg/openjdk/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    return-void
.end method

.method public bridge synthetic getInitializer()Lorg/openjdk/source/tree/ExpressionTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->getInitializer()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getInitializer()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->VARIABLE:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0
.end method

.method public bridge synthetic getModifiers()Lorg/openjdk/source/tree/ModifiersTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->getModifiers()Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    return-object v0
.end method

.method public bridge synthetic getName()Lorg/openjdk/javax/lang/model/element/Name;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->getName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    return-object v0
.end method

.method public bridge synthetic getNameExpression()Lorg/openjdk/source/tree/ExpressionTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->getNameExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getNameExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->nameexpr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method

.method public bridge synthetic getType()Lorg/openjdk/source/tree/Tree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->getType()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method
