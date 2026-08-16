.class public final synthetic Lcom/android/tools/r8/graph/Vg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/C7;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/C7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Vg;->b:Lcom/android/tools/r8/internal/C7;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/Vg;->b:Lcom/android/tools/r8/internal/C7;

    check-cast p1, Lcom/android/tools/r8/graph/D3$a;

    invoke-static {v0, p1}, Lcom/android/tools/r8/graph/v3;->a(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/D3$a;)V

    return-void
.end method
