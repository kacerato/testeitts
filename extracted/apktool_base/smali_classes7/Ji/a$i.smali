.class public LJi/a$i;
.super Lki/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lki/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljk/e;
    .locals 1

    new-instance v0, Lmk/j0;

    invoke-direct {v0}, Lmk/j0;-><init>()V

    invoke-static {v0}, LJi/a;->a(Ljk/e;)Ljk/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lki/l;
    .locals 7

    invoke-virtual {p0}, Lki/m;->c()Ljk/e;

    move-result-object v1

    const-string v0, "0402FE13C0537BBC11ACAA07D793DE4E6D5E5C94EEE80289070FB05D38FF58321F2E800536D538CCDAA3D9"

    invoke-static {v1, v0}, LJi/a;->b(Ljk/e;Ljava/lang/String;)Lki/n;

    move-result-object v2

    new-instance v6, Lki/l;

    invoke-virtual {v1}, Ljk/e;->A()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Ljk/e;->s()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v6
.end method
