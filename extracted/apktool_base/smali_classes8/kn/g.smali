.class public Lkn/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:[F

.field public c:[F

.field public d:[F

.field public e:J

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lkn/g;->b:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lkn/g;->c:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lkn/g;->d:[F

    return-void
.end method
