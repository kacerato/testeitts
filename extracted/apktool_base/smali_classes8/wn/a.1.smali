.class public Lwn/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:I = 0x3f


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lwn/a;->a:I

    const/16 p1, 0x3f

    .line 3
    iput p1, p0, Lwn/a;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "mask"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lwn/a;->a:I

    .line 6
    iput p2, p0, Lwn/a;->b:I

    return-void
.end method

.method public constructor <init>(Lwn/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget v0, p1, Lwn/a;->a:I

    iput v0, p0, Lwn/a;->a:I

    .line 9
    iget p1, p1, Lwn/a;->b:I

    iput p1, p0, Lwn/a;->b:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "area"
        }
    .end annotation

    iget v0, p0, Lwn/a;->a:I

    iget v1, p0, Lwn/a;->b:I

    and-int/2addr v0, v1

    not-int v1, v1

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    return p1
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lwn/a;->a:I

    iget v1, p0, Lwn/a;->b:I

    and-int/2addr v0, v1

    return v0
.end method
