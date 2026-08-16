.class public final synthetic Lcom/android/tools/r8/internal/AB1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/yu0;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/android/tools/r8/graph/M2;

.field public final synthetic e:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/yu0;Ljava/util/List;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/AB1;->b:Lcom/android/tools/r8/internal/yu0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/AB1;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/internal/AB1;->d:Lcom/android/tools/r8/graph/M2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/AB1;->e:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/AB1;->b:Lcom/android/tools/r8/internal/yu0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/AB1;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/internal/AB1;->d:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/AB1;->e:Lcom/android/tools/r8/graph/H5;

    check-cast p1, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/yu0;->a(Ljava/util/List;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/R2;)V

    return-void
.end method
