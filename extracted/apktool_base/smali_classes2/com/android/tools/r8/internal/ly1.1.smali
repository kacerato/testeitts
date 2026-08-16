.class public final synthetic Lcom/android/tools/r8/internal/ly1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/x3;

.field public final synthetic c:Lcom/android/tools/r8/internal/u3;

.field public final synthetic d:Lcom/android/tools/r8/internal/nJ;

.field public final synthetic e:Lcom/android/tools/r8/internal/O60;

.field public final synthetic f:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/x3;Lcom/android/tools/r8/internal/u3;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ly1;->b:Lcom/android/tools/r8/internal/x3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ly1;->c:Lcom/android/tools/r8/internal/u3;

    iput-object p3, p0, Lcom/android/tools/r8/internal/ly1;->d:Lcom/android/tools/r8/internal/nJ;

    iput-object p4, p0, Lcom/android/tools/r8/internal/ly1;->e:Lcom/android/tools/r8/internal/O60;

    iput-object p5, p0, Lcom/android/tools/r8/internal/ly1;->f:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/ly1;->b:Lcom/android/tools/r8/internal/x3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ly1;->c:Lcom/android/tools/r8/internal/u3;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ly1;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, p0, Lcom/android/tools/r8/internal/ly1;->e:Lcom/android/tools/r8/internal/O60;

    iget-object v4, p0, Lcom/android/tools/r8/internal/ly1;->f:Lcom/android/tools/r8/internal/Hz;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/H5;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/x3;->a(Lcom/android/tools/r8/internal/u3;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
