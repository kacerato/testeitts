.class public final synthetic Lcom/android/tools/r8/internal/QL0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/L70;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/L70;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/QL0;->b:Lcom/android/tools/r8/internal/L70;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/QL0;->b:Lcom/android/tools/r8/internal/L70;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/L70;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/p1;

    move-result-object p1

    return-object p1
.end method
