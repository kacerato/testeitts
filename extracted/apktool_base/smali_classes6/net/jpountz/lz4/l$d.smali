.class public Lnet/jpountz/lz4/l$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/jpountz/lz4/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/jpountz/lz4/l$d$a;
    }
.end annotation


# static fields
.field public static final c:I = 0x1


# instance fields
.field public final a:Ljava/util/BitSet;

.field public final b:I


# direct methods
.method public constructor <init>(IB)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    invoke-static {v0}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object p2

    iput-object p2, p0, Lnet/jpountz/lz4/l$d;->a:Ljava/util/BitSet;

    .line 9
    iput p1, p0, Lnet/jpountz/lz4/l$d;->b:I

    .line 10
    invoke-virtual {p0}, Lnet/jpountz/lz4/l$d;->e()V

    return-void
.end method

.method public varargs constructor <init>(I[Lnet/jpountz/lz4/l$d$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lnet/jpountz/lz4/l$d;->a:Ljava/util/BitSet;

    .line 3
    iput p1, p0, Lnet/jpountz/lz4/l$d;->b:I

    if-eqz p2, :cond_0

    .line 4
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 5
    iget-object v2, p0, Lnet/jpountz/lz4/l$d;->a:Ljava/util/BitSet;

    invoke-static {v1}, Lnet/jpountz/lz4/l$d$a;->a(Lnet/jpountz/lz4/l$d$a;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lnet/jpountz/lz4/l$d;->e()V

    return-void
.end method

.method public static a(B)Lnet/jpountz/lz4/l$d;
    .locals 3

    and-int/lit16 v0, p0, 0xc0

    int-to-byte v0, v0

    new-instance v1, Lnet/jpountz/lz4/l$d;

    ushr-int/lit8 v2, v0, 0x6

    xor-int/2addr p0, v0

    int-to-byte p0, p0

    invoke-direct {v1, v2, p0}, Lnet/jpountz/lz4/l$d;-><init>(IB)V

    return-object v1
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lnet/jpountz/lz4/l$d;->b:I

    return v0
.end method

.method public c(Lnet/jpountz/lz4/l$d$a;)Z
    .locals 1

    iget-object v0, p0, Lnet/jpountz/lz4/l$d;->a:Ljava/util/BitSet;

    invoke-static {p1}, Lnet/jpountz/lz4/l$d$a;->a(Lnet/jpountz/lz4/l$d$a;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public d()B
    .locals 2

    iget-object v0, p0, Lnet/jpountz/lz4/l$d;->a:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iget v1, p0, Lnet/jpountz/lz4/l$d;->b:I

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lnet/jpountz/lz4/l$d;->a:Ljava/util/BitSet;

    sget-object v1, Lnet/jpountz/lz4/l$d$a;->RESERVED_0:Lnet/jpountz/lz4/l$d$a;

    invoke-static {v1}, Lnet/jpountz/lz4/l$d$a;->a(Lnet/jpountz/lz4/l$d$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/jpountz/lz4/l$d;->a:Ljava/util/BitSet;

    sget-object v1, Lnet/jpountz/lz4/l$d$a;->RESERVED_1:Lnet/jpountz/lz4/l$d$a;

    invoke-static {v1}, Lnet/jpountz/lz4/l$d$a;->a(Lnet/jpountz/lz4/l$d$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/jpountz/lz4/l$d;->a:Ljava/util/BitSet;

    sget-object v1, Lnet/jpountz/lz4/l$d$a;->BLOCK_INDEPENDENCE:Lnet/jpountz/lz4/l$d$a;

    invoke-static {v1}, Lnet/jpountz/lz4/l$d$a;->a(Lnet/jpountz/lz4/l$d$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/jpountz/lz4/l$d;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v2, p0, Lnet/jpountz/lz4/l$d;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Version %d is unsupported"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dependent block stream is unsupported (BLOCK_INDEPENDENCE must be set)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reserved1 field must be 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reserved0 field must be 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
