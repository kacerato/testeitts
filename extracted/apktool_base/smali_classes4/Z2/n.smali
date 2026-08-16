.class public abstract LZ2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "LZ2/n;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;J)LZ2/n;
    .locals 1

    new-instance v0, LZ2/b;

    invoke-direct {v0, p0, p1, p2}, LZ2/b;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public a(LZ2/n;)I
    .locals 4

    invoke-virtual {p0}, LZ2/n;->c()J

    move-result-wide v0

    invoke-virtual {p1}, LZ2/n;->c()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public abstract c()J
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LZ2/n;

    invoke-virtual {p0, p1}, LZ2/n;->a(LZ2/n;)I

    move-result p1

    return p1
.end method

.method public abstract d()Ljava/lang/String;
.end method
