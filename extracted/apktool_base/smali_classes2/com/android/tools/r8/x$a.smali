.class public Lcom/android/tools/r8/x$a;
.super Lcom/android/tools/r8/BaseCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/x$a$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "  --version               # Print the version of r8."

    const-string v1, "  --help                  # Print this message."

    const-string v2, "Usage: dexsegments [options] <input-files>"

    const-string v3, " where <input-files> are dex files"

    invoke-static {v2, v3, v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/x$a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/utils/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand;-><init>(Lcom/android/tools/r8/utils/i;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/BaseCommand;-><init>(ZZ)V

    return-void
.end method

.method public static c()Lcom/android/tools/r8/x$a$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/x$a$a;

    invoke-direct {v0}, Lcom/android/tools/r8/x$a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/nJ;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/nJ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/nJ;-><init>()V

    return-object v0
.end method
