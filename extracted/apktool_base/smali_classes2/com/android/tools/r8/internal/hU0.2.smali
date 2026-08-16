.class public final synthetic Lcom/android/tools/r8/internal/hU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/hU0;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hU0;->a:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    check-cast p2, Lcom/android/tools/r8/graph/J;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/Qu;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/J;)V

    return-void
.end method
