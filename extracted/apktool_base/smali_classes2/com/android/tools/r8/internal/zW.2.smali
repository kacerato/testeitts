.class public final Lcom/android/tools/r8/internal/zW;
.super Lcom/android/tools/r8/internal/AW;
.source "SourceFile"


# instance fields
.field public b:[B

.field public c:Lcom/android/tools/r8/internal/AW;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/AW;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/zW;->c:Lcom/android/tools/r8/internal/AW;

    iput-object p1, p0, Lcom/android/tools/r8/internal/zW;->b:[B

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/zW;->c:Lcom/android/tools/r8/internal/AW;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/zW;->b:[B

    invoke-static {v0}, Lcom/android/tools/r8/internal/AW;->a([B)Lcom/android/tools/r8/internal/AW;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/zW;->c:Lcom/android/tools/r8/internal/AW;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/zW;->b:[B

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zW;->c:Lcom/android/tools/r8/internal/AW;

    iget-object v0, v0, Lcom/android/tools/r8/internal/AW;->a:Ljava/util/Collection;

    return-object v0
.end method
