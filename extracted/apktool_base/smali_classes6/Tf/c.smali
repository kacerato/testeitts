.class public final LTf/c;
.super Ljava/util/Random;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LTf/c$a;
    }
.end annotation


# static fields
.field public static final d:LTf/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:J


# instance fields
.field public final b:LTf/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LTf/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LTf/c$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, LTf/c;->d:LTf/c$a;

    return-void
.end method

.method public constructor <init>(LTf/f;)V
    .locals 1
    .param p1    # LTf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "impl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, LTf/c;->b:LTf/f;

    return-void
.end method


# virtual methods
.method public final a()LTf/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LTf/c;->b:LTf/f;

    return-object v0
.end method

.method public next(I)I
    .locals 1

    iget-object v0, p0, LTf/c;->b:LTf/f;

    invoke-virtual {v0, p1}, LTf/f;->b(I)I

    move-result p1

    return p1
.end method

.method public nextBoolean()Z
    .locals 1

    iget-object v0, p0, LTf/c;->b:LTf/f;

    invoke-virtual {v0}, LTf/f;->c()Z

    move-result v0

    return v0
.end method

.method public nextBytes([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LTf/c;->b:LTf/f;

    invoke-virtual {v0, p1}, LTf/f;->e([B)[B

    return-void
.end method

.method public nextDouble()D
    .locals 2

    iget-object v0, p0, LTf/c;->b:LTf/f;

    invoke-virtual {v0}, LTf/f;->h()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 1

    iget-object v0, p0, LTf/c;->b:LTf/f;

    invoke-virtual {v0}, LTf/f;->k()F

    move-result v0

    return v0
.end method

.method public nextInt()I
    .locals 1

    .line 1
    iget-object v0, p0, LTf/c;->b:LTf/f;

    invoke-virtual {v0}, LTf/f;->l()I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 1

    .line 2
    iget-object v0, p0, LTf/c;->b:LTf/f;

    invoke-virtual {v0, p1}, LTf/f;->m(I)I

    move-result p1

    return p1
.end method

.method public nextLong()J
    .locals 2

    iget-object v0, p0, LTf/c;->b:LTf/f;

    invoke-virtual {v0}, LTf/f;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public setSeed(J)V
    .locals 0

    iget-boolean p1, p0, LTf/c;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LTf/c;->c:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Setting seed is not supported."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
