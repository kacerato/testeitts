.class public Lzc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "engineInstanceID"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lzc/a;->a:J

    .line 4
    iput p3, p0, Lzc/a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lzc/a;->b:I

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lzc/a;->a:J

    return-wide v0
.end method

.method public c(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "engineInstanceID"
        }
    .end annotation

    iput-wide p1, p0, Lzc/a;->a:J

    iput p3, p0, Lzc/a;->b:I

    return-void
.end method
