.class public final Lcom/android/tools/r8/internal/Op;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/w8;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/nio/ShortBuffer;

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILjava/nio/ShortBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/Op;->d:I

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Op;->f:Z

    iput p1, p0, Lcom/android/tools/r8/internal/Op;->b:I

    iput p2, p0, Lcom/android/tools/r8/internal/Op;->a:I

    iput-object p3, p0, Lcom/android/tools/r8/internal/Op;->c:Ljava/nio/ShortBuffer;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Op;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Op;->f:Z

    iget v0, p0, Lcom/android/tools/r8/internal/Op;->e:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    iput v1, p0, Lcom/android/tools/r8/internal/Op;->e:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/Op;->f:Z

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final b()I
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/Op;->g:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Op;->f:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unread byte in cache."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/tools/r8/internal/Op;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/Op;->a:I

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Op;->c:Ljava/nio/ShortBuffer;

    iget v1, p0, Lcom/android/tools/r8/internal/Op;->b:I

    iget v2, p0, Lcom/android/tools/r8/internal/Op;->d:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/Op;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/Op;->d:I

    return v0
.end method
