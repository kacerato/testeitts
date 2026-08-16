.class Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

.field private final synthetic val$newCapture:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18$1;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18$1;->val$newCapture:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18$1;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-object v0
.end method

.method public isRawSubstitution()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18$1;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18$1;->val$newCapture:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    :cond_0
    return-object p1
.end method
