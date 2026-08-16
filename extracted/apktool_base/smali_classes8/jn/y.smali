.class public Ljn/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[F

.field public b:F

.field public c:F

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Ljn/y;->a:[F

    const v0, 0x8000

    iput v0, p0, Ljn/y;->e:I

    return-void
.end method
