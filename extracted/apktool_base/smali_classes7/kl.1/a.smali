.class public Lkl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[I


# direct methods
.method public constructor <init>(III[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkl/a;->a:I

    iput p2, p0, Lkl/a;->b:I

    iput p3, p0, Lkl/a;->c:I

    iput-object p4, p0, Lkl/a;->d:[I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lkl/a;->c:I

    return v0
.end method

.method public b()[I
    .locals 1

    iget-object v0, p0, Lkl/a;->d:[I

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lkl/a;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lkl/a;->b:I

    return v0
.end method

.method public e()I
    .locals 2

    iget v0, p0, Lkl/a;->b:I

    iget v1, p0, Lkl/a;->c:I

    mul-int/2addr v0, v1

    return v0
.end method
