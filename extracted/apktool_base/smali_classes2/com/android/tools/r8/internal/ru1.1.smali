.class public final synthetic Lcom/android/tools/r8/internal/ru1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/w5;


# instance fields
.field public final synthetic a:Ljava/util/function/Function;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ru1;->a:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ru1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/W9;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ru1;->a:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ru1;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/u40;->a(Ljava/util/function/Function;Ljava/lang/String;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/W9;

    move-result-object p1

    return-object p1
.end method
