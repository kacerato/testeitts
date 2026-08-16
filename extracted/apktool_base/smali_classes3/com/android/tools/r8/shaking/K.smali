.class public final Lcom/android/tools/r8/shaking/K;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/shaking/K;

.field public static final d:Lcom/android/tools/r8/shaking/K;

.field public static final e:Lcom/android/tools/r8/shaking/K;

.field public static final f:Lcom/android/tools/r8/shaking/K;


# instance fields
.field public final a:Lcom/android/tools/r8/shaking/K;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/shaking/K;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/K;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/shaking/K;->c:Lcom/android/tools/r8/shaking/K;

    new-instance v0, Lcom/android/tools/r8/shaking/K;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/K;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/shaking/K;->d:Lcom/android/tools/r8/shaking/K;

    new-instance v0, Lcom/android/tools/r8/shaking/K;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/K;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/shaking/K;->e:Lcom/android/tools/r8/shaking/K;

    new-instance v0, Lcom/android/tools/r8/shaking/K;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/K;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/shaking/K;->f:Lcom/android/tools/r8/shaking/K;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/shaking/K;->b:I

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/shaking/K;

    or-int/lit8 p1, p1, 0x1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/K;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lcom/android/tools/r8/shaking/K;->a:Lcom/android/tools/r8/shaking/K;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/tools/r8/shaking/K;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/shaking/K;

    iget v2, p0, Lcom/android/tools/r8/shaking/K;->b:I

    iget p1, p1, Lcom/android/tools/r8/shaking/K;->b:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/shaking/K;->b:I

    return v0
.end method
