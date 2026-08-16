.class public final synthetic Lv/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/optimize/e0;

.field public final synthetic b:Lcom/android/tools/r8/internal/sY;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/e0;Lcom/android/tools/r8/internal/sY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/o0;->a:Lcom/android/tools/r8/ir/optimize/e0;

    iput-object p2, p0, Lv/o0;->b:Lcom/android/tools/r8/internal/sY;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lv/o0;->a:Lcom/android/tools/r8/ir/optimize/e0;

    iget-object v1, p0, Lv/o0;->b:Lcom/android/tools/r8/internal/sY;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/ir/optimize/e0;->b(Lcom/android/tools/r8/internal/sY;)Lcom/android/tools/r8/internal/qU;

    move-result-object v0

    return-object v0
.end method
