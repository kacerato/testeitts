.class public final La1/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/fido/fido2/api/common/d;

.field public b:Landroid/net/Uri;

.field public c:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La1/g;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, La1/g;

    iget-object v1, p0, La1/g$a;->a:Lcom/google/android/gms/fido/fido2/api/common/d;

    iget-object v2, p0, La1/g$a;->b:Landroid/net/Uri;

    iget-object v3, p0, La1/g$a;->c:[B

    invoke-direct {v0, v1, v2, v3}, La1/g;-><init>(Lcom/google/android/gms/fido/fido2/api/common/d;Landroid/net/Uri;[B)V

    return-object v0
.end method

.method public b([B)La1/g$a;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, La1/g;->B0([B)[B

    iput-object p1, p0, La1/g$a;->c:[B

    return-object p0
.end method

.method public c(Landroid/net/Uri;)La1/g$a;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, La1/g;->A0(Landroid/net/Uri;)Landroid/net/Uri;

    iput-object p1, p0, La1/g$a;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public d(Lcom/google/android/gms/fido/fido2/api/common/d;)La1/g$a;
    .locals 0
    .param p1    # Lcom/google/android/gms/fido/fido2/api/common/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, La1/g$a;->a:Lcom/google/android/gms/fido/fido2/api/common/d;

    return-object p0
.end method
