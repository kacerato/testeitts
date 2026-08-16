.class public final synthetic Lv/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/zt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/zt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/M0;->b:Lcom/android/tools/r8/internal/zt;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lv/M0;->b:Lcom/android/tools/r8/internal/zt;

    check-cast p1, Lcom/android/tools/r8/ir/optimize/i;

    invoke-static {v0, p1}, Lcom/android/tools/r8/ir/optimize/j;->a(Lcom/android/tools/r8/internal/zt;Lcom/android/tools/r8/ir/optimize/i;)V

    return-void
.end method
