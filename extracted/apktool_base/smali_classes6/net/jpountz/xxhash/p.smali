.class public final Lnet/jpountz/xxhash/p;
.super Lnet/jpountz/xxhash/o;
.source "SourceFile"


# static fields
.field public static final a:Lnet/jpountz/xxhash/o;

.field public static b:Lnet/jpountz/xxhash/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/jpountz/xxhash/p;

    invoke-direct {v0}, Lnet/jpountz/xxhash/p;-><init>()V

    sput-object v0, Lnet/jpountz/xxhash/p;->a:Lnet/jpountz/xxhash/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/jpountz/xxhash/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IIJ)J
    .locals 7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lnet/jpountz/util/a;->c(Ljava/nio/ByteBuffer;II)V

    invoke-static {p1, p2, p3, p4, p5}, Lnet/jpountz/xxhash/XXHashJNI;->XXH64BB(Ljava/nio/ByteBuffer;IIJ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int v3, p2, p1

    move-object v1, p0

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lnet/jpountz/xxhash/p;->c([BIIJ)J

    move-result-wide p1

    return-wide p1

    :cond_1
    sget-object v0, Lnet/jpountz/xxhash/p;->b:Lnet/jpountz/xxhash/o;

    if-nez v0, :cond_2

    invoke-static {}, Lnet/jpountz/xxhash/t;->k()Lnet/jpountz/xxhash/t;

    move-result-object v0

    invoke-virtual {v0}, Lnet/jpountz/xxhash/t;->e()Lnet/jpountz/xxhash/o;

    move-result-object v0

    sput-object v0, Lnet/jpountz/xxhash/p;->b:Lnet/jpountz/xxhash/o;

    :cond_2
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lnet/jpountz/xxhash/o;->a(Ljava/nio/ByteBuffer;IIJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c([BIIJ)J
    .locals 0

    invoke-static {p1, p2, p3}, Lnet/jpountz/util/c;->c([BII)V

    invoke-static {p1, p2, p3, p4, p5}, Lnet/jpountz/xxhash/XXHashJNI;->XXH64([BIIJ)J

    move-result-wide p1

    return-wide p1
.end method
