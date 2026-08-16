.class public final synthetic Lv/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/Q;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/O;->b:Lcom/android/tools/r8/ir/optimize/Q;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lv/O;->b:Lcom/android/tools/r8/ir/optimize/Q;

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/ir/optimize/Q;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method
