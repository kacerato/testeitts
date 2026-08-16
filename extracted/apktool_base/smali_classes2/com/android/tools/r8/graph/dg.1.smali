.class public final synthetic Lcom/android/tools/r8/graph/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/t5;

.field public final synthetic b:Lcom/android/tools/r8/graph/d1;

.field public final synthetic c:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic d:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/t5;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/dg;->a:Lcom/android/tools/r8/graph/t5;

    iput-object p2, p0, Lcom/android/tools/r8/graph/dg;->b:Lcom/android/tools/r8/graph/d1;

    iput-object p3, p0, Lcom/android/tools/r8/graph/dg;->c:Lcom/android/tools/r8/internal/Hz;

    iput-object p4, p0, Lcom/android/tools/r8/graph/dg;->d:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/dg;->a:Lcom/android/tools/r8/graph/t5;

    iget-object v1, p0, Lcom/android/tools/r8/graph/dg;->b:Lcom/android/tools/r8/graph/d1;

    iget-object v2, p0, Lcom/android/tools/r8/graph/dg;->c:Lcom/android/tools/r8/internal/Hz;

    iget-object v3, p0, Lcom/android/tools/r8/graph/dg;->d:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/t5;

    move-result-object v0

    return-object v0
.end method
