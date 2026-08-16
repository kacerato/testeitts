.class public Lkl/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:[I

.field public final d:[B

.field public final e:[B

.field public final f:[B


# direct methods
.method public constructor <init>(Lkl/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lkl/h;->o:I

    new-array v1, v0, [B

    iput-object v1, p0, Lkl/p$a;->a:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lkl/p$a;->b:[B

    iget v0, p1, Lkl/h;->h:I

    new-array v0, v0, [I

    iput-object v0, p0, Lkl/p$a;->c:[I

    iget v0, p1, Lkl/h;->i:I

    new-array v0, v0, [B

    iput-object v0, p0, Lkl/p$a;->d:[B

    iget v0, p1, Lkl/h;->p:I

    new-array v0, v0, [B

    iput-object v0, p0, Lkl/p$a;->e:[B

    iget p1, p1, Lkl/h;->k:I

    if-lez p1, :cond_0

    new-array p1, p1, [B

    iput-object p1, p0, Lkl/p$a;->f:[B

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lkl/p$a;->f:[B

    :goto_0
    return-void
.end method
