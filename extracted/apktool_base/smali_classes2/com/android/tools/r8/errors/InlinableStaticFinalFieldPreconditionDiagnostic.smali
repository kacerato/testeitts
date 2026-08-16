.class public Lcom/android/tools/r8/errors/InlinableStaticFinalFieldPreconditionDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:Lcom/android/tools/r8/shaking/G3;

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/G3;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/shaking/G3;",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/l1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/errors/InlinableStaticFinalFieldPreconditionDiagnostic;->b:Lcom/android/tools/r8/shaking/G3;

    new-instance p1, Lcom/android/tools/r8/errors/m;

    invoke-direct {p1}, Lcom/android/tools/r8/errors/m;-><init>()V

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/errors/InlinableStaticFinalFieldPreconditionDiagnostic;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 4

    const-string v0, "Consider adding !static to the rule."

    const-string v1, "Matched fields are: "

    const-string v2, "Rule precondition matches static final fields javac has inlined."

    const-string v3, "Such rules are unsound as the shrinker cannot infer the inlining precisely."

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/errors/InlinableStaticFinalFieldPreconditionDiagnostic;->c:Ljava/util/List;

    new-instance v2, Lcom/android/tools/r8/errors/l;

    invoke-direct {v2}, Lcom/android/tools/r8/errors/l;-><init>()V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/InlinableStaticFinalFieldPreconditionDiagnostic;->b:Lcom/android/tools/r8/shaking/G3;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/f3;->i()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/errors/InlinableStaticFinalFieldPreconditionDiagnostic;->b:Lcom/android/tools/r8/shaking/G3;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/f3;->b:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
