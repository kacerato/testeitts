.class Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getBindingsToNodesMap()Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$1;->this$0:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$1;->this$0:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-object p1
.end method
