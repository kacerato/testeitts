.class public final LTf/i;
.super LTf/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LTf/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nXorWowRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XorWowRandom.kt\nkotlin/random/XorWowRandom\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nXorWowRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XorWowRandom.kt\nkotlin/random/XorWowRandom\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"
    }
.end annotation


# static fields
.field public static final j:LTf/i$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:J


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LTf/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LTf/i$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, LTf/i;->j:LTf/i$a;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    not-int v5, p1

    shl-int/lit8 v0, p1, 0xa

    ushr-int/lit8 v1, p2, 0x4

    xor-int v6, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 10
    invoke-direct/range {v0 .. v6}, LTf/i;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, LTf/f;-><init>()V

    .line 2
    iput p1, p0, LTf/i;->d:I

    .line 3
    iput p2, p0, LTf/i;->e:I

    .line 4
    iput p3, p0, LTf/i;->f:I

    .line 5
    iput p4, p0, LTf/i;->g:I

    .line 6
    iput p5, p0, LTf/i;->h:I

    .line 7
    iput p6, p0, LTf/i;->i:I

    .line 8
    invoke-virtual {p0}, LTf/i;->r()V

    const/4 p1, 0x0

    :goto_0
    const/16 p2, 0x40

    if-ge p1, p2, :cond_0

    .line 9
    invoke-virtual {p0}, LTf/i;->l()I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public b(I)I
    .locals 1

    invoke-virtual {p0}, LTf/i;->l()I

    move-result v0

    invoke-static {v0, p1}, LTf/g;->j(II)I

    move-result p1

    return p1
.end method

.method public l()I
    .locals 3

    iget v0, p0, LTf/i;->d:I

    ushr-int/lit8 v1, v0, 0x2

    xor-int/2addr v0, v1

    iget v1, p0, LTf/i;->e:I

    iput v1, p0, LTf/i;->d:I

    iget v1, p0, LTf/i;->f:I

    iput v1, p0, LTf/i;->e:I

    iget v1, p0, LTf/i;->g:I

    iput v1, p0, LTf/i;->f:I

    iget v1, p0, LTf/i;->h:I

    iput v1, p0, LTf/i;->g:I

    shl-int/lit8 v2, v0, 0x1

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v1, 0x4

    xor-int/2addr v0, v1

    iput v0, p0, LTf/i;->h:I

    iget v1, p0, LTf/i;->i:I

    const v2, 0x587c5

    add-int/2addr v1, v2

    iput v1, p0, LTf/i;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final r()V
    .locals 2

    iget v0, p0, LTf/i;->d:I

    iget v1, p0, LTf/i;->e:I

    or-int/2addr v0, v1

    iget v1, p0, LTf/i;->f:I

    or-int/2addr v0, v1

    iget v1, p0, LTf/i;->g:I

    or-int/2addr v0, v1

    iget v1, p0, LTf/i;->h:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initial state must have at least one non-zero element."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, LTf/i;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "initCause(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method
