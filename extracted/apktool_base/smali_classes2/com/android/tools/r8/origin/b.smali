.class public Lcom/android/tools/r8/origin/b;
.super Lcom/android/tools/r8/origin/Origin;
.source "SourceFile"


# static fields
.field public static final f:Lcom/android/tools/r8/origin/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/origin/b;

    invoke-direct {v0}, Lcom/android/tools/r8/origin/b;-><init>()V

    sput-object v0, Lcom/android/tools/r8/origin/b;->f:Lcom/android/tools/r8/origin/b;

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

    const-string v0, "R8"

    return-object v0
.end method
