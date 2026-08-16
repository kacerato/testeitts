.class public final Lcom/android/tools/r8/internal/Eu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/zu;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/internal/Gu;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/Gu;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Gu;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Eu;->d:Lcom/android/tools/r8/internal/Gu;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Eu;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Eu;->b:Lcom/android/tools/r8/internal/zu;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Eu;->c:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Eu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Eu;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/android/tools/r8/internal/WD0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/WD0;-><init>(Lcom/android/tools/r8/internal/Eu;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/shaking/y1;->c(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    .line 5
    new-instance v2, Lcom/android/tools/r8/internal/XD0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/XD0;-><init>(Lcom/android/tools/r8/internal/Eu;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/shaking/y1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/YD0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/YD0;-><init>(Lcom/android/tools/r8/internal/Eu;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/shaking/y1;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 5

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 12
    iget-object v1, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/internal/Eu;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 14
    iget-object v2, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v2, :cond_0

    .line 15
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Eu;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 16
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 17
    iget-object v4, p0, Lcom/android/tools/r8/internal/Eu;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 18
    iget-object v4, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    if-eq v3, v4, :cond_1

    .line 19
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/Eu;->a(Lcom/android/tools/r8/graph/M2;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/Eu;->d:Lcom/android/tools/r8/internal/Gu;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Gu;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/Eu;->b:Lcom/android/tools/r8/internal/zu;

    sget-object v1, Lcom/android/tools/r8/internal/Zb0;->c:Lcom/android/tools/r8/internal/Vb0;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Zb0;)Z

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/Eu;->d:Lcom/android/tools/r8/internal/Gu;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Gu;->d(Lcom/android/tools/r8/graph/M2;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 7
    iget-object v0, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/Eu;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    if-eq v0, p1, :cond_0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Eu;->a(Lcom/android/tools/r8/graph/M2;)V

    :cond_0
    return-void
.end method
