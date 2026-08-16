.class public Lcom/android/tools/r8/internal/B60$b;
.super Lcom/android/tools/r8/internal/B60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/B60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/B60$b$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/android/tools/r8/internal/B60$b;

.field public static final synthetic i:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lcom/android/tools/r8/internal/B60$b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/B60$b;-><init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;ZZ)V

    sput-object v6, Lcom/android/tools/r8/internal/B60$b;->h:Lcom/android/tools/r8/internal/B60$b;

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/tools/r8/internal/B60;-><init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;ZZ)V

    sget-boolean p1, Lcom/android/tools/r8/internal/B60$b;->i:Z

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    iget-object p1, p3, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/tools/r8/internal/B60;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public static c(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/yA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/yA0;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pq0;->a()Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/zA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zA0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static t()Lcom/android/tools/r8/internal/B60$b$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/B60$b$a;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/B60$b$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/B60$a;
    .locals 2

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/B60$b;->t()Lcom/android/tools/r8/internal/B60$b$a;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/B60;->b:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$b$a;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$b$a;

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

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Lcom/android/tools/r8/graph/L2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/xA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xA0;-><init>()V

    return-object v0
.end method
