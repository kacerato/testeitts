.class Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$1;
.super Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->incorporate(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

.field private final synthetic val$parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$1;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$1;->val$parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V

    return-void
.end method


# virtual methods
.method public getP(I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet$1;->val$parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object p1, v0, p1

    return-object p1
.end method
