.class Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult$2;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;-><init>()V

    return-void
.end method


# virtual methods
.method public reduce(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "FALSE"

    return-object v0
.end method
