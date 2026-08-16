.class Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resolve([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

.field private final synthetic val$kurrentBoundSet:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

.field private final synthetic val$numVars:I

.field private final synthetic val$variables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

.field private final synthetic val$zs:[Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;I[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;[Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$1;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$1;->val$numVars:I

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$1;->val$variables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$1;->val$zs:[Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$1;->val$kurrentBoundSet:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$1;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

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

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$1;->val$numVars:I

    if-lt v0, v1, :cond_1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$1;->val$kurrentBoundSet:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->getInstantiation(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$1;->val$variables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$1;->val$zs:[Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    aget-object p1, p1, v0

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
