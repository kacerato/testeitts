.class public Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public analyzeTime:J

.field public endTime:J

.field public generateTime:J

.field public lineCount:J

.field public parseTime:J

.field public resolveTime:J

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->elapsedTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->elapsedTime()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public elapsedTime()J
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->endTime:J

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
