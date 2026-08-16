.class public Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public commentPositions:[[I

.field public lineEnds:[I

.field public problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

.field public problemsCount:I


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[I[[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->lineEnds:[I

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->commentPositions:[[I

    if-eqz p1, :cond_0

    array-length p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->problemsCount:I

    return-void
.end method


# virtual methods
.method public updateRecordedParsingInformation(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    array-length p1, p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/RecordedParsingInformation;->problemsCount:I

    :cond_0
    return-void
.end method
