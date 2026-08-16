.class public final synthetic Lcom/android/tools/r8/internal/j81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/d80;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;

.field public final synthetic d:Lcom/android/tools/r8/internal/eu;

.field public final synthetic e:Lcom/android/tools/r8/synthesis/W;

.field public final synthetic f:Lcom/android/tools/r8/internal/gu;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/d80;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/synthesis/W;Lcom/android/tools/r8/internal/gu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/j81;->b:Lcom/android/tools/r8/internal/d80;

    iput-object p2, p0, Lcom/android/tools/r8/internal/j81;->c:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/j81;->d:Lcom/android/tools/r8/internal/eu;

    iput-object p4, p0, Lcom/android/tools/r8/internal/j81;->e:Lcom/android/tools/r8/synthesis/W;

    iput-object p5, p0, Lcom/android/tools/r8/internal/j81;->f:Lcom/android/tools/r8/internal/gu;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/j81;->b:Lcom/android/tools/r8/internal/d80;

    iget-object v1, p0, Lcom/android/tools/r8/internal/j81;->c:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/j81;->d:Lcom/android/tools/r8/internal/eu;

    iget-object v3, p0, Lcom/android/tools/r8/internal/j81;->e:Lcom/android/tools/r8/synthesis/W;

    iget-object v4, p0, Lcom/android/tools/r8/internal/j81;->f:Lcom/android/tools/r8/internal/gu;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/synthesis/N;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/d80;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/synthesis/W;Lcom/android/tools/r8/internal/gu;Lcom/android/tools/r8/synthesis/N;)V

    return-void
.end method
