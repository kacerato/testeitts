.class public Lcom/android/tools/r8/z$a;
.super Lcom/android/tools/r8/BaseCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/z$a$a;
    }
.end annotation


# instance fields
.field public final e:Ljava/nio/file/Path;

.field public final f:Lcom/android/tools/r8/v0$a;

.field public final g:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/utils/i;Ljava/nio/file/Path;Lcom/android/tools/r8/v0$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand;-><init>(Lcom/android/tools/r8/utils/i;)V

    .line 2
    iput-object p2, p0, Lcom/android/tools/r8/z$a;->e:Ljava/nio/file/Path;

    .line 3
    iput-object p3, p0, Lcom/android/tools/r8/z$a;->f:Lcom/android/tools/r8/v0$a;

    .line 4
    iput-boolean p4, p0, Lcom/android/tools/r8/z$a;->g:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/BaseCommand;-><init>(ZZ)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/z$a;->e:Ljava/nio/file/Path;

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/z$a;->f:Lcom/android/tools/r8/v0$a;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/tools/r8/z$a;->g:Z

    return-void
.end method

.method public static c()Lcom/android/tools/r8/z$a$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/z$a$a;

    invoke-direct {v0}, Lcom/android/tools/r8/z$a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/nJ;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/nJ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/nJ;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/nJ;->V:Z

    return-object v0
.end method
