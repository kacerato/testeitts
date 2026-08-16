.class public Lwn/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwn/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[F

.field public final c:[F

.field public d:F

.field public e:F

.field public f:I

.field public g:I

.field public h:I

.field public i:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwn/f;->a:Ljava/util/List;

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lwn/f;->b:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lwn/f;->c:[F

    return-void
.end method
