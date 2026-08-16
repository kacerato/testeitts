.class public final Lcom/android/tools/r8/graph/c5;
.super Lcom/android/tools/r8/graph/a5;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/graph/c5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/c5;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/c5;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/tools/r8/graph/c5;->d:Lcom/android/tools/r8/graph/c5;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/graph/a5;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
