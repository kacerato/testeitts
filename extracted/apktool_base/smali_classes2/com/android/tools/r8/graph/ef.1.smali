.class public final synthetic Lcom/android/tools/r8/graph/ef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/o4;

.field public final synthetic c:Lcom/android/tools/r8/origin/Origin;

.field public final synthetic d:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/o4;Lcom/android/tools/r8/origin/Origin;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/ef;->b:Lcom/android/tools/r8/graph/o4;

    iput-object p2, p0, Lcom/android/tools/r8/graph/ef;->c:Lcom/android/tools/r8/origin/Origin;

    iput-object p3, p0, Lcom/android/tools/r8/graph/ef;->d:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/ef;->b:Lcom/android/tools/r8/graph/o4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/ef;->c:Lcom/android/tools/r8/origin/Origin;

    iget-object v2, p0, Lcom/android/tools/r8/graph/ef;->d:[B

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/o4;->a(Lcom/android/tools/r8/origin/Origin;[B)V

    return-void
.end method
