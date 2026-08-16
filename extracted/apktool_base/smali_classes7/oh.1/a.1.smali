.class public Loh/a;
.super Loh/B;
.source "SourceFile"


# static fields
.field public static final b:Loh/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loh/a;

    invoke-direct {v0}, Loh/a;-><init>()V

    sput-object v0, Loh/a;->b:Loh/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Loh/B;-><init>()V

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public u(Loh/B;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v(Loh/A;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y(Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
