.class public La1/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B

.field public c:La1/f;

.field public d:La1/b;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La1/q;
    .locals 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, La1/q$a;->c:La1/f;

    instance-of v1, v0, La1/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, La1/e;

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, v2

    :goto_0
    instance-of v1, v0, La1/d;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, La1/d;

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, v2

    :goto_1
    instance-of v1, v0, Lcom/google/android/gms/fido/fido2/api/common/b;

    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/fido/fido2/api/common/b;

    :cond_2
    move-object v9, v2

    new-instance v0, La1/q;

    iget-object v4, p0, La1/q$a;->a:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialType;->PUBLIC_KEY:Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialType;

    invoke-virtual {v1}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialType;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, La1/q$a;->b:[B

    iget-object v10, p0, La1/q$a;->d:La1/b;

    iget-object v11, p0, La1/q$a;->e:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, La1/q;-><init>(Ljava/lang/String;Ljava/lang/String;[BLa1/e;La1/d;Lcom/google/android/gms/fido/fido2/api/common/b;La1/b;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(La1/b;)La1/q$a;
    .locals 0
    .param p1    # La1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La1/q$a;->d:La1/b;

    return-object p0
.end method

.method public c(Ljava/lang/String;)La1/q$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La1/q$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)La1/q$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La1/q$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e([B)La1/q$a;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La1/q$a;->b:[B

    return-object p0
.end method

.method public f(La1/f;)La1/q$a;
    .locals 0
    .param p1    # La1/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La1/q$a;->c:La1/f;

    return-object p0
.end method
