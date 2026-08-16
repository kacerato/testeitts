.class public final Lkotlin/time/z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/z$b;->a:J

    iput p3, p0, Lkotlin/time/z$b;->b:I

    return-void
.end method


# virtual methods
.method public a()Lkotlin/time/q;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-wide v0, p0, Lkotlin/time/z$b;->a:J

    sget-object v2, Lkotlin/time/q;->d:Lkotlin/time/q$a;

    invoke-virtual {v2}, Lkotlin/time/q$a;->h()Lkotlin/time/q;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/time/q;->d()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lkotlin/time/z$b;->a:J

    invoke-virtual {v2}, Lkotlin/time/q$a;->g()Lkotlin/time/q;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/time/q;->d()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lkotlin/time/z$b;->a:J

    iget v3, p0, Lkotlin/time/z$b;->b:I

    invoke-virtual {v2, v0, v1, v3}, Lkotlin/time/q$a;->b(JI)Lkotlin/time/q;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public b()Lkotlin/time/q;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-wide v0, p0, Lkotlin/time/z$b;->a:J

    sget-object v2, Lkotlin/time/q;->d:Lkotlin/time/q$a;

    invoke-virtual {v2}, Lkotlin/time/q$a;->h()Lkotlin/time/q;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/time/q;->d()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lkotlin/time/z$b;->a:J

    invoke-virtual {v2}, Lkotlin/time/q$a;->g()Lkotlin/time/q;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/time/q;->d()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lkotlin/time/z$b;->a:J

    iget v3, p0, Lkotlin/time/z$b;->b:I

    invoke-virtual {v2, v0, v1, v3}, Lkotlin/time/q$a;->b(JI)Lkotlin/time/q;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/time/InstantFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The parsed date is outside the range representable by Instant (Unix epoch second "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lkotlin/time/z$b;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/time/InstantFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/z$b;->a:J

    return-wide v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lkotlin/time/z$b;->b:I

    return v0
.end method
