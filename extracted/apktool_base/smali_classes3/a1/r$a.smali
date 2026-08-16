.class public final La1/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:[B

.field public b:Ljava/lang/Double;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;

.field public e:Ljava/lang/Integer;

.field public f:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

.field public g:La1/V;

.field public h:La1/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La1/r;)V
    .locals 1
    .param p1    # La1/r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, La1/r;->t()[B

    move-result-object v0

    iput-object v0, p0, La1/r$a;->a:[B

    .line 3
    invoke-virtual {p1}, La1/r;->n0()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, La1/r$a;->b:Ljava/lang/Double;

    .line 4
    invoke-virtual {p1}, La1/r;->y0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La1/r$a;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, La1/r;->x0()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La1/r$a;->d:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, La1/r;->b0()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, La1/r$a;->e:Ljava/lang/Integer;

    .line 7
    invoke-virtual {p1}, La1/r;->u0()Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    move-result-object v0

    iput-object v0, p0, La1/r$a;->f:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    invoke-virtual {p1}, La1/r;->z0()La1/V;

    move-result-object v0

    iput-object v0, p0, La1/r$a;->g:La1/V;

    .line 8
    invoke-virtual {p1}, La1/r;->n()La1/a;

    move-result-object p1

    iput-object p1, p0, La1/r$a;->h:La1/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()La1/r;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v10, La1/r;

    iget-object v1, p0, La1/r$a;->a:[B

    iget-object v2, p0, La1/r$a;->b:Ljava/lang/Double;

    iget-object v3, p0, La1/r$a;->c:Ljava/lang/String;

    iget-object v4, p0, La1/r$a;->d:Ljava/util/List;

    iget-object v5, p0, La1/r$a;->e:Ljava/lang/Integer;

    iget-object v6, p0, La1/r$a;->f:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    iget-object v0, p0, La1/r$a;->g:La1/V;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, La1/V;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v8, p0, La1/r$a;->h:La1/a;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, La1/r;-><init>([BLjava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;Ljava/lang/String;La1/a;Ljava/lang/Long;)V

    return-object v10
.end method

.method public b(Ljava/util/List;)La1/r$a;
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
            "La1/r$a;"
        }
    .end annotation

    iput-object p1, p0, La1/r$a;->d:Ljava/util/List;

    return-object p0
.end method

.method public c(La1/a;)La1/r$a;
    .locals 0
    .param p1    # La1/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La1/r$a;->h:La1/a;

    return-object p0
.end method

.method public d([B)La1/r$a;
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

    iput-object p1, p0, La1/r$a;->a:[B

    return-object p0
.end method

.method public e(Ljava/lang/Integer;)La1/r$a;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La1/r$a;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public f(Ljava/lang/String;)La1/r$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, La1/r$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/Double;)La1/r$a;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La1/r$a;->b:Ljava/lang/Double;

    return-object p0
.end method

.method public h(Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;)La1/r$a;
    .locals 0
    .param p1    # Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La1/r$a;->f:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    return-object p0
.end method
