.class public final Lcom/android/tools/r8/internal/mv0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/lv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lv0;-><init>()V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/lv0;->a()Lcom/android/tools/r8/internal/mv0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/mv0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/android/tools/r8/internal/mv0;

    iget-object v1, p1, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    iget-object v4, p1, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    iget-object p1, p1, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    filled-new-array {v1, v2, v3, v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
