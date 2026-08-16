.class public final synthetic Lcom/android/tools/r8/graph/j8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/dex/M;

.field public final synthetic d:Lcom/android/tools/r8/internal/RR;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/j8;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/j8;->c:Lcom/android/tools/r8/dex/M;

    iput-object p3, p0, Lcom/android/tools/r8/graph/j8;->d:Lcom/android/tools/r8/internal/RR;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/j8;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/graph/j8;->c:Lcom/android/tools/r8/dex/M;

    iget-object v2, p0, Lcom/android/tools/r8/graph/j8;->d:Lcom/android/tools/r8/internal/RR;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
