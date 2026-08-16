.class public final Lcom/android/tools/r8/naming/t0;
.super Lcom/android/tools/r8/naming/v0;
.source "SourceFile"


# instance fields
.field public final b:[Lcom/android/tools/r8/naming/u0;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/naming/v0;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/tools/r8/naming/u0;

    iput-object v0, p0, Lcom/android/tools/r8/naming/t0;->b:[Lcom/android/tools/r8/naming/u0;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/naming/t0;->b:[Lcom/android/tools/r8/naming/u0;

    new-instance v2, Lcom/android/tools/r8/naming/u0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/naming/u0;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)Lcom/android/tools/r8/naming/M0;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x100

    if-lt p1, v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/naming/M0;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    return-object v1

    :cond_0
    sub-int v2, p2, p1

    if-gez v2, :cond_1

    new-instance v1, Lcom/android/tools/r8/naming/M0;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    return-object v1

    :cond_1
    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    new-instance v1, Lcom/android/tools/r8/naming/M0;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    return-object v1

    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/naming/t0;->b:[Lcom/android/tools/r8/naming/u0;

    aget-object p2, p2, v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p1, :cond_3

    if-ge p1, v1, :cond_3

    iget-object p2, p2, Lcom/android/tools/r8/naming/v0;->a:[Lcom/android/tools/r8/naming/M0;

    aget-object p1, p2, p1

    return-object p1

    :cond_3
    new-instance p2, Lcom/android/tools/r8/naming/M0;

    invoke-direct {p2, p1, p1, v3}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    return-object p2
.end method
