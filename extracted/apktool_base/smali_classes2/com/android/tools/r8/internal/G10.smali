.class public final Lcom/android/tools/r8/internal/G10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/F10;

.field public final b:[Lcom/android/tools/r8/internal/F10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/F10;->b:Lcom/android/tools/r8/internal/F10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/G10;->a:Lcom/android/tools/r8/internal/F10;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p1

    new-array p1, p1, [Lcom/android/tools/r8/internal/F10;

    iput-object p1, p0, Lcom/android/tools/r8/internal/G10;->b:[Lcom/android/tools/r8/internal/F10;

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/G10;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/G10;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/G10;-><init>(Lcom/android/tools/r8/graph/A2;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/G10;->a:Lcom/android/tools/r8/internal/F10;

    sget-object v1, Lcom/android/tools/r8/internal/F10;->d:Lcom/android/tools/r8/internal/F10;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/G10;->b:[Lcom/android/tools/r8/internal/F10;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
