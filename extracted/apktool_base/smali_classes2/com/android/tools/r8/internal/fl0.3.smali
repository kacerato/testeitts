.class public final Lcom/android/tools/r8/internal/fl0;
.super Lcom/android/tools/r8/internal/yY;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/po0;

.field public final c:Lcom/android/tools/r8/internal/qo0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/yY;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fl0;->b:Lcom/android/tools/r8/internal/po0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/fl0;->c:Lcom/android/tools/r8/internal/qo0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fl0;->c:Lcom/android/tools/r8/internal/qo0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qo0;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/el0;->b:Lcom/android/tools/r8/internal/el0;

    return-object p1

    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/el0;->c:Lcom/android/tools/r8/internal/el0;

    return-object p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "SameStartupPartition"

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fl0;->c:Lcom/android/tools/r8/internal/qo0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qo0;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fl0;->b:Lcom/android/tools/r8/internal/po0;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/po0;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
