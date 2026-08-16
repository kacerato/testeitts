.class public final synthetic Lcom/android/tools/r8/internal/IO0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/jc;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/jc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/IO0;->b:Lcom/android/tools/r8/internal/jc;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/IO0;->b:Lcom/android/tools/r8/internal/jc;

    check-cast p1, Lcom/android/tools/r8/internal/rj;

    check-cast p2, Lcom/android/tools/r8/internal/t50;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/Ns0;->a(Lcom/android/tools/r8/internal/jc;Lcom/android/tools/r8/internal/rj;Lcom/android/tools/r8/internal/t50;)Lcom/android/tools/r8/internal/t50;

    move-result-object p1

    return-object p1
.end method
