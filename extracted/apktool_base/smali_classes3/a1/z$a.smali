.class public final La1/z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:S

.field public c:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La1/z;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, La1/z;

    iget v1, p0, La1/z$a;->a:I

    iget-short v2, p0, La1/z$a;->b:S

    iget-short v3, p0, La1/z$a;->c:S

    invoke-direct {v0, v1, v2, v3}, La1/z;-><init>(ISS)V

    return-object v0
.end method

.method public b(S)La1/z$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-short p1, p0, La1/z$a;->b:S

    return-object p0
.end method

.method public c(S)La1/z$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-short p1, p0, La1/z$a;->c:S

    return-object p0
.end method

.method public d(I)La1/z$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, La1/z$a;->a:I

    return-object p0
.end method
