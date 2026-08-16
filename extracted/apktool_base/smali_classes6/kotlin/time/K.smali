.class public final Lkotlin/time/K;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/K$a;
    }
.end annotation


# static fields
.field public static final h:Lkotlin/time/K$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/time/K$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/K$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lkotlin/time/K;->h:Lkotlin/time/K$a;

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlin/time/K;->a:I

    iput p2, p0, Lkotlin/time/K;->b:I

    iput p3, p0, Lkotlin/time/K;->c:I

    iput p4, p0, Lkotlin/time/K;->d:I

    iput p5, p0, Lkotlin/time/K;->e:I

    iput p6, p0, Lkotlin/time/K;->f:I

    iput p7, p0, Lkotlin/time/K;->g:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lkotlin/time/K;->c:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lkotlin/time/K;->d:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lkotlin/time/K;->e:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lkotlin/time/K;->b:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lkotlin/time/K;->g:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lkotlin/time/K;->f:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lkotlin/time/K;->a:I

    return v0
.end method

.method public final h(ILMf/p;)Ljava/lang/Object;
    .locals 10
    .param p2    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "LMf/p<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "buildInstant"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/time/K;->g()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x16d

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    const/4 v4, 0x3

    int-to-long v4, v4

    add-long/2addr v4, v0

    const/4 v6, 0x4

    int-to-long v6, v6

    div-long/2addr v4, v6

    const/16 v6, 0x63

    int-to-long v6, v6

    add-long/2addr v6, v0

    const/16 v8, 0x64

    int-to-long v8, v8

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    const/16 v6, 0x18f

    int-to-long v6, v6

    add-long/2addr v0, v6

    const/16 v6, 0x190

    int-to-long v6, v6

    div-long/2addr v0, v6

    add-long/2addr v4, v0

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    const/4 v4, -0x4

    int-to-long v4, v4

    div-long v4, v0, v4

    const/16 v6, -0x64

    int-to-long v6, v6

    div-long v6, v0, v6

    sub-long/2addr v4, v6

    const/16 v6, -0x190

    int-to-long v6, v6

    div-long/2addr v0, v6

    add-long/2addr v4, v0

    sub-long/2addr v2, v4

    :goto_0
    invoke-virtual {p0}, Lkotlin/time/K;->d()I

    move-result v0

    mul-int/lit16 v0, v0, 0x16f

    add-int/lit16 v0, v0, -0x16a

    div-int/lit8 v0, v0, 0xc

    int-to-long v0, v0

    add-long/2addr v2, v0

    invoke-virtual {p0}, Lkotlin/time/K;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    add-long/2addr v2, v0

    invoke-virtual {p0}, Lkotlin/time/K;->d()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    const-wide/16 v0, -0x1

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lkotlin/time/K;->g()I

    move-result v4

    invoke-static {v4}, Lkotlin/time/y;->p(I)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v0, -0x2

    add-long/2addr v2, v0

    goto :goto_1

    :cond_1
    move-wide v2, v0

    :cond_2
    :goto_1
    const v0, 0xafaa8

    int-to-long v0, v0

    sub-long/2addr v2, v0

    invoke-virtual {p0}, Lkotlin/time/K;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    invoke-virtual {p0}, Lkotlin/time/K;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lkotlin/time/K;->f()I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x15180

    int-to-long v4, v1

    mul-long/2addr v2, v4

    int-to-long v0, v0

    add-long/2addr v2, v0

    int-to-long v0, p1

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0}, Lkotlin/time/K;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnboundLocalDateTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/time/K;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlin/time/K;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/time/K;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/time/K;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlin/time/K;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/time/K;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/time/K;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
