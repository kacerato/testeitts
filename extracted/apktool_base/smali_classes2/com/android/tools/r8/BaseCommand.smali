.class public abstract Lcom/android/tools/r8/BaseCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/BaseCommand$Builder;
    }
.end annotation


# static fields
.field static final synthetic d:Z = true


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lcom/android/tools/r8/utils/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/utils/i;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/BaseCommand;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/BaseCommand;->c:Lcom/android/tools/r8/utils/i;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/tools/r8/BaseCommand;->a:Z

    .line 9
    iput-boolean p1, p0, Lcom/android/tools/r8/BaseCommand;->b:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/tools/r8/BaseCommand;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/android/tools/r8/BaseCommand;->b:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/BaseCommand;->c:Lcom/android/tools/r8/utils/i;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/utils/i;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/BaseCommand;->c:Lcom/android/tools/r8/utils/i;

    return-object v0
.end method

.method public abstract b()Lcom/android/tools/r8/internal/nJ;
.end method

.method public isPrintHelp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/BaseCommand;->a:Z

    return v0
.end method

.method public isPrintVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/BaseCommand;->b:Z

    return v0
.end method
