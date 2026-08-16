.class public Lcom/google/android/gms/common/api/internal/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/a$b;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:LD0/n;

.field public b:LD0/n;

.field public c:Ljava/lang/Runnable;

.field public d:Lcom/google/android/gms/common/api/internal/f;

.field public e:[LB0/e;

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LD0/t0;->b:LD0/t0;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/i$a;->c:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/i$a;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(LD0/u0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, LD0/t0;->b:LD0/t0;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/i$a;->c:Ljava/lang/Runnable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/i$a;->f:Z

    return-void
.end method

.method public static bridge synthetic i(Lcom/google/android/gms/common/api/internal/i$a;)LD0/n;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/i$a;->a:LD0/n;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/google/android/gms/common/api/internal/i$a;)LD0/n;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/i$a;->b:LD0/n;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/internal/i;
    .locals 9
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/i<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i$a;->a:LD0/n;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Must set register function"

    invoke-static {v0, v3}, LG0/A;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i$a;->b:LD0/n;

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v3, "Must set unregister function"

    invoke-static {v0, v3}, LG0/A;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i$a;->d:Lcom/google/android/gms/common/api/internal/f;

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    const-string v0, "Must set holder"

    invoke-static {v1, v0}, LG0/A;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i$a;->d:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/f;->b()Lcom/google/android/gms/common/api/internal/f$a;

    move-result-object v0

    const-string v1, "Key must not be null"

    invoke-static {v0, v1}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/f$a;

    new-instance v1, Lcom/google/android/gms/common/api/internal/i;

    new-instance v8, Lcom/google/android/gms/common/api/internal/y;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/i$a;->d:Lcom/google/android/gms/common/api/internal/f;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/i$a;->e:[LB0/e;

    iget-boolean v6, p0, Lcom/google/android/gms/common/api/internal/i$a;->f:Z

    iget v7, p0, Lcom/google/android/gms/common/api/internal/i$a;->g:I

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/common/api/internal/y;-><init>(Lcom/google/android/gms/common/api/internal/i$a;Lcom/google/android/gms/common/api/internal/f;[LB0/e;ZI)V

    new-instance v2, Lcom/google/android/gms/common/api/internal/z;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/common/api/internal/z;-><init>(Lcom/google/android/gms/common/api/internal/i$a;Lcom/google/android/gms/common/api/internal/f$a;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i$a;->c:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-direct {v1, v8, v2, v0, v3}, Lcom/google/android/gms/common/api/internal/i;-><init>(Lcom/google/android/gms/common/api/internal/h;Lcom/google/android/gms/common/api/internal/k;Ljava/lang/Runnable;LD0/v0;)V

    return-object v1
.end method

.method public b(Ljava/lang/Runnable;)Lcom/google/android/gms/common/api/internal/i$a;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/common/api/internal/i$a<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/i$a;->c:Ljava/lang/Runnable;

    return-object p0
.end method

.method public c(LD0/n;)Lcom/google/android/gms/common/api/internal/i$a;
    .locals 0
    .param p1    # LD0/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LD0/n<",
            "TA;",
            "Lv1/l<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lcom/google/android/gms/common/api/internal/i$a<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/i$a;->a:LD0/n;

    return-object p0
.end method

.method public d(Z)Lcom/google/android/gms/common/api/internal/i$a;
    .locals 0
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/common/api/internal/i$a<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/i$a;->f:Z

    return-object p0
.end method

.method public varargs e([LB0/e;)Lcom/google/android/gms/common/api/internal/i$a;
    .locals 0
    .param p1    # [LB0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LB0/e;",
            ")",
            "Lcom/google/android/gms/common/api/internal/i$a<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/i$a;->e:[LB0/e;

    return-object p0
.end method

.method public f(I)Lcom/google/android/gms/common/api/internal/i$a;
    .locals 0
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/common/api/internal/i$a<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/gms/common/api/internal/i$a;->g:I

    return-object p0
.end method

.method public g(LD0/n;)Lcom/google/android/gms/common/api/internal/i$a;
    .locals 0
    .param p1    # LD0/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LD0/n<",
            "TA;",
            "Lv1/l<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Lcom/google/android/gms/common/api/internal/i$a<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/i$a;->b:LD0/n;

    return-object p0
.end method

.method public h(Lcom/google/android/gms/common/api/internal/f;)Lcom/google/android/gms/common/api/internal/i$a;
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/internal/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/f<",
            "T",
            "L;",
            ">;)",
            "Lcom/google/android/gms/common/api/internal/i$a<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/i$a;->d:Lcom/google/android/gms/common/api/internal/f;

    return-object p0
.end method
