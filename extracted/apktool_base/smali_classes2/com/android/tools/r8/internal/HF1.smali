.class public final synthetic Lcom/android/tools/r8/internal/HF1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/zu;

.field public final synthetic c:Lcom/android/tools/r8/internal/kC;

.field public final synthetic d:Lcom/android/tools/r8/internal/kC;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/zu;Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/internal/kC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/HF1;->b:Lcom/android/tools/r8/internal/zu;

    iput-object p2, p0, Lcom/android/tools/r8/internal/HF1;->c:Lcom/android/tools/r8/internal/kC;

    iput-object p3, p0, Lcom/android/tools/r8/internal/HF1;->d:Lcom/android/tools/r8/internal/kC;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/HF1;->b:Lcom/android/tools/r8/internal/zu;

    iget-object v1, p0, Lcom/android/tools/r8/internal/HF1;->c:Lcom/android/tools/r8/internal/kC;

    iget-object v2, p0, Lcom/android/tools/r8/internal/HF1;->d:Lcom/android/tools/r8/internal/kC;

    check-cast p1, Lcom/android/tools/r8/internal/Fu;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/internal/Fu;)V

    return-void
.end method
