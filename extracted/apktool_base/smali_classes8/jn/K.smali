.class public Ljn/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljn/Q;

.field public b:Ljn/B;

.field public c:F

.field public d:J

.field public e:J

.field public f:[F

.field public g:[F

.field public h:Ljn/L;

.field public i:I

.field public j:F

.field public k:Ljn/M;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Ljn/K;->f:[F

    new-array v0, v0, [F

    iput-object v0, p0, Ljn/K;->g:[F

    return-void
.end method
