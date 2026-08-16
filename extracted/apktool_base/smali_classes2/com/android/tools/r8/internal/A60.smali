.class public final Lcom/android/tools/r8/internal/A60;
.super Lcom/android/tools/r8/internal/B60;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final h:Lcom/android/tools/r8/graph/A2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;ZLcom/android/tools/r8/graph/A2;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/B60;-><init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;ZZ)V

    iput-object p5, p0, Lcom/android/tools/r8/internal/A60;->h:Lcom/android/tools/r8/graph/A2;

    sget-boolean p1, Lcom/android/tools/r8/internal/A60;->i:Z

    if-nez p1, :cond_1

    if-eqz p5, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 0

    .line 12
    invoke-static {p0}, Lcom/android/tools/r8/internal/B60;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/B60$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/A60;->h:Lcom/android/tools/r8/graph/A2;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/z60;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/z60;-><init>()V

    .line 3
    iput-object v0, v1, Lcom/android/tools/r8/internal/z60;->h:Lcom/android/tools/r8/graph/A2;

    .line 4
    iget v0, p0, Lcom/android/tools/r8/internal/B60;->b:I

    .line 5
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/z60;

    iget-object v1, p0, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/z60;

    iget-object v1, p0, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    .line 7
    iput-object v1, v0, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    .line 8
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/B60;->e:Z

    .line 9
    iput-boolean v1, v0, Lcom/android/tools/r8/internal/B60$a;->d:Z

    .line 10
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/B60;->f:Z

    .line 11
    iput-boolean v1, v0, Lcom/android/tools/r8/internal/B60$a;->e:Z

    return-object v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/qy0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qy0;-><init>()V

    return-object v0
.end method
