.class public Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;
.super Lorg/openjdk/tools/javac/tree/JCTree;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/MethodTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCMethodDecl"
.end annotation


# instance fields
.field public body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

.field public defaultValue:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field public mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

.field public name:Lorg/openjdk/tools/javac/util/Name;

.field public params:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation
.end field

.field public recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

.field public restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field public sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

.field public thrown:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation
.end field

.field public typarams:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iput-object p3, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p4, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    iput-object p6, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    iput-object p5, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iput-object p7, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    iput-object p8, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iput-object p9, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p10, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

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
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitMethod(Lorg/openjdk/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V

    return-void
.end method

.method public bridge synthetic getBody()Lorg/openjdk/source/tree/BlockTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->getBody()Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    return-object v0
.end method

.method public bridge synthetic getDefaultValue()Lorg/openjdk/source/tree/Tree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->getDefaultValue()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->METHOD:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0
.end method

.method public bridge synthetic getModifiers()Lorg/openjdk/source/tree/ModifiersTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->getModifiers()Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    return-object v0
.end method

.method public bridge synthetic getName()Lorg/openjdk/javax/lang/model/element/Name;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->getName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    return-object v0
.end method

.method public bridge synthetic getParameters()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->getParameters()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getReceiverParameter()Lorg/openjdk/source/tree/VariableTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->getReceiverParameter()Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverParameter()Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    return-object v0
.end method

.method public bridge synthetic getReturnType()Lorg/openjdk/source/tree/Tree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->getReturnType()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method

.method public bridge synthetic getThrows()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->getThrows()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThrows()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getTypeParameters()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->getTypeParameters()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypeParameters()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method
