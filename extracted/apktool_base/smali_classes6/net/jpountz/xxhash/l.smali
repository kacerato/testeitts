.class public final Lnet/jpountz/xxhash/l;
.super Lnet/jpountz/xxhash/k;
.source "SourceFile"


# static fields
.field public static final a:Lnet/jpountz/xxhash/k;

.field public static b:Lnet/jpountz/xxhash/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/jpountz/xxhash/l;

    invoke-direct {v0}, Lnet/jpountz/xxhash/l;-><init>()V

    sput-object v0, Lnet/jpountz/xxhash/l;->a:Lnet/jpountz/xxhash/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/jpountz/xxhash/k;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/nio/ByteBuffer;III)I
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lnet/jpountz/util/a;->c(Ljava/nio/ByteBuffer;II)V

    invoke-static {p1, p2, p3, p4}, Lnet/jpountz/xxhash/XXHashJNI;->XXH32BB(Ljava/nio/ByteBuffer;III)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {p0, v0, p2, p3, p4}, Lnet/jpountz/xxhash/l;->c([BIII)I

    move-result p1

    return p1

    :cond_1
    sget-object v0, Lnet/jpountz/xxhash/l;->b:Lnet/jpountz/xxhash/k;

    if-nez v0, :cond_2

    invoke-static {}, Lnet/jpountz/xxhash/t;->k()Lnet/jpountz/xxhash/t;

    move-result-object v0

    invoke-virtual {v0}, Lnet/jpountz/xxhash/t;->d()Lnet/jpountz/xxhash/k;

    move-result-object v0

    sput-object v0, Lnet/jpountz/xxhash/l;->b:Lnet/jpountz/xxhash/k;

    :cond_2
    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/jpountz/xxhash/k;->b(Ljava/nio/ByteBuffer;III)I

    move-result p1

    return p1
.end method

.method public c([BIII)I
    .locals 0

    invoke-static {p1, p2, p3}, Lnet/jpountz/util/c;->c([BII)V

    invoke-static {p1, p2, p3, p4}, Lnet/jpountz/xxhash/XXHashJNI;->XXH32([BIII)I

    move-result p1

    return p1
.end method
