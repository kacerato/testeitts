.class public final synthetic Lcom/android/tools/r8/internal/Do1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/oR;

.field public final synthetic c:Lcom/android/tools/r8/internal/C7;

.field public final synthetic d:Lcom/android/tools/r8/graph/H5;

.field public final synthetic e:Lcom/android/tools/r8/internal/kR;

.field public final synthetic f:Lcom/android/tools/r8/internal/nR;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/oR;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/kR;Lcom/android/tools/r8/internal/nR;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Do1;->b:Lcom/android/tools/r8/internal/oR;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Do1;->c:Lcom/android/tools/r8/internal/C7;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Do1;->d:Lcom/android/tools/r8/graph/H5;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Do1;->e:Lcom/android/tools/r8/internal/kR;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Do1;->f:Lcom/android/tools/r8/internal/nR;

    iput-boolean p6, p0, Lcom/android/tools/r8/internal/Do1;->g:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/Do1;->b:Lcom/android/tools/r8/internal/oR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Do1;->c:Lcom/android/tools/r8/internal/C7;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Do1;->d:Lcom/android/tools/r8/graph/H5;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Do1;->e:Lcom/android/tools/r8/internal/kR;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Do1;->f:Lcom/android/tools/r8/internal/nR;

    iget-boolean v5, p0, Lcom/android/tools/r8/internal/Do1;->g:Z

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/synthesis/W;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/oR;->a(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/kR;Lcom/android/tools/r8/internal/nR;ZLcom/android/tools/r8/synthesis/W;)V

    return-void
.end method
