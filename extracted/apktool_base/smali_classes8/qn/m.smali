.class public Lqn/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final p:I = 0x44544c52

.field public static final q:I = 0x1


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[F

.field public g:[F

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lqn/m;->f:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lqn/m;->g:[F

    return-void
.end method
