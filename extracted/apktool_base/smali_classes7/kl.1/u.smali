.class public Lkl/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public final b:[B

.field public final c:[I


# direct methods
.method public constructor <init>(Lkl/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lkl/h;->h:I

    new-array v1, v0, [I

    iput-object v1, p0, Lkl/u;->a:[I

    iget p1, p1, Lkl/h;->i:I

    new-array p1, p1, [B

    iput-object p1, p0, Lkl/u;->b:[B

    new-array p1, v0, [I

    iput-object p1, p0, Lkl/u;->c:[I

    return-void
.end method
