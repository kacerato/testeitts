.class public Lcom/android/tools/r8/internal/K4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/android/tools/r8/internal/p8;

.field public c:Lcom/android/tools/r8/internal/K4;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/K4;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/jr0;II)I
    .locals 3

    and-int/lit16 v0, p1, 0x1000

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    .line 7
    iget v0, p0, Lcom/android/tools/r8/internal/jr0;->b:I

    const/16 v2, 0x31

    if-ge v0, v2, :cond_0

    .line 8
    const-string v0, "Synthetic"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 9
    const-string p2, "Signature"

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_1
    const/high16 p2, 0x20000

    and-int/2addr p1, p2

    if-eqz p1, :cond_2

    .line 10
    const-string p1, "Deprecated"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public static a(Lcom/android/tools/r8/internal/jr0;IILcom/android/tools/r8/internal/p8;)V
    .locals 3

    and-int/lit16 v0, p1, 0x1000

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11
    iget v0, p0, Lcom/android/tools/r8/internal/jr0;->b:I

    const/16 v2, 0x31

    if-ge v0, v2, :cond_0

    .line 12
    const-string v0, "Synthetic"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    :cond_0
    if-eqz p2, :cond_1

    .line 13
    const-string v0, "Signature"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v0

    const/4 v2, 0x2

    .line 14
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    :cond_1
    const/high16 p2, 0x20000

    and-int/2addr p1, p2

    if-eqz p1, :cond_2

    .line 16
    const-string p1, "Deprecated"

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/Vd;II)Lcom/android/tools/r8/internal/K4;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/K4;

    iget-object v1, p0, Lcom/android/tools/r8/internal/K4;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/K4;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/p8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-array v2, p3, [B

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vd;->b:[B

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/p8;-><init>([B)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    return-object v0
.end method

.method public a()Lcom/android/tools/r8/internal/p8;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    return-object v0
.end method
