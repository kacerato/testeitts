.class public Lcom/android/tools/r8/graph/u1$b;
.super Lcom/android/tools/r8/graph/C1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/graph/l1;

.field public final b:Lcom/android/tools/r8/graph/l1;

.field public final c:Lcom/android/tools/r8/graph/l1;

.field public final d:Lcom/android/tools/r8/graph/A2;

.field public final e:Lcom/android/tools/r8/graph/A2;

.field public final f:Lcom/android/tools/r8/graph/A2;

.field public final g:Lcom/android/tools/r8/graph/A2;

.field public final h:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/tools/r8/graph/C1;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->V1:Lcom/android/tools/r8/graph/M2;

    const-string v1, "FALSE"

    invoke-virtual {p1, v0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/u1$b;->a:Lcom/android/tools/r8/graph/l1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->V1:Lcom/android/tools/r8/graph/M2;

    const-string v1, "TRUE"

    invoke-virtual {p1, v0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/u1$b;->b:Lcom/android/tools/r8/graph/l1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->V1:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    const-string v2, "TYPE"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/u1$b;->c:Lcom/android/tools/r8/graph/l1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->V1:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v3, "booleanValue"

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/u1$b;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->V1:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v3, "parseBoolean"

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/u1$b;->e:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->V1:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v3, "valueOf"

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/u1$b;->f:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->V1:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v2, "toString"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/u1$b;->g:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->V1:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v2, "hashCode"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/u1$b;->h:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/l1;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/u1$b;->c:Lcom/android/tools/r8/graph/l1;

    return-object v0
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/u1$b;->a:Lcom/android/tools/r8/graph/l1;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/u1$b;->b:Lcom/android/tools/r8/graph/l1;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/u1$b;->c:Lcom/android/tools/r8/graph/l1;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
