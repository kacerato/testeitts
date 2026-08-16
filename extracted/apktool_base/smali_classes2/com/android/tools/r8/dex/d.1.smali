.class public final Lcom/android/tools/r8/dex/d;
.super Lcom/android/tools/r8/dex/i;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/android/tools/r8/dex/W;

.field public final synthetic d:Lcom/android/tools/r8/internal/C7;

.field public final synthetic e:Lcom/android/tools/r8/graph/u1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/dex/W;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/dex/d;->c:Lcom/android/tools/r8/dex/W;

    iput-object p2, p0, Lcom/android/tools/r8/dex/d;->d:Lcom/android/tools/r8/internal/C7;

    iput-object p3, p0, Lcom/android/tools/r8/dex/d;->e:Lcom/android/tools/r8/graph/u1;

    invoke-direct {p0}, Lcom/android/tools/r8/dex/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/L2;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/dex/d;->c:Lcom/android/tools/r8/dex/W;

    iget-object v1, p0, Lcom/android/tools/r8/dex/d;->d:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/I0;

    iget-object v1, v1, Lcom/android/tools/r8/naming/I0;->a:Ljava/lang/String;

    sget-boolean v2, Lcom/android/tools/r8/dex/W;->i:Z

    const-string v3, "pg-map-id"

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    iget-object v2, v2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/gL;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/d;->c:Lcom/android/tools/r8/dex/W;

    iget-object v1, p0, Lcom/android/tools/r8/dex/d;->e:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/W;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    return-object v0
.end method
