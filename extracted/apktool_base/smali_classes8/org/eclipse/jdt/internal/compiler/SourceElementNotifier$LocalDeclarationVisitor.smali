.class public Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalDeclarationVisitor"
.end annotation


# instance fields
.field public currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

.field declaringTypes:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public peekDeclaringType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->declaringTypes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->declaringTypes:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    return-object v0
.end method

.method public popDeclaringType()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->declaringTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public pushDeclaringType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->declaringTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->declaringTypes:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->declaringTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 3

    .line 1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->peekDeclaringType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;ZLorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 3

    .line 2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->this$0:Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->peekDeclaringType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier$LocalDeclarationVisitor;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;ZLorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    const/4 p1, 0x0

    return p1
.end method
