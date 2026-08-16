.class public final synthetic Lcom/android/tools/r8/internal/Tn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/o3;

.field public final synthetic c:Lcom/android/tools/r8/internal/xw0;

.field public final synthetic d:Lcom/android/tools/r8/graph/F5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/o3;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tn1;->b:Lcom/android/tools/r8/internal/o3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Tn1;->c:Lcom/android/tools/r8/internal/xw0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Tn1;->d:Lcom/android/tools/r8/graph/F5;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tn1;->b:Lcom/android/tools/r8/internal/o3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tn1;->c:Lcom/android/tools/r8/internal/xw0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Tn1;->d:Lcom/android/tools/r8/graph/F5;

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/o3;->b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method
