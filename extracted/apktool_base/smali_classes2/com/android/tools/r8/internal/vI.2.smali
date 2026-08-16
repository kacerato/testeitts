.class public final Lcom/android/tools/r8/internal/vI;
.super Lcom/android/tools/r8/internal/A70;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/A70;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/F1;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p1, Lcom/android/tools/r8/internal/jm0;

    return p1
.end method

.method public final b()Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/A70;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->B4:Lcom/android/tools/r8/graph/N1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/N1;->d:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/A70;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->B4:Lcom/android/tools/r8/graph/N1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/N1;->b:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/A70;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->a2:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method
