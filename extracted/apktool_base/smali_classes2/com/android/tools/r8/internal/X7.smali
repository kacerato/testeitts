.class public final Lcom/android/tools/r8/internal/X7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/q8;


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/X7;->a:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/X7;->b:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/tools/r8/internal/o8;->a:Z

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/X7;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method
