.class public final synthetic Lcom/android/tools/r8/internal/sT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Qe;

.field public final synthetic c:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Qe;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sT0;->b:Lcom/android/tools/r8/internal/Qe;

    iput-object p2, p0, Lcom/android/tools/r8/internal/sT0;->c:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/sT0;->b:Lcom/android/tools/r8/internal/Qe;

    iget-object v1, p0, Lcom/android/tools/r8/internal/sT0;->c:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Qe;->a(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
