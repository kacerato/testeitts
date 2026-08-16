.class public final Lcom/android/tools/r8/kotlin/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/kotlin/h0;


# instance fields
.field public final a:Lcom/android/tools/r8/kotlin/a;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/kotlin/a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/i0;->a:Lcom/android/tools/r8/kotlin/a;

    iput p2, p0, Lcom/android/tools/r8/kotlin/i0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/i0;->a:Lcom/android/tools/r8/kotlin/a;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/a;->a(Lcom/android/tools/r8/graph/d1;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/i0;->a:Lcom/android/tools/r8/kotlin/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/kotlin/a;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/i0;->a:Lcom/android/tools/r8/kotlin/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/kotlin/a;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1
.end method

.method public final getReference()Lcom/android/tools/r8/kotlin/h0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/i0;->a:Lcom/android/tools/r8/kotlin/a;

    return-object v0
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/kotlin/i0;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/i0;->a:Lcom/android/tools/r8/kotlin/a;

    invoke-virtual {v0}, Lcom/android/tools/r8/kotlin/a;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Del"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
