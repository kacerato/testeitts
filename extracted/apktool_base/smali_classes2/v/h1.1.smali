.class public final synthetic Lv/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/xw0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/h1;->a:Lcom/android/tools/r8/internal/xw0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lv/h1;->a:Lcom/android/tools/r8/internal/xw0;

    check-cast p1, Lcom/android/tools/r8/internal/f60;

    check-cast p2, Lcom/android/tools/r8/internal/TH;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/internal/TH;)V

    return-void
.end method
