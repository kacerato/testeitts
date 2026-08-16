.class public final Lcom/google/android/gms/auth/api/identity/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/auth/api/identity/c$e;

.field public b:Lcom/google/android/gms/auth/api/identity/c$b;

.field public c:Lcom/google/android/gms/auth/api/identity/c$d;

.field public d:Lcom/google/android/gms/auth/api/identity/c$c;

.field public e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Z

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/auth/api/identity/c$e;->n()Lcom/google/android/gms/auth/api/identity/c$e$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/c$e$a;->b(Z)Lcom/google/android/gms/auth/api/identity/c$e$a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/identity/c$e$a;->a()Lcom/google/android/gms/auth/api/identity/c$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/identity/c$a;->a:Lcom/google/android/gms/auth/api/identity/c$e;

    invoke-static {}, Lcom/google/android/gms/auth/api/identity/c$b;->n()Lcom/google/android/gms/auth/api/identity/c$b$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/c$b$a;->h(Z)Lcom/google/android/gms/auth/api/identity/c$b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/identity/c$b$a;->b()Lcom/google/android/gms/auth/api/identity/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/identity/c$a;->b:Lcom/google/android/gms/auth/api/identity/c$b;

    invoke-static {}, Lcom/google/android/gms/auth/api/identity/c$d;->n()Lcom/google/android/gms/auth/api/identity/c$d$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/c$d$a;->d(Z)Lcom/google/android/gms/auth/api/identity/c$d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/identity/c$d$a;->a()Lcom/google/android/gms/auth/api/identity/c$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/identity/c$a;->c:Lcom/google/android/gms/auth/api/identity/c$d;

    invoke-static {}, Lcom/google/android/gms/auth/api/identity/c$c;->n()Lcom/google/android/gms/auth/api/identity/c$c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/c$c$a;->c(Z)Lcom/google/android/gms/auth/api/identity/c$c$a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/identity/c$c$a;->a()Lcom/google/android/gms/auth/api/identity/c$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/identity/c$a;->d:Lcom/google/android/gms/auth/api/identity/c$c;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/auth/api/identity/c;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v9, Lcom/google/android/gms/auth/api/identity/c;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/c$a;->a:Lcom/google/android/gms/auth/api/identity/c$e;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/c$a;->b:Lcom/google/android/gms/auth/api/identity/c$b;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/identity/c$a;->e:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/auth/api/identity/c$a;->f:Z

    iget v5, p0, Lcom/google/android/gms/auth/api/identity/c$a;->g:I

    iget-object v6, p0, Lcom/google/android/gms/auth/api/identity/c$a;->c:Lcom/google/android/gms/auth/api/identity/c$d;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/identity/c$a;->d:Lcom/google/android/gms/auth/api/identity/c$c;

    iget-boolean v8, p0, Lcom/google/android/gms/auth/api/identity/c$a;->h:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/auth/api/identity/c;-><init>(Lcom/google/android/gms/auth/api/identity/c$e;Lcom/google/android/gms/auth/api/identity/c$b;Ljava/lang/String;ZILcom/google/android/gms/auth/api/identity/c$d;Lcom/google/android/gms/auth/api/identity/c$c;Z)V

    return-object v9
.end method

.method public b(Z)Lcom/google/android/gms/auth/api/identity/c$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/identity/c$a;->f:Z

    return-object p0
.end method

.method public c(Lcom/google/android/gms/auth/api/identity/c$b;)Lcom/google/android/gms/auth/api/identity/c$a;
    .locals 0
    .param p1    # Lcom/google/android/gms/auth/api/identity/c$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/identity/c$b;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/c$a;->b:Lcom/google/android/gms/auth/api/identity/c$b;

    return-object p0
.end method

.method public d(Lcom/google/android/gms/auth/api/identity/c$c;)Lcom/google/android/gms/auth/api/identity/c$a;
    .locals 0
    .param p1    # Lcom/google/android/gms/auth/api/identity/c$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/identity/c$c;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/c$a;->d:Lcom/google/android/gms/auth/api/identity/c$c;

    return-object p0
.end method

.method public e(Lcom/google/android/gms/auth/api/identity/c$d;)Lcom/google/android/gms/auth/api/identity/c$a;
    .locals 0
    .param p1    # Lcom/google/android/gms/auth/api/identity/c$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/identity/c$d;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/c$a;->c:Lcom/google/android/gms/auth/api/identity/c$d;

    return-object p0
.end method

.method public f(Lcom/google/android/gms/auth/api/identity/c$e;)Lcom/google/android/gms/auth/api/identity/c$a;
    .locals 0
    .param p1    # Lcom/google/android/gms/auth/api/identity/c$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/identity/c$e;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/c$a;->a:Lcom/google/android/gms/auth/api/identity/c$e;

    return-object p0
.end method

.method public g(Z)Lcom/google/android/gms/auth/api/identity/c$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/identity/c$a;->h:Z

    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/c$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/c$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final i(I)Lcom/google/android/gms/auth/api/identity/c$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/auth/api/identity/c$a;->g:I

    return-object p0
.end method
