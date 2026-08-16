.class public final Lcom/android/tools/r8/internal/i4;
.super Lcom/android/tools/r8/internal/y4;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/profile/art/ArtProfileClassRuleBuilder;
.implements Lcom/android/tools/r8/internal/n1;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public b:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/y4;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/tools/r8/internal/i4;->a:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/y4;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/i4;->a:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/tools/r8/internal/o1;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/j4;

    iget-object v1, p0, Lcom/android/tools/r8/internal/i4;->b:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/j4;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method

.method public final setClassReference(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/profile/art/ArtProfileClassRuleBuilder;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/i4;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/i4;->a:Lcom/android/tools/r8/graph/u1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/i4;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/i4;->b:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method
