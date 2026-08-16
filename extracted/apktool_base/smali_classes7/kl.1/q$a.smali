.class public Lkl/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field public c:[B

.field public d:[B

.field public e:[B

.field public f:[B


# direct methods
.method public constructor <init>(Lkl/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkl/q$a;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lkl/q$a;->b:I

    iget v0, p1, Lkl/h;->p:I

    new-array v0, v0, [B

    iput-object v0, p0, Lkl/q$a;->d:[B

    iget v0, p1, Lkl/h;->g:I

    new-array v0, v0, [B

    iput-object v0, p0, Lkl/q$a;->e:[B

    iget p1, p1, Lkl/h;->i:I

    new-array v0, p1, [B

    iput-object v0, p0, Lkl/q$a;->c:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lkl/q$a;->f:[B

    return-void
.end method
