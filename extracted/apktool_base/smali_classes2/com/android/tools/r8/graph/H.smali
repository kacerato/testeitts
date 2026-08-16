.class public final Lcom/android/tools/r8/graph/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field public final b:Lcom/android/tools/r8/origin/Origin;

.field public final c:Lcom/android/tools/r8/position/MethodPosition;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    iput-object v0, p0, Lcom/android/tools/r8/graph/H;->b:Lcom/android/tools/r8/origin/Origin;

    new-instance v0, Lcom/android/tools/r8/position/MethodPosition;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->w()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/position/MethodPosition;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    iput-object v0, p0, Lcom/android/tools/r8/graph/H;->c:Lcom/android/tools/r8/position/MethodPosition;

    iput-object p2, p0, Lcom/android/tools/r8/graph/H;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDiagnosticMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/H;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/H;->b:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public final getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/H;->c:Lcom/android/tools/r8/position/MethodPosition;

    return-object v0
.end method
