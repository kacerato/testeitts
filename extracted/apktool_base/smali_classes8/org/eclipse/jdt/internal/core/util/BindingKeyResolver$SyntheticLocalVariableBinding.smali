.class final Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SyntheticLocalVariableBinding"
.end annotation


# instance fields
.field private final enclosingMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field private key:[C

.field private paramPosition:I

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)V
    .locals 1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;->this$0:Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;->enclosingMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput p5, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;->paramPosition:I

    return-void
.end method


# virtual methods
.method public computeUniqueKey()[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;->key:[C

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;->enclosingMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const-string v1, "#0#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;->paramPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    new-array v2, v1, [C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;->key:[C

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;->key:[C

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;->computeUniqueKey()[C

    move-result-object v0

    check-cast p1, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;->computeUniqueKey()[C

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    return p1
.end method

.method public getEnclosingMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;->enclosingMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/BindingKeyResolver$SyntheticLocalVariableBinding;->computeUniqueKey()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v0

    return v0
.end method
