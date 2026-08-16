.class public final Lcom/android/tools/r8/internal/Ka0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/l1;

.field public final b:Lcom/android/tools/r8/graph/l1;

.field public final c:Lcom/android/tools/r8/graph/l1;

.field public final d:Lcom/android/tools/r8/graph/l1;

.field public final e:Lcom/android/tools/r8/graph/l1;

.field public final f:Lcom/android/tools/r8/graph/l1;

.field public final g:Lcom/android/tools/r8/graph/l1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/La0;Lcom/android/tools/r8/graph/u1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/internal/La0;->o:Lcom/android/tools/r8/graph/M2;

    const-string v1, "BUILD_MESSAGE_INFO"

    invoke-virtual {p2, v0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ka0;->a:Lcom/android/tools/r8/graph/l1;

    iget-object v0, p1, Lcom/android/tools/r8/internal/La0;->o:Lcom/android/tools/r8/graph/M2;

    const-string v1, "GET_DEFAULT_INSTANCE"

    invoke-virtual {p2, v0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ka0;->b:Lcom/android/tools/r8/graph/l1;

    iget-object v0, p1, Lcom/android/tools/r8/internal/La0;->o:Lcom/android/tools/r8/graph/M2;

    const-string v1, "GET_MEMOIZED_IS_INITIALIZED"

    invoke-virtual {p2, v0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ka0;->c:Lcom/android/tools/r8/graph/l1;

    iget-object v0, p1, Lcom/android/tools/r8/internal/La0;->o:Lcom/android/tools/r8/graph/M2;

    const-string v1, "GET_PARSER"

    invoke-virtual {p2, v0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ka0;->d:Lcom/android/tools/r8/graph/l1;

    iget-object v0, p1, Lcom/android/tools/r8/internal/La0;->o:Lcom/android/tools/r8/graph/M2;

    const-string v1, "NEW_BUILDER"

    invoke-virtual {p2, v0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ka0;->e:Lcom/android/tools/r8/graph/l1;

    iget-object v0, p1, Lcom/android/tools/r8/internal/La0;->o:Lcom/android/tools/r8/graph/M2;

    const-string v1, "NEW_MUTABLE_INSTANCE"

    invoke-virtual {p2, v0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ka0;->f:Lcom/android/tools/r8/graph/l1;

    iget-object p1, p1, Lcom/android/tools/r8/internal/La0;->o:Lcom/android/tools/r8/graph/M2;

    const-string v0, "SET_MEMOIZED_IS_INITIALIZED"

    invoke-virtual {p2, p1, p1, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ka0;->g:Lcom/android/tools/r8/graph/l1;

    return-void
.end method
