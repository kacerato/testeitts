.class public final Lf1/x;
.super Lcom/google/android/gms/common/api/internal/e$a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lv1/l;


# direct methods
.method public constructor <init>(Lf1/y;Lv1/l;)V
    .locals 0

    iput-object p2, p0, Lf1/x;->e:Lv1/l;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->b0()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lf1/x;->e:Lv1/l;

    invoke-static {p1}, LG0/c;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv1/l;->d(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lf1/x;->e:Lv1/l;

    invoke-static {p1, v0}, LD0/s;->b(Lcom/google/android/gms/common/api/Status;Lv1/l;)V

    return-void
.end method
