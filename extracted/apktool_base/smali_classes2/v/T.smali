.class public final synthetic Lv/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/W;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/W;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/T;->b:Lcom/android/tools/r8/ir/optimize/W;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lv/T;->b:Lcom/android/tools/r8/ir/optimize/W;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    check-cast p2, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/ir/optimize/W;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    return p1
.end method
