.class public final Lcom/google/android/gms/fido/fido2/api/common/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fido/fido2/api/common/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:La1/s;

.field public b:La1/t;

.field public c:[B

.field public d:Ljava/util/List;

.field public e:Ljava/lang/Double;

.field public f:Ljava/util/List;

.field public g:Lcom/google/android/gms/fido/fido2/api/common/c;

.field public h:Ljava/lang/Integer;

.field public i:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

.field public j:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

.field public k:La1/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/fido/fido2/api/common/d;
    .locals 13
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v12, Lcom/google/android/gms/fido/fido2/api/common/d;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->a:La1/s;

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->b:La1/t;

    iget-object v3, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->c:[B

    iget-object v4, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->d:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->e:Ljava/lang/Double;

    iget-object v6, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->f:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->g:Lcom/google/android/gms/fido/fido2/api/common/c;

    iget-object v8, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->h:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->i:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->j:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v10, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v11, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->k:La1/a;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/fido/fido2/api/common/d;-><init>(La1/s;La1/t;[BLjava/util/List;Ljava/lang/Double;Ljava/util/List;Lcom/google/android/gms/fido/fido2/api/common/c;Ljava/lang/Integer;Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;Ljava/lang/String;La1/a;)V

    return-object v12
.end method

.method public b(Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;)Lcom/google/android/gms/fido/fido2/api/common/d$a;
    .locals 0
    .param p1    # Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->j:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    return-object p0
.end method

.method public c(La1/a;)Lcom/google/android/gms/fido/fido2/api/common/d$a;
    .locals 0
    .param p1    # La1/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->k:La1/a;

    return-object p0
.end method

.method public d(Lcom/google/android/gms/fido/fido2/api/common/c;)Lcom/google/android/gms/fido/fido2/api/common/d$a;
    .locals 0
    .param p1    # Lcom/google/android/gms/fido/fido2/api/common/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->g:Lcom/google/android/gms/fido/fido2/api/common/c;

    return-object p0
.end method

.method public e([B)Lcom/google/android/gms/fido/fido2/api/common/d$a;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->c:[B

    return-object p0
.end method

.method public f(Ljava/util/List;)Lcom/google/android/gms/fido/fido2/api/common/d$a;
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
            "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;",
            ">;)",
            "Lcom/google/android/gms/fido/fido2/api/common/d$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->f:Ljava/util/List;

    return-object p0
.end method

.method public g(Ljava/util/List;)Lcom/google/android/gms/fido/fido2/api/common/d$a;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/fido2/api/common/e;",
            ">;)",
            "Lcom/google/android/gms/fido/fido2/api/common/d$a;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->d:Ljava/util/List;

    return-object p0
.end method

.method public h(Ljava/lang/Integer;)Lcom/google/android/gms/fido/fido2/api/common/d$a;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method public i(La1/s;)Lcom/google/android/gms/fido/fido2/api/common/d$a;
    .locals 0
    .param p1    # La1/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La1/s;

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->a:La1/s;

    return-object p0
.end method

.method public j(Ljava/lang/Double;)Lcom/google/android/gms/fido/fido2/api/common/d$a;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->e:Ljava/lang/Double;

    return-object p0
.end method

.method public k(Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;)Lcom/google/android/gms/fido/fido2/api/common/d$a;
    .locals 0
    .param p1    # Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->i:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    return-object p0
.end method

.method public l(La1/t;)Lcom/google/android/gms/fido/fido2/api/common/d$a;
    .locals 0
    .param p1    # La1/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La1/t;

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d$a;->b:La1/t;

    return-object p0
.end method
