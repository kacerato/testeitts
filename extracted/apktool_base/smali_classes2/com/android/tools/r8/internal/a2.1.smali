.class public final enum Lcom/android/tools/r8/internal/a2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/a2;

.field public static final enum c:Lcom/android/tools/r8/internal/a2;

.field public static final enum d:Lcom/android/tools/r8/internal/a2;

.field public static final enum e:Lcom/android/tools/r8/internal/a2;

.field public static final f:Lcom/android/tools/r8/internal/ff0;

.field public static final synthetic g:[Lcom/android/tools/r8/internal/a2;

.field public static final synthetic h:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/tools/r8/internal/a2;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/a2;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/a2;->b:Lcom/android/tools/r8/internal/a2;

    new-instance v1, Lcom/android/tools/r8/internal/a2;

    const-string v3, "PROTECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3}, Lcom/android/tools/r8/internal/a2;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/a2;->c:Lcom/android/tools/r8/internal/a2;

    new-instance v3, Lcom/android/tools/r8/internal/a2;

    const/4 v5, 0x2

    const-string v6, "PACKAGE_PRIVATE"

    invoke-direct {v3, v5, v6}, Lcom/android/tools/r8/internal/a2;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/internal/a2;->d:Lcom/android/tools/r8/internal/a2;

    new-instance v5, Lcom/android/tools/r8/internal/a2;

    const/4 v6, 0x3

    const-string v7, "PRIVATE"

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/internal/a2;-><init>(ILjava/lang/String;)V

    sput-object v5, Lcom/android/tools/r8/internal/a2;->e:Lcom/android/tools/r8/internal/a2;

    filled-new-array {v0, v1, v3, v5}, [Lcom/android/tools/r8/internal/a2;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/a2;->g:[Lcom/android/tools/r8/internal/a2;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/a2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/a2;

    sget v1, Lcom/android/tools/r8/internal/WC;->g:I

    sget-object v1, Lcom/android/tools/r8/internal/dZ;->b:Lcom/android/tools/r8/internal/dZ;

    array-length v3, v0

    invoke-virtual {v0}, [Ljava/lang/Comparable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Comparable;

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/android/tools/r8/internal/WC;->a(Ljava/util/Comparator;)Lcom/android/tools/r8/internal/ff0;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move v2, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    add-int/lit8 v6, v2, -0x1

    aget-object v6, v0, v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v2, 0x1

    aput-object v5, v0, v2

    move v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    new-instance v3, Lcom/android/tools/r8/internal/ff0;

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/internal/ff0;-><init>(Lcom/android/tools/r8/internal/hC;Ljava/util/Comparator;)V

    move-object v0, v3

    :goto_1
    sput-object v0, Lcom/android/tools/r8/internal/a2;->f:Lcom/android/tools/r8/internal/ff0;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/util/Set;)Z
    .locals 1

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/a2;->g:[Lcom/android/tools/r8/internal/a2;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/a2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/a2;

    .line 9
    array-length v0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    const-string v0, "private"

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected access visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "No source syntax for package-private visibility."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_2
    const-string v0, "protected"

    return-object v0

    .line 6
    :cond_3
    const-string v0, "public"

    return-object v0
.end method
