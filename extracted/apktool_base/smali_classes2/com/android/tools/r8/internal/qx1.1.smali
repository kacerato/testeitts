.class public final synthetic Lcom/android/tools/r8/internal/qx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/xw0;

.field public final synthetic c:Lcom/android/tools/r8/internal/Yx0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Yx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qx1;->b:Lcom/android/tools/r8/internal/xw0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/qx1;->c:Lcom/android/tools/r8/internal/Yx0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/qx1;->b:Lcom/android/tools/r8/internal/xw0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qx1;->c:Lcom/android/tools/r8/internal/Yx0;

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/w50;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
