.class public final synthetic Lcom/android/tools/r8/internal/Gl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/function/Consumer;

.field public final synthetic c:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic d:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic e:Lcom/android/tools/r8/graph/d1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Gl1;->b:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Gl1;->c:Lcom/android/tools/r8/internal/Hz;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Gl1;->d:Lcom/android/tools/r8/internal/Hz;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Gl1;->e:Lcom/android/tools/r8/graph/d1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gl1;->b:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Gl1;->c:Lcom/android/tools/r8/internal/Hz;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Gl1;->d:Lcom/android/tools/r8/internal/Hz;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Gl1;->e:Lcom/android/tools/r8/graph/d1;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/mn0;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
