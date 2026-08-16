.class public final synthetic Lv/L0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/h;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/L0;->b:Lcom/android/tools/r8/ir/optimize/h;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv/L0;->b:Lcom/android/tools/r8/ir/optimize/h;

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/ir/optimize/j;->a(Lcom/android/tools/r8/ir/optimize/h;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/ir/optimize/i;

    move-result-object p1

    return-object p1
.end method
