.class Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression$2;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isPotentiallyCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression$2;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>()V

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    return-void
.end method


# virtual methods
.method public findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    return-object p1
.end method

.method public isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "(wildcard)"

    return-object v0
.end method
