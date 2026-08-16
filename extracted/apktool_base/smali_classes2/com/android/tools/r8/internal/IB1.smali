.class public final synthetic Lcom/android/tools/r8/internal/IB1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/z3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/z3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/IB1;->b:Lcom/android/tools/r8/internal/z3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/IB1;->b:Lcom/android/tools/r8/internal/z3;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/z3;->a(Ljava/util/Set;)V

    return-void
.end method
