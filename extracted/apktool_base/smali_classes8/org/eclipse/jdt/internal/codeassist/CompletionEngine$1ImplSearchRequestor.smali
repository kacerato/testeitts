.class Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$1ImplSearchRequestor;
.super Lorg/eclipse/jdt/core/search/SearchRequestor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->findImplementations([CLorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImplSearchRequestor"
.end annotation


# instance fields
.field filter:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field prefix:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

.field public types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/IType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;[CLjava/util/LinkedHashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$1ImplSearchRequestor;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/search/SearchRequestor;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$1ImplSearchRequestor;->types:Ljava/util/List;

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->ALL_PREFIX:[C

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$1ImplSearchRequestor;->prefix:Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$1ImplSearchRequestor;->filter:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public acceptSearchMatch(Lorg/eclipse/jdt/core/search/SearchMatch;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->getElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$1ImplSearchRequestor;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$1ImplSearchRequestor;->filter:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$1ImplSearchRequestor;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$1ImplSearchRequestor;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$1ImplSearchRequestor;->types:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
