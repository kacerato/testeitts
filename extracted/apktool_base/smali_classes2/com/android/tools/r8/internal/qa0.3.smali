.class public final Lcom/android/tools/r8/internal/qa0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/dH;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/dH;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/qa0;->a:Lcom/android/tools/r8/internal/dH;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/tools/r8/internal/pa0;
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/internal/qa0;->a:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/pa0;

    if-nez v0, :cond_3

    and-int/lit16 v2, p1, 0xff

    const/16 v0, 0x33

    const/16 v1, 0x1000

    const/16 v3, 0x800

    const/16 v4, 0x400

    const/16 v5, 0x200

    const/16 v6, 0x100

    if-ge v2, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/pa0;

    invoke-static {p1, v6}, Lcom/android/tools/r8/internal/P6;->b(II)Z

    move-result v6

    invoke-static {p1, v5}, Lcom/android/tools/r8/internal/P6;->b(II)Z

    move-result v5

    invoke-static {p1, v4}, Lcom/android/tools/r8/internal/P6;->b(II)Z

    move-result v7

    invoke-static {p1, v3}, Lcom/android/tools/r8/internal/P6;->b(II)Z

    move-result v8

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/P6;->b(II)Z

    move-result v9

    move-object v1, v0

    move v3, v6

    move v4, v5

    move v5, v7

    move v6, v8

    move v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/pa0;-><init>(IZZZZZ)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Ea0;

    invoke-static {p1, v6}, Lcom/android/tools/r8/internal/P6;->b(II)Z

    move-result v6

    invoke-static {p1, v5}, Lcom/android/tools/r8/internal/P6;->b(II)Z

    move-result v5

    invoke-static {p1, v4}, Lcom/android/tools/r8/internal/P6;->b(II)Z

    move-result v7

    invoke-static {p1, v3}, Lcom/android/tools/r8/internal/P6;->b(II)Z

    move-result v8

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/P6;->b(II)Z

    move-result v9

    move-object v1, v0

    move v3, v6

    move v4, v5

    move v5, v7

    move v6, v8

    move v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/Ea0;-><init>(IZZZZZ)V

    :goto_0
    sget-boolean v1, Lcom/android/tools/r8/internal/qa0;->b:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pa0;->e()I

    move-result v1

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/qa0;->a:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method
