.class public final synthetic Lcom/android/tools/r8/q3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/q3;->b:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/q3;->b:Lcom/android/tools/r8/internal/nJ;

    check-cast p1, Lcom/android/tools/r8/AndroidResourceConsumer;

    invoke-static {v0, p1}, Lcom/android/tools/r8/R8Command;->j(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/AndroidResourceConsumer;)Lcom/android/tools/r8/naming/Q;

    move-result-object p1

    return-object p1
.end method
