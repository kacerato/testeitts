.class public Loh/A0;
.super Loh/t;
.source "SourceFile"


# static fields
.field public static final c:Loh/A0;

.field public static final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loh/A0;

    invoke-direct {v0}, Loh/A0;-><init>()V

    sput-object v0, Loh/A0;->c:Loh/A0;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Loh/A0;->d:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Loh/t;-><init>()V

    return-void
.end method


# virtual methods
.method public v(Loh/A;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    sget-object v1, Loh/A0;->d:[B

    invoke-virtual {p1, p2, v0, v1}, Loh/A;->r(ZI[B)V

    return-void
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y(Z)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Loh/A;->i(ZI)I

    move-result p1

    return p1
.end method
