.class public final Lcom/android/tools/r8/internal/ri;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/M2;

.field public final b:Lcom/android/tools/r8/graph/M2;

.field public final c:Lcom/android/tools/r8/graph/L2;

.field public final d:Lcom/android/tools/r8/graph/L2;

.field public final e:Lcom/android/tools/r8/graph/L2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Ldalvik/annotation/codegen/CovariantReturnType;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ri;->a:Lcom/android/tools/r8/graph/M2;

    const-string v0, "Ldalvik/annotation/codegen/CovariantReturnType$CovariantReturnTypes;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ri;->b:Lcom/android/tools/r8/graph/M2;

    const-string v0, "presentAfter"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ri;->c:Lcom/android/tools/r8/graph/L2;

    const-string v0, "returnType"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ri;->d:Lcom/android/tools/r8/graph/L2;

    const-string v0, "value"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ri;->e:Lcom/android/tools/r8/graph/L2;

    return-void
.end method
