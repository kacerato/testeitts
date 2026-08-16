.class public final synthetic Lcom/android/tools/r8/internal/Ep1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Ljava/util/function/Function;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ep1;->b:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ep1;->c:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ep1;->b:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ep1;->c:Lcom/android/tools/r8/graph/H5;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/pU;->a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/H5;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
