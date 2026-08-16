.class public LZ0/c;
.super Lcom/google/android/gms/common/api/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/k<",
        "Lcom/google/android/gms/common/api/a$d$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Lcom/google/android/gms/common/api/a$g;

.field public static final l:Lcom/google/android/gms/common/api/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, LZ0/c;->k:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lcom/google/android/gms/common/api/a;

    new-instance v2, Lj1/V;

    invoke-direct {v2}, Lj1/V;-><init>()V

    const-string v3, "Fido.FIDO2_PRIVILEGED_API"

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v1, LZ0/c;->l:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, LZ0/c;->l:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->n4:Lcom/google/android/gms/common/api/a$d$d;

    new-instance v2, LD0/b;

    invoke-direct {v2}, LD0/b;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;LD0/p;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget-object v0, LZ0/c;->l:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->n4:Lcom/google/android/gms/common/api/a$d$d;

    new-instance v2, LD0/b;

    invoke-direct {v2}, LD0/b;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;LD0/p;)V

    return-void
.end method


# virtual methods
.method public g0(Ljava/lang/String;)Lv1/k;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lv1/k<",
            "Ljava/util/List<",
            "La1/m;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    new-instance v1, LZ0/n;

    invoke-direct {v1, p0, p1}, LZ0/n;-><init>(LZ0/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x1536

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public h0(La1/g;)Lv1/k;
    .locals 2
    .param p1    # La1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La1/g;",
            ")",
            "Lv1/k<",
            "LZ0/b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    const/16 v1, 0x1526

    invoke-virtual {v0, v1}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object v0

    new-instance v1, LZ0/r;

    invoke-direct {v1, p0, p1}, LZ0/r;-><init>(LZ0/c;La1/g;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public i0(La1/g;)Lv1/k;
    .locals 2
    .param p1    # La1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La1/g;",
            ")",
            "Lv1/k<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    new-instance v1, LZ0/o;

    invoke-direct {v1, p0, p1}, LZ0/o;-><init>(LZ0/c;La1/g;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x1524

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public j0(La1/h;)Lv1/k;
    .locals 2
    .param p1    # La1/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La1/h;",
            ")",
            "Lv1/k<",
            "LZ0/b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    const/16 v1, 0x1527

    invoke-virtual {v0, v1}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object v0

    new-instance v1, LZ0/q;

    invoke-direct {v1, p0, p1}, LZ0/q;-><init>(LZ0/c;La1/h;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public k0(La1/h;)Lv1/k;
    .locals 2
    .param p1    # La1/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La1/h;",
            ")",
            "Lv1/k<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    new-instance v1, LZ0/p;

    invoke-direct {v1, p0, p1}, LZ0/p;-><init>(LZ0/c;La1/h;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x1525

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public l0()Lv1/k;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    new-instance v1, LZ0/s;

    invoke-direct {v1, p0}, LZ0/s;-><init>(LZ0/c;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object v0

    sget-object v1, LY0/c;->h:LB0/e;

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object v0

    const/16 v1, 0x1528

    invoke-virtual {v0, v1}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object v0

    invoke-virtual {v0}, LD0/r$a;->a()LD0/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object v0

    return-object v0
.end method
