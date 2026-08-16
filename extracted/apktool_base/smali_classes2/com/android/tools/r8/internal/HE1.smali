.class public final synthetic Lcom/android/tools/r8/internal/HE1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;

.field public final synthetic d:Lcom/android/tools/r8/graph/H2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/HE1;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/HE1;->c:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/HE1;->d:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/HE1;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/HE1;->c:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/HE1;->d:Lcom/android/tools/r8/graph/H2;

    check-cast p1, Lcom/android/tools/r8/internal/zt;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/zI;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/zt;)Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    return-object p1
.end method
