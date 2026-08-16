.class public final synthetic Lv/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/Q;

.field public final synthetic c:Lcom/android/tools/r8/internal/fB;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/Q;Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/N;->b:Lcom/android/tools/r8/ir/optimize/Q;

    iput-object p2, p0, Lv/N;->c:Lcom/android/tools/r8/internal/fB;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lv/N;->b:Lcom/android/tools/r8/ir/optimize/Q;

    iget-object v1, p0, Lv/N;->c:Lcom/android/tools/r8/internal/fB;

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/ir/optimize/Q;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;)V

    return-void
.end method
