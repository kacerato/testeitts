.class public final synthetic Lcom/android/tools/r8/internal/dc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/gb0;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;

.field public final synthetic d:Lcom/android/tools/r8/graph/J0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/gb0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/J0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/dc1;->b:Lcom/android/tools/r8/internal/gb0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/dc1;->c:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/dc1;->d:Lcom/android/tools/r8/graph/J0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/dc1;->b:Lcom/android/tools/r8/internal/gb0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/dc1;->c:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/dc1;->d:Lcom/android/tools/r8/graph/J0;

    check-cast p1, [Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/gb0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/J0;[Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method
