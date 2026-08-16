.class Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution$1;
.super Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->addContext(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution$1;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;

    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V

    return-void
.end method


# virtual methods
.method public isSameParameter(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 5

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v4, :cond_1

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v4, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    :cond_1
    if-ne v0, v3, :cond_2

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    if-ne p1, p2, :cond_2

    return v1

    :cond_2
    return v2
.end method
