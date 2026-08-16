.class public Lqd/F$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqd/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lqd/F$b;->a:J

    iput-wide v0, p0, Lqd/F$b;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Lqd/F$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lqd/F$b;-><init>()V

    return-void
.end method
