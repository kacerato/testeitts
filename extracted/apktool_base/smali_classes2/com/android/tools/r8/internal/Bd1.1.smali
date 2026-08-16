.class public final synthetic Lcom/android/tools/r8/internal/Bd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/hm;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/android/tools/r8/internal/Gm;

.field public final synthetic e:Lcom/android/tools/r8/graph/H5;

.field public final synthetic f:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/hm;ZLcom/android/tools/r8/internal/Gm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Bd1;->b:Lcom/android/tools/r8/internal/hm;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/Bd1;->c:Z

    iput-object p3, p0, Lcom/android/tools/r8/internal/Bd1;->d:Lcom/android/tools/r8/internal/Gm;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Bd1;->e:Lcom/android/tools/r8/graph/H5;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Bd1;->f:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bd1;->b:Lcom/android/tools/r8/internal/hm;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Bd1;->c:Z

    iget-object v2, p0, Lcom/android/tools/r8/internal/Bd1;->d:Lcom/android/tools/r8/internal/Gm;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Bd1;->e:Lcom/android/tools/r8/graph/H5;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Bd1;->f:Ljava/util/function/Supplier;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    move-object v6, p2

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/hm;->b(ZLcom/android/tools/r8/internal/Gm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method
