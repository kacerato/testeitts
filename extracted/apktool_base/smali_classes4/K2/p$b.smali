.class public final LK2/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LK2/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LK2/p;)V
    .locals 1
    .param p1    # LK2/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, LK2/p;->a(LK2/p;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LK2/p$b;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1}, LK2/p;->b(LK2/p;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LK2/p$b;->a:Ljava/lang/String;

    .line 5
    invoke-static {p1}, LK2/p;->c(LK2/p;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LK2/p$b;->c:Ljava/lang/String;

    .line 6
    invoke-static {p1}, LK2/p;->d(LK2/p;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LK2/p$b;->d:Ljava/lang/String;

    .line 7
    invoke-static {p1}, LK2/p;->e(LK2/p;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LK2/p$b;->e:Ljava/lang/String;

    .line 8
    invoke-static {p1}, LK2/p;->f(LK2/p;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LK2/p$b;->f:Ljava/lang/String;

    .line 9
    invoke-static {p1}, LK2/p;->g(LK2/p;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LK2/p$b;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()LK2/p;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v9, LK2/p;

    iget-object v1, p0, LK2/p$b;->b:Ljava/lang/String;

    iget-object v2, p0, LK2/p$b;->a:Ljava/lang/String;

    iget-object v3, p0, LK2/p$b;->c:Ljava/lang/String;

    iget-object v4, p0, LK2/p$b;->d:Ljava/lang/String;

    iget-object v5, p0, LK2/p$b;->e:Ljava/lang/String;

    iget-object v6, p0, LK2/p$b;->f:Ljava/lang/String;

    iget-object v7, p0, LK2/p$b;->g:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, LK2/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LK2/p$a;)V

    return-object v9
.end method

.method public b(Ljava/lang/String;)LK2/p$b;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "ApiKey must be set."

    invoke-static {p1, v0}, LG0/A;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LK2/p$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)LK2/p$b;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "ApplicationId must be set."

    invoke-static {p1, v0}, LG0/A;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LK2/p$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)LK2/p$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LK2/p$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)LK2/p$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LK2/p$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)LK2/p$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LK2/p$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)LK2/p$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LK2/p$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)LK2/p$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LK2/p$b;->f:Ljava/lang/String;

    return-object p0
.end method
