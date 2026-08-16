.class public abstract Lcom/google/android/gms/common/api/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$d;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/m<",
        "TO;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lcom/google/android/gms/common/api/a;

.field public final d:Lcom/google/android/gms/common/api/a$d;

.field public final e:LD0/c;

.field public final f:Landroid/os/Looper;

.field public final g:I

.field public final h:Lcom/google/android/gms/common/api/l;
    .annotation runtime Lsm/c;
    .end annotation
.end field

.field public final i:LD0/p;

.field public final j:Lcom/google/android/gms/common/api/internal/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;LD0/p;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LD0/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "LD0/p;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/k$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/k$a$a;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/k$a$a;->c(LD0/p;)Lcom/google/android/gms/common/api/k$a$a;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/k$a$a;->b(Landroid/os/Looper;)Lcom/google/android/gms/common/api/k$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k$a$a;->a()Lcom/google/android/gms/common/api/k$a;

    move-result-object p4

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/api/k$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/k$a;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 5
    invoke-static {p3, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 6
    invoke-static {p5, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "The provided context did not have an application context."

    .line 8
    invoke-static {v0, v1}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/api/k;->a:Landroid/content/Context;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/api/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->U(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/api/k;->c:Lcom/google/android/gms/common/api/a;

    iput-object p4, p0, Lcom/google/android/gms/common/api/k;->d:Lcom/google/android/gms/common/api/a$d;

    .line 12
    iget-object v1, p5, Lcom/google/android/gms/common/api/k$a;->b:Landroid/os/Looper;

    iput-object v1, p0, Lcom/google/android/gms/common/api/k;->f:Landroid/os/Looper;

    .line 13
    invoke-static {p3, p4, p1}, LD0/c;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)LD0/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/k;->e:LD0/c;

    .line 14
    new-instance p3, Lcom/google/android/gms/common/api/internal/v;

    invoke-direct {p3, p0}, Lcom/google/android/gms/common/api/internal/v;-><init>(Lcom/google/android/gms/common/api/k;)V

    iput-object p3, p0, Lcom/google/android/gms/common/api/k;->h:Lcom/google/android/gms/common/api/l;

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->v(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/d;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/common/api/k;->j:Lcom/google/android/gms/common/api/internal/d;

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/internal/d;->l()I

    move-result p4

    iput p4, p0, Lcom/google/android/gms/common/api/k;->g:I

    .line 17
    iget-object p4, p5, Lcom/google/android/gms/common/api/k$a;->a:LD0/p;

    iput-object p4, p0, Lcom/google/android/gms/common/api/k;->i:LD0/p;

    if-eqz p2, :cond_1

    instance-of p4, p2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p4, :cond_1

    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    if-ne p4, p5, :cond_1

    .line 19
    invoke-static {p2, p3, p1}, LD0/x;->v(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/d;LD0/c;)V

    .line 20
    :cond_1
    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/internal/d;->K(Lcom/google/android/gms/common/api/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;LD0/p;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LD0/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/l;
        imports = {
            "com.google.android.gms.common.api.GoogleApi.Settings"
        }
        replacement = "this(context, api, options, new Settings.Builder().setMapper(mapper).build())"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "LD0/p;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    new-instance v0, Lcom/google/android/gms/common/api/k$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/k$a$a;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/k$a$a;->c(LD0/p;)Lcom/google/android/gms/common/api/k$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k$a$a;->a()Lcom/google/android/gms/common/api/k$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Landroid/os/Looper;LD0/p;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # LD0/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/l;
        imports = {
            "com.google.android.gms.common.api.GoogleApi.Settings"
        }
        replacement = "this(context, api, options, new Settings.Builder().setLooper(looper).setMapper(mapper).build())"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Landroid/os/Looper;",
            "LD0/p;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21
    new-instance v0, Lcom/google/android/gms/common/api/k$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/k$a$a;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/k$a$a;->b(Landroid/os/Looper;)Lcom/google/android/gms/common/api/k$a$a;

    invoke-virtual {v0, p5}, Lcom/google/android/gms/common/api/k$a$a;->c(LD0/p;)Lcom/google/android/gms/common/api/k$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k$a$a;->a()Lcom/google/android/gms/common/api/k$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/api/k$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/k$a;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method


# virtual methods
.method public final G()LD0/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LD0/c<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/k;->e:LD0/c;

    return-object v0
.end method

.method public H()Lcom/google/android/gms/common/api/l;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/k;->h:Lcom/google/android/gms/common/api/l;

    return-object v0
.end method

.method public I()LG0/i$a;
    .locals 3
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LG0/i$a;

    invoke-direct {v0}, LG0/i$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/k;->d:Lcom/google/android/gms/common/api/a$d;

    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$b;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/gms/common/api/a$d$b;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$b;->m()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->h()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/k;->d:Lcom/google/android/gms/common/api/a$d;

    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$a;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/common/api/a$d$a;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$a;->h()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, LG0/i$a;->d(Landroid/accounts/Account;)LG0/i$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/k;->d:Lcom/google/android/gms/common/api/a$d;

    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$b;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/google/android/gms/common/api/a$d$b;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$b;->m()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->A0()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, LG0/i$a;->c(Ljava/util/Collection;)LG0/i$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LG0/i$a;->e(Ljava/lang/String;)LG0/i$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LG0/i$a;->b(Ljava/lang/String;)LG0/i$a;

    return-object v0
.end method

.method public J()Lv1/k;
    .locals 1
    .annotation build LC0/a;
    .end annotation

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

    iget-object v0, p0, Lcom/google/android/gms/common/api/k;->j:Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/d;->y(Lcom/google/android/gms/common/api/k;)Lv1/k;

    move-result-object v0

    return-object v0
.end method

.method public K(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/b$a<",
            "+",
            "Lcom/google/android/gms/common/api/u;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/k;->e0(ILcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    return-object p1
.end method

.method public L(LD0/r;)Lv1/k;
    .locals 1
    .param p1    # LD0/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(",
            "LD0/r<",
            "TA;TTResult;>;)",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/k;->f0(ILD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public M(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/b$a<",
            "+",
            "Lcom/google/android/gms/common/api/u;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/k;->e0(ILcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    return-object p1
.end method

.method public N(LD0/r;)Lv1/k;
    .locals 1
    .param p1    # LD0/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(",
            "LD0/r<",
            "TA;TTResult;>;)",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/k;->f0(ILD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public O(Lcom/google/android/gms/common/api/internal/h;Lcom/google/android/gms/common/api/internal/k;)Lv1/k;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/internal/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/internal/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/h<",
            "TA;*>;U:",
            "Lcom/google/android/gms/common/api/internal/k<",
            "TA;*>;>(TT;TU;)",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/h;->b()Lcom/google/android/gms/common/api/internal/f$a;

    move-result-object v0

    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/k;->a()Lcom/google/android/gms/common/api/internal/f$a;

    move-result-object v0

    invoke-static {v0, v1}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/h;->b()Lcom/google/android/gms/common/api/internal/f$a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/k;->a()Lcom/google/android/gms/common/api/internal/f$a;

    move-result-object v1

    invoke-static {v0, v1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Listener registration and unregistration methods must be constructed with the same ListenerHolder."

    invoke-static {v0, v1}, LG0/A;->b(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/common/api/D;->b:Lcom/google/android/gms/common/api/D;

    iget-object v1, p0, Lcom/google/android/gms/common/api/k;->j:Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/google/android/gms/common/api/internal/d;->z(Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/internal/h;Lcom/google/android/gms/common/api/internal/k;Ljava/lang/Runnable;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public P(Lcom/google/android/gms/common/api/internal/i;)Lv1/k;
    .locals 3
    .param p1    # Lcom/google/android/gms/common/api/internal/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/i<",
            "TA;*>;)",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/i;->a:Lcom/google/android/gms/common/api/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/h;->b()Lcom/google/android/gms/common/api/internal/f$a;

    move-result-object v0

    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/i;->b:Lcom/google/android/gms/common/api/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/k;->a()Lcom/google/android/gms/common/api/internal/f$a;

    move-result-object v0

    invoke-static {v0, v1}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/i;->a:Lcom/google/android/gms/common/api/internal/h;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/i;->b:Lcom/google/android/gms/common/api/internal/k;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/i;->c:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/android/gms/common/api/k;->j:Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/google/android/gms/common/api/internal/d;->z(Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/internal/h;Lcom/google/android/gms/common/api/internal/k;Ljava/lang/Runnable;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public Q(Lcom/google/android/gms/common/api/internal/f$a;)Lv1/k;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/f$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/f$a<",
            "*>;)",
            "Lv1/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/k;->R(Lcom/google/android/gms/common/api/internal/f$a;I)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public R(Lcom/google/android/gms/common/api/internal/f$a;I)Lv1/k;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/f$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/f$a<",
            "*>;I)",
            "Lv1/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "Listener key cannot be null."

    invoke-static {p1, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/k;->j:Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/api/internal/d;->A(Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/internal/f$a;I)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public S(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/b$a<",
            "+",
            "Lcom/google/android/gms/common/api/u;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/k;->e0(ILcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    return-object p1
.end method

.method public T(LD0/r;)Lv1/k;
    .locals 1
    .param p1    # LD0/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(",
            "LD0/r<",
            "TA;TTResult;>;)",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/k;->f0(ILD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public U(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public V()Lcom/google/android/gms/common/api/a$d;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/k;->d:Lcom/google/android/gms/common/api/a$d;

    return-object v0
.end method

.method public W()Landroid/content/Context;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/k;->a:Landroid/content/Context;

    return-object v0
.end method

.method public X()Ljava/lang/String;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public Y()Ljava/lang/String;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public Z()Landroid/os/Looper;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/k;->f:Landroid/os/Looper;

    return-object v0
.end method

.method public a0(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/f;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/internal/f<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/k;->f:Landroid/os/Looper;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/g;->a(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/f;

    move-result-object p1

    return-object p1
.end method

.method public final b0()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/k;->g:I

    return v0
.end method

.method public final c0(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/u;)Lcom/google/android/gms/common/api/a$f;
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/k;->I()LG0/i$a;

    move-result-object v0

    invoke-virtual {v0}, LG0/i$a;->a()LG0/i;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/common/api/k;->c:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/common/api/a$a;

    iget-object v5, p0, Lcom/google/android/gms/common/api/k;->d:Lcom/google/android/gms/common/api/a$d;

    iget-object v2, p0, Lcom/google/android/gms/common/api/k;->a:Landroid/content/Context;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/common/api/a$a;->d(Landroid/content/Context;Landroid/os/Looper;LG0/i;Ljava/lang/Object;Lcom/google/android/gms/common/api/l$b;Lcom/google/android/gms/common/api/l$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/k;->X()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    instance-of v0, p1, LG0/f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LG0/f;

    invoke-virtual {v0, p2}, LG0/f;->Y(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    instance-of v0, p1, LD0/j;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LD0/j;

    invoke-virtual {v0, p2}, LD0/j;->z(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final d0(Landroid/content/Context;Landroid/os/Handler;)LD0/B0;
    .locals 2

    new-instance v0, LD0/B0;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/k;->I()LG0/i$a;

    move-result-object v1

    invoke-virtual {v1}, LG0/i$a;->a()LG0/i;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, LD0/B0;-><init>(Landroid/content/Context;Landroid/os/Handler;LG0/i;)V

    return-object v0
.end method

.method public final e0(ILcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;
    .locals 1
    .param p2    # Lcom/google/android/gms/common/api/internal/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->s()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/k;->j:Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/api/internal/d;->F(Lcom/google/android/gms/common/api/k;ILcom/google/android/gms/common/api/internal/b$a;)V

    return-object p2
.end method

.method public final f0(ILD0/r;)Lv1/k;
    .locals 7
    .param p2    # LD0/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v6, Lv1/l;

    invoke-direct {v6}, Lv1/l;-><init>()V

    iget-object v5, p0, Lcom/google/android/gms/common/api/k;->i:LD0/p;

    iget-object v0, p0, Lcom/google/android/gms/common/api/k;->j:Lcom/google/android/gms/common/api/internal/d;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/api/internal/d;->G(Lcom/google/android/gms/common/api/k;ILD0/r;Lv1/l;LD0/p;)V

    invoke-virtual {v6}, Lv1/l;->a()Lv1/k;

    move-result-object p1

    return-object p1
.end method
