.class public Lln/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lkn/f;

.field public b:[F

.field public c:[F

.field public d:Lln/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lln/a;->b:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lln/a;->c:[F

    return-void
.end method
