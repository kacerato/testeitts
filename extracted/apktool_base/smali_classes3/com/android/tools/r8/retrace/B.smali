.class public final synthetic Lcom/android/tools/r8/retrace/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/DiagnosticsHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/retrace/B;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/B;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    check-cast p1, Lcom/android/tools/r8/naming/mappinginformation/b;

    invoke-static {v0, p1}, Lcom/android/tools/r8/retrace/Retrace;->h(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/naming/mappinginformation/b;)V

    return-void
.end method
