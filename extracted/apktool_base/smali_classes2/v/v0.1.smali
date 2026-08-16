.class public final synthetic Lv/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/dX;

.field public final synthetic b:Lcom/android/tools/r8/internal/IH;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/IH;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/v0;->a:Lcom/android/tools/r8/internal/dX;

    iput-object p2, p0, Lv/v0;->b:Lcom/android/tools/r8/internal/IH;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Lv/v0;->a:Lcom/android/tools/r8/internal/dX;

    iget-object v1, p0, Lv/v0;->b:Lcom/android/tools/r8/internal/IH;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/ir/optimize/e0;->a(Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/graph/H5;I)V

    return-void
.end method
