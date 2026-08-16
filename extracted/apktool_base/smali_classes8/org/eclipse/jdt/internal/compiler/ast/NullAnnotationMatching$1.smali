.class Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$1;
.super Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->okNonNullStatus(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final synthetic val$method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field private final synthetic val$providedExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field private final synthetic val$severity:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V
    .locals 0

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$1;->val$method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$1;->val$providedExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput p6, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$1;->val$severity:I

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$Severity;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void
.end method


# virtual methods
.method public report(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$1;->val$method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$1;->val$providedExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$1;->val$severity:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nonNullTypeVariableInUnannotatedBinary(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    return-void
.end method
