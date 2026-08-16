.class public Lpn/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:I = 0x4d534554

.field public static final g:I = 0x1

.field public static final h:I = 0x8801

.field public static final i:I = 0x8802


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljn/y;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljn/y;

    invoke-direct {v0}, Ljn/y;-><init>()V

    iput-object v0, p0, Lpn/j;->d:Ljn/y;

    return-void
.end method
