.class public Lcom/android/tools/r8/graph/Z4$b;
.super Lcom/android/tools/r8/graph/Z4$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/Z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final c:Lcom/android/tools/r8/graph/Z4$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/Z4$b;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Z4$b;-><init>()V

    sput-object v0, Lcom/android/tools/r8/graph/Z4$b;->c:Lcom/android/tools/r8/graph/Z4$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/graph/Z4$a;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/graph/Z4$a;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final l()Lcom/android/tools/r8/graph/Z4$b;
    .locals 0

    return-object p0
.end method

.method public final t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
