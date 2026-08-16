.class public Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
.source "SourceFile"


# instance fields
.field public name:[C

.field private problemId:I

.field public searchType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;


# direct methods
.method public constructor <init>([CI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;->name:[C

    .line 5
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;->problemId:I

    return-void
.end method

.method public constructor <init>([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;-><init>([CI)V

    .line 7
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;->searchType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-void
.end method

.method public constructor <init>([[CI)V
    .locals 1

    const/16 v0, 0x2e

    .line 1
    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;-><init>([CI)V

    return-void
.end method

.method public constructor <init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V
    .locals 1

    const/16 v0, 0x2e

    .line 2
    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-void
.end method


# virtual methods
.method public final kind()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final problemId()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;->problemId:I

    return v0
.end method

.method public readableName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;->name:[C

    return-object v0
.end method
