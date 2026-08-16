.class public Lcom/android/tools/r8/internal/r4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfoBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/r4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public a:I


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
.method public a()Lcom/android/tools/r8/internal/r4;
    .locals 2

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/r4$a;->b:Z

    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 8
    iget v0, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    sget-object v1, Lcom/android/tools/r8/internal/r4;->b:[Lcom/android/tools/r8/internal/r4;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 9
    :cond_3
    :goto_1
    sget-object v0, Lcom/android/tools/r8/internal/r4;->b:[Lcom/android/tools/r8/internal/r4;

    iget v1, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/r4;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfo;->isHot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r4$a;->b()Lcom/android/tools/r8/internal/r4$a;

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfo;->isStartup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r4$a;->d()Lcom/android/tools/r8/internal/r4$a;

    .line 5
    :cond_1
    invoke-interface {p1}, Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfo;->isPostStartup()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r4$a;->c()Lcom/android/tools/r8/internal/r4$a;

    :cond_2
    return-void
.end method

.method public b()Lcom/android/tools/r8/internal/r4$a;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    return-object p0
.end method

.method public c()Lcom/android/tools/r8/internal/r4$a;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    return-object p0
.end method

.method public d()Lcom/android/tools/r8/internal/r4$a;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    return-object p0
.end method

.method public final setIsHot(Z)Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfoBuilder;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x2

    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    return-object p0
.end method

.method public final setIsPostStartup(Z)Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfoBuilder;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x4

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x5

    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    return-object p0
.end method

.method public final setIsStartup(Z)Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfoBuilder;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x2

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x3

    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    return-object p0
.end method
