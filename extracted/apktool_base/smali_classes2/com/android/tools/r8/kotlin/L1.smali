.class public final synthetic Lcom/android/tools/r8/kotlin/L1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/vQ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/vQ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/L1;->b:Lcom/android/tools/r8/internal/vQ;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/L1;->b:Lcom/android/tools/r8/internal/vQ;

    check-cast p1, Lcom/android/tools/r8/internal/OL;

    invoke-static {v0, p1}, Lcom/android/tools/r8/kotlin/a;->c(Lcom/android/tools/r8/internal/vQ;Lcom/android/tools/r8/internal/OL;)V

    return-void
.end method
