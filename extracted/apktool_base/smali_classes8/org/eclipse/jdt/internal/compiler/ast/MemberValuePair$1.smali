.class Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$1;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair$1;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    :cond_0
    return v0
.end method
