.class public final synthetic Lcom/android/tools/r8/internal/Pc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/ub;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pc1;->a:Lcom/android/tools/r8/internal/ub;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pc1;->a:Lcom/android/tools/r8/internal/ub;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/ub;->a(ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/ob;

    return-void
.end method
