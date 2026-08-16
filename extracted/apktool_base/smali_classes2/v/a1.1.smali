.class public final synthetic Lv/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ht0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/optimize/k;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/a1;->a:Lcom/android/tools/r8/ir/optimize/k;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lv/a1;->a:Lcom/android/tools/r8/ir/optimize/k;

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    check-cast p3, Lcom/android/tools/r8/ir/optimize/i;

    invoke-static {v0, p1, p2, p3}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/ir/optimize/k;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/ir/optimize/i;)Z

    move-result p1

    return p1
.end method
