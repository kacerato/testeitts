.class public final Lcom/android/tools/r8/internal/ut0;
.super Lcom/android/tools/r8/internal/vt0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/vt0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/vt0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/ut0;->a:Lcom/android/tools/r8/internal/vt0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/vt0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->r()V

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ut0;->a:Lcom/android/tools/r8/internal/vt0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->i()Lcom/android/tools/r8/internal/qL;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ut0;->a:Lcom/android/tools/r8/internal/vt0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V

    return-void
.end method
