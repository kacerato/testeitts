.class public Lkn/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[F

.field public b:[F

.field public c:J

.field public d:J

.field public e:Ljn/L;

.field public final f:Lkn/q;

.field public g:Ljn/A;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lkn/p;->a:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lkn/p;->b:[F

    new-instance v0, Lkn/q;

    invoke-direct {v0}, Lkn/q;-><init>()V

    iput-object v0, p0, Lkn/p;->f:Lkn/q;

    return-void
.end method
