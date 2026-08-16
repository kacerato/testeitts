.class public final synthetic Lv/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/s0;

.field public final synthetic c:Lcom/android/tools/r8/graph/F0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/graph/F0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/n1;->b:Lcom/android/tools/r8/ir/optimize/s0;

    iput-object p2, p0, Lv/n1;->c:Lcom/android/tools/r8/graph/F0;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lv/n1;->b:Lcom/android/tools/r8/ir/optimize/s0;

    iget-object v1, p0, Lv/n1;->c:Lcom/android/tools/r8/graph/F0;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/ir/optimize/s0;->a(Lcom/android/tools/r8/graph/F0;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
