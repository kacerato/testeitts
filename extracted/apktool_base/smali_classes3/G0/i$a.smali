.class public final LG0/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/accounts/Account;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public b:Landroidx/collection/ArraySet;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Ls1/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ls1/a;->k:Ls1/a;

    iput-object v0, p0, LG0/i$a;->e:Ls1/a;

    return-void
.end method


# virtual methods
.method public a()LG0/i;
    .locals 11
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v10, LG0/i;

    iget-object v1, p0, LG0/i$a;->a:Landroid/accounts/Account;

    iget-object v2, p0, LG0/i$a;->b:Landroidx/collection/ArraySet;

    iget-object v6, p0, LG0/i$a;->c:Ljava/lang/String;

    iget-object v7, p0, LG0/i$a;->d:Ljava/lang/String;

    iget-object v8, p0, LG0/i$a;->e:Ls1/a;

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, LG0/i;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Ls1/a;Z)V

    return-object v10
.end method

.method public b(Ljava/lang/String;)LG0/i$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LG0/i$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/util/Collection;)LG0/i$a;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LG0/i$a;->b:Landroidx/collection/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, LG0/i$a;->b:Landroidx/collection/ArraySet;

    :cond_0
    iget-object v0, p0, LG0/i$a;->b:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final d(Landroid/accounts/Account;)LG0/i$a;
    .locals 0
    .param p1    # Landroid/accounts/Account;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LG0/i$a;->a:Landroid/accounts/Account;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)LG0/i$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LG0/i$a;->d:Ljava/lang/String;

    return-object p0
.end method
