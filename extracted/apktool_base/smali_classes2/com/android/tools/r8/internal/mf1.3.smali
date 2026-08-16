.class public final synthetic Lcom/android/tools/r8/internal/mf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/j5;

.field public final synthetic c:Lcom/android/tools/r8/graph/M2;

.field public final synthetic d:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/j5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mf1;->b:Lcom/android/tools/r8/internal/j5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mf1;->c:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/mf1;->d:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/mf1;->b:Lcom/android/tools/r8/internal/j5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mf1;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/mf1;->d:Lcom/android/tools/r8/graph/H5;

    check-cast p1, Lcom/android/tools/r8/internal/ea;

    check-cast p2, Lcom/android/tools/r8/internal/Df;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/j5;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method
