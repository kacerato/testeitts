.class public final synthetic Lcom/android/tools/r8/internal/N91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/f50;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;

.field public final synthetic d:Lcom/android/tools/r8/internal/fB;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/N91;->b:Lcom/android/tools/r8/internal/f50;

    iput-object p2, p0, Lcom/android/tools/r8/internal/N91;->c:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/N91;->d:Lcom/android/tools/r8/internal/fB;

    iput-object p4, p0, Lcom/android/tools/r8/internal/N91;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/N91;->b:Lcom/android/tools/r8/internal/f50;

    iget-object v1, p0, Lcom/android/tools/r8/internal/N91;->c:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/N91;->d:Lcom/android/tools/r8/internal/fB;

    iget-object v3, p0, Lcom/android/tools/r8/internal/N91;->e:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/f50;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
