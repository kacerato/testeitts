.class public final Lcom/android/tools/r8/internal/hr0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:J

.field public g:I

.field public final h:I

.field public i:Lcom/android/tools/r8/internal/hr0;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p4

    .line 10
    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/hr0;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 11
    iput p3, p0, Lcom/android/tools/r8/internal/hr0;->h:I

    return-void
.end method

.method public constructor <init>(IIJI)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v6, p3

    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/hr0;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 17
    iput p5, p0, Lcom/android/tools/r8/internal/hr0;->h:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;JI)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-wide v6, p4

    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/hr0;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 13
    iput p6, p0, Lcom/android/tools/r8/internal/hr0;->h:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/16 v2, 0xc

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/hr0;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 15
    iput p2, p0, Lcom/android/tools/r8/internal/hr0;->h:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/tools/r8/internal/hr0;->a:I

    .line 3
    iput p2, p0, Lcom/android/tools/r8/internal/hr0;->b:I

    .line 4
    iput-object p3, p0, Lcom/android/tools/r8/internal/hr0;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/android/tools/r8/internal/hr0;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/android/tools/r8/internal/hr0;->e:Ljava/lang/String;

    .line 7
    iput-wide p6, p0, Lcom/android/tools/r8/internal/hr0;->f:J

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .line 8
    invoke-direct/range {p0 .. p7}, Lcom/android/tools/r8/internal/hr0;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 9
    iput p8, p0, Lcom/android/tools/r8/internal/hr0;->h:I

    return-void
.end method
