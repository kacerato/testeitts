.class public final synthetic Lcom/android/tools/r8/retrace/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/retrace/MappingSupplierBase;

.field public final synthetic c:Lcom/android/tools/r8/DiagnosticsHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/retrace/MappingSupplierBase;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/retrace/K;->b:Lcom/android/tools/r8/retrace/MappingSupplierBase;

    iput-object p2, p0, Lcom/android/tools/r8/retrace/K;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/retrace/K;->b:Lcom/android/tools/r8/retrace/MappingSupplierBase;

    iget-object v1, p0, Lcom/android/tools/r8/retrace/K;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    check-cast p1, Lcom/android/tools/r8/references/TypeReference;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->b(Lcom/android/tools/r8/retrace/MappingSupplierBase;Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/TypeReference;)V

    return-void
.end method
