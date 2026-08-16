.class Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/codeassist/UnresolvedReferenceNameFinder$UnresolvedReferenceNameRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->findUnresolvedReferenceAfter(ILorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[[C)[[C
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

.field private final synthetic val$proposedNames:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$7;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$7;->val$proposedNames:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptName([C)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$7;->this$0:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->acceptUnresolvedName([C)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$7;->val$proposedNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
