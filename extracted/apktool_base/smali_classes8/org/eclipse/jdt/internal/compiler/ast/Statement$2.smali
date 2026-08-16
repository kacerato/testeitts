.class Lorg/eclipse/jdt/internal/compiler/ast/Statement$2;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/Statement;->continuesAtOuterLabel()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field continuesToLabel:Z

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/Statement;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$2;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public continuesAtOuterLabel()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$2;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$2;->continuesToLabel:Z

    return v0
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ContinueStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$2;->continuesToLabel:Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
