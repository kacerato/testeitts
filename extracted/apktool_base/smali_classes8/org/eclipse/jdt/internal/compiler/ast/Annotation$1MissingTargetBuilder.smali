.class Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->checkContainerAnnotationTypeTarget(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MissingTargetBuilder"
.end annotation


# instance fields
.field targetBuffer:Ljava/lang/StringBuffer;

.field private final synthetic val$containerAnnotationTypeTargets:J

.field private final synthetic val$targets:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->val$containerAnnotationTypeTargets:J

    iput-wide p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->val$targets:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->targetBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method private add([C)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->targetBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->targetBuffer:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->targetBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public check(J[C)V
    .locals 6

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->val$containerAnnotationTypeTargets:J

    and-long/2addr v0, p1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->val$targets:J

    not-long v4, v2

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    const-wide v0, 0x1000000000L

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const-wide/high16 p1, 0x20000000000000L

    and-long/2addr p1, v2

    cmp-long p1, p1, v4

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->add([C)V

    :cond_1
    return-void
.end method

.method public checkAnnotationType([C)V
    .locals 6

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->val$containerAnnotationTypeTargets:J

    const-wide v2, 0x40000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->val$targets:J

    const-wide v4, 0x41000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->add([C)V

    :cond_0
    return-void
.end method

.method public hasError()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->targetBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$1MissingTargetBuilder;->targetBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
