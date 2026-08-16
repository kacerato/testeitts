.class public final synthetic Lcom/android/tools/r8/internal/T91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/W5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/W5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/T91;->b:Lcom/android/tools/r8/internal/W5;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/T91;->b:Lcom/android/tools/r8/internal/W5;

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/f50;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1
.end method
