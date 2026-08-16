.class public Lcom/android/tools/r8/kotlin/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/tW;


# static fields
.field public static final h:[Ljava/lang/String;

.field public static final i:[I


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/tools/r8/kotlin/S;->h:[Ljava/lang/String;

    new-array v0, v0, [I

    sput-object v0, Lcom/android/tools/r8/kotlin/S;->i:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;[I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/kotlin/S;->a:I

    if-nez p2, :cond_0

    sget-object p2, Lcom/android/tools/r8/kotlin/S;->i:[I

    :cond_0
    iput-object p2, p0, Lcom/android/tools/r8/kotlin/S;->b:[I

    if-nez p3, :cond_1

    sget-object p3, Lcom/android/tools/r8/kotlin/S;->h:[Ljava/lang/String;

    :cond_1
    iput-object p3, p0, Lcom/android/tools/r8/kotlin/S;->c:[Ljava/lang/String;

    if-nez p4, :cond_2

    sget-object p4, Lcom/android/tools/r8/kotlin/S;->h:[Ljava/lang/String;

    :cond_2
    iput-object p4, p0, Lcom/android/tools/r8/kotlin/S;->d:[Ljava/lang/String;

    const-string p1, ""

    if-nez p5, :cond_3

    move-object p5, p1

    :cond_3
    iput-object p5, p0, Lcom/android/tools/r8/kotlin/S;->f:Ljava/lang/String;

    if-nez p6, :cond_4

    move-object p6, p1

    :cond_4
    iput-object p6, p0, Lcom/android/tools/r8/kotlin/S;->g:Ljava/lang/String;

    if-nez p7, :cond_5

    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/tools/r8/kotlin/S;->e:I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/NQ;)Lcom/android/tools/r8/kotlin/S;
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/kotlin/r;->a:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/NQ;->a()Lcom/android/tools/r8/internal/ML;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/android/tools/r8/internal/ML;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, v0, Lcom/android/tools/r8/internal/ML;->c:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 5
    sget-object v1, Lcom/android/tools/r8/kotlin/M;->a:Lcom/android/tools/r8/internal/ML;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/NQ;->a(Lcom/android/tools/r8/internal/ML;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/NQ;->b()Lcom/android/tools/r8/internal/KL;

    move-result-object v1

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/NQ;->a(Lcom/android/tools/r8/internal/ML;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/NQ;->b()Lcom/android/tools/r8/internal/KL;

    move-result-object v1

    .line 9
    :goto_0
    new-instance v0, Lcom/android/tools/r8/kotlin/S;

    .line 10
    iget v2, v1, Lcom/android/tools/r8/internal/KL;->a:I

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/NQ;->a()Lcom/android/tools/r8/internal/ML;

    move-result-object p0

    sget-object v2, Lcom/android/tools/r8/kotlin/M;->a:Lcom/android/tools/r8/internal/ML;

    .line 13
    iget v2, p0, Lcom/android/tools/r8/internal/ML;->b:I

    .line 14
    iget v4, p0, Lcom/android/tools/r8/internal/ML;->c:I

    .line 15
    iget p0, p0, Lcom/android/tools/r8/internal/ML;->d:I

    .line 16
    filled-new-array {v2, v4, p0}, [I

    move-result-object v4

    .line 17
    iget-object v5, v1, Lcom/android/tools/r8/internal/KL;->d:[Ljava/lang/String;

    .line 18
    iget-object v6, v1, Lcom/android/tools/r8/internal/KL;->e:[Ljava/lang/String;

    .line 19
    iget-object v7, v1, Lcom/android/tools/r8/internal/KL;->f:Ljava/lang/String;

    .line 20
    iget-object v8, v1, Lcom/android/tools/r8/internal/KL;->g:Ljava/lang/String;

    .line 21
    iget p0, v1, Lcom/android/tools/r8/internal/KL;->h:I

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/tools/r8/kotlin/S;-><init>(Ljava/lang/Integer;[I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/S;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public final annotationType()Ljava/lang/Class;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Should never be called"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/S;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public final bv()[I
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Field is deprecated and should not be used"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/kotlin/S;->a:I

    return v0
.end method

.method public final d1()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/S;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public final d2()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/S;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/S;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final hashCode()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/kotlin/S;->a:I

    return v0
.end method

.method public final mv()[I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/S;->b:[I

    return-object v0
.end method

.method public final pn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/S;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final xi()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/kotlin/S;->e:I

    return v0
.end method

.method public final xs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/S;->f:Ljava/lang/String;

    return-object v0
.end method
