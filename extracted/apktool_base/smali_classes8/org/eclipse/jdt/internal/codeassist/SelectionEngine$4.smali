.class Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$4;
.super Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->findMethodWithAttachedDocInHierarchy(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;

.field private final synthetic val$method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field private final synthetic val$requestor1:Lorg/eclipse/jdt/internal/core/SelectionRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/core/SelectionRequestor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$4;->this$0:Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$4;->val$method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$4;->val$requestor1:Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$4;->this$0:Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$4;->val$method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->findOverriddenMethodInType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->CONTINUE:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$4;->val$requestor1:Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->findMethodFromBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IMember;

    if-nez v0, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->CONTINUE:Ljava/lang/Object;

    return-object p1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IJavaElement;->getAttachedJavadoc(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object p1

    :cond_2
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getOpenable()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->CONTINUE:Ljava/lang/Object;

    return-object p1

    :cond_3
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->STOP_BRANCH:Ljava/lang/Object;

    return-object p1

    :cond_4
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getJavadocRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->CONTINUE:Ljava/lang/Object;

    return-object p1

    :cond_5
    invoke-interface {v0}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jdt/core/IBuffer;->getText(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    return-object p1

    :cond_6
    sget-object p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$InheritDocVisitor;->CONTINUE:Ljava/lang/Object;

    return-object p1

    :cond_7
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sourceName()[C

    move-result-object v4

    invoke-static {v4, v2}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
