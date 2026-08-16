.class public final synthetic Lcom/android/tools/r8/internal/iU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Qu;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;

.field public final synthetic d:Lcom/android/tools/r8/internal/vc;

.field public final synthetic e:Lcom/android/tools/r8/graph/I2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Qu;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/vc;Lcom/android/tools/r8/graph/I2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/iU0;->b:Lcom/android/tools/r8/internal/Qu;

    iput-object p2, p0, Lcom/android/tools/r8/internal/iU0;->c:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/iU0;->d:Lcom/android/tools/r8/internal/vc;

    iput-object p4, p0, Lcom/android/tools/r8/internal/iU0;->e:Lcom/android/tools/r8/graph/I2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/iU0;->b:Lcom/android/tools/r8/internal/Qu;

    iget-object v1, p0, Lcom/android/tools/r8/internal/iU0;->c:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/iU0;->d:Lcom/android/tools/r8/internal/vc;

    iget-object v3, p0, Lcom/android/tools/r8/internal/iU0;->e:Lcom/android/tools/r8/graph/I2;

    check-cast p1, Lcom/android/tools/r8/synthesis/N;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/vc;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/N;)V

    return-void
.end method
