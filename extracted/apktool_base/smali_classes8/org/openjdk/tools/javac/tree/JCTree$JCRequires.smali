.class public Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/RequiresTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCRequires"
.end annotation


# instance fields
.field public directive:Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

.field public isStaticPhase:Z

.field public isTransitive:Z

.field public moduleName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method public constructor <init>(ZZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;-><init>()V

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->isTransitive:Z

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->isStaticPhase:Z

    iput-object p3, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->moduleName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

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
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitRequires(Lorg/openjdk/source/tree/RequiresTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitRequires(Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;)V

    return-void
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->REQUIRES:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0
.end method

.method public bridge synthetic getModuleName()Lorg/openjdk/source/tree/ExpressionTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->getModuleName()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getModuleName()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->moduleName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->REQUIRES:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method

.method public isStatic()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->isStaticPhase:Z

    return v0
.end method

.method public isTransitive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->isTransitive:Z

    return v0
.end method
