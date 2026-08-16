.class public final synthetic Lv/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/dt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/dt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/m1;->b:Lcom/android/tools/r8/internal/dt;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv/m1;->b:Lcom/android/tools/r8/internal/dt;

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    invoke-static {v0, p1}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/dt;Lcom/android/tools/r8/internal/W5;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
