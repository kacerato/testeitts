.class public Lcom/android/tools/r8/graph/x5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public a:[Lcom/android/tools/r8/graph/H2;

.field public b:[Lcom/android/tools/r8/graph/A2;

.field public c:[Lcom/android/tools/r8/graph/I2;

.field public d:[Lcom/android/tools/r8/graph/l1;

.field public e:[Lcom/android/tools/r8/graph/M2;

.field public f:[Lcom/android/tools/r8/graph/L2;

.field public g:[Lcom/android/tools/r8/graph/D0;

.field public h:[Lcom/android/tools/r8/graph/C2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/tools/r8/graph/l1;
    .locals 1

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/x5;->d:[Lcom/android/tools/r8/graph/l1;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/x5;->d:[Lcom/android/tools/r8/graph/l1;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final a()[Lcom/android/tools/r8/graph/l1;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/x5;->d:[Lcom/android/tools/r8/graph/l1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/x5;->d:[Lcom/android/tools/r8/graph/l1;

    return-object v0
.end method

.method public final b(I)Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/x5;->b:[Lcom/android/tools/r8/graph/A2;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/x5;->b:[Lcom/android/tools/r8/graph/A2;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b()[Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/x5;->b:[Lcom/android/tools/r8/graph/A2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/x5;->b:[Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final c(I)Lcom/android/tools/r8/graph/I2;
    .locals 1

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/x5;->c:[Lcom/android/tools/r8/graph/I2;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/x5;->c:[Lcom/android/tools/r8/graph/I2;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final c()[Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/x5;->e:[Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/x5;->e:[Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final d(I)Lcom/android/tools/r8/graph/L2;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/x5;->f:[Lcom/android/tools/r8/graph/L2;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/x5;->f:[Lcom/android/tools/r8/graph/L2;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final e(I)Lcom/android/tools/r8/graph/M2;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/x5;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/x5;->e:[Lcom/android/tools/r8/graph/M2;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/x5;->e:[Lcom/android/tools/r8/graph/M2;

    aget-object p1, v0, p1

    return-object p1
.end method
