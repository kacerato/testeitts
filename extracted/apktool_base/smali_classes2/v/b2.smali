.class public final synthetic Lv/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/FE;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/FE;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/b2;->b:Lcom/android/tools/r8/internal/FE;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv/b2;->b:Lcom/android/tools/r8/internal/FE;

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    invoke-static {v0, p1}, Lcom/android/tools/r8/ir/optimize/z;->a(Lcom/android/tools/r8/internal/FE;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1
.end method
