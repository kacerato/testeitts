.class public final synthetic Lcom/android/tools/r8/graph/Yd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/j1;

.field public final synthetic c:Lcom/android/tools/r8/graph/A2;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/android/tools/r8/graph/u1;

.field public final synthetic f:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Yd;->b:Lcom/android/tools/r8/graph/j1;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Yd;->c:Lcom/android/tools/r8/graph/A2;

    iput-boolean p3, p0, Lcom/android/tools/r8/graph/Yd;->d:Z

    iput-object p4, p0, Lcom/android/tools/r8/graph/Yd;->e:Lcom/android/tools/r8/graph/u1;

    iput-object p5, p0, Lcom/android/tools/r8/graph/Yd;->f:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/graph/Yd;->b:Lcom/android/tools/r8/graph/j1;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Yd;->c:Lcom/android/tools/r8/graph/A2;

    iget-boolean v2, p0, Lcom/android/tools/r8/graph/Yd;->d:Z

    iget-object v3, p0, Lcom/android/tools/r8/graph/Yd;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v4, p0, Lcom/android/tools/r8/graph/Yd;->f:Ljava/util/function/Consumer;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/j1$a;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1$a;)V

    return-void
.end method
