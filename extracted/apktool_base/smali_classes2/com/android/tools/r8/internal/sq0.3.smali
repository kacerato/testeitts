.class public abstract Lcom/android/tools/r8/internal/sq0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/sL;)Lcom/android/tools/r8/internal/W5;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object p0

    iget-object v0, p0, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    sget-object v1, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->M1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->Z()Lcom/android/tools/r8/internal/tI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method
