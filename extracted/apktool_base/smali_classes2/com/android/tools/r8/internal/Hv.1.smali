.class public abstract Lcom/android/tools/r8/internal/Hv;
.super Lcom/android/tools/r8/internal/Bv;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Bv;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Ljava/util/List;
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/Hv;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 4
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 5
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p0

    .line 7
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v0

    if-ge p0, v0, :cond_b

    .line 8
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_7

    const/16 v2, 0x43

    if-eq v0, v2, :cond_6

    const/16 v2, 0x49

    if-eq v0, v2, :cond_5

    const/16 v2, 0x53

    if-eq v0, v2, :cond_4

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_3

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/Cv;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Cv;-><init>()V

    goto :goto_3

    .line 12
    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0

    .line 13
    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/Jv;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv;-><init>()V

    goto :goto_3

    .line 14
    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/Fv;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Fv;-><init>()V

    goto :goto_3

    .line 15
    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/Ev;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ev;-><init>()V

    goto :goto_3

    .line 16
    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/Dv;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Dv;-><init>()V

    goto :goto_3

    .line 17
    :cond_8
    sget-boolean v2, Lcom/android/tools/r8/internal/Hv;->a:Z

    if-nez v2, :cond_a

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 18
    :cond_a
    :goto_2
    new-instance v2, Lcom/android/tools/r8/internal/Gv;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Gv;-><init>(Lcom/android/tools/r8/graph/M2;)V

    move-object v0, v2

    .line 19
    :goto_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_b
    return-object v1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
