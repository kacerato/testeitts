.class public final synthetic Lcom/android/tools/r8/internal/uW0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/H5;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uW0;->b:Lcom/android/tools/r8/graph/H5;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/uW0;->c:Z

    iput-object p3, p0, Lcom/android/tools/r8/internal/uW0;->d:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/uW0;->b:Lcom/android/tools/r8/graph/H5;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/uW0;->c:Z

    iget-object v2, p0, Lcom/android/tools/r8/internal/uW0;->d:Lcom/android/tools/r8/graph/H5;

    check-cast p1, Lcom/android/tools/r8/internal/K70;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/T00;->a(Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/K70;)V

    return-void
.end method
