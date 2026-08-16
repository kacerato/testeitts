.class public final synthetic Lv/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/W;

.field public final synthetic c:Lcom/android/tools/r8/internal/Cj;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/W;Lcom/android/tools/r8/internal/Cj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/Y;->b:Lcom/android/tools/r8/ir/optimize/W;

    iput-object p2, p0, Lv/Y;->c:Lcom/android/tools/r8/internal/Cj;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lv/Y;->b:Lcom/android/tools/r8/ir/optimize/W;

    iget-object v1, p0, Lv/Y;->c:Lcom/android/tools/r8/internal/Cj;

    check-cast p1, Lcom/android/tools/r8/internal/cz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/Cj;Lcom/android/tools/r8/internal/cz;)Lcom/android/tools/r8/internal/KD;

    move-result-object p1

    return-object p1
.end method
