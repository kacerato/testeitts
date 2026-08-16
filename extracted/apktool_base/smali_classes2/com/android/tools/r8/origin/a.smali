.class public final Lcom/android/tools/r8/origin/a;
.super Lcom/android/tools/r8/origin/Origin;
.source "SourceFile"


# static fields
.field public static final f:Lcom/android/tools/r8/origin/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/origin/a;

    invoke-direct {v0}, Lcom/android/tools/r8/origin/a;-><init>()V

    sput-object v0, Lcom/android/tools/r8/origin/a;->f:Lcom/android/tools/r8/origin/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->root()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/origin/Origin;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    return-void
.end method


# virtual methods
.method public final part()Ljava/lang/String;
    .locals 1

    const-string v0, "Command line"

    return-object v0
.end method
