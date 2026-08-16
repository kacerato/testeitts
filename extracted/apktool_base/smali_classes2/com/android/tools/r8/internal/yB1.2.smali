.class public final synthetic Lcom/android/tools/r8/internal/yB1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/yu0;

.field public final synthetic c:Lcom/android/tools/r8/graph/D0;

.field public final synthetic d:Lcom/android/tools/r8/graph/H5;

.field public final synthetic e:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/yu0;Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yB1;->b:Lcom/android/tools/r8/internal/yu0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/yB1;->c:Lcom/android/tools/r8/graph/D0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/yB1;->d:Lcom/android/tools/r8/graph/H5;

    iput-object p4, p0, Lcom/android/tools/r8/internal/yB1;->e:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/yB1;->b:Lcom/android/tools/r8/internal/yu0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yB1;->c:Lcom/android/tools/r8/graph/D0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/yB1;->d:Lcom/android/tools/r8/graph/H5;

    iget-object v3, p0, Lcom/android/tools/r8/internal/yB1;->e:Lcom/android/tools/r8/graph/M2;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/yu0;->b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V

    return-void
.end method
