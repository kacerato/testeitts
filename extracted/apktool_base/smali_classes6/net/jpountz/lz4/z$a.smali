.class public Lnet/jpountz/lz4/z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/jpountz/lz4/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lnet/jpountz/lz4/z$a;->a:I

    iget v1, p0, Lnet/jpountz/lz4/z$a;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public b(I)V
    .locals 1

    iget v0, p0, Lnet/jpountz/lz4/z$a;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/jpountz/lz4/z$a;->a:I

    iget v0, p0, Lnet/jpountz/lz4/z$a;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/jpountz/lz4/z$a;->b:I

    iget v0, p0, Lnet/jpountz/lz4/z$a;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, Lnet/jpountz/lz4/z$a;->c:I

    return-void
.end method
