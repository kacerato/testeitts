.class public Lcom/android/tools/r8/origin/c;
.super Lcom/android/tools/r8/origin/Origin;
.source "SourceFile"


# static fields
.field public static final f:Lcom/android/tools/r8/origin/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/origin/c;

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->root()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/origin/c;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    sput-object v0, Lcom/android/tools/r8/origin/c;->f:Lcom/android/tools/r8/origin/c;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/origin/Origin;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    return-void
.end method

.method public static a()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/origin/c;->f:Lcom/android/tools/r8/origin/c;

    return-object v0
.end method


# virtual methods
.method public final part()Ljava/lang/String;
    .locals 1

    const-string v0, "<synthetic>"

    return-object v0
.end method
