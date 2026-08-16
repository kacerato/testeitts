.class public final synthetic Lcom/android/tools/r8/graph/Jc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/b5;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;

.field public final synthetic d:Lcom/android/tools/r8/internal/U6;

.field public final synthetic e:Lcom/android/tools/r8/graph/E0;

.field public final synthetic f:Lcom/android/tools/r8/graph/j;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/b5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Jc;->b:Lcom/android/tools/r8/graph/b5;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Jc;->c:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/graph/Jc;->d:Lcom/android/tools/r8/internal/U6;

    iput-object p4, p0, Lcom/android/tools/r8/graph/Jc;->e:Lcom/android/tools/r8/graph/E0;

    iput-object p5, p0, Lcom/android/tools/r8/graph/Jc;->f:Lcom/android/tools/r8/graph/j;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/graph/Jc;->b:Lcom/android/tools/r8/graph/b5;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Jc;->c:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/graph/Jc;->d:Lcom/android/tools/r8/internal/U6;

    iget-object v3, p0, Lcom/android/tools/r8/graph/Jc;->e:Lcom/android/tools/r8/graph/E0;

    iget-object v4, p0, Lcom/android/tools/r8/graph/Jc;->f:Lcom/android/tools/r8/graph/j;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/graph/b5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method
