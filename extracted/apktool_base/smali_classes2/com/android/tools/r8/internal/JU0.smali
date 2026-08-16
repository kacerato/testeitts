.class public final synthetic Lcom/android/tools/r8/internal/JU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;

.field public final synthetic b:Lcom/android/tools/r8/internal/QJ;

.field public final synthetic c:Lcom/android/tools/r8/internal/P30;

.field public final synthetic d:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/QJ;Lcom/android/tools/r8/internal/P30;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/JU0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/JU0;->b:Lcom/android/tools/r8/internal/QJ;

    iput-object p3, p0, Lcom/android/tools/r8/internal/JU0;->c:Lcom/android/tools/r8/internal/P30;

    iput-object p4, p0, Lcom/android/tools/r8/internal/JU0;->d:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/JU0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/JU0;->b:Lcom/android/tools/r8/internal/QJ;

    iget-object v2, p0, Lcom/android/tools/r8/internal/JU0;->c:Lcom/android/tools/r8/internal/P30;

    iget-object v3, p0, Lcom/android/tools/r8/internal/JU0;->d:Lcom/android/tools/r8/graph/H5;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/F0;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/internal/SD;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/R30;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/QJ;Lcom/android/tools/r8/internal/P30;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/SD;)V

    return-void
.end method
