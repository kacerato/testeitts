.class public final LSe/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSe/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:I

.field public final c:[LSe/b$c;

.field public d:J


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LSe/b$b;->b:I

    new-array v0, p1, [LSe/b$c;

    iput-object v0, p0, LSe/b$b;->c:[LSe/b$c;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, LSe/b$b;->c:[LSe/b$c;

    new-instance v2, LSe/b$c;

    invoke-direct {v2, p2}, LSe/b$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILSe/o$a;)V
    .locals 6

    iget v0, p0, LSe/b$b;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    if-ge v1, p1, :cond_3

    sget-object v0, LSe/b;->j:LSe/b$c;

    invoke-interface {p2, v1, v0}, LSe/o$a;->a(ILBe/J$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, LSe/b$b;->d:J

    long-to-int v2, v2

    rem-int/2addr v2, v0

    move v3, v1

    :goto_1
    if-ge v3, p1, :cond_2

    new-instance v4, LSe/b$a;

    iget-object v5, p0, LSe/b$b;->c:[LSe/b$c;

    aget-object v5, v5, v2

    invoke-direct {v4, v5}, LSe/b$a;-><init>(LSe/b$c;)V

    invoke-interface {p2, v3, v4}, LSe/o$a;->a(ILBe/J$c;)V

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_1

    move v2, v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    int-to-long p1, v2

    iput-wide p1, p0, LSe/b$b;->d:J

    :cond_3
    return-void
.end method

.method public b()LSe/b$c;
    .locals 6

    iget v0, p0, LSe/b$b;->b:I

    if-nez v0, :cond_0

    sget-object v0, LSe/b;->j:LSe/b$c;

    return-object v0

    :cond_0
    iget-object v1, p0, LSe/b$b;->c:[LSe/b$c;

    iget-wide v2, p0, LSe/b$b;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, LSe/b$b;->d:J

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-int v0, v2

    aget-object v0, v1, v0

    return-object v0
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, LSe/b$b;->c:[LSe/b$c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, LSe/i;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
