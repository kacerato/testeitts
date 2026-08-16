.class Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;->findType(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Visitor"
.end annotation


# instance fields
.field count:I

.field result:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;

.field private final synthetic val$findAnonymous:Z

.field private final synthetic val$occurenceCount:I

.field private final synthetic val$typeName:[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;ZI[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->this$0:Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder;

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->val$findAnonymous:Z

    iput p3, p0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->val$occurenceCount:I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->val$typeName:[C

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->count:I

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->result:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p2, p2, 0x200

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->val$findAnonymous:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->count:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->count:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->val$occurenceCount:I

    if-ne p2, v1, :cond_2

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->result:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->val$findAnonymous:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->val$typeName:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p2

    if-eqz p2, :cond_2

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ASTNodeFinder$1Visitor;->result:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    :cond_2
    :goto_0
    return v0
.end method
