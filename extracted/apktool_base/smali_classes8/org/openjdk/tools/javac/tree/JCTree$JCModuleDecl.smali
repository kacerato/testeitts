.class public Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;
.super Lorg/openjdk/tools/javac/tree/JCTree;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/ModuleTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCModuleDecl"
.end annotation


# instance fields
.field public directives:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;",
            ">;"
        }
    .end annotation
.end field

.field private final kind:Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

.field public mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

.field public qualId:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field public sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field public type:Lorg/openjdk/tools/javac/code/Type$ModuleType;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/source/tree/ModuleTree$ModuleKind;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;",
            "Lorg/openjdk/source/tree/ModuleTree$ModuleKind;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->kind:Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    iput-object p3, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->qualId:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p4, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->directives:Lorg/openjdk/tools/javac/util/List;

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
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitModule(Lorg/openjdk/source/tree/ModuleTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V

    return-void
.end method

.method public bridge synthetic getAnnotations()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->getAnnotations()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/source/tree/AnnotationTree;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic getDirectives()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->getDirectives()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDirectives()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->directives:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->MODULE:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getModuleType()Lorg/openjdk/source/tree/ModuleTree$ModuleKind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->kind:Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    return-object v0
.end method

.method public bridge synthetic getName()Lorg/openjdk/source/tree/ExpressionTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->getName()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->qualId:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MODULEDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method
