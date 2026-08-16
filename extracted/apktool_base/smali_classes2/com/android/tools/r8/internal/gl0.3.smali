.class public final Lcom/android/tools/r8/internal/gl0;
.super Lcom/android/tools/r8/internal/ex0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ex0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/gl0;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lx0;)Z
    .locals 5

    iget-object v0, p1, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/lx0;->c:Lcom/android/tools/r8/graph/H2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/gl0;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, v1, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qo0;->c()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/po0;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/qo0;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/qo0;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v4
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "SameStartupPartitionPolicy"

    return-object v0
.end method
