.class public final synthetic Lcom/android/tools/r8/internal/gv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/um;

.field public final synthetic c:Lcom/android/tools/r8/synthesis/m;

.field public final synthetic d:Lcom/android/tools/r8/internal/cu;

.field public final synthetic e:Lcom/android/tools/r8/graph/E0;

.field public final synthetic f:Lcom/android/tools/r8/internal/rm;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/um;Lcom/android/tools/r8/synthesis/m;Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/rm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/gv1;->b:Lcom/android/tools/r8/internal/um;

    iput-object p2, p0, Lcom/android/tools/r8/internal/gv1;->c:Lcom/android/tools/r8/synthesis/m;

    iput-object p3, p0, Lcom/android/tools/r8/internal/gv1;->d:Lcom/android/tools/r8/internal/cu;

    iput-object p4, p0, Lcom/android/tools/r8/internal/gv1;->e:Lcom/android/tools/r8/graph/E0;

    iput-object p5, p0, Lcom/android/tools/r8/internal/gv1;->f:Lcom/android/tools/r8/internal/rm;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/gv1;->b:Lcom/android/tools/r8/internal/um;

    iget-object v1, p0, Lcom/android/tools/r8/internal/gv1;->c:Lcom/android/tools/r8/synthesis/m;

    iget-object v2, p0, Lcom/android/tools/r8/internal/gv1;->d:Lcom/android/tools/r8/internal/cu;

    iget-object v3, p0, Lcom/android/tools/r8/internal/gv1;->e:Lcom/android/tools/r8/graph/E0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/gv1;->f:Lcom/android/tools/r8/internal/rm;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/synthesis/N;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/um;->a(Lcom/android/tools/r8/synthesis/m;Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/rm;Lcom/android/tools/r8/synthesis/N;)V

    return-void
.end method
