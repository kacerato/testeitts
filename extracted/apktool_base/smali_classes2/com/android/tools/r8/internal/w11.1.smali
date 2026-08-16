.class public final synthetic Lcom/android/tools/r8/internal/w11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Wu0;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Wu0;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/w11;->b:Lcom/android/tools/r8/internal/Wu0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/w11;->c:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/w11;->b:Lcom/android/tools/r8/internal/Wu0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/w11;->c:Lcom/android/tools/r8/graph/H5;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Wu0;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
