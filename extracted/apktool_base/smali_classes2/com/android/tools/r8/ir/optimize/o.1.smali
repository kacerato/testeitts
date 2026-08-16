.class public final Lcom/android/tools/r8/ir/optimize/o;
.super Lcom/android/tools/r8/ir/optimize/h;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/IdentityHashMap;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/ir/optimize/h;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/o;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/o;->b:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/ir/optimize/o;
    .locals 0

    return-object p0
.end method
