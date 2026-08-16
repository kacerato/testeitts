.class public final synthetic Lcom/android/tools/r8/internal/f21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Xc;

.field public final synthetic b:Lcom/android/tools/r8/graph/H5;

.field public final synthetic c:Lcom/android/tools/r8/internal/fB;

.field public final synthetic d:Lcom/android/tools/r8/internal/k40;

.field public final synthetic e:Lcom/android/tools/r8/internal/dX;

.field public final synthetic f:Lcom/android/tools/r8/internal/Df;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Xc;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/f21;->a:Lcom/android/tools/r8/internal/Xc;

    iput-object p2, p0, Lcom/android/tools/r8/internal/f21;->b:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/f21;->c:Lcom/android/tools/r8/internal/fB;

    iput-object p4, p0, Lcom/android/tools/r8/internal/f21;->d:Lcom/android/tools/r8/internal/k40;

    iput-object p5, p0, Lcom/android/tools/r8/internal/f21;->e:Lcom/android/tools/r8/internal/dX;

    iput-object p6, p0, Lcom/android/tools/r8/internal/f21;->f:Lcom/android/tools/r8/internal/Df;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/f21;->a:Lcom/android/tools/r8/internal/Xc;

    iget-object v1, p0, Lcom/android/tools/r8/internal/f21;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/f21;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v3, p0, Lcom/android/tools/r8/internal/f21;->d:Lcom/android/tools/r8/internal/k40;

    iget-object v4, p0, Lcom/android/tools/r8/internal/f21;->e:Lcom/android/tools/r8/internal/dX;

    iget-object v5, p0, Lcom/android/tools/r8/internal/f21;->f:Lcom/android/tools/r8/internal/Df;

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/internal/bz;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Xc;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/bz;)V

    return-void
.end method
