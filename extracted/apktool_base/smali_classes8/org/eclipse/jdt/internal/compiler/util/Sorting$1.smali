.class Lorg/eclipse/jdt/internal/compiler/util/Sorting$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/util/Sorting;->sortInferenceVariables([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/Sorting$1;->compare(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)I
    .locals 0

    .line 2
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    sub-int/2addr p1, p2

    return p1
.end method
