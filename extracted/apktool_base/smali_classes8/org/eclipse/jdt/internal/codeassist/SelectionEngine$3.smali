.class Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$3;
.super Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->findAllTypes([C)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$3;->this$0:Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/search/TypeNameMatchRequestor;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptTypeNameMatch(Lorg/eclipse/jdt/core/search/TypeNameMatch;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$3;->this$0:Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->requestor:Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->noProposal:Z

    check-cast v1, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/TypeNameMatch;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->acceptType(Lorg/eclipse/jdt/core/IType;)V

    :cond_0
    return-void
.end method
