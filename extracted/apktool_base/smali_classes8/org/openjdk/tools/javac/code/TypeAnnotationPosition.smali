.class public Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;,
        Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;
    }
.end annotation


# static fields
.field public static final emptyPath:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final unknown:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;


# instance fields
.field public final bound_index:I

.field private exception_index:I

.field public isValidOffset:Z

.field public location:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;"
        }
    .end annotation
.end field

.field public lvarIndex:[I

.field public lvarLength:[I

.field public lvarOffset:[I

.field public offset:I

.field public final onLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

.field public parameter_index:I

.field public final pos:I

.field public final type:Lorg/openjdk/tools/javac/code/TargetType;

.field public final type_index:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    sput-object v7, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->emptyPath:Lorg/openjdk/tools/javac/util/List;

    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->UNKNOWN:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/4 v2, -0x1

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    sput-object v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->unknown:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    return-void
.end method

.method private constructor <init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/TargetType;",
            "II",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "II",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->isValidOffset:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->offset:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarOffset:[I

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarLength:[I

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarIndex:[I

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->exception_index:I

    invoke-static {p7}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type:Lorg/openjdk/tools/javac/code/TargetType;

    iput p2, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->pos:I

    iput p3, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    iput-object p4, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->onLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    iput p5, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type_index:I

    iput p6, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->bound_index:I

    iput-object p7, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->location:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public static classExtends(I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 1

    const v0, 0xffff

    .line 5
    invoke-static {v0, p0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->classExtends(II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static classExtends(II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2

    .line 4
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->emptyPath:Lorg/openjdk/tools/javac/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->classExtends(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static classExtends(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3
    invoke-static {p0, v0, p1, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->classExtends(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static classExtends(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const v0, 0xffff

    .line 2
    invoke-static {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->classExtends(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static classExtends(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "II)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->CLASS_EXTENDS:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v3, -0x80000000

    const/high16 v6, -0x80000000

    move-object v0, v8

    move v2, p3

    move-object v4, p1

    move v5, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static constructorInvocationTypeArg(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v0, p1, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->constructorInvocationTypeArg(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static constructorInvocationTypeArg(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "II)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v3, -0x80000000

    const/high16 v6, -0x80000000

    move-object v0, v8

    move v2, p3

    move-object v4, p1

    move v5, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static constructorRef(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->constructorRef(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static constructorRef(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, v8

    move v2, p2

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static constructorRefTypeArg(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v0, p1, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->constructorRefTypeArg(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static constructorRefTypeArg(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "II)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v3, -0x80000000

    const/high16 v6, -0x80000000

    move-object v0, v8

    move v2, p3

    move-object v4, p1

    move v5, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static exceptionParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 1

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->emptyPath:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0, p0, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->exceptionParameter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static exceptionParameter(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3
    invoke-static {p0, v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->exceptionParameter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static exceptionParameter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->EXCEPTION_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, v8

    move v2, p2

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static field(I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2

    .line 3
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->emptyPath:Lorg/openjdk/tools/javac/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->field(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static field(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->field(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static field(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->FIELD:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, v8

    move v2, p2

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static getBinaryFromTypePath(Ljava/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    iget v2, v2, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v0

    iget v1, v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getTypePathFromBinary(Ljava/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->fromBinary(II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static instanceOf(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->instanceOf(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static instanceOf(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->INSTANCEOF:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, v8

    move v2, p2

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static localVariable(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 1

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->emptyPath:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0, p0, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->localVariable(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static localVariable(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3
    invoke-static {p0, v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->localVariable(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static localVariable(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->LOCAL_VARIABLE:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, v8

    move v2, p2

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static methodInvocationTypeArg(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v0, p1, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodInvocationTypeArg(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static methodInvocationTypeArg(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "II)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_INVOCATION_TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v3, -0x80000000

    const/high16 v6, -0x80000000

    move-object v0, v8

    move v2, p3

    move-object v4, p1

    move v5, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static methodParameter(II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {v0, p0, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static methodParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 1

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->emptyPath:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0, p0, p1, p2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodParameter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static methodParameter(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 4
    invoke-static {p0, v0, p1, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodParameter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static methodParameter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "II)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_FORMAL_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    move-object v0, v8

    move v2, p3

    move v3, p2

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static methodReceiver(I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2

    .line 3
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->emptyPath:Lorg/openjdk/tools/javac/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodReceiver(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static methodReceiver(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodReceiver(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static methodReceiver(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_RECEIVER:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, v8

    move v2, p2

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static methodRef(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodRef(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static methodRef(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_REFERENCE:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, v8

    move v2, p2

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static methodRefTypeArg(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v0, p1, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodRefTypeArg(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static methodRefTypeArg(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "II)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_REFERENCE_TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v3, -0x80000000

    const/high16 v6, -0x80000000

    move-object v0, v8

    move v2, p3

    move-object v4, p1

    move v5, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static methodReturn(I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2

    .line 3
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->emptyPath:Lorg/openjdk/tools/javac/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodReturn(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static methodReturn(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodReturn(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static methodReturn(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_RETURN:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, v8

    move v2, p2

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static methodThrows(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v0, p1, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodThrows(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static methodThrows(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "II)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->THROWS:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v3, -0x80000000

    const/high16 v6, -0x80000000

    move-object v0, v8

    move v2, p3

    move-object v4, p1

    move v5, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static methodTypeParameter(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v0, p1, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodTypeParameter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static methodTypeParameter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "II)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    move-object v0, v8

    move v2, p3

    move v3, p2

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static methodTypeParameterBound(Lorg/openjdk/tools/javac/util/List;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;II)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v0, p1, p2, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->methodTypeParameterBound(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;III)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static methodTypeParameterBound(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;III)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "III)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER_BOUND:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v5, -0x80000000

    move-object v0, v8

    move v2, p4

    move v3, p2

    move-object v4, p1

    move v6, p3

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static newObj(I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->emptyPath:Lorg/openjdk/tools/javac/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->newObj(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static newObj(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3
    invoke-static {p0, v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->newObj(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static newObj(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->NEW:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, v8

    move v2, p2

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static resourceVariable(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 1

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->emptyPath:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0, p0, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->resourceVariable(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static resourceVariable(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 3
    invoke-static {p0, v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->resourceVariable(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static resourceVariable(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->RESOURCE_VARIABLE:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, v8

    move v2, p2

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static typeCast(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v0, p1, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->typeCast(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static typeCast(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "II)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->CAST:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v3, -0x80000000

    const/high16 v6, -0x80000000

    move-object v0, v8

    move v2, p3

    move-object v4, p1

    move v5, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static typeParameter(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;I)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v0, p1, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->typeParameter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static typeParameter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "II)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    move-object v0, v8

    move v2, p3

    move v3, p2

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method

.method public static typeParameterBound(Lorg/openjdk/tools/javac/util/List;II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;II)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v0, p1, p2, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->typeParameterBound(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;III)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object p0

    return-object p0
.end method

.method public static typeParameterBound(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;III)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "III)",
            "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;"
        }
    .end annotation

    .line 1
    new-instance v8, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    sget-object v1, Lorg/openjdk/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER_BOUND:Lorg/openjdk/tools/javac/code/TargetType;

    const/high16 v5, -0x80000000

    move-object v0, v8

    move v2, p4

    move v3, p2

    move-object v4, p1

    move v6, p3

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;-><init>(Lorg/openjdk/tools/javac/code/TargetType;IILorg/openjdk/tools/javac/tree/JCTree$JCLambda;IILorg/openjdk/tools/javac/util/List;)V

    return-object v8
.end method


# virtual methods
.method public emitToClassfile()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/TargetType;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->isValidOffset:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getCatchType()I
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->hasCatchType()Z

    move-result v0

    const-string v1, "exception_index does not contain valid catch info"

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    iget v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->exception_index:I

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getExceptionIndex()I
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->exception_index:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "exception_index is not set"

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    iget v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->exception_index:I

    return v0
.end method

.method public getStartPos()I
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->hasCatchType()Z

    move-result v0

    const-string v1, "exception_index does not contain valid catch info"

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    iget v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->exception_index:I

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public hasCatchType()Z
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->exception_index:I

    if-gez v0, :cond_0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExceptionIndex()Z
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->exception_index:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matchesPos(I)Z
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->pos:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setCatchInfo(II)V
    .locals 3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->hasExceptionIndex()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "exception_index is already set"

    invoke-static {v0, v2}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    if-ltz p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Expected a valid catch type"

    invoke-static {v0, v2}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    add-int/2addr p1, v1

    neg-int p1, p1

    iput p1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->exception_index:I

    return-void
.end method

.method public setExceptionIndex(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->hasExceptionIndex()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "exception_index already set"

    invoke-static {v0, v2}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "Expected a valid index into exception table"

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    iput p1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->exception_index:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, ", offset = "

    const-string v3, ", param_index = "

    const-string v4, ", type_index = "

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown target type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type:Lorg/openjdk/tools/javac/code/TargetType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_0
    const-string v1, ", position UNKNOWN!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_3
    const-string v1, ", exception_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->exception_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bound_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->bound_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->parameter_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_8
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarOffset:[I

    if-nez v1, :cond_0

    const-string v1, ", lvarOffset is null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v1, ", {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarOffset:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_1

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "start_pc = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarOffset:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarLength:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", index = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarIndex:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    :pswitch_a
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->location:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ", location = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->location:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, ", pos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->onLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    if-eqz v1, :cond_4

    const-string v1, ", onLambda hash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->onLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method public updatePosOffset(I)V
    .locals 0

    iput p1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->offset:I

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarOffset:[I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->isValidOffset:Z

    return-void
.end method
