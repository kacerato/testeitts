.class public abstract Lcom/android/tools/r8/experimental/graphinfo/GraphNode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/android/tools/r8/experimental/graphinfo/a;


# instance fields
.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/experimental/graphinfo/a;

    invoke-direct {v0}, Lcom/android/tools/r8/experimental/graphinfo/a;-><init>()V

    sput-object v0, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;->b:Lcom/android/tools/r8/experimental/graphinfo/a;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;->a:Z

    return-void
.end method

.method public static cycle()Lcom/android/tools/r8/experimental/graphinfo/GraphNode;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;->b:Lcom/android/tools/r8/experimental/graphinfo/a;

    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public final isCycle()Z
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;->cycle()Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLibraryNode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;->a:Z

    return v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method
