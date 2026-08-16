.class public Lwn/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:[F

.field public final j:[F

.field public k:F

.field public l:F

.field public m:[Lwn/b;

.field public n:[Lwn/d;

.field public o:[I

.field public p:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lwn/c;->i:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lwn/c;->j:[F

    return-void
.end method
