.class public final synthetic Lcom/android/tools/r8/graph/ja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/P4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/P4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/ja;->b:Lcom/android/tools/r8/graph/P4;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/ja;->b:Lcom/android/tools/r8/graph/P4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/P4;->k()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
