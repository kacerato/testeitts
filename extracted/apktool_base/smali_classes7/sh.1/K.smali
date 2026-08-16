.class public Lsh/K;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Lhi/B;)[Lhi/B;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Lhi/B;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static b([Lsh/a;)[Lsh/a;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Lsh/a;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static c(Loh/E;)[Lsh/a;
    .locals 3

    invoke-virtual {p0}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Lsh/a;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Loh/E;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lsh/a;->w(Ljava/lang/Object;)Lsh/a;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
