.class public final Lcom/android/tools/r8/graph/o;
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

    iput-object p1, p0, Lcom/android/tools/r8/graph/o;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/o;->b:Lcom/android/tools/r8/internal/R00;

    iput-object p3, p0, Lcom/android/tools/r8/graph/o;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ns0;)V
    .locals 3

    iget-object p1, p0, Lcom/android/tools/r8/graph/o;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->F:Lcom/android/tools/r8/internal/wD;

    iget-object v1, p0, Lcom/android/tools/r8/graph/o;->b:Lcom/android/tools/r8/internal/R00;

    iget-object v2, p0, Lcom/android/tools/r8/graph/o;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/wD;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/wD;

    move-result-object v0

    iput-object v0, p1, Lcom/android/tools/r8/graph/y;->F:Lcom/android/tools/r8/internal/wD;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/o;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->F:Lcom/android/tools/r8/internal/wD;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
