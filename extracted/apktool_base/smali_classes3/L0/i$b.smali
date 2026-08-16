.class public LL0/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LL0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3, p4}, LG0/A;->v(J)J

    iput-wide p1, p0, LL0/i$b;->a:J

    iput-wide p3, p0, LL0/i$b;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, LL0/i$b;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, LL0/i$b;->b:J

    return-wide v0
.end method
