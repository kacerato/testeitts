.class public Lgi/b;
.super Lgi/c;
.source "SourceFile"


# static fields
.field public static final U:Lfi/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgi/b;

    invoke-direct {v0}, Lgi/b;-><init>()V

    sput-object v0, Lgi/b;->U:Lfi/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgi/c;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lfi/d;Lfi/d;)Z
    .locals 4

    invoke-virtual {p1}, Lfi/d;->size()I

    move-result v0

    invoke-virtual {p2}, Lfi/d;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lfi/d;->z()[Lfi/c;

    move-result-object p1

    invoke-virtual {p2}, Lfi/d;->z()[Lfi/c;

    move-result-object p2

    move v0, v2

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_2

    aget-object v1, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {p0, v1, v3}, Lgi/a;->l(Lfi/c;Lfi/c;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
