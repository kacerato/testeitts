.class public final synthetic Lcom/android/tools/r8/internal/Ab1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ab1;->b:Lcom/android/tools/r8/ir/optimize/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ab1;->b:Lcom/android/tools/r8/ir/optimize/a;

    check-cast p1, Lcom/android/tools/r8/internal/f60;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/fq0;->a(Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/f60;)V

    return-void
.end method
