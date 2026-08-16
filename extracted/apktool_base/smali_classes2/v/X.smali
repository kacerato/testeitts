.class public final synthetic Lv/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/optimize/W;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/W;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/X;->a:Lcom/android/tools/r8/ir/optimize/W;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lv/X;->a:Lcom/android/tools/r8/ir/optimize/W;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    check-cast p2, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/ir/optimize/W;->c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
