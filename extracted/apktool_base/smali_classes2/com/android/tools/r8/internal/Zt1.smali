.class public final synthetic Lcom/android/tools/r8/internal/Zt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/c40;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/tm0;

.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/W;

.field public final synthetic c:Lcom/android/tools/r8/internal/d40;

.field public final synthetic d:Lcom/android/tools/r8/internal/h80;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/tm0;Lcom/android/tools/r8/ir/optimize/W;Lcom/android/tools/r8/internal/d40;Lcom/android/tools/r8/internal/h80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Zt1;->a:Lcom/android/tools/r8/internal/tm0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Zt1;->b:Lcom/android/tools/r8/ir/optimize/W;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Zt1;->c:Lcom/android/tools/r8/internal/d40;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Zt1;->d:Lcom/android/tools/r8/internal/h80;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Zt1;->a:Lcom/android/tools/r8/internal/tm0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Zt1;->b:Lcom/android/tools/r8/ir/optimize/W;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Zt1;->c:Lcom/android/tools/r8/internal/d40;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Zt1;->d:Lcom/android/tools/r8/internal/h80;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/tm0;->a(Lcom/android/tools/r8/ir/optimize/W;Lcom/android/tools/r8/internal/d40;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)V

    return-void
.end method
