.class public Lnn/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:I = 0x8


# instance fields
.field public final a:I

.field public final b:[F

.field public final c:[F

.field public d:[Lnn/g;

.field public e:[Lnn/g;

.field public f:Lnn/i;

.field public g:Lnn/i;

.field public h:Lnn/u;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lnn/j;->a:I

    const/16 v0, 0x18

    new-array v1, v0, [F

    iput-object v1, p0, Lnn/j;->b:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lnn/j;->c:[F

    return-void
.end method
