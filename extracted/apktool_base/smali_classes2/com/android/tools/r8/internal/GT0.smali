.class public final synthetic Lcom/android/tools/r8/internal/GT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/retrace/StackTraceElementProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/GT0;->b:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/GT0;->b:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    check-cast p1, Lcom/android/tools/r8/internal/On0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Qn0;->a(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/On0;)V

    return-void
.end method
