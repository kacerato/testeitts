.class public final synthetic Lv/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/qU;

.field public final synthetic b:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/qU;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/r0;->a:Lcom/android/tools/r8/internal/qU;

    iput-object p2, p0, Lv/r0;->b:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Lv/r0;->a:Lcom/android/tools/r8/internal/qU;

    iget-object v1, p0, Lv/r0;->b:Lcom/android/tools/r8/internal/Hz;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/ir/optimize/e0;->a(Lcom/android/tools/r8/internal/qU;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/H5;I)V

    return-void
.end method
