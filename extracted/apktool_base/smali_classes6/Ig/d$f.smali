.class public final LIg/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:[LTg/y;

.field public final e:[J

.field public final synthetic f:LIg/d;


# direct methods
.method public constructor <init>(LIg/d;Ljava/lang/String;J[LTg/y;[J)V
    .locals 0

    iput-object p1, p0, LIg/d$f;->f:LIg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LIg/d$f;->b:Ljava/lang/String;

    iput-wide p3, p0, LIg/d$f;->c:J

    iput-object p5, p0, LIg/d$f;->d:[LTg/y;

    iput-object p6, p0, LIg/d$f;->e:[J

    return-void
.end method

.method public static synthetic a(LIg/d$f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LIg/d$f;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c()LIg/d$d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LIg/d$f;->f:LIg/d;

    iget-object v1, p0, LIg/d$f;->b:Ljava/lang/String;

    iget-wide v2, p0, LIg/d$f;->c:J

    invoke-virtual {v0, v1, v2, v3}, LIg/d;->h(Ljava/lang/String;J)LIg/d$d;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, LIg/d$f;->d:[LTg/y;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, LGg/c;->g(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(I)J
    .locals 3

    iget-object v0, p0, LIg/d$f;->e:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public e(I)LTg/y;
    .locals 1

    iget-object v0, p0, LIg/d$f;->d:[LTg/y;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LIg/d$f;->b:Ljava/lang/String;

    return-object v0
.end method
