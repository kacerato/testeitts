.class public Lcom/android/tools/r8/internal/B60$c;
.super Lcom/android/tools/r8/internal/B60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/B60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/B60$c$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/android/tools/r8/internal/B60$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lcom/android/tools/r8/internal/B60$c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/B60$c;-><init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;ZZ)V

    sput-object v6, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/tools/r8/internal/B60;-><init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;ZZ)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 0

    .line 9
    invoke-static {p0}, Lcom/android/tools/r8/internal/B60;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public static t()Lcom/android/tools/r8/internal/B60$c$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/B60$c$a;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/B60$c$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/B60$a;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/B60;->b:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$c$a;

    iget-object v1, p0, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$c$a;

    iget-object v1, p0, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    .line 4
    iput-object v1, v0, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    .line 5
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/B60;->e:Z

    .line 6
    iput-boolean v1, v0, Lcom/android/tools/r8/internal/B60$a;->d:Z

    .line 7
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/B60;->f:Z

    .line 8
    iput-boolean v1, v0, Lcom/android/tools/r8/internal/B60$a;->e:Z

    return-object v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/AA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/AA0;-><init>()V

    return-object v0
.end method
