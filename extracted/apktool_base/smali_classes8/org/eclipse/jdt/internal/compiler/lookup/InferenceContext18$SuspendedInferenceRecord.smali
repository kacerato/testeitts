.class Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuspendedInferenceRecord"
.end annotation


# instance fields
.field inferenceKind:I

.field inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

.field invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field site:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

.field usesUncheckedConversion:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;->site:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;->inferenceKind:I

    iput-boolean p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;->usesUncheckedConversion:Z

    return-void
.end method
