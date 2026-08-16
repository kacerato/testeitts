.class public final synthetic Lcom/android/tools/r8/graph/M7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:Lcom/android/tools/r8/graph/d1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/M7;->b:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/android/tools/r8/graph/M7;->c:Lcom/android/tools/r8/graph/d1;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/M7;->b:Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/android/tools/r8/graph/M7;->c:Lcom/android/tools/r8/graph/d1;

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/H2;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/d1;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
