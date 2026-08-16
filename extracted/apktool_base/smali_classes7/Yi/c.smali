.class public LYi/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/H;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LYi/c;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)LXi/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LYi/c;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x38

    :goto_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lfm/d;->h(Ljava/io/InputStream;[BII)I

    iget-boolean p1, p0, LYi/c;->a:Z

    if-eqz p1, :cond_1

    new-instance p1, LXi/O0;

    invoke-direct {p1, v1, v2}, LXi/O0;-><init>([BI)V

    goto :goto_1

    :cond_1
    new-instance p1, LXi/R0;

    invoke-direct {p1, v1, v2}, LXi/R0;-><init>([BI)V

    :goto_1
    return-object p1
.end method
