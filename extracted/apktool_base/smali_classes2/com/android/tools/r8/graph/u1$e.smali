.class public Lcom/android/tools/r8/graph/u1$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;

.field public final b:Lcom/android/tools/r8/graph/A2;

.field public final c:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->c1:Lcom/android/tools/r8/graph/L2;

    const-string v1, "addSuppressed"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->E:Lcom/android/tools/r8/graph/L2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->c1:Lcom/android/tools/r8/graph/L2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/u1$e;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->c1:Lcom/android/tools/r8/graph/L2;

    const-string v1, "getSuppressed"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->n1:Lcom/android/tools/r8/graph/L2;

    sget-object v3, Lcom/android/tools/r8/graph/L2;->g:[Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/u1$e;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->c1:Lcom/android/tools/r8/graph/L2;

    const-string v1, "initCause"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->c1:Lcom/android/tools/r8/graph/L2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->c1:Lcom/android/tools/r8/graph/L2;

    const-string v1, "getMessage"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->P0:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/u1$e;->b:Lcom/android/tools/r8/graph/A2;

    return-void
.end method
