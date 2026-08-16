.class public final Lcom/google/android/gms/auth/api/identity/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Z

.field public e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public g:Z

.field public h:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->c:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->d:Z

    iput-object v1, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->f:Ljava/util/List;

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->g:Z

    iput-object v1, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/auth/api/identity/c$b$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/auth/api/identity/c$b$a;"
        }
    .end annotation

    const-string v0, "linkedServiceId must be provided if you want to associate linked accounts."

    invoke-static {p1, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->f:Ljava/util/List;

    return-object p0
.end method

.method public b()Lcom/google/android/gms/auth/api/identity/c$b;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v9, Lcom/google/android/gms/auth/api/identity/c$b;

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->a:Z

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->d:Z

    iget-object v5, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->f:Ljava/util/List;

    iget-boolean v7, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->g:Z

    iget-object v8, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->h:Ljava/util/List;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/auth/api/identity/c$b;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZLjava/util/List;)V

    return-object v9
.end method

.method public c(Ljava/util/List;)Lcom/google/android/gms/auth/api/identity/c$b$a;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/auth/api/identity/e;",
            ">;)",
            "Lcom/google/android/gms/auth/api/identity/c$b$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->h:Ljava/util/List;

    return-object p0
.end method

.method public d(Z)Lcom/google/android/gms/auth/api/identity/c$b$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->d:Z

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/c$b$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f(Z)Lcom/google/android/gms/auth/api/identity/c$b$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->g:Z

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/c$b$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public h(Z)Lcom/google/android/gms/auth/api/identity/c$b$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/identity/c$b$a;->a:Z

    return-object p0
.end method
