.class public final synthetic Lcom/android/tools/r8/internal/mi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/M1;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/l3;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/l3;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mi1;->b:Lcom/android/tools/r8/internal/l3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mi1;->c:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/mi1;->b:Lcom/android/tools/r8/internal/l3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mi1;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/l3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1
.end method
