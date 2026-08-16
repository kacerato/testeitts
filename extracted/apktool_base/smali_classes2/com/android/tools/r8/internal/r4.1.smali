.class public Lcom/android/tools/r8/internal/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/r4$a;
    }
.end annotation


# static fields
.field public static final b:[Lcom/android/tools/r8/internal/r4;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/tools/r8/internal/r4;

    new-instance v1, Lcom/android/tools/r8/internal/nr1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/nr1;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/r4;

    sput-object v0, Lcom/android/tools/r8/internal/r4;->b:[Lcom/android/tools/r8/internal/r4;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/r4;->a:I

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/r4$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/r4$a;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r4$a;-><init>()V

    return-object v0
.end method

.method public static b()Lcom/android/tools/r8/internal/r4;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/r4;->b:[Lcom/android/tools/r8/internal/r4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/r4;

    iget v2, p0, Lcom/android/tools/r8/internal/r4;->a:I

    iget p1, p1, Lcom/android/tools/r8/internal/r4;->a:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/r4;->a:I

    return v0
.end method

.method public isHot()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/r4;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPostStartup()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/r4;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStartup()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/r4;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r4;->isHot()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r4;->isStartup()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r4;->isPostStartup()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
