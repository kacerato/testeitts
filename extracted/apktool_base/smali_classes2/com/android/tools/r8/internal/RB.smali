.class public Lcom/android/tools/r8/internal/RB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/J2;

.field public final c:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/RB;->b:Lcom/android/tools/r8/graph/J2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/RB;->c:Lcom/android/tools/r8/graph/H5;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/A2;)Ljava/lang/String;
    .locals 0

    .line 3
    const-string p0, "method"

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "class"

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/l1;)Ljava/lang/String;
    .locals 0

    .line 2
    const-string p0, "field"

    return-object p0
.end method


# virtual methods
.method public final getDiagnosticMessage()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/RB;->b:Lcom/android/tools/r8/graph/J2;

    new-instance v1, Lcom/android/tools/r8/internal/gV0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/gV0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/hV0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/hV0;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/iV0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/iV0;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RB;->b:Lcom/android/tools/r8/graph/J2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/RB;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected illegal access to non-public "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in another feature split (accessed: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", context: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/RB;->c:Lcom/android/tools/r8/graph/H5;

    iget-object v0, v0, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public final getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method
