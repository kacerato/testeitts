.class Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$1;
.super Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->findCapturedTypeVariables(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

.field private final synthetic val$mentioned:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$1;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$1;->val$mentioned:Ljava/util/Set;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$1;->val$mentioned:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Z

    move-result p1

    return p1
.end method
