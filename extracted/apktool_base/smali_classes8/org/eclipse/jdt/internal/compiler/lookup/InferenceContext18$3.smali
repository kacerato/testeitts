.class Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getResultSubstitution(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

.field private final synthetic val$result:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$3;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$3;->val$result:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$3;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-object v0
.end method

.method public isRawSubstitution()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$3;->val$result:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$3;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->getInstantiation(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method
