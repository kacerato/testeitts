.class public final synthetic Lcom/android/tools/r8/internal/J91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Ef;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/J91;->b:Lcom/android/tools/r8/internal/Ef;

    iput-object p2, p0, Lcom/android/tools/r8/internal/J91;->c:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/J91;->b:Lcom/android/tools/r8/internal/Ef;

    iget-object v1, p0, Lcom/android/tools/r8/internal/J91;->c:Lcom/android/tools/r8/graph/H5;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/f50;->a(Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/Df;

    move-result-object p1

    return-object p1
.end method
