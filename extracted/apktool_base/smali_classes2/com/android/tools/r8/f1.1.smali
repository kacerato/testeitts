.class public final synthetic Lcom/android/tools/r8/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Qc;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Qc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/f1;->b:Lcom/android/tools/r8/internal/Qc;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/f1;->b:Lcom/android/tools/r8/internal/Qc;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-static {v0, p1}, Lcom/android/tools/r8/D8;->f(Lcom/android/tools/r8/internal/Qc;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
