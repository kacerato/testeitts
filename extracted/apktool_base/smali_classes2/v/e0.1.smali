.class public final synthetic Lv/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/H5;

.field public final synthetic b:Lcom/android/tools/r8/graph/H5;

.field public final synthetic c:Lcom/android/tools/r8/internal/dX;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/e0;->a:Lcom/android/tools/r8/graph/H5;

    iput-object p2, p0, Lv/e0;->b:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lv/e0;->c:Lcom/android/tools/r8/internal/dX;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lv/e0;->a:Lcom/android/tools/r8/graph/H5;

    iget-object v1, p0, Lv/e0;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lv/e0;->c:Lcom/android/tools/r8/internal/dX;

    check-cast p1, Lcom/android/tools/r8/internal/l3;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/l3;)V

    return-void
.end method
