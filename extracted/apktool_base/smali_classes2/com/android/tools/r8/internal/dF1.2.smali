.class public final synthetic Lcom/android/tools/r8/internal/dF1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/zh;

.field public final synthetic c:Lcom/android/tools/r8/internal/C7;

.field public final synthetic d:Lcom/android/tools/r8/graph/H5;

.field public final synthetic e:Lcom/android/tools/r8/internal/u9;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/zh;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/u9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/dF1;->b:Lcom/android/tools/r8/internal/zh;

    iput-object p2, p0, Lcom/android/tools/r8/internal/dF1;->c:Lcom/android/tools/r8/internal/C7;

    iput-object p3, p0, Lcom/android/tools/r8/internal/dF1;->d:Lcom/android/tools/r8/graph/H5;

    iput-object p4, p0, Lcom/android/tools/r8/internal/dF1;->e:Lcom/android/tools/r8/internal/u9;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/dF1;->b:Lcom/android/tools/r8/internal/zh;

    iget-object v1, p0, Lcom/android/tools/r8/internal/dF1;->c:Lcom/android/tools/r8/internal/C7;

    iget-object v2, p0, Lcom/android/tools/r8/internal/dF1;->d:Lcom/android/tools/r8/graph/H5;

    iget-object v3, p0, Lcom/android/tools/r8/internal/dF1;->e:Lcom/android/tools/r8/internal/u9;

    check-cast p1, Lcom/android/tools/r8/synthesis/W;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/zh;->a(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/u9;Lcom/android/tools/r8/synthesis/W;)V

    return-void
.end method
