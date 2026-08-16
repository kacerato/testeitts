.class public final Lf1/c;
.super Lw0/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lw0/g;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lw0/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final m()Lv1/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    new-instance v1, Lf1/A;

    invoke-direct {v1, p0}, Lf1/A;-><init>(Lf1/c;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object v0

    sget-object v1, Lf1/d;->c:LB0/e;

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object v0

    const/16 v1, 0x61f

    invoke-virtual {v0, v1}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object v0

    invoke-virtual {v0}, LD0/r$a;->a()LD0/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/k;->T(LD0/r;)Lv1/k;

    move-result-object v0

    return-object v0
.end method

.method public final v(Ljava/lang/String;)Lv1/k;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    new-instance v1, Lf1/B;

    invoke-direct {v1, p0, p1}, Lf1/B;-><init>(Lf1/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    sget-object v0, Lf1/d;->d:LB0/e;

    filled-new-array {v0}, [LB0/e;

    move-result-object v0

    invoke-virtual {p1, v0}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x620

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->T(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method
