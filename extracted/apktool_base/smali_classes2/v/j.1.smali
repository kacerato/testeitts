.class public final synthetic Lv/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ir/optimize/C0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/fB;

.field public final synthetic b:Lcom/android/tools/r8/graph/H5;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/j;->a:Lcom/android/tools/r8/internal/fB;

    iput-object p2, p0, Lv/j;->b:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lv/j;->c:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/zE;)I
    .locals 3

    iget-object v0, p0, Lv/j;->a:Lcom/android/tools/r8/internal/fB;

    iget-object v1, p0, Lv/j;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lv/j;->c:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/ir/optimize/I0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zE;)I

    move-result p1

    return p1
.end method
