.class public final synthetic Lcom/android/tools/r8/retrace/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/gt0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/retrace/Partition;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/android/tools/r8/retrace/RetracePartitionException;

    move-result-object p1

    return-object p1
.end method
