.class public final synthetic Lcom/android/tools/r8/internal/lB1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/ym0;

.field public final synthetic b:Lcom/android/tools/r8/internal/h80;

.field public final synthetic c:Lcom/android/tools/r8/internal/h80;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ym0;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/internal/h80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/lB1;->a:Lcom/android/tools/r8/internal/ym0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/lB1;->b:Lcom/android/tools/r8/internal/h80;

    iput-object p3, p0, Lcom/android/tools/r8/internal/lB1;->c:Lcom/android/tools/r8/internal/h80;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/lB1;->a:Lcom/android/tools/r8/internal/ym0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lB1;->b:Lcom/android/tools/r8/internal/h80;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lB1;->c:Lcom/android/tools/r8/internal/h80;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/ym0;->b(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
