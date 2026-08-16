.class public final Lkotlin/time/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/I$c;


# annotations
.annotation build Lnf/l0;
    version = "1.3"
.end annotation


# static fields
.field public static final b:Lkotlin/time/F;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/time/F;

    invoke-direct {v0}, Lkotlin/time/F;-><init>()V

    sput-object v0, Lkotlin/time/F;->b:Lkotlin/time/F;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/F;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final f()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lkotlin/time/F;->c:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic a()Lkotlin/time/H;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lkotlin/time/F;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/I$b$a;->d(J)Lkotlin/time/I$b$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/time/g;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/time/F;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/I$b$a;->d(J)Lkotlin/time/I$b$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(JJ)J
    .locals 1

    sget-object v0, Lkotlin/time/k;->NANOSECONDS:Lkotlin/time/k;

    invoke-static {p1, p2, v0, p3, p4}, Lkotlin/time/C;->d(JLkotlin/time/k;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lkotlin/time/I$b$a;->h(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final c(JJ)J
    .locals 1

    sget-object v0, Lkotlin/time/k;->NANOSECONDS:Lkotlin/time/k;

    invoke-static {p1, p2, p3, p4, v0}, Lkotlin/time/C;->h(JJLkotlin/time/k;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final d(J)J
    .locals 3

    invoke-direct {p0}, Lkotlin/time/F;->f()J

    move-result-wide v0

    sget-object v2, Lkotlin/time/k;->NANOSECONDS:Lkotlin/time/k;

    invoke-static {v0, v1, p1, p2, v2}, Lkotlin/time/C;->f(JJLkotlin/time/k;)J

    move-result-wide p1

    return-wide p1
.end method

.method public e()J
    .locals 2

    invoke-direct {p0}, Lkotlin/time/F;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/I$b$a;->h(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "TimeSource(System.nanoTime())"

    return-object v0
.end method
