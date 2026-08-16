.class public final LK2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LK2/p$b;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String; = "google_api_key"

.field public static final i:Ljava/lang/String; = "google_app_id"

.field public static final j:Ljava/lang/String; = "firebase_database_url"

.field public static final k:Ljava/lang/String; = "ga_trackingId"

.field public static final l:Ljava/lang/String; = "gcm_defaultSenderId"

.field public static final m:Ljava/lang/String; = "google_storage_bucket"

.field public static final n:Ljava/lang/String; = "project_id"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, LT0/D;->b(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ApplicationId must be set."

    invoke-static {v0, v1}, LG0/A;->y(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, LK2/p;->b:Ljava/lang/String;

    .line 5
    iput-object p2, p0, LK2/p;->a:Ljava/lang/String;

    .line 6
    iput-object p3, p0, LK2/p;->c:Ljava/lang/String;

    .line 7
    iput-object p4, p0, LK2/p;->d:Ljava/lang/String;

    .line 8
    iput-object p5, p0, LK2/p;->e:Ljava/lang/String;

    .line 9
    iput-object p6, p0, LK2/p;->f:Ljava/lang/String;

    .line 10
    iput-object p7, p0, LK2/p;->g:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LK2/p$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, LK2/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(LK2/p;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LK2/p;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(LK2/p;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LK2/p;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(LK2/p;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LK2/p;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(LK2/p;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LK2/p;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(LK2/p;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LK2/p;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(LK2/p;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LK2/p;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(LK2/p;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LK2/p;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static h(Landroid/content/Context;)LK2/p;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, LG0/G;

    invoke-direct {v0, p0}, LG0/G;-><init>(Landroid/content/Context;)V

    const-string p0, "google_app_id"

    invoke-virtual {v0, p0}, LG0/G;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, LK2/p;

    const-string v1, "google_api_key"

    invoke-virtual {v0, v1}, LG0/G;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "firebase_database_url"

    invoke-virtual {v0, v1}, LG0/G;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "ga_trackingId"

    invoke-virtual {v0, v1}, LG0/G;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "gcm_defaultSenderId"

    invoke-virtual {v0, v1}, LG0/G;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "google_storage_bucket"

    invoke-virtual {v0, v1}, LG0/G;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "project_id"

    invoke-virtual {v0, v1}, LG0/G;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, LK2/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LK2/p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, LK2/p;

    iget-object v0, p0, LK2/p;->b:Ljava/lang/String;

    iget-object v2, p1, LK2/p;->b:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LK2/p;->a:Ljava/lang/String;

    iget-object v2, p1, LK2/p;->a:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LK2/p;->c:Ljava/lang/String;

    iget-object v2, p1, LK2/p;->c:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LK2/p;->d:Ljava/lang/String;

    iget-object v2, p1, LK2/p;->d:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LK2/p;->e:Ljava/lang/String;

    iget-object v2, p1, LK2/p;->e:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LK2/p;->f:Ljava/lang/String;

    iget-object v2, p1, LK2/p;->f:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LK2/p;->g:Ljava/lang/String;

    iget-object p1, p1, LK2/p;->g:Ljava/lang/String;

    invoke-static {v0, p1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, LK2/p;->b:Ljava/lang/String;

    iget-object v1, p0, LK2/p;->a:Ljava/lang/String;

    iget-object v2, p0, LK2/p;->c:Ljava/lang/String;

    iget-object v3, p0, LK2/p;->d:Ljava/lang/String;

    iget-object v4, p0, LK2/p;->e:Ljava/lang/String;

    iget-object v5, p0, LK2/p;->f:Ljava/lang/String;

    iget-object v6, p0, LK2/p;->g:Ljava/lang/String;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LK2/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LK2/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LK2/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LK2/p;->d:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LK2/p;->e:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LK2/p;->g:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LK2/p;->f:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LG0/y;->d(Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    const-string v1, "applicationId"

    iget-object v2, p0, LK2/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    const-string v1, "apiKey"

    iget-object v2, p0, LK2/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    const-string v1, "databaseUrl"

    iget-object v2, p0, LK2/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    const-string v1, "gcmSenderId"

    iget-object v2, p0, LK2/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    const-string v1, "storageBucket"

    iget-object v2, p0, LK2/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    const-string v1, "projectId"

    iget-object v2, p0, LK2/p;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LG0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LG0/y$a;

    move-result-object v0

    invoke-virtual {v0}, LG0/y$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
