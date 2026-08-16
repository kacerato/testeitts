.class public final synthetic Lcom/android/tools/r8/internal/Dl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Yx;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/mn0;

.field public final synthetic b:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic c:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic d:Lcom/android/tools/r8/graph/d1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/mn0;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dl1;->a:Lcom/android/tools/r8/internal/mn0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Dl1;->b:Lcom/android/tools/r8/internal/Hz;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Dl1;->c:Lcom/android/tools/r8/internal/Hz;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Dl1;->d:Lcom/android/tools/r8/graph/d1;

    return-void
.end method


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dl1;->a:Lcom/android/tools/r8/internal/mn0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Dl1;->b:Lcom/android/tools/r8/internal/Hz;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Dl1;->c:Lcom/android/tools/r8/internal/Hz;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Dl1;->d:Lcom/android/tools/r8/graph/d1;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/mn0;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/d1;Ljava/util/function/Consumer;)V

    return-void
.end method
