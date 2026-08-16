.class public final Ln0/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GestureDetector.kt\ncom/google/android/filament/utils/GestureDetector$TouchPair\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 3 Vector.kt\ncom/google/android/filament/utils/Float2\n+ 4 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n1#1,155:1\n626#2:156\n624#2:158\n660#2,2:159\n662#2:162\n137#3:157\n42#4:161\n*S KotlinDebug\n*F\n+ 1 GestureDetector.kt\ncom/google/android/filament/utils/GestureDetector$TouchPair\n*L\n44#1:156\n44#1:158\n45#1:159,2\n45#1:162\n44#1:157\n45#1:161\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GestureDetector.kt\ncom/google/android/filament/utils/GestureDetector$TouchPair\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 3 Vector.kt\ncom/google/android/filament/utils/Float2\n+ 4 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n1#1,155:1\n626#2:156\n624#2:158\n660#2,2:159\n662#2:162\n137#3:157\n42#4:161\n*S KotlinDebug\n*F\n+ 1 GestureDetector.kt\ncom/google/android/filament/utils/GestureDetector$TouchPair\n*L\n44#1:156\n44#1:158\n45#1:159,2\n45#1:162\n44#1:157\n45#1:161\n*E\n"
    }
.end annotation


# instance fields
.field public a:Ln0/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ln0/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    new-instance v0, Ln0/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln0/e;-><init>(F)V

    new-instance v2, Ln0/e;

    invoke-direct {v2, v1}, Ln0/e;-><init>(F)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Ln0/h$b;-><init>(Ln0/e;Ln0/e;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "me"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ln0/h$b;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 5
    new-instance v0, Ln0/e;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    int-to-float v4, p2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v4, v2

    invoke-direct {v0, v3, v4}, Ln0/e;-><init>(FF)V

    iput-object v0, p0, Ln0/h$b;->a:Ln0/e;

    .line 6
    iput-object v0, p0, Ln0/h$b;->b:Ln0/e;

    .line 7
    iget v0, p0, Ln0/h$b;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Ln0/h$b;->c:I

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    .line 9
    new-instance v0, Ln0/e;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    int-to-float p2, p2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr p2, p1

    invoke-direct {v0, v2, p2}, Ln0/e;-><init>(FF)V

    iput-object v0, p0, Ln0/h$b;->b:Ln0/e;

    .line 10
    iget p1, p0, Ln0/h$b;->c:I

    add-int/2addr p1, v1

    iput p1, p0, Ln0/h$b;->c:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Ln0/e;Ln0/e;I)V
    .locals 1
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pt0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pt1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/h$b;->a:Ln0/e;

    iput-object p2, p0, Ln0/h$b;->b:Ln0/e;

    iput p3, p0, Ln0/h$b;->c:I

    return-void
.end method

.method public static synthetic e(Ln0/h$b;Ln0/e;Ln0/e;IILjava/lang/Object;)Ln0/h$b;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Ln0/h$b;->a:Ln0/e;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Ln0/h$b;->b:Ln0/e;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Ln0/h$b;->c:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ln0/h$b;->d(Ln0/e;Ln0/e;I)Ln0/h$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ln0/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ln0/h$b;->a:Ln0/e;

    return-object v0
.end method

.method public final b()Ln0/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ln0/h$b;->b:Ln0/e;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Ln0/h$b;->c:I

    return v0
.end method

.method public final d(Ln0/e;Ln0/e;I)Ln0/h$b;
    .locals 1
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pt0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pt1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/h$b;

    invoke-direct {v0, p1, p2, p3}, Ln0/h$b;-><init>(Ln0/e;Ln0/e;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ln0/h$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ln0/h$b;

    iget-object v1, p0, Ln0/h$b;->a:Ln0/e;

    iget-object v3, p1, Ln0/h$b;->a:Ln0/e;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ln0/h$b;->b:Ln0/e;

    iget-object v3, p1, Ln0/h$b;->b:Ln0/e;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Ln0/h$b;->c:I

    iget p1, p1, Ln0/h$b;->c:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Ln0/h$b;->c:I

    return v0
.end method

.method public final g()Ln0/e;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ln0/h$b;->a:Ln0/e;

    iget-object v1, p0, Ln0/h$b;->b:Ln0/e;

    new-instance v2, Ln0/e;

    invoke-virtual {v0}, Ln0/e;->z()F

    move-result v3

    invoke-virtual {v1}, Ln0/e;->z()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0}, Ln0/e;->B()F

    move-result v0

    invoke-virtual {v1}, Ln0/e;->B()F

    move-result v1

    mul-float/2addr v0, v5

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    invoke-direct {v2, v3, v0}, Ln0/e;-><init>(FF)V

    return-object v2
.end method

.method public final h()Ln0/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ln0/h$b;->a:Ln0/e;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ln0/h$b;->a:Ln0/e;

    invoke-virtual {v0}, Ln0/e;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ln0/h$b;->b:Ln0/e;

    invoke-virtual {v1}, Ln0/e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln0/h$b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ln0/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ln0/h$b;->b:Ln0/e;

    return-object v0
.end method

.method public final j()F
    .locals 5

    iget-object v0, p0, Ln0/h$b;->a:Ln0/e;

    iget-object v1, p0, Ln0/h$b;->b:Ln0/e;

    new-instance v2, Ln0/e;

    invoke-virtual {v0}, Ln0/e;->z()F

    move-result v3

    invoke-virtual {v1}, Ln0/e;->z()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Ln0/e;->B()F

    move-result v0

    invoke-virtual {v1}, Ln0/e;->B()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {v2, v3, v0}, Ln0/e;-><init>(FF)V

    invoke-virtual {v2}, Ln0/e;->z()F

    move-result v0

    invoke-virtual {v2}, Ln0/e;->z()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v2}, Ln0/e;->B()F

    move-result v1

    invoke-virtual {v2}, Ln0/e;->B()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final k()I
    .locals 1

    invoke-virtual {p0}, Ln0/h$b;->g()Ln0/e;

    move-result-object v0

    invoke-virtual {v0}, Ln0/e;->z()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public final l()I
    .locals 1

    invoke-virtual {p0}, Ln0/h$b;->g()Ln0/e;

    move-result-object v0

    invoke-virtual {v0}, Ln0/e;->B()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public final m(I)V
    .locals 0

    iput p1, p0, Ln0/h$b;->c:I

    return-void
.end method

.method public final n(Ln0/e;)V
    .locals 1
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ln0/h$b;->a:Ln0/e;

    return-void
.end method

.method public final o(Ln0/e;)V
    .locals 1
    .param p1    # Ln0/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ln0/h$b;->b:Ln0/e;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ln0/h$b;->a:Ln0/e;

    iget-object v1, p0, Ln0/h$b;->b:Ln0/e;

    iget v2, p0, Ln0/h$b;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TouchPair(pt0="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pt1="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", count="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
