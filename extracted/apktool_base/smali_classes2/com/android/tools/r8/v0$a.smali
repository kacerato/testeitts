.class public Lcom/android/tools/r8/v0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/v0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/nio/file/Path;

.field public final b:Ljava/nio/charset/Charset;

.field public final c:Lcom/android/tools/r8/origin/PathOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/v0$a;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/v0$a;->a:Ljava/nio/file/Path;

    iput-object p2, p0, Lcom/android/tools/r8/v0$a;->b:Ljava/nio/charset/Charset;

    new-instance p2, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    iput-object p2, p0, Lcom/android/tools/r8/v0$a;->c:Lcom/android/tools/r8/origin/PathOrigin;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/v0$a;->a:Ljava/nio/file/Path;

    iget-object v1, p0, Lcom/android/tools/r8/v0$a;->b:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/tools/r8/ResourceException;

    iget-object v2, p0, Lcom/android/tools/r8/v0$a;->c:Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/v0$a;->c:Lcom/android/tools/r8/origin/PathOrigin;

    return-object v0
.end method
