.class public final synthetic Lcom/android/tools/r8/internal/RX0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/gt0;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/RX0;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/RX0;->a:Z

    check-cast p1, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;

    check-cast p2, Lcom/android/tools/r8/internal/Vn0;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Tn0;->a(ZLcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Lcom/android/tools/r8/internal/Vn0;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
