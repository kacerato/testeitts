.class public Lkl/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[[B

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lkl/h;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lkl/h;->n:I

    iget p1, p1, Lkl/h;->i:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 p1, 0x0

    aput v0, v1, p1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lkl/g;->a:[[B

    iput p1, p0, Lkl/g;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lkl/g;->c:I

    return-void
.end method
