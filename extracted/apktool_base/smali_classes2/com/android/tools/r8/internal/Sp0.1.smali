.class public abstract Lcom/android/tools/r8/internal/Sp0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Sp0;->a:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/Rp0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lcom/android/tools/r8/internal/Up0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Kw0;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/Sp0;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sp0;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/I2;->m0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sp0;->a:Lcom/android/tools/r8/graph/A2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    return-object v0
.end method
