.class Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser$2;
.super Lorg/eclipse/jdt/internal/compiler/ast/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->consumeMethodInvocationPrimary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;

.field private final synthetic val$constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser$2;->this$0:Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser$2;->val$constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    return-object p2
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser$2;->val$constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    const/4 p1, 0x0

    return-object p1
.end method
