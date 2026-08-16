.class public final Lcom/android/tools/r8/synthesis/K;
.super Lcom/android/tools/r8/internal/K4;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final d:Lcom/android/tools/r8/synthesis/S$b;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/android/tools/r8/synthesis/S;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/synthesis/S$b;Ljava/lang/String;Lcom/android/tools/r8/synthesis/S;)V
    .locals 1

    const-string v0, "com.android.tools.r8.SynthesizedClassV2"

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/K4;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/K;->d:Lcom/android/tools/r8/synthesis/S$b;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/K;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/K;->f:Lcom/android/tools/r8/synthesis/S;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Vd;II)Lcom/android/tools/r8/internal/K4;
    .locals 5

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Vd;->c(I)S

    move-result p3

    add-int/lit8 v0, p2, 0x2

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Vd;->c(I)S

    move-result v0

    add-int/lit8 p2, p2, 0x4

    .line 3
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, p2, 0x1

    .line 4
    iget-object v4, p1, Lcom/android/tools/r8/internal/Vd;->b:[B

    aget-byte p2, v4, p2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 5
    aput-byte p2, v1, v2

    add-int/lit8 v2, v2, 0x1

    move p2, v3

    goto :goto_0

    .line 6
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/synthesis/K;->g:Z

    if-nez p1, :cond_2

    if-ltz p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/synthesis/K;->f:Lcom/android/tools/r8/synthesis/S;

    if-lez p3, :cond_3

    .line 8
    iget-object p2, p1, Lcom/android/tools/r8/synthesis/S;->Y:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gt p3, p2, :cond_4

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/S;->Y:Ljava/util/ArrayList;

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/synthesis/S$b;

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    const/4 p1, 0x0

    .line 11
    :goto_2
    new-instance p2, Ljava/lang/String;

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 12
    new-instance p3, Lcom/android/tools/r8/synthesis/K;

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/K;->f:Lcom/android/tools/r8/synthesis/S;

    invoke-direct {p3, p1, p2, v0}, Lcom/android/tools/r8/synthesis/K;-><init>(Lcom/android/tools/r8/synthesis/S$b;Ljava/lang/String;Lcom/android/tools/r8/synthesis/S;)V

    return-object p3
.end method

.method public final a()Lcom/android/tools/r8/internal/p8;
    .locals 4

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/synthesis/K;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/K;->d:Lcom/android/tools/r8/synthesis/S$b;

    .line 14
    iget v0, v0, Lcom/android/tools/r8/synthesis/S$b;->b:I

    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/p8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/p8;-><init>()V

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/K;->d:Lcom/android/tools/r8/synthesis/S$b;

    .line 18
    iget v1, v1, Lcom/android/tools/r8/synthesis/S$b;->b:I

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/K;->e:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 21
    array-length v2, v1

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 22
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    return-object v0
.end method
