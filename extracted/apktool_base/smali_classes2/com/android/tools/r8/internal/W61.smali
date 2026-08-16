.class public final synthetic Lcom/android/tools/r8/internal/W61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Tr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/cD;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/cD;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/W61;->a:Lcom/android/tools/r8/internal/cD;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/W61;->a:Lcom/android/tools/r8/internal/cD;

    check-cast p1, Lcom/android/tools/r8/internal/Gx;

    check-cast p2, Ljava/util/Deque;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/cD;->a(Lcom/android/tools/r8/internal/Gx;Ljava/util/Deque;)V

    return-void
.end method
