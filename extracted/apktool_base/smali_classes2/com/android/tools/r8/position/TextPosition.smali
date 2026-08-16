.class public Lcom/android/tools/r8/position/TextPosition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/position/Position;


# static fields
.field public static final UNKNOWN_COLUMN:I = -0x1

.field static final synthetic d:Z = true


# instance fields
.field private final a:J

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/position/TextPosition;->d:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    if-ltz p3, :cond_0

    const/4 v0, 0x1

    if-ge p4, v0, :cond_1

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/android/tools/r8/position/TextPosition;->a:J

    iput p3, p0, Lcom/android/tools/r8/position/TextPosition;->b:I

    iput p4, p0, Lcom/android/tools/r8/position/TextPosition;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/tools/r8/position/TextPosition;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast p1, Lcom/android/tools/r8/position/TextPosition;

    iget-wide v2, p0, Lcom/android/tools/r8/position/TextPosition;->a:J

    iget-wide v4, p1, Lcom/android/tools/r8/position/TextPosition;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/tools/r8/position/TextPosition;->b:I

    iget v3, p1, Lcom/android/tools/r8/position/TextPosition;->b:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/tools/r8/position/TextPosition;->c:I

    iget p1, p1, Lcom/android/tools/r8/position/TextPosition;->c:I

    if-ne v2, p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public getColumn()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/position/TextPosition;->c:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/position/TextPosition;->b:I

    iget v1, p0, Lcom/android/tools/r8/position/TextPosition;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/position/TextPosition;->b:I

    return v0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/position/TextPosition;->a:J

    return-wide v0
.end method

.method public getOffsetAsInt()I
    .locals 5

    iget-wide v0, p0, Lcom/android/tools/r8/position/TextPosition;->a:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    long-to-int v0, v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    iget-wide v1, p0, Lcom/android/tools/r8/position/TextPosition;->a:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected offset to be an int, but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/position/TextPosition;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/position/TextPosition;->b:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/tools/r8/position/TextPosition;->c:I

    shl-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/android/tools/r8/position/TextPosition;->a:J

    iget v2, p0, Lcom/android/tools/r8/position/TextPosition;->b:I

    iget v3, p0, Lcom/android/tools/r8/position/TextPosition;->c:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", line: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", column: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
