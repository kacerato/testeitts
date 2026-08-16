.class public final synthetic Lcom/android/tools/r8/internal/Be1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/StringConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/C7;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/C7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Be1;->a:Lcom/android/tools/r8/internal/C7;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Be1;->a:Lcom/android/tools/r8/internal/C7;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/im;->a(Lcom/android/tools/r8/internal/C7;Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method
