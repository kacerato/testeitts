.class public final La1/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:La1/r;

.field public b:Landroid/net/Uri;

.field public c:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La1/h;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, La1/h;

    iget-object v1, p0, La1/h$a;->a:La1/r;

    iget-object v2, p0, La1/h$a;->b:Landroid/net/Uri;

    iget-object v3, p0, La1/h$a;->c:[B

    invoke-direct {v0, v1, v2, v3}, La1/h;-><init>(La1/r;Landroid/net/Uri;[B)V

    return-object v0
.end method

.method public b([B)La1/h$a;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, La1/h;->B0([B)[B

    iput-object p1, p0, La1/h$a;->c:[B

    return-object p0
.end method

.method public c(Landroid/net/Uri;)La1/h$a;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, La1/h;->A0(Landroid/net/Uri;)Landroid/net/Uri;

    iput-object p1, p0, La1/h$a;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public d(La1/r;)La1/h$a;
    .locals 0
    .param p1    # La1/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La1/r;

    iput-object p1, p0, La1/h$a;->a:La1/r;

    return-object p0
.end method
