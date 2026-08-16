.class Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/ArgumentAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalCacheContext"
.end annotation


# instance fields
.field prevCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;",
            "Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->argumentTypeCache:Ljava/util/Map;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;->prevCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->argumentTypeCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public leave()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;->prevCache:Ljava/util/Map;

    iput-object v1, v0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->argumentTypeCache:Ljava/util/Map;

    return-void
.end method
