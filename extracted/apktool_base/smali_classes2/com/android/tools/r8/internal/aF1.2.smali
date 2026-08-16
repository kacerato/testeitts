.class public final synthetic Lcom/android/tools/r8/internal/aF1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Zl;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/zh;

.field public final synthetic b:Lcom/android/tools/r8/graph/H5;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/zh;Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/aF1;->a:Lcom/android/tools/r8/internal/zh;

    iput-object p2, p0, Lcom/android/tools/r8/internal/aF1;->b:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/aF1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/aF1;->a:Lcom/android/tools/r8/internal/zh;

    iget-object v1, p0, Lcom/android/tools/r8/internal/aF1;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/aF1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/zh;->a(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)V

    return-void
.end method
