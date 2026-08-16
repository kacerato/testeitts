.class public abstract Lcom/android/tools/r8/graph/d4;
.super Lcom/android/tools/r8/graph/E;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/E;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/w5;)I
.end method

.method public a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/android/tools/r8/graph/d4;->d:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
