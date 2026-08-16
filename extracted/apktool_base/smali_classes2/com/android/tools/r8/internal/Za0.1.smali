.class public final Lcom/android/tools/r8/internal/Za0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/metadata/R8DexFileMetadata;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "checksum"
    .end annotation
.end field

.field public final b:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "startup"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Za0;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/Za0;->b:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/dex/t0;)Lcom/android/tools/r8/internal/Za0;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/Za0;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/t0;->i:Lcom/android/tools/r8/internal/gA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gA;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/tools/r8/dex/t0;->h:Z

    new-instance v1, Lcom/android/tools/r8/internal/Za0;

    invoke-direct {v1, v0, p0}, Lcom/android/tools/r8/internal/Za0;-><init>(Ljava/lang/String;Z)V

    return-object v1
.end method


# virtual methods
.method public final getChecksum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Za0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final isStartup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Za0;->b:Z

    return v0
.end method
