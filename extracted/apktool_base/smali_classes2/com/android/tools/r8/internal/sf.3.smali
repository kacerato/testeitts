.class public Lcom/android/tools/r8/internal/sf;
.super Lcom/android/tools/r8/internal/rf;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/naming/r0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/r0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/rf;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sf;->b:Lcom/android/tools/r8/naming/r0;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)I
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/sf;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/sf;->b:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/sf;->b:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/rf;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 15
    :cond_2
    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    invoke-interface {p1, p2, p0}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/sf;->b:Lcom/android/tools/r8/naming/r0;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/sf;->b:Lcom/android/tools/r8/naming/r0;

    .line 3
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/rf;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)I
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/sf;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/sf;->b:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/sf;->b:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/rf;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 9
    :cond_2
    iget-object p1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/sf;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I

    move-result p1

    return p1
.end method
