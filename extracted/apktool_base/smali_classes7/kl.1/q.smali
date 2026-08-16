.class public Lkl/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkl/q$a;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[B

.field public e:I

.field public f:[B

.field public g:[I

.field public h:[I

.field public i:[Lkl/q$a;


# direct methods
.method public constructor <init>(Lkl/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lkl/h;->p:I

    new-array v0, v0, [B

    iput-object v0, p0, Lkl/q;->f:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lkl/q;->a:[B

    iget v0, p1, Lkl/h;->m:I

    new-array v1, v0, [I

    iput-object v1, p0, Lkl/q;->g:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lkl/q;->h:[I

    iget p1, p1, Lkl/h;->l:I

    new-array p1, p1, [Lkl/q$a;

    iput-object p1, p0, Lkl/q;->i:[Lkl/q$a;

    return-void
.end method
