.class public final Lcom/android/tools/r8/graph/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Ir0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;

.field public final synthetic b:Lcom/android/tools/r8/internal/R00;

.field public final synthetic c:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/graph/n;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/n;->b:Lcom/android/tools/r8/internal/R00;

    iput-object p3, p0, Lcom/android/tools/r8/graph/n;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ns0;)V
    .locals 4

    sget p1, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance p1, Lcom/android/tools/r8/internal/IC;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/IC;-><init>()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/n;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->K:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/graph/n;->b:Lcom/android/tools/r8/internal/R00;

    iget-object v3, p0, Lcom/android/tools/r8/graph/n;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/n;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    iput-object p1, v0, Lcom/android/tools/r8/graph/y;->K:Ljava/util/Set;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/n;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->K:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
